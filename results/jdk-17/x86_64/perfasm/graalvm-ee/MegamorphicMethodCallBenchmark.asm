# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 1.963 ns/op
# Warmup Iteration   2: 1.943 ns/op
# Warmup Iteration   3: 1.942 ns/op
# Warmup Iteration   4: 1.942 ns/op
# Warmup Iteration   5: 1.942 ns/op
Iteration   1: 1.942 ns/op
Iteration   2: 2.038 ns/op
Iteration   3: 2.038 ns/op
Iteration   4: 2.032 ns/op
Iteration   5: 2.032 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.017 ±(99.9%) 0.161 ns/op [Average]
  (min, avg, max) = (1.942, 2.017, 2.038), stdev = 0.042
  CI (99.9%): [1.856, 2.177] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 190449 total address lines.
Perf output processed (skipped 58.473 seconds):
 Column 1: cycles (50459 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 724 

              0x00007f2c8ab1cc74:   jb     0x00007f2c8ab1cd7b           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
              0x00007f2c8ab1cc7a:   mov    $0x1,%ecx
              0x00007f2c8ab1cc7f:   nop
          ╭   0x00007f2c8ab1cc80:   jmp    0x00007f2c8ab1ccf7
          │   0x00007f2c8ab1cc85:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f2c8ab1cc90:   data16 data16 xchg %ax,%ax
          │   0x00007f2c8ab1cc94:   nopl   0x0(%rax,%rax,1)
          │   0x00007f2c8ab1cc9c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   2.01%  │↗  0x00007f2c8ab1cca0:   movsbl 0x10(%rcx,%r8,8),%ebx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   3.13%  ││  0x00007f2c8ab1cca6:   test   %ebx,%ebx
          ││  0x00007f2c8ab1cca8:   jne    0x00007f2c8ab1cdec           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   3.26%  ││  0x00007f2c8ab1ccae:   mov    0x10(%r10,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.41%  ││  0x00007f2c8ab1ccb3:   mov    $0x1,%edx                    ; ImmutableOopMap {rbx=NarrowOop rdi=Oop r8=NarrowOop r10=Oop }
          ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@12 (line 182)
   1.72%  ││  0x00007f2c8ab1ccb8:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007f2c8ab1ceab
  27.27%  ││  0x00007f2c8ab1ccbf:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   6.41%  ││  0x00007f2c8ab1ccc6:   lea    0x11(%rcx),%esi
   1.18%  ││  0x00007f2c8ab1ccc9:   mov    %esi,%esi
   1.58%  ││  0x00007f2c8ab1cccb:   movsbl (%rsi,%r8,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   3.03%  ││  0x00007f2c8ab1ccd0:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   4.39%  ││  0x00007f2c8ab1ccd4:   test   %esi,%esi
          ││  0x00007f2c8ab1ccd6:   jne    0x00007f2c8ab1ce17           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.20%  ││  0x00007f2c8ab1ccdc:   mov    0x14(%r10,%rcx,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.90%  ││  0x00007f2c8ab1cce1:   mov    $0x1,%eax                    ; ImmutableOopMap {rbx=Oop rsi=NarrowOop rdi=Oop r8=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   2.36%  ││  0x00007f2c8ab1cce6:   add    0xc(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f2c8ab1cec7
  30.23%  ││  0x00007f2c8ab1cced:   mov    %eax,0xc(,%rsi,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   5.16%  ││  0x00007f2c8ab1ccf4:   lea    0x2(%rcx),%ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.29%  ↘│  0x00007f2c8ab1ccf7:   cmp    $0x9d7e,%ecx
           ╰  0x00007f2c8ab1ccfd:   jb     0x00007f2c8ab1cca0
              0x00007f2c8ab1ccff:   nop
              0x00007f2c8ab1cd00:   jmp    0x00007f2c8ab1cd60
              0x00007f2c8ab1cd05:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f2c8ab1cd10:   data16 data16 xchg %ax,%ax
              0x00007f2c8ab1cd14:   nopl   0x0(%rax,%rax,1)
              0x00007f2c8ab1cd1c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
              0x00007f2c8ab1cd20:   cmp    %ecx,%r11d
....................................................................................................
  98.52%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 724 
   0.17%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 724 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 724 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 724 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.73%  <...other 261 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 724 
   1.06%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  fileStream::write 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 750 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  outputStream::update_position 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.61%       jvmci, level 4
   1.06%               kernel
   0.15%            libjvm.so
   0.06%         libc-2.31.so
   0.04%                     
   0.04%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%       perf-42080.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 6.25% complete, ETA 00:27:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.248 ns/op
# Warmup Iteration   2: 2.226 ns/op
# Warmup Iteration   3: 2.225 ns/op
# Warmup Iteration   4: 2.225 ns/op
# Warmup Iteration   5: 2.322 ns/op
Iteration   1: 2.323 ns/op
Iteration   2: 2.323 ns/op
Iteration   3: 2.323 ns/op
Iteration   4: 2.321 ns/op
Iteration   5: 2.323 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.323 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (2.321, 2.323, 2.323), stdev = 0.001
  CI (99.9%): [2.320, 2.325] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 192037 total address lines.
Perf output processed (skipped 58.665 seconds):
 Column 1: cycles (50602 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 

              0x00007f357eb19c19:   jb     0x00007f357eb19e34           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
              0x00007f357eb19c1f:   nop
              0x00007f357eb19c20:   cmp    $0x9d7e,%r9d
              0x00007f357eb19c27:   jb     0x00007f357eb19e34
              0x00007f357eb19c2d:   cmp    $0x9d7f,%r9d
              0x00007f357eb19c34:   jb     0x00007f357eb19e34           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
              0x00007f357eb19c3a:   mov    $0x1,%ebx
              0x00007f357eb19c3f:   nop
   2.35%      0x00007f357eb19c40:   cmp    $0x9d7e,%ebx
              0x00007f357eb19c46:   jae    0x00007f357eb19d56           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   1.72%      0x00007f357eb19c4c:   mov    0x14(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.53%      0x00007f357eb19c51:   test   %edi,%edi
              0x00007f357eb19c53:   je     0x00007f357eb19d3e
   2.68%      0x00007f357eb19c59:   mov    0x8(,%rdi,8),%esi
  24.45%      0x00007f357eb19c60:   movabs $0x800000000,%rbp
   1.35%      0x00007f357eb19c6a:   lea    0x0(%rbp,%rsi,1),%rsi        ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   6.95%      0x00007f357eb19c6f:   mov    0x10(%r10,%rbx,4),%ebp       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.89%      0x00007f357eb19c74:   test   %ebp,%ebp
              0x00007f357eb19c76:   je     0x00007f357eb19d4a
   1.95%      0x00007f357eb19c7c:   mov    0x8(,%rbp,8),%r13d
   6.18%      0x00007f357eb19c84:   movabs $0x800000000,%r14
   2.67%      0x00007f357eb19c8e:   lea    (%r14,%r13,1),%r13           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   2.24%      0x00007f357eb19c92:   lea    0x11(%rbx),%r14d
   1.70%      0x00007f357eb19c96:   mov    %r14d,%r14d
   1.29%      0x00007f357eb19c99:   movsbl (%r14,%r8,8),%r14d
   3.26%      0x00007f357eb19c9e:   movsbl 0x10(%rbx,%r8,8),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   2.15%      0x00007f357eb19ca4:   lea    0x2(%rbx),%r9d
   1.83%      0x00007f357eb19ca8:   mov    %ebx,%r11d
   1.28%      0x00007f357eb19cab:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   2.96%      0x00007f357eb19cae:   cmp    $0x1,%ecx
          ╭   0x00007f357eb19cb1:   je     0x00007f357eb19cc5
          │   0x00007f357eb19cb7:   cmp    $0x0,%ecx
          │   0x00007f357eb19cba:   je     0x00007f357eb19d06
          │   0x00007f357eb19cc0:   jmp    0x00007f357eb19efc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   2.37%  ↘   0x00007f357eb19cc5:   cmp    %r13,%rdx
              0x00007f357eb19cc8:   jne    0x00007f357eb19edb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   1.75%      0x00007f357eb19cce:   incl   0x10(,%rbp,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   8.80%      0x00007f357eb19cd5:   cmp    $0x1,%r14d
           ╭  0x00007f357eb19cd9:   je     0x00007f357eb19cee
   1.62%   │  0x00007f357eb19cdf:   cmp    $0x0,%r14d
           │  0x00007f357eb19ce3:   je     0x00007f357eb19d26
           │  0x00007f357eb19ce9:   jmp    0x00007f357eb19e50           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
           ↘  0x00007f357eb19cee:   cmp    %rsi,%rdx
              0x00007f357eb19cf1:   jne    0x00007f357eb19f50           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
              0x00007f357eb19cf7:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
              0x00007f357eb19cfe:   mov    %r9d,%ebx
....................................................................................................
  85.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 

            0x00007f357eb19d09:   jne    0x00007f357eb19f6c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
            0x00007f357eb19d0f:   incl   0xc(,%rbp,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
            0x00007f357eb19d16:   cmp    $0x1,%r14d
            0x00007f357eb19d1a:   je     0x00007f357eb19cee
            0x00007f357eb19d1c:   cmp    $0x0,%r14d
            0x00007f357eb19d20:   jne    0x00007f357eb19e50           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.24%    0x00007f357eb19d26:   cmp    %rsi,%rax
            0x00007f357eb19d29:   jne    0x00007f357eb19f7e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   2.64%    0x00007f357eb19d2f:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   5.74%    0x00007f357eb19d36:   mov    %r9d,%ebx
   2.66%    0x00007f357eb19d39:   jmp    0x00007f357eb19c40
            0x00007f357eb19d3e:   mov    $0x0,%rsi
            0x00007f357eb19d45:   jmp    0x00007f357eb19c6f
            0x00007f357eb19d4a:   mov    $0x0,%r13
            0x00007f357eb19d51:   jmp    0x00007f357eb19c92           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.00%    0x00007f357eb19d56:   mov    0x10(%rsp),%r9d
   0.01%    0x00007f357eb19d5b:   mov    0x14(%rsp),%r11d
            0x00007f357eb19d60:   cmp    $0x9d80,%ebx
            0x00007f357eb19d66:   jae    0x00007f357eb19e00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
            0x00007f357eb19d6c:   cmp    %ebx,%r11d
            0x00007f357eb19d6f:   jbe    0x00007f357eb19e6c           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
            0x00007f357eb19d75:   cmp    %ebx,%r9d
            0x00007f357eb19d78:   jbe    0x00007f357eb19ecc           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
            0x00007f357eb19d7e:   mov    0x10(%r10,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  12.30%  <total for region 2>

....[Hottest Regions]...............................................................................
  85.96%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 
  12.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 
   0.56%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.65%  <...other 225 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 730 
   1.41%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  __vfscanf_internal 
   0.00%       hsdis-amd64.so  print_insn 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%  libjvmcicompiler.so  IsolateEnterStub_JNIFunctions_ExceptionCheck_58d6e5b3e7f9e77fa71a316c155f7e7a40618b7f_19b3cc17c6bf1c1883532a2918712cb500661570 
   0.00%            libjvm.so  LinkResolver::lookup_method_in_klasses 
   0.10%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%       jvmci, level 4
   1.41%               kernel
   0.10%            libjvm.so
   0.09%         libc-2.31.so
   0.02%                     
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.00%          interpreter
   0.00%       perf-42144.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 12.50% complete, ETA 00:26:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.297 ns/op
# Warmup Iteration   2: 2.414 ns/op
# Warmup Iteration   3: 2.430 ns/op
# Warmup Iteration   4: 2.355 ns/op
# Warmup Iteration   5: 2.273 ns/op
Iteration   1: 2.272 ns/op
Iteration   2: 2.322 ns/op
Iteration   3: 2.274 ns/op
Iteration   4: 2.275 ns/op
Iteration   5: 2.273 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.283 ±(99.9%) 0.083 ns/op [Average]
  (min, avg, max) = (2.272, 2.283, 2.322), stdev = 0.022
  CI (99.9%): [2.200, 2.367] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 192605 total address lines.
Perf output processed (skipped 58.632 seconds):
 Column 1: cycles (50591 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 745 

   0.00%                    0x00007f9bbab1e693:   cmp    $0x9d7f,%r11d
                            0x00007f9bbab1e69a:   jb     0x00007f9bbab1e936           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                            0x00007f9bbab1e6a0:   cmp    $0x9d7e,%r9d
                            0x00007f9bbab1e6a7:   jb     0x00007f9bbab1e936
                            0x00007f9bbab1e6ad:   cmp    $0x9d7f,%r9d
                            0x00007f9bbab1e6b4:   jb     0x00007f9bbab1e936           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                            0x00007f9bbab1e6ba:   mov    $0x1,%ebx
                            0x00007f9bbab1e6bf:   nop
   1.91%           ↗  ↗↗    0x00007f9bbab1e6c0:   cmp    $0x9d7e,%ebx
          ╭        │  ││    0x00007f9bbab1e6c6:   jae    0x00007f9bbab1e820           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        │  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   2.13%  │        │  ││    0x00007f9bbab1e6cc:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        │  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.12%  │        │  ││    0x00007f9bbab1e6d1:   test   %edi,%edi
          │╭       │  ││    0x00007f9bbab1e6d3:   je     0x00007f9bbab1e811
   2.02%  ││       │  ││    0x00007f9bbab1e6d9:   mov    0x8(,%rdi,8),%esi
  10.67%  ││       │  ││    0x00007f9bbab1e6e0:   movabs $0x800000000,%r13
   1.88%  ││       │  ││    0x00007f9bbab1e6ea:   lea    0x0(%r13,%rsi,1),%rsi        ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││       │  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   5.15%  ││       │  ││ ↗  0x00007f9bbab1e6ef:   movsbl 0x10(%rbx,%r8,8),%r13d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││       │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.74%  ││       │  ││ │  0x00007f9bbab1e6f5:   cmp    $0x0,%r13d
          ││╭      │  ││ │  0x00007f9bbab1e6f9:   je     0x00007f9bbab1e718
   1.07%  │││      │  ││ │  0x00007f9bbab1e6ff:   cmp    $0x1,%r13d
          │││╭     │  ││ │  0x00007f9bbab1e703:   je     0x00007f9bbab1e7a5
   0.53%  ││││     │  ││ │  0x00007f9bbab1e709:   cmp    $0x2,%r13d
          ││││╭    │  ││ │  0x00007f9bbab1e70d:   je     0x00007f9bbab1e7ba
          │││││    │  ││ │  0x00007f9bbab1e713:   jmp    0x00007f9bbab1ea38           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││    │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.48%  ││↘││    │  ││ │  0x00007f9bbab1e718:   nopl   0x0(%rax,%rax,1)
   0.55%  ││ ││    │  ││ │  0x00007f9bbab1e720:   cmp    %rsi,%rbp
          ││ ││    │  ││ │  0x00007f9bbab1e723:   jne    0x00007f9bbab1ea05           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.91%  ││ ││    │  ││ │  0x00007f9bbab1e729:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││ ││    │  ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   4.34%  ││ ││    │↗↗││ │  0x00007f9bbab1e730:   mov    0x14(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ ││    │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.13%  ││ ││    │││││ │  0x00007f9bbab1e735:   test   %edi,%edi
          ││ ││╭   │││││ │  0x00007f9bbab1e737:   je     0x00007f9bbab1e805
   2.12%  ││ │││   │││││ │  0x00007f9bbab1e73d:   mov    0x8(,%rdi,8),%esi
  10.75%  ││ │││   │││││ │  0x00007f9bbab1e744:   movabs $0x800000000,%r13
   1.93%  ││ │││   │││││ │  0x00007f9bbab1e74e:   lea    0x0(%r13,%rsi,1),%rsi        ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││   │││││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   5.52%  ││ │││   │││││↗│  0x00007f9bbab1e753:   lea    0x11(%rbx),%r13d
   1.72%  ││ │││   │││││││  0x00007f9bbab1e757:   mov    %r13d,%r13d
   2.15%  ││ │││   │││││││  0x00007f9bbab1e75a:   movsbl 0x0(%r13,%r8,8),%r13d        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   2.17%  ││ │││   │││││││  0x00007f9bbab1e760:   lea    0x2(%rbx),%r14d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││   │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   2.73%  ││ │││   │││││││  0x00007f9bbab1e764:   cmp    $0x0,%r13d
          ││ │││╭  │││││││  0x00007f9bbab1e768:   je     0x00007f9bbab1e78b
   1.14%  ││ ││││  │││││││  0x00007f9bbab1e76e:   cmp    $0x1,%r13d
          ││ ││││╭ │││││││  0x00007f9bbab1e772:   je     0x00007f9bbab1e7d5
   1.00%  ││ │││││ │││││││  0x00007f9bbab1e778:   cmp    $0x2,%r13d
   0.59%  ││ │││││ │││││││  0x00007f9bbab1e77c:   nopl   0x0(%rax)
   0.85%  ││ │││││╭│││││││  0x00007f9bbab1e780:   je     0x00007f9bbab1e7ed
          ││ │││││││││││││  0x00007f9bbab1e786:   jmp    0x00007f9bbab1e9c6           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.61%  ││ │││↘│││││││││  0x00007f9bbab1e78b:   cmp    %rsi,%rbp
          ││ │││ │││││││││  0x00007f9bbab1e78e:   jne    0x00007f9bbab1e973           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.76%  ││ │││ │││││││││  0x00007f9bbab1e794:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││ │││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   2.70%  ││ │││ │││││││││  0x00007f9bbab1e79b:   mov    %r14d,%ebx
   0.71%  ││ │││ │││││││││  0x00007f9bbab1e79e:   xchg   %ax,%ax
   0.40%  ││ │││ ││╰││││││  0x00007f9bbab1e7a0:   jmp    0x00007f9bbab1e6c0
   0.81%  ││ ↘││ ││ ││││││  0x00007f9bbab1e7a5:   cmp    %rsi,%rax
          ││  ││ ││ ││││││  0x00007f9bbab1e7a8:   jne    0x00007f9bbab1eaa5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   1.12%  ││  ││ ││ ││││││  0x00007f9bbab1e7ae:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││  ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││  ││ ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   4.53%  ││  ││ ││ ╰│││││  0x00007f9bbab1e7b5:   jmp    0x00007f9bbab1e730
   1.15%  ││  ↘│ ││  │││││  0x00007f9bbab1e7ba:   nopw   0x0(%rax,%rax,1)
   0.66%  ││   │ ││  │││││  0x00007f9bbab1e7c0:   cmp    %rsi,%rdx
          ││   │ ││  │││││  0x00007f9bbab1e7c3:   jne    0x00007f9bbab1eadb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.58%  ││   │ ││  │││││  0x00007f9bbab1e7c9:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││   │ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          ││   │ ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   4.81%  ││   │ ││  ╰││││  0x00007f9bbab1e7d0:   jmp    0x00007f9bbab1e730
   0.40%  ││   │ ↘│   ││││  0x00007f9bbab1e7d5:   cmp    %rsi,%rax
          ││   │  │   ││││  0x00007f9bbab1e7d8:   jne    0x00007f9bbab1e996           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.71%  ││   │  │   ││││  0x00007f9bbab1e7de:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││   │  │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││   │  │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   2.95%  ││   │  │   ││││  0x00007f9bbab1e7e5:   mov    %r14d,%ebx
   0.65%  ││   │  │   ╰│││  0x00007f9bbab1e7e8:   jmp    0x00007f9bbab1e6c0
   0.45%  ││   │  ↘    │││  0x00007f9bbab1e7ed:   cmp    %rsi,%rdx
          ││   │       │││  0x00007f9bbab1e7f0:   jne    0x00007f9bbab1eab7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   1.02%  ││   │       │││  0x00007f9bbab1e7f6:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││   │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          ││   │       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   2.01%  ││   │       │││  0x00007f9bbab1e7fd:   mov    %r14d,%ebx
   0.91%  ││   │       ╰││  0x00007f9bbab1e800:   jmp    0x00007f9bbab1e6c0
          ││   ↘        ││  0x00007f9bbab1e805:   mov    $0x0,%rsi
          ││            ╰│  0x00007f9bbab1e80c:   jmp    0x00007f9bbab1e753
          │↘             │  0x00007f9bbab1e811:   mov    $0x0,%rsi
          │              ╰  0x00007f9bbab1e818:   jmp    0x00007f9bbab1e6ef           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
          │                 0x00007f9bbab1e81d:   data16 xchg %ax,%ax
          ↘                 0x00007f9bbab1e820:   cmp    $0x9d80,%ebx
                            0x00007f9bbab1e826:   jae    0x00007f9bbab1e8e9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
                            0x00007f9bbab1e82c:   cmp    %ebx,%r11d
....................................................................................................
  98.25%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 745 
   0.15%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 745 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 745 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 745 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.89%  <...other 302 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 745 
   1.30%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  stringStream::write 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%       hsdis-amd64.so  print_insn 
   0.14%  <...other 69 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.35%       jvmci, level 4
   1.30%               kernel
   0.14%            libjvm.so
   0.06%                     
   0.06%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.00%          c1, level 3
....................................................................................................
  99.99%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 18.75% complete, ETA 00:24:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.548 ns/op
# Warmup Iteration   2: 2.466 ns/op
# Warmup Iteration   3: 2.466 ns/op
# Warmup Iteration   4: 2.466 ns/op
# Warmup Iteration   5: 2.465 ns/op
Iteration   1: 2.462 ns/op
Iteration   2: 2.464 ns/op
Iteration   3: 2.463 ns/op
Iteration   4: 2.463 ns/op
Iteration   5: 2.466 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.464 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (2.462, 2.464, 2.466), stdev = 0.002
  CI (99.9%): [2.458, 2.470] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 192622 total address lines.
Perf output processed (skipped 58.653 seconds):
 Column 1: cycles (50577 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 

   2.42%       0x00007f7a6ab1bc8c:   cmp    $0x0,%r14d
          ╭    0x00007f7a6ab1bc90:   je     0x00007f7a6ab1bcb9
   1.91%  │    0x00007f7a6ab1bc96:   cmp    $0x2,%r14d
          │╭   0x00007f7a6ab1bc9a:   je     0x00007f7a6ab1bcec
          ││   0x00007f7a6ab1bca0:   cmp    $0x1,%r14d
          ││   0x00007f7a6ab1bca4:   je     0x00007f7a6ab1bd4c
          ││   0x00007f7a6ab1bcaa:   cmp    $0x3,%r14d
          ││╭  0x00007f7a6ab1bcae:   je     0x00007f7a6ab1bd35
          │││  0x00007f7a6ab1bcb4:   jmp    0x00007f7a6ab1c0a9           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.88%  ↘││  0x00007f7a6ab1bcb9:   nopl   0x0(%rax)
   0.73%   ││  0x00007f7a6ab1bcc0:   cmp    %rsi,%r13
           ││  0x00007f7a6ab1bcc3:   jne    0x00007f7a6ab1bfad           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.35%   ││  0x00007f7a6ab1bcc9:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   4.53%   ││  0x00007f7a6ab1bcd0:   mov    %ecx,%ebx
   0.37%   ││  0x00007f7a6ab1bcd2:   jmp    0x00007f7a6ab1bbe0
           ││  0x00007f7a6ab1bcd7:   cmp    %rsi,%rax
           ││  0x00007f7a6ab1bcda:   jne    0x00007f7a6ab1bf0c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
           ││  0x00007f7a6ab1bce0:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
           ││  0x00007f7a6ab1bce7:   jmp    0x00007f7a6ab1bc55
   0.25%   ↘│  0x00007f7a6ab1bcec:   cmp    %rsi,%rax
            │  0x00007f7a6ab1bcef:   jne    0x00007f7a6ab1c029           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.37%    │  0x00007f7a6ab1bcf5:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   7.19%    │  0x00007f7a6ab1bcfc:   mov    %ecx,%ebx
   0.33%    │  0x00007f7a6ab1bcfe:   xchg   %ax,%ax
   0.95%    │  0x00007f7a6ab1bd00:   jmp    0x00007f7a6ab1bbe0
   1.82%    │  0x00007f7a6ab1bd05:   cmp    %rsi,%rbp
            │  0x00007f7a6ab1bd08:   jne    0x00007f7a6ab1c0bb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.23%    │  0x00007f7a6ab1bd0e:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   7.81%    │  0x00007f7a6ab1bd15:   jmp    0x00007f7a6ab1bc55
   0.75%    │  0x00007f7a6ab1bd1a:   nopw   0x0(%rax,%rax,1)
   1.30%    │  0x00007f7a6ab1bd20:   cmp    %rsi,%rdx
            │  0x00007f7a6ab1bd23:   jne    0x00007f7a6ab1c05f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   1.01%    │  0x00007f7a6ab1bd29:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   5.50%    │  0x00007f7a6ab1bd30:   jmp    0x00007f7a6ab1bc55
            ↘  0x00007f7a6ab1bd35:   cmp    %rsi,%rdx
               0x00007f7a6ab1bd38:   jne    0x00007f7a6ab1bf1b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
               0x00007f7a6ab1bd3e:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
               0x00007f7a6ab1bd45:   mov    %ecx,%ebx
               0x00007f7a6ab1bd47:   jmp    0x00007f7a6ab1bbe0
....................................................................................................
  35.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 

             0x00007f7a6ab1bbb4:   jb     0x00007f7a6ab1becb           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
             0x00007f7a6ab1bbba:   nopw   0x0(%rax,%rax,1)
             0x00007f7a6ab1bbc0:   cmp    $0x9d7e,%r9d
             0x00007f7a6ab1bbc7:   jb     0x00007f7a6ab1becb
             0x00007f7a6ab1bbcd:   cmp    $0x9d7f,%r9d
             0x00007f7a6ab1bbd4:   jb     0x00007f7a6ab1becb           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
             0x00007f7a6ab1bbda:   mov    $0x1,%ebx
             0x00007f7a6ab1bbdf:   nop
   2.26%     0x00007f7a6ab1bbe0:   cmp    $0x9d7e,%ebx
             0x00007f7a6ab1bbe6:   jae    0x00007f7a6ab1bd80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   2.78%     0x00007f7a6ab1bbec:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.52%     0x00007f7a6ab1bbf1:   test   %edi,%edi
             0x00007f7a6ab1bbf3:   je     0x00007f7a6ab1bd65
   1.25%     0x00007f7a6ab1bbf9:   mov    0x8(,%rdi,8),%esi
  15.49%     0x00007f7a6ab1bc00:   movabs $0x800000000,%r14
   2.12%     0x00007f7a6ab1bc0a:   lea    (%r14,%rsi,1),%rsi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   2.83%     0x00007f7a6ab1bc0e:   movsbl 0x10(%rbx,%r8,8),%r14d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.90%     0x00007f7a6ab1bc14:   cmp    $0x0,%r14d
          ╭  0x00007f7a6ab1bc18:   je     0x00007f7a6ab1bc45
   1.70%  │  0x00007f7a6ab1bc1e:   cmp    $0x2,%r14d
          │  0x00007f7a6ab1bc22:   je     0x00007f7a6ab1bcd7
   2.22%  │  0x00007f7a6ab1bc28:   cmp    $0x1,%r14d
          │  0x00007f7a6ab1bc2c:   je     0x00007f7a6ab1bd05
   0.96%  │  0x00007f7a6ab1bc32:   cmp    $0x3,%r14d
          │  0x00007f7a6ab1bc36:   je     0x00007f7a6ab1bd1a
          │  0x00007f7a6ab1bc3c:   nopl   0x0(%rax)
          │  0x00007f7a6ab1bc40:   jmp    0x00007f7a6ab1bee7           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
          ↘  0x00007f7a6ab1bc45:   cmp    %rsi,%r13
             0x00007f7a6ab1bc48:   jne    0x00007f7a6ab1c005           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
             0x00007f7a6ab1bc4e:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
....................................................................................................
  34.03%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 

             0x00007f7a6ab1bc36:   je     0x00007f7a6ab1bd1a
             0x00007f7a6ab1bc3c:   nopl   0x0(%rax)
             0x00007f7a6ab1bc40:   jmp    0x00007f7a6ab1bee7           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
             0x00007f7a6ab1bc45:   cmp    %rsi,%r13
             0x00007f7a6ab1bc48:   jne    0x00007f7a6ab1c005           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
             0x00007f7a6ab1bc4e:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.01%     0x00007f7a6ab1bc55:   mov    0x14(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.99%     0x00007f7a6ab1bc5a:   nopw   0x0(%rax,%rax,1)
   1.66%     0x00007f7a6ab1bc60:   test   %edi,%edi
             0x00007f7a6ab1bc62:   je     0x00007f7a6ab1bd71
   4.14%     0x00007f7a6ab1bc68:   mov    0x8(,%rdi,8),%esi
   6.87%     0x00007f7a6ab1bc6f:   movabs $0x800000000,%r14
   0.75%     0x00007f7a6ab1bc79:   lea    (%r14,%rsi,1),%rsi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   2.42%     0x00007f7a6ab1bc7d:   lea    0x11(%rbx),%r14d
   3.77%     0x00007f7a6ab1bc81:   mov    %r14d,%r14d
   0.86%     0x00007f7a6ab1bc84:   movsbl (%r14,%r8,8),%r14d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.09%     0x00007f7a6ab1bc89:   lea    0x2(%rbx),%ecx               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   2.42%     0x00007f7a6ab1bc8c:   cmp    $0x0,%r14d
          ╭  0x00007f7a6ab1bc90:   je     0x00007f7a6ab1bcb9
   1.91%  │  0x00007f7a6ab1bc96:   cmp    $0x2,%r14d
          │  0x00007f7a6ab1bc9a:   je     0x00007f7a6ab1bcec
          │  0x00007f7a6ab1bca0:   cmp    $0x1,%r14d
          │  0x00007f7a6ab1bca4:   je     0x00007f7a6ab1bd4c
          │  0x00007f7a6ab1bcaa:   cmp    $0x3,%r14d
          │  0x00007f7a6ab1bcae:   je     0x00007f7a6ab1bd35
          │  0x00007f7a6ab1bcb4:   jmp    0x00007f7a6ab1c0a9           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.88%  ↘  0x00007f7a6ab1bcb9:   nopl   0x0(%rax)
   0.73%     0x00007f7a6ab1bcc0:   cmp    %rsi,%r13
             0x00007f7a6ab1bcc3:   jne    0x00007f7a6ab1bfad           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  28.89%  <total for region 3>

....[Hottest Regions]...............................................................................
  35.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 
  34.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 
  28.89%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 
   0.42%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.74%  <...other 255 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 743 
   1.30%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  os::elapsedVTime 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 765 
   0.00%         libc-2.31.so  re_search_stub 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.38%       jvmci, level 4
   1.30%               kernel
   0.14%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%               [vdso]
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 25.00% complete, ETA 00:22:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.576 ns/op
# Warmup Iteration   2: 2.545 ns/op
# Warmup Iteration   3: 2.534 ns/op
# Warmup Iteration   4: 2.533 ns/op
# Warmup Iteration   5: 2.532 ns/op
Iteration   1: 2.533 ns/op
Iteration   2: 2.533 ns/op
Iteration   3: 2.533 ns/op
Iteration   4: 2.532 ns/op
Iteration   5: 2.532 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.533 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (2.532, 2.533, 2.533), stdev = 0.001
  CI (99.9%): [2.531, 2.535] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 189167 total address lines.
Perf output processed (skipped 58.542 seconds):
 Column 1: cycles (50760 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 733 

                                      0x00007fec0ab1ccdc:   nopl   0x0(%rax)
                                      0x00007fec0ab1cce0:   cmp    $0x9d7f,%r11d
                                      0x00007fec0ab1cce7:   jb     0x00007fec0ab1d0cb           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                                      0x00007fec0ab1cced:   cmp    $0x9d7e,%r9d
                                      0x00007fec0ab1ccf4:   jb     0x00007fec0ab1d0cb
                                      0x00007fec0ab1ccfa:   nopw   0x0(%rax,%rax,1)
                                      0x00007fec0ab1cd00:   cmp    $0x9d7f,%r9d
                                      0x00007fec0ab1cd07:   jb     0x00007fec0ab1d0cb           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.01%                              0x00007fec0ab1cd0d:   mov    $0x1,%ebx
                                      0x00007fec0ab1cd12:   data16 nopw 0x0(%rax,%rax,1)
                                      0x00007fec0ab1cd1c:   data16 data16 xchg %ax,%ax
   1.22%                 ↗   ↗↗↗↗     0x00007fec0ab1cd20:   cmp    $0x9d7e,%ebx
          ╭              │   ││││     0x00007fec0ab1cd26:   jae    0x00007fec0ab1cf11           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │              │   ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   1.60%  │              │   ││││     0x00007fec0ab1cd2c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │              │   ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   3.45%  │              │   ││││     0x00007fec0ab1cd31:   test   %edi,%edi
          │╭             │   ││││     0x00007fec0ab1cd33:   je     0x00007fec0ab1cef5
   1.18%  ││             │   ││││     0x00007fec0ab1cd39:   mov    0x8(,%rdi,8),%esi
   8.12%  ││             │   ││││     0x00007fec0ab1cd40:   movabs $0x800000000,%rcx
   1.42%  ││             │   ││││     0x00007fec0ab1cd4a:   lea    (%rcx,%rsi,1),%rsi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││             │   ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   4.11%  ││             │   ││││ ↗   0x00007fec0ab1cd4e:   movsbl 0x10(%rbx,%r8,8),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││             │   ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.96%  ││             │   ││││ │   0x00007fec0ab1cd54:   cmp    $0x3,%ecx
          ││╭            │   ││││ │   0x00007fec0ab1cd57:   jge    0x00007fec0ab1cd7d
   0.97%  │││            │   ││││ │   0x00007fec0ab1cd5d:   cmp    $0x2,%ecx
          │││╭           │   ││││ │   0x00007fec0ab1cd60:   jge    0x00007fec0ab1ce5a
   0.31%  ││││           │   ││││ │   0x00007fec0ab1cd66:   cmp    $0x0,%ecx
          ││││╭          │   ││││ │   0x00007fec0ab1cd69:   je     0x00007fec0ab1ce2c
   0.74%  │││││          │   ││││ │   0x00007fec0ab1cd6f:   cmp    $0x1,%ecx
          │││││╭         │   ││││ │   0x00007fec0ab1cd72:   je     0x00007fec0ab1ce45
          ││││││         │   ││││ │   0x00007fec0ab1cd78:   jmp    0x00007fec0ab1d231
   0.16%  ││↘│││         │   ││││ │   0x00007fec0ab1cd7d:   cmp    $0x3,%ecx
   0.69%  ││ │││╭        │   ││││ │   0x00007fec0ab1cd80:   je     0x00007fec0ab1cd94
   1.00%  ││ ││││        │   ││││ │   0x00007fec0ab1cd86:   cmp    $0x4,%ecx
          ││ ││││╭       │   ││││ │   0x00007fec0ab1cd89:   je     0x00007fec0ab1ced8
          ││ │││││       │   ││││ │   0x00007fec0ab1cd8f:   jmp    0x00007fec0ab1d231           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││       │   ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.28%  ││ │││↘│       │   ││││ │   0x00007fec0ab1cd94:   cmp    %rsi,%rax
          ││ │││ │       │   ││││ │   0x00007fec0ab1cd97:   jne    0x00007fec0ab1d21f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │       │   ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
          ││ │││ │       │   ││││ │   0x00007fec0ab1cd9d:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │       │   ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          ││ │││ │       │   ││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   5.14%  ││ │││ │       │↗↗↗││││↗│   0x00007fec0ab1cda4:   mov    0x14(%r10,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │       ││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.11%  ││ │││ │       ││││││││││   0x00007fec0ab1cda9:   test   %ecx,%ecx
          ││ │││ │╭      ││││││││││   0x00007fec0ab1cdab:   je     0x00007fec0ab1cf05
   1.26%  ││ │││ ││      ││││││││││   0x00007fec0ab1cdb1:   mov    0x8(,%rcx,8),%edi
  14.62%  ││ │││ ││      ││││││││││   0x00007fec0ab1cdb8:   movabs $0x800000000,%rsi
   2.05%  ││ │││ ││      ││││││││││   0x00007fec0ab1cdc2:   lea    (%rsi,%rdi,1),%rdi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││      ││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   2.63%  ││ │││ ││      ││││││││││↗  0x00007fec0ab1cdc6:   lea    0x11(%rbx),%esi
   0.92%  ││ │││ ││      │││││││││││  0x00007fec0ab1cdc9:   mov    %esi,%esi
   2.02%  ││ │││ ││      │││││││││││  0x00007fec0ab1cdcb:   movsbl (%rsi,%r8,8),%esi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││      │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   2.30%  ││ │││ ││      │││││││││││  0x00007fec0ab1cdd0:   lea    0x2(%rbx),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││      │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   2.44%  ││ │││ ││      │││││││││││  0x00007fec0ab1cdd4:   cmp    $0x3,%esi
          ││ │││ ││╭     │││││││││││  0x00007fec0ab1cdd7:   jge    0x00007fec0ab1cdfd
   0.71%  ││ │││ │││     │││││││││││  0x00007fec0ab1cddd:   cmp    $0x2,%esi
          ││ │││ │││╭    │││││││││││  0x00007fec0ab1cde0:   jge    0x00007fec0ab1cea5
   0.37%  ││ │││ ││││    │││││││││││  0x00007fec0ab1cde6:   cmp    $0x0,%esi
          ││ │││ ││││╭   │││││││││││  0x00007fec0ab1cde9:   je     0x00007fec0ab1ce75
   0.55%  ││ │││ │││││   │││││││││││  0x00007fec0ab1cdef:   cmp    $0x1,%esi
          ││ │││ │││││╭  │││││││││││  0x00007fec0ab1cdf2:   je     0x00007fec0ab1ce8d
          ││ │││ ││││││  │││││││││││  0x00007fec0ab1cdf8:   jmp    0x00007fec0ab1d17a
   0.32%  ││ │││ ││↘│││  │││││││││││  0x00007fec0ab1cdfd:   cmp    $0x3,%esi
   0.83%  ││ │││ ││ │││╭ │││││││││││  0x00007fec0ab1ce00:   je     0x00007fec0ab1ce14
   1.00%  ││ │││ ││ ││││ │││││││││││  0x00007fec0ab1ce06:   cmp    $0x4,%esi
          ││ │││ ││ ││││╭│││││││││││  0x00007fec0ab1ce09:   je     0x00007fec0ab1cebd
          ││ │││ ││ ││││││││││││││││  0x00007fec0ab1ce0f:   jmp    0x00007fec0ab1d17a           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.15%  ││ │││ ││ │││↘││││││││││││  0x00007fec0ab1ce14:   cmp    %rdi,%rax
          ││ │││ ││ │││ ││││││││││││  0x00007fec0ab1ce17:   jne    0x00007fec0ab1d245           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ │││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
          ││ │││ ││ │││ ││││││││││││  0x00007fec0ab1ce1d:   incl   0x18(,%rcx,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ │││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          ││ │││ ││ │││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   2.16%  ││ │││ ││ │││ ││││││││││││  0x00007fec0ab1ce24:   mov    %r9d,%ebx
          ││ │││ ││ │││ │╰││││││││││  0x00007fec0ab1ce27:   jmp    0x00007fec0ab1cd20           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.40%  ││ │↘│ ││ │││ │ ││││││││││  0x00007fec0ab1ce2c:   cmp    %rsi,%r14
          ││ │ │ ││ │││ │ ││││││││││  0x00007fec0ab1ce2f:   jne    0x00007fec0ab1d147           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.22%  ││ │ │ ││ │││ │ ││││││││││  0x00007fec0ab1ce35:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││ │ │ ││ │││ │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.93%  ││ │ │ ││ │││ │ ││││││││││  0x00007fec0ab1ce3c:   nopl   0x0(%rax)
   0.13%  ││ │ │ ││ │││ │ ╰│││││││││  0x00007fec0ab1ce40:   jmp    0x00007fec0ab1cda4
   0.62%  ││ │ ↘ ││ │││ │  │││││││││  0x00007fec0ab1ce45:   cmp    %rsi,%r13
          ││ │   ││ │││ │  │││││││││  0x00007fec0ab1ce48:   jne    0x00007fec0ab1d2fb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││ │   ││ │││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
          ││ │   ││ │││ │  │││││││││  0x00007fec0ab1ce4e:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │   ││ │││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││ │   ││ │││ │  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   3.39%  ││ │   ││ │││ │  ╰││││││││  0x00007fec0ab1ce55:   jmp    0x00007fec0ab1cda4
   0.47%  ││ ↘   ││ │││ │   ││││││││  0x00007fec0ab1ce5a:   nopw   0x0(%rax,%rax,1)
   0.73%  ││     ││ │││ │   ││││││││  0x00007fec0ab1ce60:   cmp    %rsi,%rbp
          ││     ││ │││ │   ││││││││  0x00007fec0ab1ce63:   jne    0x00007fec0ab1d1d7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││ │││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.25%  ││     ││ │││ │   ││││││││  0x00007fec0ab1ce69:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││ │││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          ││     ││ │││ │   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   3.29%  ││     ││ │││ │   ╰│││││││  0x00007fec0ab1ce70:   jmp    0x00007fec0ab1cda4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││     ││ │││ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.29%  ││     ││ │↘│ │    │││││││  0x00007fec0ab1ce75:   cmp    %rdi,%r14
          ││     ││ │ │ │    │││││││  0x00007fec0ab1ce78:   jne    0x00007fec0ab1d29f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││ │ │ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.10%  ││     ││ │ │ │    │││││││  0x00007fec0ab1ce7e:   incl   0xc(,%rcx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││ │ │ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││     ││ │ │ │    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.36%  ││     ││ │ │ │    │││││││  0x00007fec0ab1ce85:   mov    %r9d,%ebx
   0.62%  ││     ││ │ │ │    ╰││││││  0x00007fec0ab1ce88:   jmp    0x00007fec0ab1cd20
   0.84%  ││     ││ │ ↘ │     ││││││  0x00007fec0ab1ce8d:   cmp    %rdi,%r13
          ││     ││ │   │     ││││││  0x00007fec0ab1ce90:   jne    0x00007fec0ab1d1fb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││ │   │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.39%  ││     ││ │   │     ││││││  0x00007fec0ab1ce96:   incl   0x10(,%rcx,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││ │   │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││     ││ │   │     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   2.01%  ││     ││ │   │     ││││││  0x00007fec0ab1ce9d:   mov    %r9d,%ebx
   0.26%  ││     ││ │   │     ╰│││││  0x00007fec0ab1cea0:   jmp    0x00007fec0ab1cd20
   0.63%  ││     ││ ↘   │      │││││  0x00007fec0ab1cea5:   cmp    %rdi,%rbp
          ││     ││     │      │││││  0x00007fec0ab1cea8:   jne    0x00007fec0ab1d2b1           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││     │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.01%  ││     ││     │      │││││  0x00007fec0ab1ceae:   incl   0x14(,%rcx,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││     │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          ││     ││     │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   2.55%  ││     ││     │      │││││  0x00007fec0ab1ceb5:   mov    %r9d,%ebx
   0.00%  ││     ││     │      ╰││││  0x00007fec0ab1ceb8:   jmp    0x00007fec0ab1cd20
   0.33%  ││     ││     ↘       ││││  0x00007fec0ab1cebd:   data16 xchg %ax,%ax
          ││     ││             ││││  0x00007fec0ab1cec0:   cmp    %rdi,%rdx
          ││     ││             ││││  0x00007fec0ab1cec3:   jne    0x00007fec0ab1d2c5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     ││             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.21%  ││     ││             ││││  0x00007fec0ab1cec9:   incl   0x1c(,%rcx,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││     ││             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          ││     ││             ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   1.88%  ││     ││             ││││  0x00007fec0ab1ced0:   mov    %r9d,%ebx
   0.21%  ││     ││             ╰│││  0x00007fec0ab1ced3:   jmp    0x00007fec0ab1cd20
          ││     ↘│              │││  0x00007fec0ab1ced8:   nopl   0x0(%rax,%rax,1)
          ││      │              │││  0x00007fec0ab1cee0:   cmp    %rsi,%rdx
          ││      │              │││  0x00007fec0ab1cee3:   jne    0x00007fec0ab1d20d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││      │              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.59%  ││      │              │││  0x00007fec0ab1cee9:   incl   0x1c(,%rdi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││      │              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          ││      │              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   3.46%  ││      │              ╰││  0x00007fec0ab1cef0:   jmp    0x00007fec0ab1cda4
          │↘      │               ││  0x00007fec0ab1cef5:   mov    $0x0,%rsi
          │       │               ││  0x00007fec0ab1cefc:   nopl   0x0(%rax)
          │       │               ╰│  0x00007fec0ab1cf00:   jmp    0x00007fec0ab1cd4e
          │       ↘                │  0x00007fec0ab1cf05:   mov    $0x0,%rdi
          │                        ╰  0x00007fec0ab1cf0c:   jmp    0x00007fec0ab1cdc6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
          ↘                           0x00007fec0ab1cf11:   mov    0x14(%rsp),%r9d
   0.01%                              0x00007fec0ab1cf16:   data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  97.95%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 733 
   0.85%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 733 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 733 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 733 
   0.69%  <...other 248 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 733 
   1.69%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%          interpreter  method entry point (kind = zerolocals)  
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::hold 
   0.00%            libjvm.so  os::vsnprintf 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%            libjvm.so  MethodMatcher::matches 
   0.00%               [vdso]  __vdso_clock_gettime 
   0.11%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.03%       jvmci, level 4
   1.69%               kernel
   0.10%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%               [vdso]
   0.00%  libjvmcicompiler.so
   0.00%       perf-42324.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 31.25% complete, ETA 00:20:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.782 ns/op
# Warmup Iteration   2: 2.792 ns/op
# Warmup Iteration   3: 2.789 ns/op
# Warmup Iteration   4: 2.788 ns/op
# Warmup Iteration   5: 2.787 ns/op
Iteration   1: 2.747 ns/op
Iteration   2: 2.734 ns/op
Iteration   3: 2.733 ns/op
Iteration   4: 2.731 ns/op
Iteration   5: 2.730 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.735 ±(99.9%) 0.026 ns/op [Average]
  (min, avg, max) = (2.730, 2.735, 2.747), stdev = 0.007
  CI (99.9%): [2.709, 2.762] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 192597 total address lines.
Perf output processed (skipped 58.591 seconds):
 Column 1: cycles (50935 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 

                0x00007ff89ab1b3fa:   nopw   0x0(%rax,%rax,1)
                0x00007ff89ab1b400:   cmp    $0x9d7e,%r9d
                0x00007ff89ab1b407:   jb     0x00007ff89ab1b896
                0x00007ff89ab1b40d:   cmp    $0x9d7f,%r9d
                0x00007ff89ab1b414:   jb     0x00007ff89ab1b896           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                0x00007ff89ab1b41a:   mov    %r11d,0x24(%rsp)
                0x00007ff89ab1b41f:   mov    %r9d,0x20(%rsp)
                0x00007ff89ab1b424:   mov    $0x1,%ebx
                0x00007ff89ab1b429:   nopl   0x0(%rax)
   0.49%        0x00007ff89ab1b430:   cmp    $0x9d7e,%ebx
                0x00007ff89ab1b436:   jae    0x00007ff89ab1b685           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   2.04%        0x00007ff89ab1b43c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.92%        0x00007ff89ab1b441:   test   %edi,%edi
                0x00007ff89ab1b443:   je     0x00007ff89ab1b66a
   1.42%        0x00007ff89ab1b449:   mov    0x8(,%rdi,8),%ecx
   9.04%        0x00007ff89ab1b450:   movabs $0x800000000,%r9
   1.72%        0x00007ff89ab1b45a:   lea    (%r9,%rcx,1),%rcx            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   3.59%        0x00007ff89ab1b45e:   movsbl 0x10(%rbx,%r8,8),%r9d        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.96%        0x00007ff89ab1b464:   cmp    $0x3,%r9d
          ╭     0x00007ff89ab1b468:   jge    0x00007ff89ab1b495
          │     0x00007ff89ab1b46e:   cmp    $0x2,%r9d
          │     0x00007ff89ab1b472:   jge    0x00007ff89ab1b57a
   1.16%  │     0x00007ff89ab1b478:   cmp    $0x0,%r9d
   1.08%  │     0x00007ff89ab1b47c:   nopl   0x0(%rax)
   0.13%  │     0x00007ff89ab1b480:   je     0x00007ff89ab1b565
   0.00%  │     0x00007ff89ab1b486:   cmp    $0x1,%r9d
          │╭    0x00007ff89ab1b48a:   je     0x00007ff89ab1b4b8
          ││    0x00007ff89ab1b490:   jmp    0x00007ff89ab1bb6b
   0.41%  ↘│    0x00007ff89ab1b495:   cmp    $0x5,%r9d
           │    0x00007ff89ab1b499:   jg     0x00007ff89ab1bb6b
   0.64%   │    0x00007ff89ab1b49f:   cmp    $0x5,%r9d
           │    0x00007ff89ab1b4a3:   jge    0x00007ff89ab1b655
   1.49%   │    0x00007ff89ab1b4a9:   cmp    $0x3,%r9d
           │    0x00007ff89ab1b4ad:   je     0x00007ff89ab1b5ae
           │    0x00007ff89ab1b4b3:   jmp    0x00007ff89ab1b639           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.28%   ↘    0x00007ff89ab1b4b8:   nopl   0x0(%rax,%rax,1)
   1.53%        0x00007ff89ab1b4c0:   cmp    %rcx,%r14
                0x00007ff89ab1b4c3:   jne    0x00007ff89ab1ba18           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.17%        0x00007ff89ab1b4c9:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   5.71%        0x00007ff89ab1b4d0:   mov    0x14(%r10,%rbx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.57%        0x00007ff89ab1b4d5:   test   %r9d,%r9d
                0x00007ff89ab1b4d8:   je     0x00007ff89ab1b676
   1.14%        0x00007ff89ab1b4de:   mov    0x8(,%r9,8),%ecx
  12.43%        0x00007ff89ab1b4e6:   movabs $0x800000000,%rdi
   1.44%        0x00007ff89ab1b4f0:   lea    (%rdi,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   2.45%        0x00007ff89ab1b4f4:   lea    0x11(%rbx),%edi
   0.66%        0x00007ff89ab1b4f7:   mov    %edi,%edi
   2.39%        0x00007ff89ab1b4f9:   movsbl (%rdi,%r8,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.64%        0x00007ff89ab1b4fe:   lea    0x2(%rbx),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   2.55%        0x00007ff89ab1b502:   cmp    $0x3,%edi
            ╭   0x00007ff89ab1b505:   jge    0x00007ff89ab1b52b
   0.01%    │   0x00007ff89ab1b50b:   cmp    $0x2,%edi
            │   0x00007ff89ab1b50e:   jge    0x00007ff89ab1b5de
   1.66%    │   0x00007ff89ab1b514:   cmp    $0x0,%edi
            │   0x00007ff89ab1b517:   je     0x00007ff89ab1b5c5
            │   0x00007ff89ab1b51d:   cmp    $0x1,%edi
            │╭  0x00007ff89ab1b520:   je     0x00007ff89ab1b54b
            ││  0x00007ff89ab1b526:   jmp    0x00007ff89ab1bb16
   0.59%    ↘│  0x00007ff89ab1b52b:   cmp    $0x5,%edi
             │  0x00007ff89ab1b52e:   jg     0x00007ff89ab1bb16
   0.00%     │  0x00007ff89ab1b534:   cmp    $0x5,%edi
             │  0x00007ff89ab1b537:   jge    0x00007ff89ab1b5f9
   0.45%     │  0x00007ff89ab1b53d:   cmp    $0x3,%edi
   1.22%     │  0x00007ff89ab1b540:   je     0x00007ff89ab1b595
   0.66%     │  0x00007ff89ab1b546:   jmp    0x00007ff89ab1b619           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
             ↘  0x00007ff89ab1b54b:   cmp    %rcx,%r14
                0x00007ff89ab1b54e:   jne    0x00007ff89ab1b9ad           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
                0x00007ff89ab1b554:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
                0x00007ff89ab1b55c:   mov    %r11d,%ebx
                0x00007ff89ab1b55f:   nop
                0x00007ff89ab1b560:   jmp    0x00007ff89ab1b430           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  66.63%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
            0x00007ff89ab1b590:   jmp    0x00007ff89ab1b4d0
            0x00007ff89ab1b595:   cmp    %rcx,%rbp
            0x00007ff89ab1b598:   jne    0x00007ff89ab1b9f4           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
            0x00007ff89ab1b59e:   incl   0x18(,%r9,8)                 ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
            0x00007ff89ab1b5a6:   mov    %r11d,%ebx
            0x00007ff89ab1b5a9:   jmp    0x00007ff89ab1b430
   0.20%    0x00007ff89ab1b5ae:   cmp    %rcx,%rbp
            0x00007ff89ab1b5b1:   jne    0x00007ff89ab1bafc           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
            0x00007ff89ab1b5b7:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   6.55%    0x00007ff89ab1b5be:   xchg   %ax,%ax
            0x00007ff89ab1b5c0:   jmp    0x00007ff89ab1b4d0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%    0x00007ff89ab1b5c5:   cmp    %rcx,%rsi
            0x00007ff89ab1b5c8:   jne    0x00007ff89ab1b9bc           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.14%    0x00007ff89ab1b5ce:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   3.09%    0x00007ff89ab1b5d6:   mov    %r11d,%ebx
   0.21%    0x00007ff89ab1b5d9:   jmp    0x00007ff89ab1b430
   0.83%    0x00007ff89ab1b5de:   xchg   %ax,%ax
   0.99%    0x00007ff89ab1b5e0:   cmp    %rcx,%r13
            0x00007ff89ab1b5e3:   jne    0x00007ff89ab1b945           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.80%    0x00007ff89ab1b5e9:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   2.79%    0x00007ff89ab1b5f1:   mov    %r11d,%ebx
   0.24%    0x00007ff89ab1b5f4:   jmp    0x00007ff89ab1b430
            0x00007ff89ab1b5f9:   nopl   0x0(%rax)
            0x00007ff89ab1b600:   cmp    %rcx,%rdx
            0x00007ff89ab1b603:   jne    0x00007ff89ab1ba8c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
            0x00007ff89ab1b609:   incl   0x20(,%r9,8)                 ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
            0x00007ff89ab1b611:   mov    %r11d,%ebx
            0x00007ff89ab1b614:   jmp    0x00007ff89ab1b430
   0.00%    0x00007ff89ab1b619:   nopl   0x0(%rax)
....................................................................................................
  16.85%  <total for region 2>

....[Hottest Regions]...............................................................................
  66.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 
  16.85%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 
   9.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 
   4.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 
   0.77%               kernel  [unknown] 
   0.24%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 
   0.02%               kernel  [unknown] 
   1.28%  <...other 386 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 742 
   2.44%               kernel  [unknown] 
   0.04%         libc-2.31.so  [unknown] 
   0.04%                       <unknown> 
   0.03%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  decode_env::print_hook_comments 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.15%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.19%       jvmci, level 4
   2.44%               kernel
   0.16%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%       perf-42382.map
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 37.50% complete, ETA 00:18:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.028 ns/op
# Warmup Iteration   2: 3.006 ns/op
# Warmup Iteration   3: 3.006 ns/op
# Warmup Iteration   4: 3.009 ns/op
# Warmup Iteration   5: 3.008 ns/op
Iteration   1: 3.009 ns/op
Iteration   2: 3.009 ns/op
Iteration   3: 3.007 ns/op
Iteration   4: 3.005 ns/op
Iteration   5: 3.009 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.008 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (3.005, 3.008, 3.009), stdev = 0.002
  CI (99.9%): [3.001, 3.015] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 191185 total address lines.
Perf output processed (skipped 58.578 seconds):
 Column 1: cycles (50969 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 736 

                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                                                0x00007fd0a2b1c53e:   xchg   %ax,%ax
                                                0x00007fd0a2b1c540:   cmpl   $0x9d7e,0x20(%rsp)
                                                0x00007fd0a2b1c548:   jb     0x00007fd0a2b1ca96
                                                0x00007fd0a2b1c54e:   cmpl   $0x9d7f,0x20(%rsp)
                                                0x00007fd0a2b1c556:   jb     0x00007fd0a2b1ca96           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                                                0x00007fd0a2b1c55c:   mov    $0x1,%ebx
                                                0x00007fd0a2b1c561:   data16 data16 nopw 0x0(%rax,%rax,1)
                                                0x00007fd0a2b1c56c:   data16 data16 xchg %ax,%ax
   1.73%                       ↗ ↗↗↗↗   ↗↗      0x00007fd0a2b1c570:   cmp    $0x9d7e,%ebx
          ╭                    │ ││││   ││      0x00007fd0a2b1c576:   jae    0x00007fd0a2b1c825           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                    │ ││││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   1.81%  │                    │ ││││   ││      0x00007fd0a2b1c57c:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                    │ ││││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.04%  │                    │ ││││   ││      0x00007fd0a2b1c581:   test   %edi,%edi
          │╭                   │ ││││   ││      0x00007fd0a2b1c583:   je     0x00007fd0a2b1c80a
   1.71%  ││                   │ ││││   ││      0x00007fd0a2b1c589:   mov    0x8(,%rdi,8),%ecx
  14.02%  ││                   │ ││││   ││      0x00007fd0a2b1c590:   movabs $0x800000000,%r11
   0.97%  ││                   │ ││││   ││      0x00007fd0a2b1c59a:   lea    (%r11,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││                   │ ││││   ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   3.03%  ││                   │ ││││   ││  ↗   0x00007fd0a2b1c59e:   movsbl 0x10(%rbx,%r8,8),%r11d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                   │ ││││   ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.10%  ││                   │ ││││   ││  │   0x00007fd0a2b1c5a4:   cmp    $0x4,%r11d
          ││╭                  │ ││││   ││  │   0x00007fd0a2b1c5a8:   jge    0x00007fd0a2b1c5e5
   0.76%  │││                  │ ││││   ││  │   0x00007fd0a2b1c5ae:   cmp    $0x2,%r11d
          │││╭                 │ ││││   ││  │   0x00007fd0a2b1c5b2:   jge    0x00007fd0a2b1c5d5
   0.16%  ││││                 │ ││││   ││  │   0x00007fd0a2b1c5b8:   cmp    $0x0,%r11d
   0.79%  ││││                 │ ││││   ││  │   0x00007fd0a2b1c5bc:   nopl   0x0(%rax)
   0.66%  ││││╭                │ ││││   ││  │   0x00007fd0a2b1c5c0:   je     0x00007fd0a2b1c60b
   0.07%  │││││                │ ││││   ││  │   0x00007fd0a2b1c5c6:   cmp    $0x1,%r11d
          │││││╭               │ ││││   ││  │   0x00007fd0a2b1c5ca:   je     0x00007fd0a2b1c6c5
          ││││││               │ ││││   ││  │   0x00007fd0a2b1c5d0:   jmp    0x00007fd0a2b1cd3c
   0.23%  │││↘││               │ ││││   ││  │   0x00007fd0a2b1c5d5:   cmp    $0x2,%r11d
          │││ ││╭              │ ││││   ││  │   0x00007fd0a2b1c5d9:   je     0x00007fd0a2b1c7dd
   0.31%  │││ │││              │ ││││   ││  │   0x00007fd0a2b1c5df:   nop
          │││ │││╭             │ ││││   ││  │   0x00007fd0a2b1c5e0:   jmp    0x00007fd0a2b1c7f5
   0.54%  ││↘ ││││             │ ││││   ││  │   0x00007fd0a2b1c5e5:   cmp    $0x6,%r11d
          ││  ││││             │ ││││   ││  │   0x00007fd0a2b1c5e9:   jg     0x00007fd0a2b1cd3c
   0.63%  ││  ││││             │ ││││   ││  │   0x00007fd0a2b1c5ef:   cmp    $0x6,%r11d
          ││  ││││╭            │ ││││   ││  │   0x00007fd0a2b1c5f3:   jge    0x00007fd0a2b1c775
   1.07%  ││  │││││            │ ││││   ││  │   0x00007fd0a2b1c5f9:   cmp    $0x4,%r11d
   0.01%  ││  │││││            │ ││││   ││  │   0x00007fd0a2b1c5fd:   data16 xchg %ax,%ax
   0.43%  ││  │││││╭           │ ││││   ││  │   0x00007fd0a2b1c600:   je     0x00007fd0a2b1c75d
   0.16%  ││  ││││││╭          │ ││││   ││  │   0x00007fd0a2b1c606:   jmp    0x00007fd0a2b1c78a           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││  │││││││          │ ││││   ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.14%  ││  ↘││││││          │ ││││   ││  │   0x00007fd0a2b1c60b:   cmp    %rcx,%r9
          ││   ││││││          │ ││││   ││  │   0x00007fd0a2b1c60e:   jne    0x00007fd0a2b1cc57           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││││          │ ││││   ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.22%  ││   ││││││          │ ││││   ││  │   0x00007fd0a2b1c614:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││││          │ ││││   ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││   ││││││          │ ││││   ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.59%  ││   ││││││          │↗││││↗↗↗││↗↗│   0x00007fd0a2b1c61b:   mov    0x14(%r10,%rbx,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││││││          ││││││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.79%  ││   ││││││          ││││││││││││││   0x00007fd0a2b1c620:   test   %r11d,%r11d
          ││   ││││││╭         ││││││││││││││   0x00007fd0a2b1c623:   je     0x00007fd0a2b1c816
   1.10%  ││   │││││││         ││││││││││││││   0x00007fd0a2b1c629:   mov    0x8(,%r11,8),%ecx
  10.92%  ││   │││││││         ││││││││││││││   0x00007fd0a2b1c631:   movabs $0x800000000,%rdi
   0.43%  ││   │││││││         ││││││││││││││   0x00007fd0a2b1c63b:   lea    (%rdi,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │││││││         ││││││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   1.73%  ││   │││││││         ││││││││││││││↗  0x00007fd0a2b1c63f:   lea    0x11(%rbx),%edi
   0.82%  ││   │││││││         │││││││││││││││  0x00007fd0a2b1c642:   mov    %edi,%edi
   3.33%  ││   │││││││         │││││││││││││││  0x00007fd0a2b1c644:   movsbl (%rdi,%r8,8),%edi            ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││   │││││││         │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.67%  ││   │││││││         │││││││││││││││  0x00007fd0a2b1c649:   lea    0x2(%rbx),%r10d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   │││││││         │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.89%  ││   │││││││         │││││││││││││││  0x00007fd0a2b1c64d:   cmp    $0x4,%edi
          ││   │││││││╭        │││││││││││││││  0x00007fd0a2b1c650:   jge    0x00007fd0a2b1c685
   0.59%  ││   ││││││││        │││││││││││││││  0x00007fd0a2b1c656:   cmp    $0x2,%edi
          ││   ││││││││╭       │││││││││││││││  0x00007fd0a2b1c659:   jge    0x00007fd0a2b1c676
   0.93%  ││   │││││││││       │││││││││││││││  0x00007fd0a2b1c65f:   cmp    $0x0,%edi
          ││   │││││││││╭      │││││││││││││││  0x00007fd0a2b1c662:   je     0x00007fd0a2b1c6a5
   0.34%  ││   ││││││││││      │││││││││││││││  0x00007fd0a2b1c668:   cmp    $0x1,%edi
          ││   ││││││││││╭     │││││││││││││││  0x00007fd0a2b1c66b:   je     0x00007fd0a2b1c6da
          ││   │││││││││││     │││││││││││││││  0x00007fd0a2b1c671:   jmp    0x00007fd0a2b1cab5
   0.75%  ││   ││││││││↘││     │││││││││││││││  0x00007fd0a2b1c676:   cmp    $0x2,%edi
          ││   ││││││││ ││╭    │││││││││││││││  0x00007fd0a2b1c679:   je     0x00007fd0a2b1c79f
          ││   ││││││││ │││    │││││││││││││││  0x00007fd0a2b1c67f:   nop
   0.22%  ││   ││││││││ │││╭   │││││││││││││││  0x00007fd0a2b1c680:   jmp    0x00007fd0a2b1c7bd
   0.23%  ││   │││││││↘ ││││   │││││││││││││││  0x00007fd0a2b1c685:   cmp    $0x6,%edi
          ││   │││││││  ││││   │││││││││││││││  0x00007fd0a2b1c688:   jg     0x00007fd0a2b1cab5
   1.65%  ││   │││││││  ││││   │││││││││││││││  0x00007fd0a2b1c68e:   cmp    $0x6,%edi
          ││   │││││││  ││││╭  │││││││││││││││  0x00007fd0a2b1c691:   jge    0x00007fd0a2b1c71d
   0.02%  ││   │││││││  │││││  │││││││││││││││  0x00007fd0a2b1c697:   cmp    $0x4,%edi
          ││   │││││││  │││││╭ │││││││││││││││  0x00007fd0a2b1c69a:   je     0x00007fd0a2b1c73d
   0.49%  ││   │││││││  ││││││╭│││││││││││││││  0x00007fd0a2b1c6a0:   jmp    0x00007fd0a2b1c6fd           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││   │││││││  ││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%  ││   │││││││  ↘│││││││││││││││││││││  0x00007fd0a2b1c6a5:   cmp    %rcx,%r9
          ││   │││││││   │││││││││││││││││││││  0x00007fd0a2b1c6a8:   jne    0x00007fd0a2b1ccd0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││   │││││││   │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.20%  ││   │││││││   │││││││││││││││││││││  0x00007fd0a2b1c6ae:   incl   0xc(,%r11,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││   │││││││   │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││   │││││││   │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.06%  ││   │││││││   │││││││││││││││││││││  0x00007fd0a2b1c6b6:   mov    %r10d,%ebx
   0.03%  ││   │││││││   │││││││││││││││││││││  0x00007fd0a2b1c6b9:   mov    (%rsp),%r10
   0.17%  ││   │││││││   │││││││││││││││││││││  0x00007fd0a2b1c6bd:   data16 xchg %ax,%ax
   0.60%  ││   │││││││   ││││││╰││││││││││││││  0x00007fd0a2b1c6c0:   jmp    0x00007fd0a2b1c570
   0.02%  ││   ↘││││││   ││││││ ││││││││││││││  0x00007fd0a2b1c6c5:   cmp    %rcx,%rsi
          ││    ││││││   ││││││ ││││││││││││││  0x00007fd0a2b1c6c8:   jne    0x00007fd0a2b1cbdb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││   ││││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.94%  ││    ││││││   ││││││ ││││││││││││││  0x00007fd0a2b1c6ce:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││   ││││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││    ││││││   ││││││ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   1.29%  ││    ││││││   ││││││ ╰│││││││││││││  0x00007fd0a2b1c6d5:   jmp    0x00007fd0a2b1c61b
   0.28%  ││    ││││││   ↘│││││  │││││││││││││  0x00007fd0a2b1c6da:   nopw   0x0(%rax,%rax,1)
   0.02%  ││    ││││││    │││││  │││││││││││││  0x00007fd0a2b1c6e0:   cmp    %rcx,%rsi
          ││    ││││││    │││││  │││││││││││││  0x00007fd0a2b1c6e3:   jne    0x00007fd0a2b1cd68           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    │││││  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.35%  ││    ││││││    │││││  │││││││││││││  0x00007fd0a2b1c6e9:   incl   0x10(,%r11,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    │││││  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││    ││││││    │││││  │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   1.86%  ││    ││││││    │││││  │││││││││││││  0x00007fd0a2b1c6f1:   mov    %r10d,%ebx
   0.26%  ││    ││││││    │││││  │││││││││││││  0x00007fd0a2b1c6f4:   mov    (%rsp),%r10
   0.21%  ││    ││││││    │││││  ╰││││││││││││  0x00007fd0a2b1c6f8:   jmp    0x00007fd0a2b1c570
   0.15%  ││    ││││││    ││││↘   ││││││││││││  0x00007fd0a2b1c6fd:   data16 xchg %ax,%ax
   0.28%  ││    ││││││    ││││    ││││││││││││  0x00007fd0a2b1c700:   cmp    %rcx,%rax
          ││    ││││││    ││││    ││││││││││││  0x00007fd0a2b1c703:   jne    0x00007fd0a2b1cc07           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    ││││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   0.01%  ││    ││││││    ││││    ││││││││││││  0x00007fd0a2b1c709:   incl   0x20(,%r11,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    ││││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
          ││    ││││││    ││││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   2.46%  ││    ││││││    ││││    ││││││││││││  0x00007fd0a2b1c711:   mov    %r10d,%ebx
   0.01%  ││    ││││││    ││││    ││││││││││││  0x00007fd0a2b1c714:   mov    (%rsp),%r10
   0.28%  ││    ││││││    ││││    ╰│││││││││││  0x00007fd0a2b1c718:   jmp    0x00007fd0a2b1c570
   0.26%  ││    ││││││    ││↘│     │││││││││││  0x00007fd0a2b1c71d:   data16 xchg %ax,%ax
          ││    ││││││    ││ │     │││││││││││  0x00007fd0a2b1c720:   cmp    %rcx,%rdx
          ││    ││││││    ││ │     │││││││││││  0x00007fd0a2b1c723:   jne    0x00007fd0a2b1cd8c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    ││ │     │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
          ││    ││││││    ││ │     │││││││││││  0x00007fd0a2b1c729:   incl   0x24(,%r11,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    ││ │     │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
          ││    ││││││    ││ │     │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   2.30%  ││    ││││││    ││ │     │││││││││││  0x00007fd0a2b1c731:   mov    %r10d,%ebx
          ││    ││││││    ││ │     │││││││││││  0x00007fd0a2b1c734:   mov    (%rsp),%r10
   0.56%  ││    ││││││    ││ │     ╰││││││││││  0x00007fd0a2b1c738:   jmp    0x00007fd0a2b1c570
   0.20%  ││    ││││││    ││ ↘      ││││││││││  0x00007fd0a2b1c73d:   data16 xchg %ax,%ax
          ││    ││││││    ││        ││││││││││  0x00007fd0a2b1c740:   cmp    %rcx,%rbp
          ││    ││││││    ││        ││││││││││  0x00007fd0a2b1c743:   jne    0x00007fd0a2b1cb06           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    ││        ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.88%  ││    ││││││    ││        ││││││││││  0x00007fd0a2b1c749:   incl   0x1c(,%r11,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││││││    ││        ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          ││    ││││││    ││        ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   1.50%  ││    ││││││    ││        ││││││││││  0x00007fd0a2b1c751:   mov    %r10d,%ebx
   0.55%  ││    ││││││    ││        ││││││││││  0x00007fd0a2b1c754:   mov    (%rsp),%r10
   0.01%  ││    ││││││    ││        ╰│││││││││  0x00007fd0a2b1c758:   jmp    0x00007fd0a2b1c570
   0.20%  ││    │││↘││    ││         │││││││││  0x00007fd0a2b1c75d:   data16 xchg %ax,%ax
   0.46%  ││    │││ ││    ││         │││││││││  0x00007fd0a2b1c760:   cmp    %rcx,%rbp
          ││    │││ ││    ││         │││││││││  0x00007fd0a2b1c763:   jne    0x00007fd0a2b1cb4a           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    │││ ││    ││         │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   0.01%  ││    │││ ││    ││         │││││││││  0x00007fd0a2b1c769:   incl   0x1c(,%rdi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          ││    │││ ││    ││         │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          ││    │││ ││    ││         │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   1.20%  ││    │││ ││    ││         ╰││││││││  0x00007fd0a2b1c770:   jmp    0x00007fd0a2b1c61b
   0.60%  ││    ││↘ ││    ││          ││││││││  0x00007fd0a2b1c775:   cmp    %rcx,%rdx
          ││    ││  ││    ││          ││││││││  0x00007fd0a2b1c778:   jne    0x00007fd0a2b1cd0c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││  ││    ││          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
          ││    ││  ││    ││          ││││││││  0x00007fd0a2b1c77e:   incl   0x24(,%rdi,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││  ││    ││          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
          ││    ││  ││    ││          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   2.93%  ││    ││  ││    ││          ╰│││││││  0x00007fd0a2b1c785:   jmp    0x00007fd0a2b1c61b
   0.97%  ││    ││  ↘│    ││           │││││││  0x00007fd0a2b1c78a:   cmp    %rcx,%rax
          ││    ││   │    ││           │││││││  0x00007fd0a2b1c78d:   jne    0x00007fd0a2b1cc19           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││   │    ││           │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   0.00%  ││    ││   │    ││           │││││││  0x00007fd0a2b1c793:   incl   0x20(,%rdi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││   │    ││           │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
          ││    ││   │    ││           │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   2.16%  ││    ││   │    ││           ╰││││││  0x00007fd0a2b1c79a:   jmp    0x00007fd0a2b1c61b
   1.10%  ││    ││   │    ↘│            ││││││  0x00007fd0a2b1c79f:   nop
          ││    ││   │     │            ││││││  0x00007fd0a2b1c7a0:   cmp    %rcx,%r14
          ││    ││   │     │            ││││││  0x00007fd0a2b1c7a3:   jne    0x00007fd0a2b1cce5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││   │     │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
          ││    ││   │     │            ││││││  0x00007fd0a2b1c7a9:   incl   0x14(,%r11,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││   │     │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          ││    ││   │     │            ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   1.83%  ││    ││   │     │            ││││││  0x00007fd0a2b1c7b1:   mov    %r10d,%ebx
          ││    ││   │     │            ││││││  0x00007fd0a2b1c7b4:   mov    (%rsp),%r10
   0.01%  ││    ││   │     │            ╰│││││  0x00007fd0a2b1c7b8:   jmp    0x00007fd0a2b1c570
   0.74%  ││    ││   │     ↘             │││││  0x00007fd0a2b1c7bd:   data16 xchg %ax,%ax
          ││    ││   │                   │││││  0x00007fd0a2b1c7c0:   cmp    %rcx,%r13
          ││    ││   │                   │││││  0x00007fd0a2b1c7c3:   jne    0x00007fd0a2b1cc6c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││    ││   │                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
          ││    ││   │                   │││││  0x00007fd0a2b1c7c9:   incl   0x18(,%r11,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││    ││   │                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          ││    ││   │                   │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   2.35%  ││    ││   │                   │││││  0x00007fd0a2b1c7d1:   mov    %r10d,%ebx
          ││    ││   │                   │││││  0x00007fd0a2b1c7d4:   mov    (%rsp),%r10
   0.02%  ││    ││   │                   ╰││││  0x00007fd0a2b1c7d8:   jmp    0x00007fd0a2b1c570
   0.89%  ││    ↘│   │                    ││││  0x00007fd0a2b1c7dd:   data16 xchg %ax,%ax
          ││     │   │                    ││││  0x00007fd0a2b1c7e0:   cmp    %rcx,%r14
          ││     │   │                    ││││  0x00007fd0a2b1c7e3:   jne    0x00007fd0a2b1ccf7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││     │   │                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
          ││     │   │                    ││││  0x00007fd0a2b1c7e9:   incl   0x14(,%rdi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          ││     │   │                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          ││     │   │                    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   1.94%  ││     │   │                    ╰│││  0x00007fd0a2b1c7f0:   jmp    0x00007fd0a2b1c61b
   0.66%  ││     ↘   │                     │││  0x00007fd0a2b1c7f5:   cmp    %rcx,%r13
          ││         │                     │││  0x00007fd0a2b1c7f8:   jne    0x00007fd0a2b1cb80           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││         │                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
          ││         │                     │││  0x00007fd0a2b1c7fe:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          ││         │                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          ││         │                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   1.69%  ││         │                     ╰││  0x00007fd0a2b1c805:   jmp    0x00007fd0a2b1c61b
          │↘         │                      ││  0x00007fd0a2b1c80a:   mov    $0x0,%rcx
          │          │                      ╰│  0x00007fd0a2b1c811:   jmp    0x00007fd0a2b1c59e
          │          ↘                       │  0x00007fd0a2b1c816:   mov    $0x0,%rcx
          │                                  │  0x00007fd0a2b1c81d:   data16 xchg %ax,%ax
          │                                  ╰  0x00007fd0a2b1c820:   jmp    0x00007fd0a2b1c63f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   0.00%  ↘                                     0x00007fd0a2b1c825:   mov    %r10,%rcx
                                                0x00007fd0a2b1c828:   mov    0x20(%rsp),%r10d
   0.01%                                        0x00007fd0a2b1c82d:   data16 xchg %ax,%ax
                                                0x00007fd0a2b1c830:   mov    0x24(%rsp),%r11d
                                                0x00007fd0a2b1c835:   data16 data16 nopw 0x0(%rax,%rax,1)
                                                0x00007fd0a2b1c840:   cmp    $0x9d80,%ebx
                                                0x00007fd0a2b1c846:   jae    0x00007fd0a2b1c9f3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
                                                0x00007fd0a2b1c84c:   cmp    %ebx,%r11d
                                                0x00007fd0a2b1c84f:   jbe    0x00007fd0a2b1cba5           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
                                                0x00007fd0a2b1c855:   cmp    %ebx,%r10d
                                                0x00007fd0a2b1c858:   jbe    0x00007fd0a2b1cadc           ;*baload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.56%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 736 
   1.29%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 736 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 736 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 736 
   0.66%  <...other 234 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 736 
   2.06%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  decode_env::print_hook_comments 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  _int_memalign 
   0.00%          interpreter  nofast_aload_0  236 nofast_aload_0  
   0.00%          interpreter  dup  89 dup  
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%            libjvm.so  event_to_env 
   0.00%            libjvm.so  xmlStream::write_text 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.63%       jvmci, level 4
   2.06%               kernel
   0.12%            libjvm.so
   0.06%         libc-2.31.so
   0.06%                     
   0.02%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.00%          c1, level 3
   0.00%       perf-42440.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 43.75% complete, ETA 00:16:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.116 ns/op
# Warmup Iteration   2: 3.065 ns/op
# Warmup Iteration   3: 3.010 ns/op
# Warmup Iteration   4: 3.043 ns/op
# Warmup Iteration   5: 3.015 ns/op
Iteration   1: 3.012 ns/op
Iteration   2: 3.021 ns/op
Iteration   3: 3.019 ns/op
Iteration   4: 3.019 ns/op
Iteration   5: 3.020 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  3.018 ±(99.9%) 0.015 ns/op [Average]
  (min, avg, max) = (3.012, 3.018, 3.021), stdev = 0.004
  CI (99.9%): [3.004, 3.033] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 196599 total address lines.
Perf output processed (skipped 58.647 seconds):
 Column 1: cycles (51081 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 

                 0x00007f4256b1e566:   cmp    $0x7,%r10d
                 0x00007f4256b1e56a:   je     0x00007f4256b1e7c8
                 0x00007f4256b1e570:   jmp    0x00007f4256b1ee71           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                 0x00007f4256b1e575:   cmp    %rcx,%rax
                 0x00007f4256b1e578:   jne    0x00007f4256b1ed09           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
                 0x00007f4256b1e57e:   incl   0x24(,%rdi,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   0.51%      ↗  0x00007f4256b1e585:   mov    (%rsp),%r10
   0.92%      │  0x00007f4256b1e589:   mov    0x14(%r10,%rbx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.99%      │  0x00007f4256b1e58e:   test   %ecx,%ecx
              │  0x00007f4256b1e590:   je     0x00007f4256b1e806
   3.25%      │  0x00007f4256b1e596:   mov    0x8(,%rcx,8),%edi
  10.43%      │  0x00007f4256b1e59d:   movabs $0x800000000,%r10
   0.80%      │  0x00007f4256b1e5a7:   lea    (%r10,%rdi,1),%rdi           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
   3.27%      │  0x00007f4256b1e5ab:   lea    0x11(%rbx),%r10d
   1.74%      │  0x00007f4256b1e5af:   mov    %r10d,%r10d
   0.52%      │  0x00007f4256b1e5b2:   movsbl (%r10,%r8,8),%r10d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.08%      │  0x00007f4256b1e5b7:   lea    0x2(%rbx),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   3.41%      │  0x00007f4256b1e5bb:   cmp    $0x4,%r10d
   1.63%      │  0x00007f4256b1e5bf:   nop
   0.46%  ╭   │  0x00007f4256b1e5c0:   jge    0x00007f4256b1e5f5
   0.83%  │   │  0x00007f4256b1e5c6:   cmp    $0x3,%r10d
          │   │  0x00007f4256b1e5ca:   jge    0x00007f4256b1e706
   1.18%  │   │  0x00007f4256b1e5d0:   cmp    $0x2,%r10d
          │   │  0x00007f4256b1e5d4:   jge    0x00007f4256b1e68c
   0.78%  │   │  0x00007f4256b1e5da:   cmp    $0x0,%r10d
          │   │  0x00007f4256b1e5de:   xchg   %ax,%ax
   0.01%  │   │  0x00007f4256b1e5e0:   je     0x00007f4256b1e78a
          │   │  0x00007f4256b1e5e6:   cmp    $0x1,%r10d
          │╭  │  0x00007f4256b1e5ea:   je     0x00007f4256b1e666
          ││  │  0x00007f4256b1e5f0:   jmp    0x00007f4256b1ec9b
   0.07%  ↘│  │  0x00007f4256b1e5f5:   cmp    $0x6,%r10d
           │╭ │  0x00007f4256b1e5f9:   jge    0x00007f4256b1e60e
   0.77%   ││ │  0x00007f4256b1e5ff:   cmp    $0x4,%r10d
           ││ │  0x00007f4256b1e603:   je     0x00007f4256b1e6b2
           ││ │  0x00007f4256b1e609:   jmp    0x00007f4256b1e6d8
   1.83%   │↘ │  0x00007f4256b1e60e:   cmp    $0x6,%r10d
           │ ╭│  0x00007f4256b1e612:   je     0x00007f4256b1e62b
           │ ││  0x00007f4256b1e618:   cmp    $0x7,%r10d
           │ ││  0x00007f4256b1e61c:   nopl   0x0(%rax)
           │ ││  0x00007f4256b1e620:   je     0x00007f4256b1e7dd
           │ ││  0x00007f4256b1e626:   jmp    0x00007f4256b1ec9b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.52%   │ ↘│  0x00007f4256b1e62b:   cmp    %rdi,%rax
           │  │  0x00007f4256b1e62e:   jne    0x00007f4256b1eb46           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
           │  │  0x00007f4256b1e634:   incl   0x24(,%rcx,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   4.13%   │  │  0x00007f4256b1e63b:   mov    %r11d,%ebx
           │  │  0x00007f4256b1e63e:   mov    (%rsp),%r10
           │  │  0x00007f4256b1e642:   movabs $0x800c27030,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
           │  │  0x00007f4256b1e64c:   jmp    0x00007f4256b1e4d0
   1.04%   │  │  0x00007f4256b1e651:   cmp    %rcx,%r9
           │  │  0x00007f4256b1e654:   jne    0x00007f4256b1ec89           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.06%   │  │  0x00007f4256b1e65a:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   3.70%   │  ╰  0x00007f4256b1e661:   jmp    0x00007f4256b1e585
           ↘     0x00007f4256b1e666:   cmp    %rdi,%r9
                 0x00007f4256b1e669:   jne    0x00007f4256b1edb1           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
                 0x00007f4256b1e66f:   incl   0x10(,%rcx,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
                 0x00007f4256b1e676:   mov    %r11d,%ebx
                 0x00007f4256b1e679:   mov    (%rsp),%r10
....................................................................................................
  46.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 

               0x00007f4256b1e49a:   jb     0x00007f4256b1eb25           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
               0x00007f4256b1e4a0:   cmpl   $0x9d7e,0x20(%rsp)
   0.00%       0x00007f4256b1e4a8:   jb     0x00007f4256b1eb25
               0x00007f4256b1e4ae:   cmpl   $0x9d7f,0x20(%rsp)
               0x00007f4256b1e4b6:   jb     0x00007f4256b1eb25           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
               0x00007f4256b1e4bc:   mov    $0x1,%ebx
               0x00007f4256b1e4c1:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007f4256b1e4cc:   data16 data16 xchg %ax,%ax
   4.48%       0x00007f4256b1e4d0:   cmp    $0x9d7e,%ebx
               0x00007f4256b1e4d6:   jae    0x00007f4256b1e81e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@15 (line 182)
   0.03%       0x00007f4256b1e4dc:   mov    0x10(%r10,%rbx,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   0.70%       0x00007f4256b1e4e1:   test   %edi,%edi
               0x00007f4256b1e4e3:   je     0x00007f4256b1e812
   0.71%       0x00007f4256b1e4e9:   mov    0x8(,%rdi,8),%ecx
   9.80%       0x00007f4256b1e4f0:   movabs $0x800000000,%r10
   0.02%       0x00007f4256b1e4fa:   lea    (%r10,%rcx,1),%rcx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
   1.91%       0x00007f4256b1e4fe:   movsbl 0x10(%rbx,%r8,8),%r10d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.38%       0x00007f4256b1e504:   cmp    $0x4,%r10d
          ╭    0x00007f4256b1e508:   jge    0x00007f4256b1e53f
   1.41%  │    0x00007f4256b1e50e:   cmp    $0x3,%r10d
          │    0x00007f4256b1e512:   jge    0x00007f4256b1e775
          │    0x00007f4256b1e518:   cmp    $0x2,%r10d
   0.50%  │    0x00007f4256b1e51c:   nopl   0x0(%rax)
   0.03%  │    0x00007f4256b1e520:   jge    0x00007f4256b1e72c
   1.00%  │    0x00007f4256b1e526:   cmp    $0x0,%r10d
          │    0x00007f4256b1e52a:   je     0x00007f4256b1e7b3
          │    0x00007f4256b1e530:   cmp    $0x1,%r10d
          │    0x00007f4256b1e534:   je     0x00007f4256b1e651
          │    0x00007f4256b1e53a:   jmp    0x00007f4256b1ee71
   2.41%  ↘    0x00007f4256b1e53f:   cmp    $0x6,%r10d
           ╭   0x00007f4256b1e543:   jge    0x00007f4256b1e558
           │   0x00007f4256b1e549:   cmp    $0x4,%r10d
           │   0x00007f4256b1e54d:   je     0x00007f4256b1e745
   0.21%   │   0x00007f4256b1e553:   jmp    0x00007f4256b1e75a
   1.61%   ↘   0x00007f4256b1e558:   cmp    $0x6,%r10d
               0x00007f4256b1e55c:   nopl   0x0(%rax)
            ╭  0x00007f4256b1e560:   je     0x00007f4256b1e575
            │  0x00007f4256b1e566:   cmp    $0x7,%r10d
            │  0x00007f4256b1e56a:   je     0x00007f4256b1e7c8
            │  0x00007f4256b1e570:   jmp    0x00007f4256b1ee71           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
            ↘  0x00007f4256b1e575:   cmp    %rcx,%rax
               0x00007f4256b1e578:   jne    0x00007f4256b1ed09           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
               0x00007f4256b1e57e:   incl   0x24(,%rdi,8)                ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  25.21%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 

                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
            0x00007f4256b1e73c:   nopl   0x0(%rax)
            0x00007f4256b1e740:   jmp    0x00007f4256b1e585
            0x00007f4256b1e745:   cmp    %rcx,%r13
            0x00007f4256b1e748:   jne    0x00007f4256b1edc5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
            0x00007f4256b1e74e:   incl   0x1c(,%rdi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
            0x00007f4256b1e755:   jmp    0x00007f4256b1e585
   1.55%    0x00007f4256b1e75a:   nopw   0x0(%rax,%rax,1)
            0x00007f4256b1e760:   cmp    %rcx,%rbp
            0x00007f4256b1e763:   jne    0x00007f4256b1edd7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
            0x00007f4256b1e769:   incl   0x20(,%rdi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   3.72%    0x00007f4256b1e770:   jmp    0x00007f4256b1e585
   0.02%    0x00007f4256b1e775:   cmp    %rcx,%r14
            0x00007f4256b1e778:   jne    0x00007f4256b1ebd5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   0.97%    0x00007f4256b1e77e:   incl   0x18(,%rdi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   2.43%    0x00007f4256b1e785:   jmp    0x00007f4256b1e585
   0.80%    0x00007f4256b1e78a:   movabs $0x800c27030,%r10            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
   0.78%    0x00007f4256b1e794:   cmp    %rdi,%r10
            0x00007f4256b1e797:   jne    0x00007f4256b1ec38           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
            0x00007f4256b1e79d:   incl   0xc(,%rcx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   2.14%    0x00007f4256b1e7a4:   mov    %r11d,%ebx
            0x00007f4256b1e7a7:   mov    %r10,%r11
   0.02%    0x00007f4256b1e7aa:   mov    (%rsp),%r10
   0.26%    0x00007f4256b1e7ae:   jmp    0x00007f4256b1e4d0           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
            0x00007f4256b1e7b3:   cmp    %rcx,%r11
            0x00007f4256b1e7b6:   jne    0x00007f4256b1ecbf           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
            0x00007f4256b1e7bc:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
            0x00007f4256b1e7c3:   jmp    0x00007f4256b1e585
   1.67%    0x00007f4256b1e7c8:   cmp    %rcx,%rdx
            0x00007f4256b1e7cb:   jne    0x00007f4256b1ecf7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
            0x00007f4256b1e7d1:   incl   0x28(,%rdi,8)                ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 315)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
   2.64%    0x00007f4256b1e7d8:   jmp    0x00007f4256b1e585
            0x00007f4256b1e7dd:   movabs $0x800c27030,%r10            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
            0x00007f4256b1e7e7:   cmp    %rdi,%rdx
            0x00007f4256b1e7ea:   jne    0x00007f4256b1ee4d           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
            0x00007f4256b1e7f0:   incl   0x28(,%rcx,8)                ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 315)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
            0x00007f4256b1e7f7:   mov    %r11d,%ebx
....................................................................................................
  17.00%  <total for region 3>

....[Hottest Regions]...............................................................................
  46.93%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 
  25.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 
  17.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 
   8.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 
   1.41%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.73%  <...other 251 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 751 
   2.32%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  ptmalloc_init.part.0 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  [unknown] 
   0.00%          interpreter  invokevirtual  182 invokevirtual  
   0.00%         libc-2.31.so  __vfprintf_internal 
   0.00%            libjvm.so  GraphBuilder::try_inline_full 
   0.00%            libjvm.so  BitMap::set_union 
   0.00%            libjvm.so  LIR_OpVisitState::visit 
   0.09%  <...other 45 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.42%       jvmci, level 4
   2.32%               kernel
   0.10%            libjvm.so
   0.06%         libc-2.31.so
   0.06%                     
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%       hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:14:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.844 ns/op
# Warmup Iteration   2: 1.927 ns/op
# Warmup Iteration   3: 1.924 ns/op
# Warmup Iteration   4: 1.925 ns/op
# Warmup Iteration   5: 1.924 ns/op
Iteration   1: 1.924 ns/op
Iteration   2: 1.821 ns/op
Iteration   3: 1.821 ns/op
Iteration   4: 1.821 ns/op
Iteration   5: 1.821 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.842 ±(99.9%) 0.178 ns/op [Average]
  (min, avg, max) = (1.821, 1.842, 1.924), stdev = 0.046
  CI (99.9%): [1.664, 2.020] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 195472 total address lines.
Perf output processed (skipped 58.638 seconds):
 Column 1: cycles (50735 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 734 

              0x00007f2432b1df18:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
              0x00007f2432b1df1b:   cmp    %r9d,%r8d
              0x00007f2432b1df1e:   ja     0x00007f2432b1df00
              0x00007f2432b1df20:   lea    -0x8(%r11),%r8d
          ╭   0x00007f2432b1df24:   jmp    0x00007f2432b1e039
          │   0x00007f2432b1df29:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f2432b1df34:   data16 data16 xchg %ax,%ax
          │   0x00007f2432b1df38:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   0.27%  │↗  0x00007f2432b1df40:   mov    0x10(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.29%  ││  0x00007f2432b1df45:   mov    $0x1,%ebx                    ; ImmutableOopMap {rcx=NarrowOop r10=Oop }
          ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.12%  ││  0x00007f2432b1df4a:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f2432b1e0d0
  10.04%  ││  0x00007f2432b1df51:   mov    %ebx,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.70%  ││  0x00007f2432b1df58:   mov    0x14(%r10,%r9,4),%edi
   0.90%  ││  0x00007f2432b1df5d:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.13%  ││  0x00007f2432b1df61:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rdi=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.64%  ││  0x00007f2432b1df66:   add    0xc(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f2432b1e0ec
   5.45%  ││  0x00007f2432b1df6d:   mov    %edx,0xc(,%rdi,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.02%  ││  0x00007f2432b1df74:   mov    0x18(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.19%  ││  0x00007f2432b1df79:   mov    %r9d,%ebx
   0.56%  ││  0x00007f2432b1df7c:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.52%  ││  0x00007f2432b1df7e:   shl    $0x3,%rdi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.42%  ││  0x00007f2432b1df82:   mov    $0x1,%esi                    ; ImmutableOopMap {rcx=NarrowOop rdi=Oop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.08%  ││  0x00007f2432b1df87:   add    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f2432b1e108
   6.58%  ││  0x00007f2432b1df8e:   mov    %esi,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.70%  ││  0x00007f2432b1df95:   mov    0x1c(%r10,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.89%  ││  0x00007f2432b1df9a:   lea    0x2(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.07%  ││  0x00007f2432b1df9e:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.51%  ││  0x00007f2432b1dfa2:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.10%  ││  0x00007f2432b1dfa7:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007f2432b1e126
   9.50%  ││  0x00007f2432b1dfae:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.36%  ││  0x00007f2432b1dfb5:   mov    0x20(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.42%  ││  0x00007f2432b1dfba:   lea    0x3(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.77%  ││  0x00007f2432b1dfbe:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.65%  ││  0x00007f2432b1dfc2:   mov    $0x1,%esi                    ; ImmutableOopMap {rcx=NarrowOop rbx=Oop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.72%  ││  0x00007f2432b1dfc7:   add    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f2432b1e146
   8.02%  ││  0x00007f2432b1dfce:   mov    %esi,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.81%  ││  0x00007f2432b1dfd5:   mov    0x24(%r10,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.53%  ││  0x00007f2432b1dfda:   lea    0x4(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.52%  ││  0x00007f2432b1dfde:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.27%  ││  0x00007f2432b1dfe2:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.24%  ││  0x00007f2432b1dfe7:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007f2432b1e166
   4.30%  ││  0x00007f2432b1dfee:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.52%  ││  0x00007f2432b1dff5:   mov    0x28(%r10,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.35%  ││  0x00007f2432b1dffa:   lea    0x5(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.84%  ││  0x00007f2432b1dffe:   shl    $0x3,%rbx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.50%  ││  0x00007f2432b1e002:   mov    $0x1,%esi                    ; ImmutableOopMap {rcx=NarrowOop rbx=Oop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.02%  ││  0x00007f2432b1e007:   add    0xc(,%rcx,8),%esi            ; implicit exception: dispatches to 0x00007f2432b1e186
   6.03%  ││  0x00007f2432b1e00e:   mov    %esi,0xc(,%rcx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.89%  ││  0x00007f2432b1e015:   mov    0x2c(%r10,%r9,4),%ebx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.70%  ││  0x00007f2432b1e01a:   lea    0x6(%r9),%edi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.64%  ││  0x00007f2432b1e01e:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.23%  ││  0x00007f2432b1e022:   mov    $0x1,%edx                    ; ImmutableOopMap {rcx=Oop rbx=NarrowOop r10=Oop }
          ││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@11 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.21%  ││  0x00007f2432b1e027:   add    0xc(,%rbx,8),%edx            ; implicit exception: dispatches to 0x00007f2432b1e1a6
  13.56%  ││  0x00007f2432b1e02e:   mov    %edx,0xc(,%rbx,8)            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.16%  ││  0x00007f2432b1e035:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.15%  ↘│  0x00007f2432b1e039:   nopl   0x0(%rax)
   0.85%   │  0x00007f2432b1e040:   cmp    %r9d,%r8d
           ╰  0x00007f2432b1e043:   jg     0x00007f2432b1df40
              0x00007f2432b1e049:   jmp    0x00007f2432b1e080
              0x00007f2432b1e04e:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f2432b1e059:   data16 data16 xchg %ax,%ax
              0x00007f2432b1e05d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
              0x00007f2432b1e060:   mov    0x10(%r10,%r9,4),%r8d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
              0x00007f2432b1e065:   mov    $0x1,%ecx                    ; ImmutableOopMap {r8=NarrowOop r10=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.97%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.97%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 734 
   0.64%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 734 
   0.05%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 734 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 734 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.81%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 734 
   1.58%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.00%            libjvm.so  pthread_cond_timedwait@plt 
   0.00%         libc-2.31.so  re_search_stub 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%       jvmci, level 4
   1.58%               kernel
   0.16%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = BIMORPHIC)

# Run progress: 56.25% complete, ETA 00:12:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.957 ns/op
# Warmup Iteration   2: 2.032 ns/op
# Warmup Iteration   3: 2.031 ns/op
# Warmup Iteration   4: 2.031 ns/op
# Warmup Iteration   5: 1.941 ns/op
Iteration   1: 1.941 ns/op
Iteration   2: 2.031 ns/op
Iteration   3: 2.031 ns/op
Iteration   4: 2.031 ns/op
Iteration   5: 2.035 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.014 ±(99.9%) 0.156 ns/op [Average]
  (min, avg, max) = (1.941, 2.014, 2.035), stdev = 0.041
  CI (99.9%): [1.857, 2.170] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 193966 total address lines.
Perf output processed (skipped 58.643 seconds):
 Column 1: cycles (50583 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 

             0x00007f67cab1cc13:   mov    %r11d,%ebx
             0x00007f67cab1cc16:   cmp    %r9d,%ecx
             0x00007f67cab1cc19:   jg     0x00007f67cab1cd8e           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
             0x00007f67cab1cc1f:   nop
             0x00007f67cab1cc20:   cmp    %r9d,%ecx
             0x00007f67cab1cc23:   jg     0x00007f67cab1cd6c
             0x00007f67cab1cc29:   movabs $0x800c27030,%r8             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
             0x00007f67cab1cc33:   movabs $0x800c27240,%rbx            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             0x00007f67cab1cc3d:   data16 xchg %ax,%ax
   2.00%  ↗  0x00007f67cab1cc40:   cmp    %r9d,%ecx
          │  0x00007f67cab1cc43:   jle    0x00007f67cab1cd00           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   3.16%  │  0x00007f67cab1cc49:   mov    0x14(%r10,%r9,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   3.75%  │  0x00007f67cab1cc4e:   test   %edi,%edi
          │  0x00007f67cab1cc50:   je     0x00007f67cab1ccd8
   1.52%  │  0x00007f67cab1cc56:   mov    0x8(,%rdi,8),%edx
  34.57%  │  0x00007f67cab1cc5d:   movabs $0x800000000,%rsi
   2.46%  │  0x00007f67cab1cc67:   lea    (%rsi,%rdx,1),%rdx           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   4.43%  │  0x00007f67cab1cc6b:   mov    0x10(%r10,%r9,4),%esi        ; ImmutableOopMap {rsi=NarrowOop rdi=NarrowOop r10=Oop }
          │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.29%  │  0x00007f67cab1cc70:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f67cab1ce86
  10.31%  │  0x00007f67cab1cc77:   lea    0x2(%r9),%ebp                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   2.13%  │  0x00007f67cab1cc7b:   nopl   0x0(%rax,%rax,1)
   3.89%  │  0x00007f67cab1cc80:   cmp    $0xc27240,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │  0x00007f67cab1cc86:   jne    0x00007f67cab1cca8           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.97%  │  0x00007f67cab1cc8c:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  11.36%  │  0x00007f67cab1cc93:   cmp    %rdx,%rbx
          │  0x00007f67cab1cc96:   jne    0x00007f67cab1ccc0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │  0x00007f67cab1cc9c:   incl   0x10(,%rdi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │  0x00007f67cab1cca3:   mov    %ebp,%r9d
          ╰  0x00007f67cab1cca6:   jmp    0x00007f67cab1cc40
             0x00007f67cab1cca8:   cmp    $0xc27030,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
....................................................................................................
  82.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 

            0x00007f67cab1cca3:   mov    %ebp,%r9d
            0x00007f67cab1cca6:   jmp    0x00007f67cab1cc40
            0x00007f67cab1cca8:   cmp    $0xc27030,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
            0x00007f67cab1ccae:   jne    0x00007f67cab1ce27           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007f67cab1ccb4:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007f67cab1ccbb:   cmp    %rdx,%rbx
            0x00007f67cab1ccbe:   je     0x00007f67cab1cc9c
   1.61%    0x00007f67cab1ccc0:   cmp    %rdx,%r8
            0x00007f67cab1ccc3:   jne    0x00007f67cab1cddd           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.52%    0x00007f67cab1ccc9:   incl   0xc(,%rdi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  10.86%    0x00007f67cab1ccd0:   mov    %ebp,%r9d
   1.46%    0x00007f67cab1ccd3:   jmp    0x00007f67cab1cc40
            0x00007f67cab1ccd8:   mov    $0x0,%rdx
            0x00007f67cab1ccdf:   nop
            0x00007f67cab1cce0:   jmp    0x00007f67cab1cc6b           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007f67cab1cce2:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f67cab1cced:   data16 data16 xchg %ax,%ax
            0x00007f67cab1ccf1:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f67cab1ccfc:   data16 data16 xchg %ax,%ax
            0x00007f67cab1cd00:   cmp    %r9d,%r11d
            0x00007f67cab1cd03:   jbe    0x00007f67cab1cd59           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.44%  <total for region 2>

....[Hottest Regions]...............................................................................
  82.83%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 
  15.44%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 
   0.12%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%               kernel  [unknown] 
   1.01%  <...other 344 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 739 
   1.21%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.03%         libc-2.31.so  [unknown] 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.18%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.37%       jvmci, level 4
   1.21%               kernel
   0.17%            libjvm.so
   0.13%         libc-2.31.so
   0.04%   libpthread-2.31.so
   0.03%                     
   0.03%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%          interpreter
   0.00%     Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 62.50% complete, ETA 00:11:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.067 ns/op
# Warmup Iteration   2: 1.913 ns/op
# Warmup Iteration   3: 1.912 ns/op
# Warmup Iteration   4: 1.962 ns/op
# Warmup Iteration   5: 1.912 ns/op
Iteration   1: 1.964 ns/op
Iteration   2: 1.964 ns/op
Iteration   3: 1.964 ns/op
Iteration   4: 1.964 ns/op
Iteration   5: 1.964 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.964 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.964, 1.964, 1.964), stdev = 0.001
  CI (99.9%): [1.964, 1.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 198096 total address lines.
Perf output processed (skipped 58.843 seconds):
 Column 1: cycles (50534 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 747 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                      0x00007fa5cab1f862:   mov    %edi,%r9d
                      0x00007fa5cab1f865:   jmp    0x00007fa5cab1f820           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                      0x00007fa5cab1f867:   incl   0x14(,%rcx,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                      0x00007fa5cab1f86e:   mov    %edi,%r9d
                      0x00007fa5cab1f871:   jmp    0x00007fa5cab1f820
   0.00%              0x00007fa5cab1f873:   cmp    $0xc27030,%ebx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
                      0x00007fa5cab1f879:   jne    0x00007fa5cab1fac7           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                      0x00007fa5cab1f87f:   incl   0xc(,%rcx,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%              0x00007fa5cab1f886:   mov    %edi,%r9d
                      0x00007fa5cab1f889:   jmp    0x00007fa5cab1f820
                      0x00007fa5cab1f88b:   mov    %r9d,%r8d
                      0x00007fa5cab1f88e:   lea    -0x2(%r11),%ecx
                      0x00007fa5cab1f892:   mov    %ecx,%ebx
                      0x00007fa5cab1f894:   sub    %r9d,%ebx
                      0x00007fa5cab1f897:   inc    %ebx
                      0x00007fa5cab1f899:   shr    %ebx
                      0x00007fa5cab1f89b:   mov    %ebx,%ebx
                      0x00007fa5cab1f89d:   dec    %rbx
   0.00%              0x00007fa5cab1f8a0:   shl    %rbx
                      0x00007fa5cab1f8a3:   add    %rbx,%r8
                      0x00007fa5cab1f8a6:   mov    %r11d,%ebx
                      0x00007fa5cab1f8a9:   cmp    %r9d,%ecx
                      0x00007fa5cab1f8ac:   jg     0x00007fa5cab1fa3e
                      0x00007fa5cab1f8b2:   cmp    %r9d,%ecx
                      0x00007fa5cab1f8b5:   jg     0x00007fa5cab1fa1e           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
                      0x00007fa5cab1f8bb:   mov    %r9d,%r8d
                      0x00007fa5cab1f8be:   xchg   %ax,%ax
   2.68%       ↗↗ ↗   0x00007fa5cab1f8c0:   cmp    %r8d,%ecx
          ╭    ││ │   0x00007fa5cab1f8c3:   jle    0x00007fa5cab1f9a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   2.58%  │    ││ │   0x00007fa5cab1f8c9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
          │    ││ │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │    ││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.76%  │    ││ │   0x00007fa5cab1f8ce:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007fa5cab1fb2a
  18.48%  │    ││ │   0x00007fa5cab1f8d6:   data16 nopw 0x0(%rax,%rax,1)
   2.30%  │    ││ │   0x00007fa5cab1f8e0:   cmp    $0xc27450,%ebx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │╭   ││ │   0x00007fa5cab1f8e6:   je     0x00007fa5cab1f952
   2.54%  ││   ││ │   0x00007fa5cab1f8ec:   cmp    $0xc27240,%ebx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││╭  ││ │   0x00007fa5cab1f8f2:   jne    0x00007fa5cab1f979           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││  ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.84%  │││  ││ │   0x00007fa5cab1f8f8:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │││  ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │││  ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   7.84%  │││  ││↗│↗  0x00007fa5cab1f900:   mov    0x14(%r10,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   2.90%  │││  │││││  0x00007fa5cab1f905:   mov    %r8d,%ebx
   1.80%  │││  │││││  0x00007fa5cab1f908:   inc    %ebx                         ; ImmutableOopMap {r9=NarrowOop r10=Oop }
          │││  │││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │││  │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   2.81%  │││  │││││  0x00007fa5cab1f90a:   mov    0x8(,%r9,8),%edi             ; implicit exception: dispatches to 0x00007fa5cab1fb46
  16.88%  │││  │││││  0x00007fa5cab1f912:   lea    0x2(%r8),%r8d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.63%  │││  │││││  0x00007fa5cab1f916:   data16 nopw 0x0(%rax,%rax,1)
   1.71%  │││  │││││  0x00007fa5cab1f920:   cmp    $0xc27450,%edi               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │││╭ │││││  0x00007fa5cab1f926:   je     0x00007fa5cab1f945
   2.76%  ││││ │││││  0x00007fa5cab1f92c:   cmp    $0xc27240,%edi               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││││╭│││││  0x00007fa5cab1f932:   jne    0x00007fa5cab1f95c           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.07%  ││││││││││  0x00007fa5cab1f938:   incl   0x10(,%r9,8)                 ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.80%  │││││╰││││  0x00007fa5cab1f940:   jmp    0x00007fa5cab1f8c0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.16%  │││↘│ ││││  0x00007fa5cab1f945:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │││ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │││ │ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.67%  │││ │ ╰│││  0x00007fa5cab1f94d:   jmp    0x00007fa5cab1f8c0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.03%  │↘│ │  │││  0x00007fa5cab1f952:   incl   0x14(,%r9,8)                 ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │ │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   6.53%  │ │ │  ╰││  0x00007fa5cab1f95a:   jmp    0x00007fa5cab1f900
   0.77%  │ │ ↘   ││  0x00007fa5cab1f95c:   nopl   0x0(%rax)
   0.36%  │ │     ││  0x00007fa5cab1f960:   cmp    $0xc27030,%edi               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │ │     ││  0x00007fa5cab1f966:   jne    0x00007fa5cab1fa6e           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.23%  │ │     ││  0x00007fa5cab1f96c:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │ │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.81%  │ │     ╰│  0x00007fa5cab1f974:   jmp    0x00007fa5cab1f8c0
   0.70%  │ ↘      │  0x00007fa5cab1f979:   nopl   0x0(%rax)
   0.63%  │        │  0x00007fa5cab1f980:   cmp    $0xc27030,%ebx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │        │  0x00007fa5cab1f986:   jne    0x00007fa5cab1fad6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.17%  │        │  0x00007fa5cab1f98c:   incl   0xc(,%r9,8)                  ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.40%  │        ╰  0x00007fa5cab1f994:   jmp    0x00007fa5cab1f900
          │           0x00007fa5cab1f999:   nopl   0x0(%rax)
          ↘           0x00007fa5cab1f9a0:   cmp    %r8d,%r11d
                      0x00007fa5cab1f9a3:   jbe    0x00007fa5cab1fa0b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                      0x00007fa5cab1f9a9:   mov    0x10(%r10,%r8,4),%r9d        ; ImmutableOopMap {r9=NarrowOop r10=Oop }
                                                                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
                      0x00007fa5cab1f9ae:   mov    0x8(,%r9,8),%ecx             ; implicit exception: dispatches to 0x00007fa5cab1fb66
....................................................................................................
  97.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 747 
   0.33%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 747 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 747 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 747 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   1.17%  <...other 367 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 747 
   1.71%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.12%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.95%       jvmci, level 4
   1.71%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.04%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 68.75% complete, ETA 00:09:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.105 ns/op
# Warmup Iteration   2: 2.904 ns/op
# Warmup Iteration   3: 2.966 ns/op
# Warmup Iteration   4: 2.989 ns/op
# Warmup Iteration   5: 2.973 ns/op
Iteration   1: 2.946 ns/op
Iteration   2: 2.923 ns/op
Iteration   3: 2.943 ns/op
Iteration   4: 2.987 ns/op
Iteration   5: 2.916 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  2.943 ±(99.9%) 0.107 ns/op [Average]
  (min, avg, max) = (2.916, 2.943, 2.987), stdev = 0.028
  CI (99.9%): [2.836, 3.050] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 191557 total address lines.
Perf output processed (skipped 58.670 seconds):
 Column 1: cycles (50774 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 

              0x00007fe0d6b1c422:   mov    (%rsp),%r10
              0x00007fe0d6b1c426:   mov    0x10(%rsp),%r8d
              0x00007fe0d6b1c42b:   jmp    0x00007fe0d6b1c3b0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
              0x00007fe0d6b1c42d:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
              0x00007fe0d6b1c434:   mov    %ecx,%r11d
              0x00007fe0d6b1c437:   jmp    0x00007fe0d6b1c3b0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.01%      0x00007fe0d6b1c43c:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%      0x00007fe0d6b1c443:   mov    %ecx,%r11d
              0x00007fe0d6b1c446:   jmp    0x00007fe0d6b1c3b0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
              0x00007fe0d6b1c44b:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
              0x00007fe0d6b1c452:   mov    %ecx,%r11d
              0x00007fe0d6b1c455:   jmp    0x00007fe0d6b1c3b0
              0x00007fe0d6b1c45a:   mov    %r11d,%esi
              0x00007fe0d6b1c45d:   mov    0x14(%rsp),%r11d
   0.01%      0x00007fe0d6b1c462:   lea    -0x2(%r11),%r10d
              0x00007fe0d6b1c466:   mov    %r10d,0x10(%rsp)
              0x00007fe0d6b1c46b:   mov    (%rsp),%r8
              0x00007fe0d6b1c46f:   mov    %esi,%r11d
              0x00007fe0d6b1c472:   data16 nopw 0x0(%rax,%rax,1)
              0x00007fe0d6b1c47c:   data16 data16 xchg %ax,%ax
   2.36%      0x00007fe0d6b1c480:   cmp    %r11d,%r10d
              0x00007fe0d6b1c483:   jle    0x00007fe0d6b1c5f1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   1.29%      0x00007fe0d6b1c489:   mov    0x10(%r8,%r11,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.51%      0x00007fe0d6b1c48e:   test   %esi,%esi
          ╭   0x00007fe0d6b1c490:   je     0x00007fe0d6b1c4cc
   1.26%  │   0x00007fe0d6b1c496:   mov    0x8(,%rsi,8),%ecx
  15.23%  │   0x00007fe0d6b1c49d:   data16 xchg %ax,%ax
   0.96%  │   0x00007fe0d6b1c4a0:   cmp    $0xc27240,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │   0x00007fe0d6b1c4a6:   je     0x00007fe0d6b1c57c
   1.60%  │   0x00007fe0d6b1c4ac:   cmp    $0xc27030,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │   0x00007fe0d6b1c4b2:   je     0x00007fe0d6b1c5a5
   0.31%  │   0x00007fe0d6b1c4b8:   nopl   0x0(%rax,%rax,1)
   1.03%  │   0x00007fe0d6b1c4c0:   cmp    $0xc27450,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │   0x00007fe0d6b1c4c6:   je     0x00007fe0d6b1c5cb           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.00%  ↘   0x00007fe0d6b1c4cc:   mov    %r11d,0xc(%rsp)              ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   1.12%      0x00007fe0d6b1c4d1:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
   1.60%      0x00007fe0d6b1c4d8:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.67%      0x00007fe0d6b1c4dc:   nop
   1.08%      0x00007fe0d6b1c4dd:   movabs $0x800c27660,%rax
   0.17%      0x00007fe0d6b1c4e7:   call   0x00007fe0d6b1b100           ; ImmutableOopMap {[0]=Oop }
                                                                        ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                                                                        ;   {virtual_call}
   0.20%      0x00007fe0d6b1c4ec:   nop
   1.34%      0x00007fe0d6b1c4ed:   mov    0xc(%rsp),%r11d
   0.66%      0x00007fe0d6b1c4f2:   mov    (%rsp),%r10
   1.57%      0x00007fe0d6b1c4f6:   mov    0x14(%r10,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   2.26%      0x00007fe0d6b1c4fb:   lea    0x2(%r11),%r8d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   3.06%      0x00007fe0d6b1c4ff:   nop
   0.94%      0x00007fe0d6b1c500:   test   %esi,%esi
           ╭  0x00007fe0d6b1c502:   je     0x00007fe0d6b1c53a
   1.68%   │  0x00007fe0d6b1c508:   mov    0x8(,%rsi,8),%r9d
   6.91%   │  0x00007fe0d6b1c510:   cmp    $0xc27240,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
           │  0x00007fe0d6b1c517:   je     0x00007fe0d6b1c58b
   3.74%   │  0x00007fe0d6b1c51d:   data16 xchg %ax,%ax
   0.79%   │  0x00007fe0d6b1c520:   cmp    $0xc27030,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
           │  0x00007fe0d6b1c527:   je     0x00007fe0d6b1c5b4
   0.88%   │  0x00007fe0d6b1c52d:   cmp    $0xc27450,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
           │  0x00007fe0d6b1c534:   je     0x00007fe0d6b1c5da           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
           ↘  0x00007fe0d6b1c53a:   mov    %r8d,0xc(%rsp)
              0x00007fe0d6b1c53f:   inc    %r11d                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
              0x00007fe0d6b1c542:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
              0x00007fe0d6b1c549:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
              0x00007fe0d6b1c54d:   mov    %r11d,0x8(%rsp)
....................................................................................................
  55.24%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 

            0x00007fe0d6b1c598:   mov    0x10(%rsp),%r10d
            0x00007fe0d6b1c59d:   data16 xchg %ax,%ax
            0x00007fe0d6b1c5a0:   jmp    0x00007fe0d6b1c480           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007fe0d6b1c5a5:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007fe0d6b1c5ac:   mov    %r8,%r10
            0x00007fe0d6b1c5af:   jmp    0x00007fe0d6b1c4f6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.11%    0x00007fe0d6b1c5b4:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   4.35%    0x00007fe0d6b1c5bb:   mov    %r8d,%r11d
   0.85%    0x00007fe0d6b1c5be:   mov    %r10,%r8
   0.19%    0x00007fe0d6b1c5c1:   mov    0x10(%rsp),%r10d
   1.12%    0x00007fe0d6b1c5c6:   jmp    0x00007fe0d6b1c480           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007fe0d6b1c5cb:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007fe0d6b1c5d2:   mov    %r8,%r10
            0x00007fe0d6b1c5d5:   jmp    0x00007fe0d6b1c4f6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.58%    0x00007fe0d6b1c5da:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   5.99%    0x00007fe0d6b1c5e1:   mov    %r8d,%r11d
   0.44%    0x00007fe0d6b1c5e4:   mov    %r10,%r8
   1.30%    0x00007fe0d6b1c5e7:   mov    0x10(%rsp),%r10d
   0.22%    0x00007fe0d6b1c5ec:   jmp    0x00007fe0d6b1c480
   0.00%    0x00007fe0d6b1c5f1:   mov    %r11d,%r10d
            0x00007fe0d6b1c5f4:   mov    0x14(%rsp),%r11d
            0x00007fe0d6b1c5f9:   nopl   0x0(%rax)
            0x00007fe0d6b1c600:   cmp    %r10d,%r11d
            0x00007fe0d6b1c603:   jbe    0x00007fe0d6b1c6b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
            0x00007fe0d6b1c609:   mov    0x10(%r8,%r10,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
            0x00007fe0d6b1c60e:   mov    %r10d,%r9d
            0x00007fe0d6b1c611:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
....................................................................................................
  16.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 

            0x00007fe0d6b1c563:   call   0x00007fe0cf01ed80           ; ImmutableOopMap {[0]=Oop }
                                                                      ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                                                                      ;   {virtual_call}
            0x00007fe0d6b1c568:   nop
            0x00007fe0d6b1c569:   mov    0xc(%rsp),%r11d
            0x00007fe0d6b1c56e:   mov    0x10(%rsp),%r10d
            0x00007fe0d6b1c573:   mov    (%rsp),%r8
            0x00007fe0d6b1c577:   jmp    0x00007fe0d6b1c480           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.38%    0x00007fe0d6b1c57c:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  11.90%    0x00007fe0d6b1c583:   mov    %r8,%r10
   0.38%    0x00007fe0d6b1c586:   jmp    0x00007fe0d6b1c4f6           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007fe0d6b1c58b:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            0x00007fe0d6b1c592:   mov    %r8d,%r11d
            0x00007fe0d6b1c595:   mov    %r10,%r8
            0x00007fe0d6b1c598:   mov    0x10(%rsp),%r10d
            0x00007fe0d6b1c59d:   data16 xchg %ax,%ax
            0x00007fe0d6b1c5a0:   jmp    0x00007fe0d6b1c480           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
....................................................................................................
  13.66%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 741 

           scopes pcs     [0x00007fe0d6b1b170,0x00007fe0d6b1b1b0] = 64
           dependencies   [0x00007fe0d6b1b1b0,0x00007fe0d6b1b1b8] = 8
           JVMCI data     [0x00007fe0d6b1b1b8,0x00007fe0d6b1b1c8] = 16
          [Disassembly]
          --------------------------------------------------------------------------------
          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x00007fe0c48d2aa0} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
            #           [sp+0x10]  (sp of caller)
   1.92%    0x00007fe0d6b1b100:   mov    0x8(%rsi),%r10d
   1.06%    0x00007fe0d6b1b104:   movabs $0x800000000,%r12
   0.17%    0x00007fe0d6b1b10e:   add    %r12,%r10
   1.25%    0x00007fe0d6b1b111:   xor    %r12,%r12
   0.71%    0x00007fe0d6b1b114:   cmp    %r10,%rax
            0x00007fe0d6b1b117:   jne    0x00007fe0cf01e780           ;   {runtime_call ic_miss_stub}
   1.10%    0x00007fe0d6b1b11d:   nop
   0.19%    0x00007fe0d6b1b11e:   xchg   %ax,%ax
          [Verified Entry Point]
   1.27%    0x00007fe0d6b1b120:   nopl   0x0(%rax,%rax,1)
   0.64%    0x00007fe0d6b1b125:   mov    $0x1,%eax
   1.03%    0x00007fe0d6b1b12a:   add    0x18(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
   0.21%    0x00007fe0d6b1b12d:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
   1.31%    0x00007fe0d6b1b130:   mov    0x348(%r15),%rcx
   0.67%    0x00007fe0d6b1b137:   test   %eax,(%rcx)                  ;   {poll_return}
   1.11%    0x00007fe0d6b1b139:   ret    
          [Exception Handler]
            0x00007fe0d6b1b13a:   call   0x00007fe0cf169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fe0d6b1b13f:   nop
          [Deopt Handler Code]
            0x00007fe0d6b1b140:   call   0x00007fe0cf024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fe0d6b1b145:   nop
          [Stub Code]
            0x00007fe0d6b1b146:   hlt    
            0x00007fe0d6b1b147:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  12.63%  <total for region 4>

....[Hottest Regions]...............................................................................
  55.24%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 
  16.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 
  13.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 
  12.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 741 
   0.71%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 765 
   0.02%               kernel  [unknown] 
   1.02%  <...other 343 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  85.11%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 745 
  12.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 741 
   1.91%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 4, compile id 765 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.00%            libjvm.so  os::elapsed_counter 
   0.17%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.76%       jvmci, level 4
   1.91%               kernel
   0.13%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 11.877 ns/op
# Warmup Iteration   2: 11.763 ns/op
# Warmup Iteration   3: 11.748 ns/op
# Warmup Iteration   4: 11.753 ns/op
# Warmup Iteration   5: 11.756 ns/op
Iteration   1: 11.790 ns/op
Iteration   2: 11.750 ns/op
Iteration   3: 11.730 ns/op
Iteration   4: 11.741 ns/op
Iteration   5: 11.738 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  11.750 ±(99.9%) 0.091 ns/op [Average]
  (min, avg, max) = (11.730, 11.750, 11.790), stdev = 0.024
  CI (99.9%): [11.659, 11.841] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 194114 total address lines.
Perf output processed (skipped 58.680 seconds):
 Column 1: cycles (50983 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 

                            0x00007f98c2b1dff4:   mov    %r10d,%esi
                            0x00007f98c2b1dff7:   mov    0x14(%rsp),%r10d
                            0x00007f98c2b1dffc:   lea    -0x2(%r10),%r11d
                            0x00007f98c2b1e000:   mov    %r11d,0x10(%rsp)
                            0x00007f98c2b1e005:   mov    (%rsp),%rbx
                            0x00007f98c2b1e009:   mov    %esi,%r10d
                            0x00007f98c2b1e00c:   nopl   0x0(%rax)
                   ↗↗  ↗↗   0x00007f98c2b1e010:   cmp    %r10d,%r11d
          ╭        ││  ││   0x00007f98c2b1e013:   jle    0x00007f98c2b1e185           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   1.05%  │        ││  ││   0x00007f98c2b1e019:   mov    0x10(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   3.16%  │        ││  ││   0x00007f98c2b1e01e:   xchg   %ax,%ax
   0.03%  │        ││  ││   0x00007f98c2b1e020:   test   %esi,%esi
          │╭       ││  ││   0x00007f98c2b1e022:   je     0x00007f98c2b1e058
   0.59%  ││       ││  ││   0x00007f98c2b1e028:   mov    0x8(,%rsi,8),%eax
   7.79%  ││       ││  ││   0x00007f98c2b1e02f:   cmp    $0xc27450,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          ││╭      ││  ││   0x00007f98c2b1e035:   je     0x00007f98c2b1e139
   0.90%  │││      ││  ││   0x00007f98c2b1e03b:   nopl   0x0(%rax,%rax,1)
   0.03%  │││      ││  ││   0x00007f98c2b1e040:   cmp    $0xc27240,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │││╭     ││  ││   0x00007f98c2b1e046:   je     0x00007f98c2b1e145
   1.01%  ││││     ││  ││   0x00007f98c2b1e04c:   cmp    $0xc27030,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          ││││╭    ││  ││   0x00007f98c2b1e052:   je     0x00007f98c2b1e179           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.43%  │↘│││    ││  ││   0x00007f98c2b1e058:   mov    %r10d,0xc(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          │ │││    ││  ││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.01%  │ │││    ││  ││   0x00007f98c2b1e05d:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f98c2b1e2a6
   0.94%  │ │││    ││  ││   0x00007f98c2b1e064:   movabs $0x800000000,%r9
   0.02%  │ │││    ││  ││   0x00007f98c2b1e06e:   lea    (%r9,%rax,1),%rax
   0.56%  │ │││    ││  ││   0x00007f98c2b1e072:   mov    0x1f8(%rax),%rax
   1.77%  │ │││    ││  ││   0x00007f98c2b1e079:   mov    0x40(%rax),%r9               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.11%  │ │││    ││  ││   0x00007f98c2b1e07d:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          │ │││    ││  ││   0x00007f98c2b1e081:   mov    %rax,%rbx                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.08%  │ │││    ││  ││   0x00007f98c2b1e084:   mov    %r9,%rax
          │ │││    ││  ││   0x00007f98c2b1e087:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          │ │││    ││  ││                                                             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.02%  │ │││    ││  ││   0x00007f98c2b1e089:   nop
   0.31%  │ │││    ││  ││   0x00007f98c2b1e08a:   mov    0xc(%rsp),%r10d
   1.60%  │ │││    ││  ││   0x00007f98c2b1e08f:   mov    (%rsp),%rbx
   0.65%  │ │││    ││↗↗││↗  0x00007f98c2b1e093:   mov    0x14(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   4.07%  │ │││    │││││││  0x00007f98c2b1e098:   lea    0x2(%r10),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.02%  │ │││    │││││││  0x00007f98c2b1e09c:   nopl   0x0(%rax)
   0.67%  │ │││    │││││││  0x00007f98c2b1e0a0:   test   %esi,%esi
          │ │││╭   │││││││  0x00007f98c2b1e0a2:   je     0x00007f98c2b1e0d8
   0.80%  │ ││││   │││││││  0x00007f98c2b1e0a8:   mov    0x8(,%rsi,8),%eax
   8.08%  │ ││││   │││││││  0x00007f98c2b1e0af:   cmp    $0xc27450,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │ ││││╭  │││││││  0x00007f98c2b1e0b5:   je     0x00007f98c2b1e125
   0.85%  │ │││││  │││││││  0x00007f98c2b1e0bb:   nopl   0x0(%rax,%rax,1)
   0.35%  │ │││││  │││││││  0x00007f98c2b1e0c0:   cmp    $0xc27240,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │ │││││╭ │││││││  0x00007f98c2b1e0c6:   je     0x00007f98c2b1e151
   0.88%  │ ││││││ │││││││  0x00007f98c2b1e0cc:   cmp    $0xc27030,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │ ││││││╭│││││││  0x00007f98c2b1e0d2:   je     0x00007f98c2b1e165           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.43%  │ │││↘││││││││││  0x00007f98c2b1e0d8:   mov    %r11d,0xc(%rsp)
   0.00%  │ │││ ││││││││││  0x00007f98c2b1e0dd:   inc    %r10d                        ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          │ │││ ││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.21%  │ │││ ││││││││││  0x00007f98c2b1e0e0:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f98c2b1e2c6
   0.88%  │ │││ ││││││││││  0x00007f98c2b1e0e7:   movabs $0x800000000,%r8
   0.22%  │ │││ ││││││││││  0x00007f98c2b1e0f1:   lea    (%r8,%rax,1),%rax
   0.22%  │ │││ ││││││││││  0x00007f98c2b1e0f5:   mov    0x1f8(%rax),%rax
   1.86%  │ │││ ││││││││││  0x00007f98c2b1e0fc:   mov    0x40(%rax),%r8               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.26%  │ │││ ││││││││││  0x00007f98c2b1e100:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          │ │││ ││││││││││  0x00007f98c2b1e104:   mov    %rax,%rbx
          │ │││ ││││││││││  0x00007f98c2b1e107:   mov    %r8,%rax                     ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.03%  │ │││ ││││││││││  0x00007f98c2b1e10a:   mov    %r10d,0x8(%rsp)
   0.58%  │ │││ ││││││││││  0x00007f98c2b1e10f:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          │ │││ ││││││││││                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │││ ││││││││││  0x00007f98c2b1e111:   nop
          │ │││ ││││││││││  0x00007f98c2b1e112:   mov    0xc(%rsp),%r10d
   2.82%  │ │││ ││││││││││  0x00007f98c2b1e117:   mov    0x10(%rsp),%r11d
   0.01%  │ │││ ││││││││││  0x00007f98c2b1e11c:   mov    (%rsp),%rbx
   0.31%  │ │││ │││╰││││││  0x00007f98c2b1e120:   jmp    0x00007f98c2b1e010           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.05%  │ │││ ↘││ ││││││  0x00007f98c2b1e125:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │ │││  ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │ │││  ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.73%  │ │││  ││ ││││││  0x00007f98c2b1e12c:   mov    %r11d,%r10d
   0.01%  │ │││  ││ ││││││  0x00007f98c2b1e12f:   mov    0x10(%rsp),%r11d
   0.05%  │ │││  ││ ╰│││││  0x00007f98c2b1e134:   jmp    0x00007f98c2b1e010           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.04%  │ ↘││  ││  │││││  0x00007f98c2b1e139:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │  ││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.75%  │  ││  ││  ╰││││  0x00007f98c2b1e140:   jmp    0x00007f98c2b1e093           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.14%  │  ↘│  ││   ││││  0x00007f98c2b1e145:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │   │  ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.60%  │   │  ││   ╰│││  0x00007f98c2b1e14c:   jmp    0x00007f98c2b1e093           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   │  ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.17%  │   │  ↘│    │││  0x00007f98c2b1e151:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │   │   │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │   │   │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.81%  │   │   │    │││  0x00007f98c2b1e158:   mov    %r11d,%r10d
          │   │   │    │││  0x00007f98c2b1e15b:   mov    0x10(%rsp),%r11d
          │   │   │    ╰││  0x00007f98c2b1e160:   jmp    0x00007f98c2b1e010           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   │   │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.14%  │   │   ↘     ││  0x00007f98c2b1e165:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │   │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │   │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.11%  │   │         ││  0x00007f98c2b1e16c:   mov    %r11d,%r10d
   0.15%  │   │         ││  0x00007f98c2b1e16f:   mov    0x10(%rsp),%r11d
   0.00%  │   │         ╰│  0x00007f98c2b1e174:   jmp    0x00007f98c2b1e010           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.15%  │   ↘          │  0x00007f98c2b1e179:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.25%  │              ╰  0x00007f98c2b1e180:   jmp    0x00007f98c2b1e093
          ↘                 0x00007f98c2b1e185:   mov    %r10d,%r11d
                            0x00007f98c2b1e188:   mov    0x14(%rsp),%r10d
   0.00%                    0x00007f98c2b1e18d:   data16 xchg %ax,%ax
                            0x00007f98c2b1e190:   cmp    %r11d,%r10d
                            0x00007f98c2b1e193:   jbe    0x00007f98c2b1e254           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                            0x00007f98c2b1e199:   mov    0x10(%rbx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
                            0x00007f98c2b1e19e:   mov    %r11d,%r8d
                            0x00007f98c2b1e1a1:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
                            0x00007f98c2b1e1a4:   test   %esi,%esi
                            0x00007f98c2b1e1a6:   je     0x00007f98c2b1e1d8
....................................................................................................
  56.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 747 

            #           [sp+0x10]  (sp of caller)
            0x00007f98c2b1d180:   mov    0x8(%rsi),%r10d
            0x00007f98c2b1d184:   movabs $0x800000000,%r12
            0x00007f98c2b1d18e:   add    %r12,%r10
            0x00007f98c2b1d191:   xor    %r12,%r12
            0x00007f98c2b1d194:   cmp    %r10,%rax
            0x00007f98c2b1d197:   jne    0x00007f98bb01e780           ;   {runtime_call ic_miss_stub}
            0x00007f98c2b1d19d:   nop
            0x00007f98c2b1d19e:   xchg   %ax,%ax
          [Verified Entry Point]
   8.75%    0x00007f98c2b1d1a0:   nopl   0x0(%rax,%rax,1)
   0.65%    0x00007f98c2b1d1a5:   mov    $0x1,%eax
   3.14%    0x00007f98c2b1d1aa:   add    0x1c(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@6 (line 297)
   5.38%    0x00007f98c2b1d1ad:   mov    %eax,0x1c(%rsi)              ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
   1.32%    0x00007f98c2b1d1b0:   mov    0x348(%r15),%rcx
   0.03%    0x00007f98c2b1d1b7:   test   %eax,(%rcx)                  ;   {poll_return}
   1.30%    0x00007f98c2b1d1b9:   ret    
          [Exception Handler]
            0x00007f98c2b1d1ba:   call   0x00007f98bb169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f98c2b1d1bf:   nop
          [Deopt Handler Code]
            0x00007f98c2b1d1c0:   call   0x00007f98bb024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f98c2b1d1c5:   nop
          [Stub Code]
            0x00007f98c2b1d1c6:   hlt    
            0x00007f98c2b1d1c7:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  20.57%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 746 

            #           [sp+0x10]  (sp of caller)
            0x00007f98c2b1ce80:   mov    0x8(%rsi),%r10d
            0x00007f98c2b1ce84:   movabs $0x800000000,%r12
            0x00007f98c2b1ce8e:   add    %r12,%r10
            0x00007f98c2b1ce91:   xor    %r12,%r12
            0x00007f98c2b1ce94:   cmp    %r10,%rax
            0x00007f98c2b1ce97:   jne    0x00007f98bb01e780           ;   {runtime_call ic_miss_stub}
            0x00007f98c2b1ce9d:   nop
            0x00007f98c2b1ce9e:   xchg   %ax,%ax
          [Verified Entry Point]
   8.44%    0x00007f98c2b1cea0:   nopl   0x0(%rax,%rax,1)
   0.63%    0x00007f98c2b1cea5:   mov    $0x1,%eax
   3.25%    0x00007f98c2b1ceaa:   add    0x18(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
   5.50%    0x00007f98c2b1cead:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
   1.34%    0x00007f98c2b1ceb0:   mov    0x348(%r15),%rcx
   0.02%    0x00007f98c2b1ceb7:   test   %eax,(%rcx)                  ;   {poll_return}
   1.37%    0x00007f98c2b1ceb9:   ret    
          [Exception Handler]
            0x00007f98c2b1ceba:   call   0x00007f98bb169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f98c2b1cebf:   nop
          [Deopt Handler Code]
            0x00007f98c2b1cec0:   call   0x00007f98bb024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f98c2b1cec5:   nop
          [Stub Code]
            0x00007f98c2b1cec6:   hlt    
            0x00007f98c2b1cec7:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  20.54%  <total for region 3>

....[Hottest Regions]...............................................................................
  56.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 
  20.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 747 
  20.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 746 
   0.35%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%   libpthread-2.31.so  __libc_write 
   1.18%  <...other 383 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 
  20.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 747 
  20.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 746 
   1.61%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.04%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%   libpthread-2.31.so  __libc_write 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.23%  <...other 87 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%       jvmci, level 4
   1.61%               kernel
   0.19%            libjvm.so
   0.08%         libc-2.31.so
   0.08%   libpthread-2.31.so
   0.07%                     
   0.02%  libjvmcicompiler.so
   0.02%           ld-2.31.so
   0.02%       hsdis-amd64.so
   0.02%               [vdso]
   0.01%          interpreter
   0.00%          c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 14.004 ns/op
# Warmup Iteration   2: 13.939 ns/op
# Warmup Iteration   3: 13.962 ns/op
# Warmup Iteration   4: 13.984 ns/op
# Warmup Iteration   5: 13.954 ns/op
Iteration   1: 13.966 ns/op
Iteration   2: 13.945 ns/op
Iteration   3: 13.940 ns/op
Iteration   4: 13.922 ns/op
Iteration   5: 13.926 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  13.940 ±(99.9%) 0.067 ns/op [Average]
  (min, avg, max) = (13.922, 13.940, 13.966), stdev = 0.017
  CI (99.9%): [13.873, 14.007] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 195304 total address lines.
Perf output processed (skipped 58.726 seconds):
 Column 1: cycles (50676 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 754 

                            0x00007f383eb1f074:   mov    %r10d,%esi
                            0x00007f383eb1f077:   mov    0x14(%rsp),%r10d
                            0x00007f383eb1f07c:   lea    -0x2(%r10),%r11d
                            0x00007f383eb1f080:   mov    %r11d,0x10(%rsp)
                            0x00007f383eb1f085:   mov    (%rsp),%rbx
                            0x00007f383eb1f089:   mov    %esi,%r10d
                            0x00007f383eb1f08c:   nopl   0x0(%rax)
                   ↗↗  ↗↗   0x00007f383eb1f090:   cmp    %r10d,%r11d
          ╭        ││  ││   0x00007f383eb1f093:   jle    0x00007f383eb1f205           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   0.83%  │        ││  ││   0x00007f383eb1f099:   mov    0x10(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   4.17%  │        ││  ││   0x00007f383eb1f09e:   xchg   %ax,%ax
          │        ││  ││   0x00007f383eb1f0a0:   test   %esi,%esi
          │╭       ││  ││   0x00007f383eb1f0a2:   je     0x00007f383eb1f0d8
   0.89%  ││       ││  ││   0x00007f383eb1f0a8:   mov    0x8(,%rsi,8),%eax
   8.77%  ││       ││  ││   0x00007f383eb1f0af:   cmp    $0xc27a80,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
          ││╭      ││  ││   0x00007f383eb1f0b5:   je     0x00007f383eb1f1b9
   0.65%  │││      ││  ││   0x00007f383eb1f0bb:   nopl   0x0(%rax,%rax,1)
          │││      ││  ││   0x00007f383eb1f0c0:   cmp    $0xc27030,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │││╭     ││  ││   0x00007f383eb1f0c6:   je     0x00007f383eb1f1f9
   0.94%  ││││     ││  ││   0x00007f383eb1f0cc:   cmp    $0xc27240,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          ││││╭    ││  ││   0x00007f383eb1f0d2:   je     0x00007f383eb1f1c5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.22%  │↘│││    ││  ││   0x00007f383eb1f0d8:   mov    %r10d,0xc(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          │ │││    ││  ││                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
          │ │││    ││  ││   0x00007f383eb1f0dd:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f383eb1f326
   1.04%  │ │││    ││  ││   0x00007f383eb1f0e4:   movabs $0x800000000,%r9
   0.01%  │ │││    ││  ││   0x00007f383eb1f0ee:   lea    (%r9,%rax,1),%rax
   0.47%  │ │││    ││  ││   0x00007f383eb1f0f2:   mov    0x1f8(%rax),%rax
   1.56%  │ │││    ││  ││   0x00007f383eb1f0f9:   mov    0x40(%rax),%r9               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.92%  │ │││    ││  ││   0x00007f383eb1f0fd:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          │ │││    ││  ││   0x00007f383eb1f101:   mov    %rax,%rbx                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │││    ││  ││   0x00007f383eb1f104:   mov    %r9,%rax
          │ │││    ││  ││   0x00007f383eb1f107:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          │ │││    ││  ││                                                             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.02%  │ │││    ││  ││   0x00007f383eb1f109:   nop
   0.24%  │ │││    ││  ││   0x00007f383eb1f10a:   mov    0xc(%rsp),%r10d
   1.14%  │ │││    ││  ││   0x00007f383eb1f10f:   mov    (%rsp),%rbx
   0.70%  │ │││    ││↗↗││↗  0x00007f383eb1f113:   mov    0x14(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   2.77%  │ │││    │││││││  0x00007f383eb1f118:   lea    0x2(%r10),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.02%  │ │││    │││││││  0x00007f383eb1f11c:   nopl   0x0(%rax)
   0.59%  │ │││    │││││││  0x00007f383eb1f120:   test   %esi,%esi
          │ │││╭   │││││││  0x00007f383eb1f122:   je     0x00007f383eb1f158
   0.76%  │ ││││   │││││││  0x00007f383eb1f128:   mov    0x8(,%rsi,8),%eax
   4.70%  │ ││││   │││││││  0x00007f383eb1f12f:   cmp    $0xc27a80,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
          │ ││││╭  │││││││  0x00007f383eb1f135:   je     0x00007f383eb1f1a5
   0.60%  │ │││││  │││││││  0x00007f383eb1f13b:   nopl   0x0(%rax,%rax,1)
   0.47%  │ │││││  │││││││  0x00007f383eb1f140:   cmp    $0xc27030,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
          │ │││││╭ │││││││  0x00007f383eb1f146:   je     0x00007f383eb1f1e5
   0.80%  │ ││││││ │││││││  0x00007f383eb1f14c:   cmp    $0xc27240,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │ ││││││╭│││││││  0x00007f383eb1f152:   je     0x00007f383eb1f1d1           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.48%  │ │││↘││││││││││  0x00007f383eb1f158:   mov    %r11d,0xc(%rsp)
   0.01%  │ │││ ││││││││││  0x00007f383eb1f15d:   inc    %r10d                        ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          │ │││ ││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.11%  │ │││ ││││││││││  0x00007f383eb1f160:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f383eb1f346
   1.48%  │ │││ ││││││││││  0x00007f383eb1f167:   movabs $0x800000000,%r8
   0.34%  │ │││ ││││││││││  0x00007f383eb1f171:   lea    (%r8,%rax,1),%rax
   0.28%  │ │││ ││││││││││  0x00007f383eb1f175:   mov    0x1f8(%rax),%rax
   2.60%  │ │││ ││││││││││  0x00007f383eb1f17c:   mov    0x40(%rax),%r8               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.09%  │ │││ ││││││││││  0x00007f383eb1f180:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.01%  │ │││ ││││││││││  0x00007f383eb1f184:   mov    %rax,%rbx
          │ │││ ││││││││││  0x00007f383eb1f187:   mov    %r8,%rax                     ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.01%  │ │││ ││││││││││  0x00007f383eb1f18a:   mov    %r10d,0x8(%rsp)
   0.92%  │ │││ ││││││││││  0x00007f383eb1f18f:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          │ │││ ││││││││││                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%  │ │││ ││││││││││  0x00007f383eb1f191:   nop
          │ │││ ││││││││││  0x00007f383eb1f192:   mov    0xc(%rsp),%r10d
   3.95%  │ │││ ││││││││││  0x00007f383eb1f197:   mov    0x10(%rsp),%r11d
   0.01%  │ │││ ││││││││││  0x00007f383eb1f19c:   mov    (%rsp),%rbx
   0.45%  │ │││ │││╰││││││  0x00007f383eb1f1a0:   jmp    0x00007f383eb1f090           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │││ ↘││ ││││││  0x00007f383eb1f1a5:   incl   0x20(,%rsi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │ │││  ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
          │ │││  ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │││  ││ ││││││  0x00007f383eb1f1ac:   mov    %r11d,%r10d
          │ │││  ││ ││││││  0x00007f383eb1f1af:   mov    0x10(%rsp),%r11d
          │ │││  ││ ╰│││││  0x00007f383eb1f1b4:   jmp    0x00007f383eb1f090           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.45%  │ ↘││  ││  │││││  0x00007f383eb1f1b9:   incl   0x20(,%rsi,8)                ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
          │  ││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   4.33%  │  ││  ││  ╰││││  0x00007f383eb1f1c0:   jmp    0x00007f383eb1f113           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.37%  │  │↘  ││   ││││  0x00007f383eb1f1c5:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │   ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │  │   ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.36%  │  │   ││   ╰│││  0x00007f383eb1f1cc:   jmp    0x00007f383eb1f113           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │   ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │  │   │↘    │││  0x00007f383eb1f1d1:   incl   0x10(,%rsi,8)                ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
          │  │   │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
          │  │   │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │  │   │     │││  0x00007f383eb1f1d8:   mov    %r11d,%r10d
          │  │   │     │││  0x00007f383eb1f1db:   mov    0x10(%rsp),%r11d
          │  │   │     ╰││  0x00007f383eb1f1e0:   jmp    0x00007f383eb1f090           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │   │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.07%  │  │   ↘      ││  0x00007f383eb1f1e5:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │  │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │  │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.87%  │  │          ││  0x00007f383eb1f1ec:   mov    %r11d,%r10d
   0.02%  │  │          ││  0x00007f383eb1f1ef:   mov    0x10(%rsp),%r11d
          │  │          ╰│  0x00007f383eb1f1f4:   jmp    0x00007f383eb1f090           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │  ↘           │  0x00007f383eb1f1f9:   incl   0xc(,%rsi,8)                 ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │              ╰  0x00007f383eb1f200:   jmp    0x00007f383eb1f113
   0.00%  ↘                 0x00007f383eb1f205:   mov    %r10d,%r11d
                            0x00007f383eb1f208:   mov    0x14(%rsp),%r10d
                            0x00007f383eb1f20d:   data16 xchg %ax,%ax
                            0x00007f383eb1f210:   cmp    %r11d,%r10d
                            0x00007f383eb1f213:   jbe    0x00007f383eb1f2d4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                            0x00007f383eb1f219:   mov    0x10(%rbx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
                            0x00007f383eb1f21e:   mov    %r11d,%r8d
                            0x00007f383eb1f221:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
....................................................................................................
  55.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 749 

            #           [sp+0x10]  (sp of caller)
            0x00007f383eb1df00:   mov    0x8(%rsi),%r10d
            0x00007f383eb1df04:   movabs $0x800000000,%r12
            0x00007f383eb1df0e:   add    %r12,%r10
            0x00007f383eb1df11:   xor    %r12,%r12
            0x00007f383eb1df14:   cmp    %r10,%rax
            0x00007f383eb1df17:   jne    0x00007f383701e780           ;   {runtime_call ic_miss_stub}
            0x00007f383eb1df1d:   nop
            0x00007f383eb1df1e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.47%    0x00007f383eb1df20:   nopl   0x0(%rax,%rax,1)
   0.42%    0x00007f383eb1df25:   mov    $0x1,%eax
   2.24%    0x00007f383eb1df2a:   add    0x18(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
   4.82%    0x00007f383eb1df2d:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
   0.88%    0x00007f383eb1df30:   mov    0x348(%r15),%rcx
            0x00007f383eb1df37:   test   %eax,(%rcx)                  ;   {poll_return}
   0.60%    0x00007f383eb1df39:   ret    
          [Exception Handler]
            0x00007f383eb1df3a:   call   0x00007f3837169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f383eb1df3f:   nop
          [Deopt Handler Code]
            0x00007f383eb1df40:   call   0x00007f3837024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f383eb1df45:   nop
          [Stub Code]
            0x00007f383eb1df46:   hlt    
            0x00007f383eb1df47:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  15.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 747 

            #           [sp+0x10]  (sp of caller)
            0x00007f383eb1d900:   mov    0x8(%rsi),%r10d
            0x00007f383eb1d904:   movabs $0x800000000,%r12
            0x00007f383eb1d90e:   add    %r12,%r10
            0x00007f383eb1d911:   xor    %r12,%r12
            0x00007f383eb1d914:   cmp    %r10,%rax
            0x00007f383eb1d917:   jne    0x00007f383701e780           ;   {runtime_call ic_miss_stub}
            0x00007f383eb1d91d:   nop
            0x00007f383eb1d91e:   xchg   %ax,%ax
          [Verified Entry Point]
   5.86%    0x00007f383eb1d920:   nopl   0x0(%rax,%rax,1)
   0.44%    0x00007f383eb1d925:   mov    $0x1,%eax
   2.38%    0x00007f383eb1d92a:   add    0x14(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 285)
   2.77%    0x00007f383eb1d92d:   mov    %eax,0x14(%rsi)              ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
   0.87%    0x00007f383eb1d930:   mov    0x348(%r15),%rcx
   0.00%    0x00007f383eb1d937:   test   %eax,(%rcx)                  ;   {poll_return}
   1.29%    0x00007f383eb1d939:   ret    
          [Exception Handler]
            0x00007f383eb1d93a:   call   0x00007f3837169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f383eb1d93f:   nop
          [Deopt Handler Code]
            0x00007f383eb1d940:   call   0x00007f3837024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f383eb1d945:   nop
          [Stub Code]
            0x00007f383eb1d946:   hlt    
            0x00007f383eb1d947:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  13.61%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 748 

            #           [sp+0x10]  (sp of caller)
            0x00007f383eb1dc00:   mov    0x8(%rsi),%r10d
            0x00007f383eb1dc04:   movabs $0x800000000,%r12
            0x00007f383eb1dc0e:   add    %r12,%r10
            0x00007f383eb1dc11:   xor    %r12,%r12
            0x00007f383eb1dc14:   cmp    %r10,%rax
            0x00007f383eb1dc17:   jne    0x00007f383701e780           ;   {runtime_call ic_miss_stub}
            0x00007f383eb1dc1d:   nop
            0x00007f383eb1dc1e:   xchg   %ax,%ax
          [Verified Entry Point]
   6.01%    0x00007f383eb1dc20:   nopl   0x0(%rax,%rax,1)
   0.45%    0x00007f383eb1dc25:   mov    $0x1,%eax
   2.28%    0x00007f383eb1dc2a:   add    0x1c(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@6 (line 297)
   2.67%    0x00007f383eb1dc2d:   mov    %eax,0x1c(%rsi)              ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
   0.87%    0x00007f383eb1dc30:   mov    0x348(%r15),%rcx
   0.03%    0x00007f383eb1dc37:   test   %eax,(%rcx)                  ;   {poll_return}
   1.29%    0x00007f383eb1dc39:   ret    
          [Exception Handler]
            0x00007f383eb1dc3a:   call   0x00007f3837169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007f383eb1dc3f:   nop
          [Deopt Handler Code]
            0x00007f383eb1dc40:   call   0x00007f3837024020           ;   {runtime_call DeoptimizationBlob}
            0x00007f383eb1dc45:   nop
          [Stub Code]
            0x00007f383eb1dc46:   hlt    
            0x00007f383eb1dc47:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  13.60%  <total for region 4>

....[Hottest Regions]...............................................................................
  55.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 754 
  15.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 749 
  13.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 747 
  13.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 748 
   0.13%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.12%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 754 
  15.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 749 
  13.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 747 
  13.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 748 
   1.38%               kernel  [unknown] 
   0.09%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%  libjvmcicompiler.so  JNIFunctions_NewStringUTF_b441abb130f9a9263d4ca1ead1e1568e4c50be39 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%       hsdis-amd64.so  putop 
   0.23%  <...other 96 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%       jvmci, level 4
   1.38%               kernel
   0.16%            libjvm.so
   0.09%                     
   0.07%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%          c1, level 3
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 15.720 ns/op
# Warmup Iteration   2: 15.628 ns/op
# Warmup Iteration   3: 15.621 ns/op
# Warmup Iteration   4: 15.628 ns/op
# Warmup Iteration   5: 15.613 ns/op
Iteration   1: 15.621 ns/op
Iteration   2: 15.620 ns/op
Iteration   3: 15.612 ns/op
Iteration   4: 15.605 ns/op
Iteration   5: 15.609 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  15.613 ±(99.9%) 0.027 ns/op [Average]
  (min, avg, max) = (15.605, 15.613, 15.621), stdev = 0.007
  CI (99.9%): [15.586, 15.641] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 195955 total address lines.
Perf output processed (skipped 58.737 seconds):
 Column 1: cycles (50789 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 

                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                            0x00007fd09ab1e56c:   mov    %r9d,%r10d
                            0x00007fd09ab1e56f:   jmp    0x00007fd09ab1e4b0
                            0x00007fd09ab1e574:   mov    %r10d,%esi
                            0x00007fd09ab1e577:   mov    0x14(%rsp),%r10d
                            0x00007fd09ab1e57c:   lea    -0x2(%r10),%r11d
                            0x00007fd09ab1e580:   mov    %r11d,0x10(%rsp)
                            0x00007fd09ab1e585:   mov    (%rsp),%rbx
                            0x00007fd09ab1e589:   mov    %esi,%r10d
                            0x00007fd09ab1e58c:   nopl   0x0(%rax)
   0.24%           ↗↗ ↗ ↗   0x00007fd09ab1e590:   cmp    %r10d,%r11d
          ╭        ││ │ │   0x00007fd09ab1e593:   jle    0x00007fd09ab1e705           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │        ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   0.70%  │        ││ │ │   0x00007fd09ab1e599:   mov    0x10(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   2.89%  │        ││ │ │   0x00007fd09ab1e59e:   xchg   %ax,%ax
   0.00%  │        ││ │ │   0x00007fd09ab1e5a0:   test   %esi,%esi
          │╭       ││ │ │   0x00007fd09ab1e5a2:   je     0x00007fd09ab1e5d8
   0.64%  ││       ││ │ │   0x00007fd09ab1e5a8:   mov    0x8(,%rsi,8),%eax
   7.99%  ││       ││ │ │   0x00007fd09ab1e5af:   cmp    $0xc27450,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          ││╭      ││ │ │   0x00007fd09ab1e5b5:   je     0x00007fd09ab1e6b9
   0.71%  │││      ││ │ │   0x00007fd09ab1e5bb:   nopl   0x0(%rax,%rax,1)
   0.00%  │││      ││ │ │   0x00007fd09ab1e5c0:   cmp    $0xc27660,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
          │││╭     ││ │ │   0x00007fd09ab1e5c6:   je     0x00007fd09ab1e6d9
   0.98%  ││││     ││ │ │   0x00007fd09ab1e5cc:   cmp    $0xc27870,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
          ││││╭    ││ │ │   0x00007fd09ab1e5d2:   je     0x00007fd09ab1e6f9           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││││    ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.28%  │↘│││    ││ │ │   0x00007fd09ab1e5d8:   mov    %r10d,0xc(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          │ │││    ││ │ │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││    ││ │ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.04%  │ │││    ││ │ │   0x00007fd09ab1e5dd:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007fd09ab1e826
   1.60%  │ │││    ││ │ │   0x00007fd09ab1e5e4:   movabs $0x800000000,%r9
   0.02%  │ │││    ││ │ │   0x00007fd09ab1e5ee:   lea    (%r9,%rax,1),%rax
   0.61%  │ │││    ││ │ │   0x00007fd09ab1e5f2:   mov    0x1f8(%rax),%rax
   2.38%  │ │││    ││ │ │   0x00007fd09ab1e5f9:   mov    0x40(%rax),%r9               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.55%  │ │││    ││ │ │   0x00007fd09ab1e5fd:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.00%  │ │││    ││ │ │   0x00007fd09ab1e601:   mov    %rax,%rbx                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.01%  │ │││    ││ │ │   0x00007fd09ab1e604:   mov    %r9,%rax
   0.01%  │ │││    ││ │ │   0x00007fd09ab1e607:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          │ │││    ││ │ │                                                             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││    ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.02%  │ │││    ││ │ │   0x00007fd09ab1e609:   nop
   0.11%  │ │││    ││ │ │   0x00007fd09ab1e60a:   mov    0xc(%rsp),%r10d
   2.99%  │ │││    ││ │ │   0x00007fd09ab1e60f:   mov    (%rsp),%rbx
   0.75%  │ │││    ││↗│↗│↗  0x00007fd09ab1e613:   mov    0x14(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   4.27%  │ │││    │││││││  0x00007fd09ab1e618:   lea    0x2(%r10),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.02%  │ │││    │││││││  0x00007fd09ab1e61c:   nopl   0x0(%rax)
   0.23%  │ │││    │││││││  0x00007fd09ab1e620:   test   %esi,%esi
          │ │││╭   │││││││  0x00007fd09ab1e622:   je     0x00007fd09ab1e658
   0.95%  │ ││││   │││││││  0x00007fd09ab1e628:   mov    0x8(,%rsi,8),%eax
   5.95%  │ ││││   │││││││  0x00007fd09ab1e62f:   cmp    $0xc27450,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          │ ││││╭  │││││││  0x00007fd09ab1e635:   je     0x00007fd09ab1e6a5
   0.61%  │ │││││  │││││││  0x00007fd09ab1e63b:   nopl   0x0(%rax,%rax,1)
   0.16%  │ │││││  │││││││  0x00007fd09ab1e640:   cmp    $0xc27660,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
          │ │││││╭ │││││││  0x00007fd09ab1e646:   je     0x00007fd09ab1e6e5
   0.79%  │ ││││││ │││││││  0x00007fd09ab1e64c:   cmp    $0xc27870,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
          │ ││││││╭│││││││  0x00007fd09ab1e652:   je     0x00007fd09ab1e6c5           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.57%  │ │││↘││││││││││  0x00007fd09ab1e658:   mov    %r11d,0xc(%rsp)
   0.00%  │ │││ ││││││││││  0x00007fd09ab1e65d:   inc    %r10d                        ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
          │ │││ ││││││││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.02%  │ │││ ││││││││││  0x00007fd09ab1e660:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007fd09ab1e846
   0.83%  │ │││ ││││││││││  0x00007fd09ab1e667:   movabs $0x800000000,%r8
   0.37%  │ │││ ││││││││││  0x00007fd09ab1e671:   lea    (%r8,%rax,1),%rax
   0.14%  │ │││ ││││││││││  0x00007fd09ab1e675:   mov    0x1f8(%rax),%rax
   1.82%  │ │││ ││││││││││  0x00007fd09ab1e67c:   mov    0x40(%rax),%r8               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.70%  │ │││ ││││││││││  0x00007fd09ab1e680:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          │ │││ ││││││││││  0x00007fd09ab1e684:   mov    %rax,%rbx
          │ │││ ││││││││││  0x00007fd09ab1e687:   mov    %r8,%rax                     ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%  │ │││ ││││││││││  0x00007fd09ab1e68a:   mov    %r10d,0x8(%rsp)
   0.65%  │ │││ ││││││││││  0x00007fd09ab1e68f:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
          │ │││ ││││││││││                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.01%  │ │││ ││││││││││  0x00007fd09ab1e691:   nop
   0.19%  │ │││ ││││││││││  0x00007fd09ab1e692:   mov    0xc(%rsp),%r10d
   2.20%  │ │││ ││││││││││  0x00007fd09ab1e697:   mov    0x10(%rsp),%r11d
   0.01%  │ │││ ││││││││││  0x00007fd09ab1e69c:   mov    (%rsp),%rbx
   0.23%  │ │││ │││╰││││││  0x00007fd09ab1e6a0:   jmp    0x00007fd09ab1e590           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││ │││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.17%  │ │││ ↘││ ││││││  0x00007fd09ab1e6a5:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │ │││  ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │ │││  ││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.44%  │ │││  ││ ││││││  0x00007fd09ab1e6ac:   mov    %r11d,%r10d
          │ │││  ││ ││││││  0x00007fd09ab1e6af:   mov    0x10(%rsp),%r11d
          │ │││  ││ ╰│││││  0x00007fd09ab1e6b4:   jmp    0x00007fd09ab1e590           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.17%  │ ↘││  ││  │││││  0x00007fd09ab1e6b9:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
          │  ││  ││  │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   1.12%  │  ││  ││  ╰││││  0x00007fd09ab1e6c0:   jmp    0x00007fd09ab1e613           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  ││  ││   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.11%  │  ││  │↘   ││││  0x00007fd09ab1e6c5:   incl   0x1c(,%rsi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          │  ││  │    ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.66%  │  ││  │    ││││  0x00007fd09ab1e6cc:   mov    %r11d,%r10d
   0.06%  │  ││  │    ││││  0x00007fd09ab1e6cf:   mov    0x10(%rsp),%r11d
          │  ││  │    ╰│││  0x00007fd09ab1e6d4:   jmp    0x00007fd09ab1e590           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │  ││  │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.05%  │  ↘│  │     │││  0x00007fd09ab1e6d9:   incl   0x18(,%rsi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │   │  │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          │   │  │     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.32%  │   │  │     ╰││  0x00007fd09ab1e6e0:   jmp    0x00007fd09ab1e613           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   │  │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.07%  │   │  ↘      ││  0x00007fd09ab1e6e5:   incl   0x18(,%rsi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
          │   │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
          │   │         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.74%  │   │         ││  0x00007fd09ab1e6ec:   mov    %r11d,%r10d
   0.01%  │   │         ││  0x00007fd09ab1e6ef:   mov    0x10(%rsp),%r11d
   0.00%  │   │         ╰│  0x00007fd09ab1e6f4:   jmp    0x00007fd09ab1e590           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.18%  │   ↘          │  0x00007fd09ab1e6f9:   incl   0x1c(,%rsi,8)                ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
          │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
          │              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.06%  │              ╰  0x00007fd09ab1e700:   jmp    0x00007fd09ab1e613
   0.00%  ↘                 0x00007fd09ab1e705:   mov    %r10d,%r11d
                            0x00007fd09ab1e708:   mov    0x14(%rsp),%r10d
                            0x00007fd09ab1e70d:   data16 xchg %ax,%ax
                            0x00007fd09ab1e710:   cmp    %r11d,%r10d
                            0x00007fd09ab1e713:   jbe    0x00007fd09ab1e7d4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                            0x00007fd09ab1e719:   mov    0x10(%rbx,%r11,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
                            0x00007fd09ab1e71e:   mov    %r11d,%r8d
                            0x00007fd09ab1e721:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
....................................................................................................
  53.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 746 

            #           [sp+0x10]  (sp of caller)
            0x00007fd09ab1d400:   mov    0x8(%rsi),%r10d
            0x00007fd09ab1d404:   movabs $0x800000000,%r12
            0x00007fd09ab1d40e:   add    %r12,%r10
            0x00007fd09ab1d411:   xor    %r12,%r12
            0x00007fd09ab1d414:   cmp    %r10,%rax
            0x00007fd09ab1d417:   jne    0x00007fd09301e780           ;   {runtime_call ic_miss_stub}
            0x00007fd09ab1d41d:   nop
            0x00007fd09ab1d41e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.77%    0x00007fd09ab1d420:   nopl   0x0(%rax,%rax,1)
   0.31%    0x00007fd09ab1d425:   mov    $0x1,%eax
   1.73%    0x00007fd09ab1d42a:   add    0x24(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@6 (line 309)
   3.21%    0x00007fd09ab1d42d:   mov    %eax,0x24(%rsi)              ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
   0.68%    0x00007fd09ab1d430:   mov    0x348(%r15),%rcx
   0.01%    0x00007fd09ab1d437:   test   %eax,(%rcx)                  ;   {poll_return}
   0.52%    0x00007fd09ab1d439:   ret    
          [Exception Handler]
            0x00007fd09ab1d43a:   call   0x00007fd09316be00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fd09ab1d43f:   nop
          [Deopt Handler Code]
            0x00007fd09ab1d440:   call   0x00007fd093024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fd09ab1d445:   nop
          [Stub Code]
            0x00007fd09ab1d446:   hlt    
            0x00007fd09ab1d447:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  11.23%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 745 

            #           [sp+0x10]  (sp of caller)
            0x00007fd09ab1d100:   mov    0x8(%rsi),%r10d
            0x00007fd09ab1d104:   movabs $0x800000000,%r12
            0x00007fd09ab1d10e:   add    %r12,%r10
            0x00007fd09ab1d111:   xor    %r12,%r12
            0x00007fd09ab1d114:   cmp    %r10,%rax
            0x00007fd09ab1d117:   jne    0x00007fd09301e780           ;   {runtime_call ic_miss_stub}
            0x00007fd09ab1d11d:   nop
            0x00007fd09ab1d11e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.55%    0x00007fd09ab1d120:   nopl   0x0(%rax,%rax,1)
   0.32%    0x00007fd09ab1d125:   mov    $0x1,%eax
   1.61%    0x00007fd09ab1d12a:   add    0x20(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@6 (line 303)
   3.41%    0x00007fd09ab1d12d:   mov    %eax,0x20(%rsi)              ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
   0.70%    0x00007fd09ab1d130:   mov    0x348(%r15),%rcx
   0.00%    0x00007fd09ab1d137:   test   %eax,(%rcx)                  ;   {poll_return}
   0.59%    0x00007fd09ab1d139:   ret    
          [Exception Handler]
            0x00007fd09ab1d13a:   call   0x00007fd09316be00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fd09ab1d13f:   nop
          [Deopt Handler Code]
            0x00007fd09ab1d140:   call   0x00007fd093024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fd09ab1d145:   nop
          [Stub Code]
            0x00007fd09ab1d146:   hlt    
            0x00007fd09ab1d147:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  11.19%  <total for region 3>

....[Hottest Region 4]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 742 

            #           [sp+0x10]  (sp of caller)
            0x00007fd09ab1cb00:   mov    0x8(%rsi),%r10d
            0x00007fd09ab1cb04:   movabs $0x800000000,%r12
            0x00007fd09ab1cb0e:   add    %r12,%r10
            0x00007fd09ab1cb11:   xor    %r12,%r12
            0x00007fd09ab1cb14:   cmp    %r10,%rax
            0x00007fd09ab1cb17:   jne    0x00007fd09301e780           ;   {runtime_call ic_miss_stub}
            0x00007fd09ab1cb1d:   nop
            0x00007fd09ab1cb1e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.68%    0x00007fd09ab1cb20:   nopl   0x0(%rax,%rax,1)
   0.36%    0x00007fd09ab1cb25:   mov    $0x1,%eax
   1.77%    0x00007fd09ab1cb2a:   add    0x10(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 279)
   2.65%    0x00007fd09ab1cb2d:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
   0.68%    0x00007fd09ab1cb30:   mov    0x348(%r15),%rcx
            0x00007fd09ab1cb37:   test   %eax,(%rcx)                  ;   {poll_return}
   0.86%    0x00007fd09ab1cb39:   ret    
          [Exception Handler]
            0x00007fd09ab1cb3a:   call   0x00007fd09316be00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fd09ab1cb3f:   nop
          [Deopt Handler Code]
            0x00007fd09ab1cb40:   call   0x00007fd093024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fd09ab1cb45:   nop
          [Stub Code]
            0x00007fd09ab1cb46:   hlt    
            0x00007fd09ab1cb47:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  10.99%  <total for region 4>

....[Hottest Region 5]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 741 

            #           [sp+0x10]  (sp of caller)
            0x00007fd09ab1c500:   mov    0x8(%rsi),%r10d
            0x00007fd09ab1c504:   movabs $0x800000000,%r12
            0x00007fd09ab1c50e:   add    %r12,%r10
            0x00007fd09ab1c511:   xor    %r12,%r12
            0x00007fd09ab1c514:   cmp    %r10,%rax
            0x00007fd09ab1c517:   jne    0x00007fd09301e780           ;   {runtime_call ic_miss_stub}
            0x00007fd09ab1c51d:   nop
            0x00007fd09ab1c51e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.71%    0x00007fd09ab1c520:   nopl   0x0(%rax,%rax,1)
   0.30%    0x00007fd09ab1c525:   mov    $0x1,%eax
   1.80%    0x00007fd09ab1c52a:   add    0xc(%rsi),%eax               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 273)
   2.18%    0x00007fd09ab1c52d:   mov    %eax,0xc(%rsi)               ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
   0.69%    0x00007fd09ab1c530:   mov    0x348(%r15),%rcx
   0.01%    0x00007fd09ab1c537:   test   %eax,(%rcx)                  ;   {poll_return}
   0.95%    0x00007fd09ab1c539:   ret    
          [Exception Handler]
            0x00007fd09ab1c53a:   call   0x00007fd09316be00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007fd09ab1c53f:   nop
          [Deopt Handler Code]
            0x00007fd09ab1c540:   call   0x00007fd093024020           ;   {runtime_call DeoptimizationBlob}
            0x00007fd09ab1c545:   nop
          [Stub Code]
            0x00007fd09ab1c546:   hlt    
            0x00007fd09ab1c547:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  10.64%  <total for region 5>

....[Hottest Regions]...............................................................................
  53.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 
  11.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 746 
  11.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 745 
  10.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 742 
  10.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 741 
   0.58%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
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
   1.32%  <...other 427 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.41%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 751 
  11.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 746 
  11.19%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 745 
  10.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 742 
  10.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 741 
   2.11%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.23%  <...other 96 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.47%       jvmci, level 4
   2.11%               kernel
   0.16%            libjvm.so
   0.10%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.04%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%               [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 16.387 ns/op
# Warmup Iteration   2: 16.209 ns/op
# Warmup Iteration   3: 16.222 ns/op
# Warmup Iteration   4: 16.207 ns/op
# Warmup Iteration   5: 16.217 ns/op
Iteration   1: 16.226 ns/op
Iteration   2: 16.235 ns/op
Iteration   3: 16.227 ns/op
Iteration   4: 16.228 ns/op
Iteration   5: 16.217 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  16.226 ±(99.9%) 0.024 ns/op [Average]
  (min, avg, max) = (16.217, 16.226, 16.235), stdev = 0.006
  CI (99.9%): [16.202, 16.250] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 193476 total address lines.
Perf output processed (skipped 58.589 seconds):
 Column 1: cycles (51157 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 762 

                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                   0x00007feb9ab1c3ec:   mov    %r9d,%r10d
                   0x00007feb9ab1c3ef:   jmp    0x00007feb9ab1c330
                   0x00007feb9ab1c3f4:   mov    %r10d,%esi
                   0x00007feb9ab1c3f7:   mov    0x14(%rsp),%r10d
                   0x00007feb9ab1c3fc:   lea    -0x2(%r10),%r11d
                   0x00007feb9ab1c400:   mov    %r11d,0x10(%rsp)
                   0x00007feb9ab1c405:   mov    (%rsp),%rbx
                   0x00007feb9ab1c409:   mov    %esi,%r10d
                   0x00007feb9ab1c40c:   nopl   0x0(%rax)
   0.32%      ↗    0x00007feb9ab1c410:   cmp    %r10d,%r11d
              │    0x00007feb9ab1c413:   jle    0x00007feb9ab1c585           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   0.53%      │    0x00007feb9ab1c419:   mov    0x10(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   3.71%      │    0x00007feb9ab1c41e:   xchg   %ax,%ax
              │    0x00007feb9ab1c420:   test   %esi,%esi
          ╭   │    0x00007feb9ab1c422:   je     0x00007feb9ab1c458
   0.89%  │   │    0x00007feb9ab1c428:   mov    0x8(,%rsi,8),%eax
   6.42%  │   │    0x00007feb9ab1c42f:   cmp    $0xc27660,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
          │╭  │    0x00007feb9ab1c435:   je     0x00007feb9ab1c525
   0.89%  ││  │    0x00007feb9ab1c43b:   nopl   0x0(%rax,%rax,1)
          ││  │    0x00007feb9ab1c440:   cmp    $0xc27450,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
          ││╭ │    0x00007feb9ab1c446:   je     0x00007feb9ab1c531
   1.20%  │││ │    0x00007feb9ab1c44c:   cmp    $0xc27240,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
          │││ │    0x00007feb9ab1c452:   je     0x00007feb9ab1c551           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.46%  ↘││ │    0x00007feb9ab1c458:   mov    %r10d,0xc(%rsp)              ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
           ││ │                                                              ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
           ││ │    0x00007feb9ab1c45d:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007feb9ab1c6a6
   0.54%   ││ │    0x00007feb9ab1c464:   movabs $0x800000000,%r9
   0.02%   ││ │    0x00007feb9ab1c46e:   lea    (%r9,%rax,1),%rax
   0.54%   ││ │    0x00007feb9ab1c472:   mov    0x1f8(%rax),%rax
   1.50%   ││ │    0x00007feb9ab1c479:   mov    0x40(%rax),%r9               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.60%   ││ │    0x00007feb9ab1c47d:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
           ││ │    0x00007feb9ab1c481:   mov    %rax,%rbx                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
           ││ │    0x00007feb9ab1c484:   mov    %r9,%rax
           ││ │    0x00007feb9ab1c487:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
           ││ │                                                              ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%   ││ │    0x00007feb9ab1c489:   nop
   0.26%   ││ │    0x00007feb9ab1c48a:   mov    0xc(%rsp),%r10d
   1.45%   ││ │    0x00007feb9ab1c48f:   mov    (%rsp),%rbx
   0.56%   ││ │↗↗  0x00007feb9ab1c493:   mov    0x14(%rbx,%r10,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   3.93%   ││ │││  0x00007feb9ab1c498:   lea    0x2(%r10),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   0.01%   ││ │││  0x00007feb9ab1c49c:   nopl   0x0(%rax)
   0.50%   ││ │││  0x00007feb9ab1c4a0:   test   %esi,%esi
           ││╭│││  0x00007feb9ab1c4a2:   je     0x00007feb9ab1c4d8
   0.73%   ││││││  0x00007feb9ab1c4a8:   mov    0x8(,%rsi,8),%eax
   4.17%   ││││││  0x00007feb9ab1c4af:   cmp    $0xc27660,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
           ││││││  0x00007feb9ab1c4b5:   je     0x00007feb9ab1c53d
   0.71%   ││││││  0x00007feb9ab1c4bb:   nopl   0x0(%rax,%rax,1)
   0.31%   ││││││  0x00007feb9ab1c4c0:   cmp    $0xc27450,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
           ││││││  0x00007feb9ab1c4c6:   je     0x00007feb9ab1c55d
   0.75%   ││││││  0x00007feb9ab1c4cc:   cmp    $0xc27240,%eax               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
           ││││││  0x00007feb9ab1c4d2:   je     0x00007feb9ab1c571           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.71%   ││↘│││  0x00007feb9ab1c4d8:   mov    %r11d,0xc(%rsp)
   0.00%   ││ │││  0x00007feb9ab1c4dd:   inc    %r10d                        ; ImmutableOopMap {rsi=NarrowOop [0]=Oop }
           ││ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@13 (line 169)
   0.14%   ││ │││  0x00007feb9ab1c4e0:   mov    0x8(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007feb9ab1c6c6
   1.04%   ││ │││  0x00007feb9ab1c4e7:   movabs $0x800000000,%r8
   0.47%   ││ │││  0x00007feb9ab1c4f1:   lea    (%r8,%rax,1),%rax
   0.27%   ││ │││  0x00007feb9ab1c4f5:   mov    0x1f8(%rax),%rax
   2.79%   ││ │││  0x00007feb9ab1c4fc:   mov    0x40(%rax),%r8               ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   3.40%   ││ │││  0x00007feb9ab1c500:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
           ││ │││  0x00007feb9ab1c504:   mov    %rax,%rbx
           ││ │││  0x00007feb9ab1c507:   mov    %r8,%rax                     ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.01%   ││ │││  0x00007feb9ab1c50a:   mov    %r10d,0x8(%rsp)
   0.85%   ││ │││  0x00007feb9ab1c50f:   call   *%rax                        ; ImmutableOopMap {[0]=Oop }
           ││ │││                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
           ││ │││  0x00007feb9ab1c511:   nop
   0.37%   ││ │││  0x00007feb9ab1c512:   mov    0xc(%rsp),%r10d
   2.35%   ││ │││  0x00007feb9ab1c517:   mov    0x10(%rsp),%r11d
   0.01%   ││ │││  0x00007feb9ab1c51c:   mov    (%rsp),%rbx
   0.35%   ││ ╰││  0x00007feb9ab1c520:   jmp    0x00007feb9ab1c410           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.15%   ↘│  ││  0x00007feb9ab1c525:   incl   0x18(,%rsi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
            │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.61%    │  ╰│  0x00007feb9ab1c52c:   jmp    0x00007feb9ab1c493           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
            ↘   │  0x00007feb9ab1c531:   incl   0x14(,%rsi,8)                ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                ╰  0x00007feb9ab1c538:   jmp    0x00007feb9ab1c493           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                   0x00007feb9ab1c53d:   incl   0x18(,%rsi,8)                ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
....................................................................................................
  46.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 759 

            #           [sp+0x10]  (sp of caller)
            0x00007feb9ab1ce00:   mov    0x8(%rsi),%r10d
            0x00007feb9ab1ce04:   movabs $0x800000000,%r12
            0x00007feb9ab1ce0e:   add    %r12,%r10
            0x00007feb9ab1ce11:   xor    %r12,%r12
            0x00007feb9ab1ce14:   cmp    %r10,%rax
            0x00007feb9ab1ce17:   jne    0x00007feb9301e780           ;   {runtime_call ic_miss_stub}
            0x00007feb9ab1ce1d:   nop
            0x00007feb9ab1ce1e:   xchg   %ax,%ax
          [Verified Entry Point]
   3.81%    0x00007feb9ab1ce20:   nopl   0x0(%rax,%rax,1)
   0.31%    0x00007feb9ab1ce25:   mov    $0x1,%eax
   1.45%    0x00007feb9ab1ce2a:   add    0x24(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@6 (line 309)
   4.29%    0x00007feb9ab1ce2d:   mov    %eax,0x24(%rsi)              ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
   0.56%    0x00007feb9ab1ce30:   mov    0x348(%r15),%rcx
            0x00007feb9ab1ce37:   test   %eax,(%rcx)                  ;   {poll_return}
            0x00007feb9ab1ce39:   ret    
          [Exception Handler]
            0x00007feb9ab1ce3a:   call   0x00007feb93169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007feb9ab1ce3f:   nop
          [Deopt Handler Code]
            0x00007feb9ab1ce40:   call   0x00007feb93024020           ;   {runtime_call DeoptimizationBlob}
            0x00007feb9ab1ce45:   nop
          [Stub Code]
....................................................................................................
  10.43%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 760 

            #           [sp+0x10]  (sp of caller)
            0x00007feb9ab1d100:   mov    0x8(%rsi),%r10d
            0x00007feb9ab1d104:   movabs $0x800000000,%r12
            0x00007feb9ab1d10e:   add    %r12,%r10
            0x00007feb9ab1d111:   xor    %r12,%r12
            0x00007feb9ab1d114:   cmp    %r10,%rax
            0x00007feb9ab1d117:   jne    0x00007feb9301e780           ;   {runtime_call ic_miss_stub}
            0x00007feb9ab1d11d:   nop
            0x00007feb9ab1d11e:   xchg   %ax,%ax
          [Verified Entry Point]
   4.09%    0x00007feb9ab1d120:   nopl   0x0(%rax,%rax,1)
   0.29%    0x00007feb9ab1d125:   mov    $0x1,%eax
   1.44%    0x00007feb9ab1d12a:   add    0x28(%rsi),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@6 (line 315)
   3.18%    0x00007feb9ab1d12d:   mov    %eax,0x28(%rsi)              ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 315)
   0.67%    0x00007feb9ab1d130:   mov    0x348(%r15),%rcx
   0.04%    0x00007feb9ab1d137:   test   %eax,(%rcx)                  ;   {poll_return}
   0.47%    0x00007feb9ab1d139:   ret    
          [Exception Handler]
            0x00007feb9ab1d13a:   call   0x00007feb93169d00           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
            0x00007feb9ab1d13f:   nop
          [Deopt Handler Code]
            0x00007feb9ab1d140:   call   0x00007feb93024020           ;   {runtime_call DeoptimizationBlob}
            0x00007feb9ab1d145:   nop
          [Stub Code]
            0x00007feb9ab1d146:   hlt    
            0x00007feb9ab1d147:   hlt    
          --------------------------------------------------------------------------------
....................................................................................................
  10.18%  <total for region 3>

....[Hottest Regions]...............................................................................
  46.52%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 762 
  10.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 759 
  10.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 760 
   9.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 758 
   8.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 751 
   8.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 757 
   3.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 762 
   1.17%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.93%  <...other 311 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 762 
  10.43%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 759 
  10.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 760 
   9.68%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 758 
   8.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 751 
   8.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 757 
   2.32%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%  libjvmcicompiler.so  JNIFunctions_NewStringUTF_b441abb130f9a9263d4ca1ead1e1568e4c50be39 
   0.21%  <...other 88 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.27%       jvmci, level 4
   2.32%               kernel
   0.15%            libjvm.so
   0.08%         libc-2.31.so
   0.07%                     
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%       perf-42957.map
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

Benchmark                                                         (targetType)  Mode  Cnt   Score    Error  Units
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic         MONOMORPHIC  avgt    5   2.017 ±  0.161  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm    MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic           BIMORPHIC  avgt    5   2.323 ±  0.003  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm      BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_3  avgt    5   2.283 ±  0.083  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_4  avgt    5   2.464 ±  0.006  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_5  avgt    5   2.533 ±  0.002  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_6  avgt    5   2.735 ±  0.026  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_7  avgt    5   3.008 ±  0.007  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_8  avgt    5   3.018 ±  0.015  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_8  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                        MONOMORPHIC  avgt    5   1.842 ±  0.178  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                   MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                          BIMORPHIC  avgt    5   2.014 ±  0.156  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                     BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_3  avgt    5   1.964 ±  0.001  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_4  avgt    5   2.943 ±  0.107  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_5  avgt    5  11.750 ±  0.091  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_6  avgt    5  13.940 ±  0.067  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_7  avgt    5  15.613 ±  0.027  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_8  avgt    5  16.226 ±  0.024  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_8  avgt          NaN             ---
