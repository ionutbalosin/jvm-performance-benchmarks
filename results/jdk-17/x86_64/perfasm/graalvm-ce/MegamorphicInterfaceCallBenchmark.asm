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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:23:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.692 ns/op
# Warmup Iteration   2: 1.550 ns/op
# Warmup Iteration   3: 1.550 ns/op
# Warmup Iteration   4: 1.550 ns/op
# Warmup Iteration   5: 1.550 ns/op
Iteration   1: 1.550 ns/op
Iteration   2: 1.550 ns/op
Iteration   3: 1.550 ns/op
Iteration   4: 1.550 ns/op
Iteration   5: 1.550 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.550 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.550, 1.550, 1.550), stdev = 0.001
  CI (99.9%): [1.550, 1.550] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 212790 total address lines.
Perf output processed (skipped 58.683 seconds):
 Column 1: cycles (50626 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 

              0x00007fe95afff9f5:   mov    %r9d,%ebx
   0.01%      0x00007fe95afff9f8:   mov    $0x1,%r9d
              0x00007fe95afff9fe:   xchg   %ax,%ax
          ╭   0x00007fe95afffa00:   jmp    0x00007fe95afffa5a           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
          │   0x00007fe95afffa05:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fe95afffa10:   data16 data16 xchg %ax,%ax
          │   0x00007fe95afffa14:   nopl   0x0(%rax,%rax,1)
          │   0x00007fe95afffa1c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
   4.06%  │↗  0x00007fe95afffa20:   movsbl 0x10(%r9,%r8,8),%edi         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   4.58%  ││  0x00007fe95afffa26:   test   %edi,%edi
          ││  0x00007fe95afffa28:   jne    0x00007fe95afffadc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
   6.34%  ││  0x00007fe95afffa2e:   mov    0x10(%r10,%r9,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
  10.05%  ││  0x00007fe95afffa33:   nopw   0x0(%rax,%rax,1)
   4.02%  ││  0x00007fe95afffa3c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop r8=NarrowOop r10=Oop r11=Oop }
          ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   4.77%  ││  0x00007fe95afffa40:   cmpl   $0xc2c400,0x8(,%rdi,8)       ; implicit exception: dispatches to 0x00007fe95afffb6f
          ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
  30.33%  ││  0x00007fe95afffa4b:   jne    0x00007fe95afffaac           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   9.47%  ││  0x00007fe95afffa51:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   3.93%  ││  0x00007fe95afffa53:   mov    %ebx,0xc(%r11)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   4.61%  ││  0x00007fe95afffa57:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   6.12%  ↘│  0x00007fe95afffa5a:   nopw   0x0(%rax,%rax,1)
   9.48%   │  0x00007fe95afffa60:   cmp    $0x1c20,%r9d
           ╰  0x00007fe95afffa67:   jl     0x00007fe95afffa20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
              0x00007fe95afffa69:   mov    0x10(%rsp),%rbp
   0.05%      0x00007fe95afffa6e:   add    $0x18,%rsp
              0x00007fe95afffa72:   mov    0x348(%r15),%rcx
   0.00%      0x00007fe95afffa79:   test   %eax,(%rcx)                  ;   {poll_return}
   0.07%      0x00007fe95afffa7b:   ret    
              0x00007fe95afffa7c:   mov    $0x0,%r11
              0x00007fe95afffa83:   mov    $0xffffffe5,%r10d
              0x00007fe95afffa89:   mov    %r10d,0x370(%r15)            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
              0x00007fe95afffa90:   mov    %r11,0x378(%r15)
              0x00007fe95afffa97:   call   0x00007fe95350527a           ; ImmutableOopMap {rsi=Oop }
                                                                        ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 156)
                                                                        ;   {runtime_call DeoptimizationBlob}
              0x00007fe95afffa9c:   nop
....................................................................................................
  97.88%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.88%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
   0.55%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
   0.06%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.88%  <...other 301 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
   1.66%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 776 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%          interpreter  ifeq  153 ifeq  
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.00%       jvmci, level 4
   1.66%               kernel
   0.14%            libjvm.so
   0.10%         libc-2.31.so
   0.04%                     
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 7.14% complete, ETA 00:24:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.458 ns/op
# Warmup Iteration   2: 1.424 ns/op
# Warmup Iteration   3: 1.423 ns/op
# Warmup Iteration   4: 1.424 ns/op
# Warmup Iteration   5: 1.425 ns/op
Iteration   1: 1.423 ns/op
Iteration   2: 1.423 ns/op
Iteration   3: 1.423 ns/op
Iteration   4: 1.423 ns/op
Iteration   5: 1.423 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.423 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.423, 1.423, 1.423), stdev = 0.001
  CI (99.9%): [1.422, 1.424] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 196821 total address lines.
Perf output processed (skipped 58.593 seconds):
 Column 1: cycles (50509 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 

                 0x00007f6466fff067:   jb     0x00007f6466fff139           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
   0.00%         0x00007f6466fff06d:   cmp    $0x1c20,%r9d
                 0x00007f6466fff074:   jb     0x00007f6466fff139           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
                 0x00007f6466fff07a:   mov    %edx,%r9d
                 0x00007f6466fff07d:   mov    $0x1,%r11d
                 0x00007f6466fff083:   nopw   0x0(%rax,%rax,1)
                 0x00007f6466fff08c:   data16 data16 xchg %ax,%ax          ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   6.83%     ↗↗  0x00007f6466fff090:   cmp    $0x1c20,%r11d
          ╭  ││  0x00007f6466fff097:   jge    0x00007f6466fff0ff           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
   7.19%  │  ││  0x00007f6466fff09d:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
   6.20%  │  ││  0x00007f6466fff0a2:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   6.83%  │  ││  0x00007f6466fff0a8:   mov    %r11d,%esi
   6.77%  │  ││  0x00007f6466fff0ab:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   6.94%  │  ││  0x00007f6466fff0ad:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   6.23%  │  ││  0x00007f6466fff0b0:   cmp    $0x0,%edx
          │╭ ││  0x00007f6466fff0b3:   je     0x00007f6466fff0cb
   3.37%  ││ ││  0x00007f6466fff0b9:   cmp    $0x1,%edx
   3.38%  ││ ││  0x00007f6466fff0bc:   nopl   0x0(%rax)
   3.56%  ││╭││  0x00007f6466fff0c0:   je     0x00007f6466fff0e5
          │││││  0x00007f6466fff0c6:   jmp    0x00007f6466fff176           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   3.35%  │↘│││  0x00007f6466fff0cb:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f6466fff246
          │ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   7.21%  │ │││  0x00007f6466fff0d6:   jne    0x00007f6466fff1c4           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   3.48%  │ │││  0x00007f6466fff0dc:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   3.05%  │ │││  0x00007f6466fff0e0:   mov    %esi,%r11d
   3.36%  │ │╰│  0x00007f6466fff0e3:   jmp    0x00007f6466fff090           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │ │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   3.15%  │ ↘ │  0x00007f6466fff0e5:   cmpl   $0xc2c8d0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f6466fff266
          │   │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   6.83%  │   │  0x00007f6466fff0f0:   jne    0x00007f6466fff155           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   3.68%  │   │  0x00007f6466fff0f6:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   3.11%  │   │  0x00007f6466fff0fa:   mov    %esi,%r11d
   3.35%  │   ╰  0x00007f6466fff0fd:   jmp    0x00007f6466fff090           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.00%  ↘      0x00007f6466fff0ff:   mov    0x10(%rsp),%rbp
   0.05%         0x00007f6466fff104:   add    $0x18,%rsp
                 0x00007f6466fff108:   mov    0x348(%r15),%rcx
   0.01%         0x00007f6466fff10f:   test   %eax,(%rcx)                  ;   {poll_return}
   0.10%         0x00007f6466fff111:   ret    
                 0x00007f6466fff112:   data16 nopw 0x0(%rax,%rax,1)
                 0x00007f6466fff11c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 156)
                 0x00007f6466fff120:   cmpl   $0xc2c8d0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f6466fff286
                                                                           ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
                 0x00007f6466fff12b:   jne    0x00007f6466fff185           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
                 0x00007f6466fff131:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
....................................................................................................
  98.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 
   0.16%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 773 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   1.01%  <...other 341 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 
   1.57%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 773 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  outputStream::update_position 
   0.00%            libjvm.so  AbstractDisassembler::print_location 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  fileStream::flush 
   0.00%         libc-2.31.so  _nl_parse_alt_digit 
   0.13%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.12%       jvmci, level 4
   1.57%               kernel
   0.13%            libjvm.so
   0.10%         libc-2.31.so
   0.03%                     
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 14.29% complete, ETA 00:22:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.971 ns/op
# Warmup Iteration   2: 1.917 ns/op
# Warmup Iteration   3: 1.813 ns/op
# Warmup Iteration   4: 1.928 ns/op
# Warmup Iteration   5: 1.902 ns/op
Iteration   1: 1.908 ns/op
Iteration   2: 1.924 ns/op
Iteration   3: 1.921 ns/op
Iteration   4: 1.917 ns/op
Iteration   5: 1.814 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.897 ±(99.9%) 0.179 ns/op [Average]
  (min, avg, max) = (1.814, 1.897, 1.924), stdev = 0.047
  CI (99.9%): [1.717, 2.076] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 194615 total address lines.
Perf output processed (skipped 58.578 seconds):
 Column 1: cycles (50823 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 763 

                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
                   0x00007f616effdf79:   mov    %r8d,%ecx
                   0x00007f616effdf7c:   shl    $0x3,%rcx                    ;*getfield instanceIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@1 (line 156)
   0.00%           0x00007f616effdf80:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 157)
                   0x00007f616effdf84:   cmp    $0x1c20,%r11d
                   0x00007f616effdf8b:   jb     0x00007f616effe0b9           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
                   0x00007f616effdf91:   cmp    $0x1c20,%r9d
                   0x00007f616effdf98:   jb     0x00007f616effe0b9           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   0.00%           0x00007f616effdf9e:   mov    %edx,%r9d
   0.00%           0x00007f616effdfa1:   mov    $0x1,%r11d
                   0x00007f616effdfa7:   nopw   0x0(%rax,%rax,1)             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.03%      ↗↗↗  0x00007f616effdfb0:   cmp    $0x1c20,%r11d
          ╭   │││  0x00007f616effdfb7:   jge    0x00007f616effe05d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
  11.26%  │   │││  0x00007f616effdfbd:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
   0.35%  │   │││  0x00007f616effdfc2:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   8.67%  │   │││  0x00007f616effdfc8:   mov    %r11d,%esi
   0.03%  │   │││  0x00007f616effdfcb:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
  11.44%  │   │││  0x00007f616effdfcd:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   0.05%  │   │││  0x00007f616effdfd0:   cmp    $0x0,%edx
          │╭  │││  0x00007f616effdfd3:   je     0x00007f616effe01a
   6.11%  ││  │││  0x00007f616effdfd9:   cmp    $0x1,%edx
   0.03%  ││  │││  0x00007f616effdfdc:   nopl   0x0(%rax)
   7.21%  ││╭ │││  0x00007f616effdfe0:   je     0x00007f616effdff4
   0.04%  │││ │││  0x00007f616effdfe6:   cmp    $0x2,%edx
          │││╭│││  0x00007f616effdfe9:   je     0x00007f616effe03d
          │││││││  0x00007f616effdfef:   jmp    0x00007f616effe174           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
   0.04%  ││↘││││  0x00007f616effdff4:   nopl   0x0(%rax,%rax,1)
   3.30%  ││ ││││  0x00007f616effdffc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          ││ ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.00%  ││ ││││  0x00007f616effe000:   cmpl   $0xc2c8d0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f616effe1e6
          ││ ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   6.58%  ││ ││││  0x00007f616effe00b:   jne    0x00007f616effe114           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   3.19%  ││ ││││  0x00007f616effe011:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   0.01%  ││ ││││  0x00007f616effe015:   mov    %esi,%r11d
   3.49%  ││ │╰││  0x00007f616effe018:   jmp    0x00007f616effdfb0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   2.53%  │↘ │ ││  0x00007f616effe01a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │  │ ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.02%  │  │ ││  0x00007f616effe020:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f616effe206
          │  │ ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   9.58%  │  │ ││  0x00007f616effe02b:   jne    0x00007f616effe183           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   3.88%  │  │ ││  0x00007f616effe031:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.01%  │  │ ││  0x00007f616effe035:   mov    %esi,%r11d
   2.67%  │  │ ╰│  0x00007f616effe038:   jmp    0x00007f616effdfb0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   3.75%  │  ↘  │  0x00007f616effe03d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │     │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.02%  │     │  0x00007f616effe040:   cmpl   $0xc2cb98,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f616effe226
          │     │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   6.81%  │     │  0x00007f616effe04b:   jne    0x00007f616effe135           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   4.20%  │     │  0x00007f616effe051:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   0.01%  │     │  0x00007f616effe055:   mov    %esi,%r11d
   2.36%  │     ╰  0x00007f616effe058:   jmp    0x00007f616effdfb0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.01%  ↘        0x00007f616effe05d:   mov    0x10(%rsp),%rbp
   0.05%           0x00007f616effe062:   add    $0x18,%rsp
                   0x00007f616effe066:   mov    0x348(%r15),%rcx
   0.03%           0x00007f616effe06d:   test   %eax,(%rcx)                  ;   {poll_return}
   0.04%           0x00007f616effe06f:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
   0.01%           0x00007f616effe070:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%           0x00007f616effe07b:   data16 data16 xchg %ax,%ax
                   0x00007f616effe07f:   nop                                 ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 156)
   0.00%           0x00007f616effe080:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f616effe246
                                                                             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.05%           0x00007f616effe08b:   jne    0x00007f616effe0f6           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.00%           0x00007f616effe091:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
....................................................................................................
  97.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 763 
   0.97%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 783 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 763 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  [unknown] 
   0.01%               kernel  [unknown] 
   0.65%  <...other 235 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 763 
   1.81%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 783 
   0.03%         libc-2.31.so  [unknown] 
   0.02%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       perf-31182.map  [unknown] 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  UTF8::quoted_ascii_length 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.90%       jvmci, level 4
   1.81%               kernel
   0.10%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%       perf-31182.map
   0.00%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 21.43% complete, ETA 00:20:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.895 ns/op
# Warmup Iteration   2: 1.842 ns/op
# Warmup Iteration   3: 1.844 ns/op
# Warmup Iteration   4: 1.842 ns/op
# Warmup Iteration   5: 1.847 ns/op
Iteration   1: 1.843 ns/op
Iteration   2: 1.843 ns/op
Iteration   3: 1.845 ns/op
Iteration   4: 1.843 ns/op
Iteration   5: 1.844 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  1.844 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.843, 1.844, 1.845), stdev = 0.001
  CI (99.9%): [1.841, 1.846] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 192159 total address lines.
Perf output processed (skipped 58.554 seconds):
 Column 1: cycles (50548 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 753 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@1 (line 156)
   0.00%            0x00007f0363001701:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 157)
                    0x00007f0363001705:   cmp    $0x1c20,%r11d
                    0x00007f036300170c:   jb     0x00007f0363001879           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
                    0x00007f0363001712:   cmp    $0x1c20,%r9d
                    0x00007f0363001719:   jb     0x00007f0363001879           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
                    0x00007f036300171f:   mov    %edx,%r9d
   0.00%            0x00007f0363001722:   mov    $0x1,%r11d
                    0x00007f0363001728:   nopl   0x0(%rax,%rax,1)             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   5.11%      ↗↗↗↗  0x00007f0363001730:   cmp    $0x1c20,%r11d
          ╭   ││││  0x00007f0363001737:   jge    0x00007f03630017fd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
   8.70%  │   ││││  0x00007f036300173d:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
   5.49%  │   ││││  0x00007f0363001742:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   1.85%  │   ││││  0x00007f0363001748:   mov    %r11d,%esi
   5.00%  │   ││││  0x00007f036300174b:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   8.74%  │   ││││  0x00007f036300174d:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   5.19%  │   ││││  0x00007f0363001750:   cmp    $0x0,%edx
          │╭  ││││  0x00007f0363001753:   je     0x00007f036300179a
   1.56%  ││  ││││  0x00007f0363001759:   cmp    $0x1,%edx
   4.90%  ││  ││││  0x00007f036300175c:   nopl   0x0(%rax)
   8.44%  ││╭ ││││  0x00007f0363001760:   je     0x00007f03630017dd
   0.27%  │││ ││││  0x00007f0363001766:   cmp    $0x2,%edx
          │││╭││││  0x00007f0363001769:   je     0x00007f03630017bd
   0.25%  ││││││││  0x00007f036300176f:   cmp    $0x3,%edx
          ││││││││  0x00007f0363001772:   jne    0x00007f036300196a           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
   0.14%  ││││││││  0x00007f0363001778:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          ││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   4.81%  ││││││││  0x00007f0363001780:   cmpl   $0xc2ce60,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f03630019d0
          ││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C4&apos;)}
   0.31%  ││││││││  0x00007f036300178b:   jne    0x00007f03630018b6           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
   0.16%  ││││││││  0x00007f0363001791:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
   5.02%  ││││││││  0x00007f0363001795:   mov    %esi,%r11d
   0.02%  ││││╰│││  0x00007f0363001798:   jmp    0x00007f0363001730           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.04%  │↘││ │││  0x00007f036300179a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ ││ │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.21%  │ ││ │││  0x00007f03630017a0:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f03630019ec
          │ ││ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   4.81%  │ ││ │││  0x00007f03630017ab:   jne    0x00007f0363001958           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.03%  │ ││ │││  0x00007f03630017b1:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.24%  │ ││ │││  0x00007f03630017b5:   mov    %esi,%r11d
   0.19%  │ ││ ╰││  0x00007f03630017b8:   jmp    0x00007f0363001730           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   1.19%  │ │↘  ││  0x00007f03630017bd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │   ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.04%  │ │   ││  0x00007f03630017c0:   cmpl   $0xc2cb98,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0363001a08
          │ │   ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   6.15%  │ │   ││  0x00007f03630017cb:   jne    0x00007f0363001904           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   4.65%  │ │   ││  0x00007f03630017d1:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   0.02%  │ │   ││  0x00007f03630017d5:   mov    %esi,%r11d
   0.22%  │ │   ╰│  0x00007f03630017d8:   jmp    0x00007f0363001730           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.39%  │ ↘    │  0x00007f03630017dd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │      │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │      │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.21%  │      │  0x00007f03630017e0:   cmpl   $0xc2c8d0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0363001a26
          │      │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   8.50%  │      │  0x00007f03630017eb:   jne    0x00007f0363001946           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   3.71%  │      │  0x00007f03630017f1:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   0.16%  │      │  0x00007f03630017f5:   mov    %esi,%r11d
   1.22%  │      ╰  0x00007f03630017f8:   jmp    0x00007f0363001730           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.02%  ↘         0x00007f03630017fd:   mov    0x10(%rsp),%rbp
   0.06%            0x00007f0363001802:   add    $0x18,%rsp
                    0x00007f0363001806:   mov    0x348(%r15),%rcx
                    0x00007f036300180d:   test   %eax,(%rcx)                  ;   {poll_return}
   0.03%            0x00007f036300180f:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
   0.01%            0x00007f0363001810:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%            0x00007f036300181b:   data16 data16 xchg %ax,%ax
                    0x00007f036300181f:   nop                                 ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 156)
                    0x00007f0363001820:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0363001a46
                                                                              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.05%            0x00007f036300182b:   jne    0x00007f0363001913           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.00%            0x00007f0363001831:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
....................................................................................................
  98.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 753 
   0.27%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 753 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 772 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
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
   0.02%               kernel  [unknown] 
   1.01%  <...other 312 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 753 
   1.48%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 772 
   0.05%                       <unknown> 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  PeriodicTask::real_time_tick 
   0.00%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  os::elapsedVTime 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  ConcurrentGCThread::should_terminate 
   0.00%          interpreter  invokestatic  184 invokestatic  
   0.13%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.24%       jvmci, level 4
   1.48%               kernel
   0.14%            libjvm.so
   0.05%                     
   0.05%         libc-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.00%               [vdso]
   0.00%       perf-31240.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 28.57% complete, ETA 00:18:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.561 ns/op
# Warmup Iteration   2: 2.497 ns/op
# Warmup Iteration   3: 2.505 ns/op
# Warmup Iteration   4: 2.492 ns/op
# Warmup Iteration   5: 2.487 ns/op
Iteration   1: 2.460 ns/op
Iteration   2: 2.497 ns/op
Iteration   3: 2.490 ns/op
Iteration   4: 2.486 ns/op
Iteration   5: 2.482 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  2.483 ±(99.9%) 0.055 ns/op [Average]
  (min, avg, max) = (2.460, 2.483, 2.497), stdev = 0.014
  CI (99.9%): [2.428, 2.537] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 194427 total address lines.
Perf output processed (skipped 58.530 seconds):
 Column 1: cycles (50810 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 

                        0x00007f2a970012a4:   cmp    $0x1c20,%r11d
                        0x00007f2a970012ab:   jb     0x00007f2a97001479           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
                        0x00007f2a970012b1:   cmp    $0x1c20,%r9d
                        0x00007f2a970012b8:   jb     0x00007f2a97001479           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
                        0x00007f2a970012be:   mov    %edx,%r9d
                        0x00007f2a970012c1:   mov    $0x1,%r11d
                        0x00007f2a970012c7:   nopw   0x0(%rax,%rax,1)             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   1.59%         ↗↗↗↗↗  0x00007f2a970012d0:   cmp    $0x1c20,%r11d
          ╭      │││││  0x00007f2a970012d7:   jge    0x00007f2a970013dd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
  11.57%  │      │││││  0x00007f2a970012dd:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
   2.20%  │      │││││  0x00007f2a970012e2:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   2.25%  │      │││││  0x00007f2a970012e8:   mov    %r11d,%esi
   1.54%  │      │││││  0x00007f2a970012eb:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
  11.17%  │      │││││  0x00007f2a970012ed:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   0.72%  │      │││││  0x00007f2a970012f0:   cmp    $0x3,%edx
          │╭     │││││  0x00007f2a970012f3:   jge    0x00007f2a9700131d
   1.89%  ││     │││││  0x00007f2a970012f9:   cmp    $0x2,%edx
   0.05%  ││     │││││  0x00007f2a970012fc:   nopl   0x0(%rax)
   6.91%  ││╭    │││││  0x00007f2a97001300:   jge    0x00007f2a9700137d
   0.63%  │││    │││││  0x00007f2a97001306:   cmp    $0x0,%edx
          │││╭   │││││  0x00007f2a97001309:   je     0x00007f2a9700135d
   1.16%  ││││   │││││  0x00007f2a9700130f:   cmp    $0x1,%edx
          ││││╭  │││││  0x00007f2a97001312:   je     0x00007f2a97001334
          │││││  │││││  0x00007f2a97001318:   jmp    0x00007f2a97001495
   0.07%  │↘│││  │││││  0x00007f2a9700131d:   cmp    $0x3,%edx
          │ │││╭ │││││  0x00007f2a97001320:   je     0x00007f2a9700139d
   0.02%  │ ││││ │││││  0x00007f2a97001326:   cmp    $0x4,%edx
          │ ││││╭│││││  0x00007f2a97001329:   je     0x00007f2a970013bd
          │ ││││││││││  0x00007f2a9700132f:   jmp    0x00007f2a97001495           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │ ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
   0.11%  │ ││↘│││││││  0x00007f2a97001334:   nopl   0x0(%rax,%rax,1)
   2.31%  │ ││ │││││││  0x00007f2a9700133c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ ││ │││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.39%  │ ││ │││││││  0x00007f2a97001340:   cmpl   $0xc2c8d0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f2a970015f1
          │ ││ │││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   4.87%  │ ││ │││││││  0x00007f2a9700134b:   jne    0x00007f2a97001543           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   2.19%  │ ││ │││││││  0x00007f2a97001351:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ ││ │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
          │ ││ │││││││  0x00007f2a97001355:   mov    %esi,%r11d
   0.74%  │ ││ ││╰││││  0x00007f2a97001358:   jmp    0x00007f2a970012d0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││ ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
          │ │↘ ││ ││││  0x00007f2a9700135d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │  ││ ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
          │ │  ││ ││││  0x00007f2a97001360:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f2a9700160d
          │ │  ││ ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   7.74%  │ │  ││ ││││  0x00007f2a9700136b:   jne    0x00007f2a97001567           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   1.72%  │ │  ││ ││││  0x00007f2a97001371:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │  ││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
          │ │  ││ ││││  0x00007f2a97001375:   mov    %esi,%r11d
   1.22%  │ │  ││ ╰│││  0x00007f2a97001378:   jmp    0x00007f2a970012d0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │  ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.03%  │ ↘  ││  │││  0x00007f2a9700137d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    ││  │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    ││  │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   1.36%  │    ││  │││  0x00007f2a97001380:   cmpl   $0xc2cb98,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f2a97001629
          │    ││  │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   4.32%  │    ││  │││  0x00007f2a9700138b:   jne    0x00007f2a970014f5           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   1.49%  │    ││  │││  0x00007f2a97001391:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │    ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   0.12%  │    ││  │││  0x00007f2a97001395:   mov    %esi,%r11d
          │    ││  ╰││  0x00007f2a97001398:   jmp    0x00007f2a970012d0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   4.49%  │    ↘│   ││  0x00007f2a9700139d:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │     │   ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │   ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
          │     │   ││  0x00007f2a970013a0:   cmpl   $0xc2ce60,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f2a97001646
          │     │   ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C4&apos;)}
   5.07%  │     │   ││  0x00007f2a970013ab:   jne    0x00007f2a97001579           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
   3.10%  │     │   ││  0x00007f2a970013b1:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │     │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
          │     │   ││  0x00007f2a970013b5:   mov    %esi,%r11d
          │     │   ╰│  0x00007f2a970013b8:   jmp    0x00007f2a970012d0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   5.23%  │     ↘    │  0x00007f2a970013bd:   data16 xchg %ax,%ax                 ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │          │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
          │          │  0x00007f2a970013c0:   cmpl   $0xc2d128,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f2a97001666
          │          │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C5&apos;)}
   6.46%  │          │  0x00007f2a970013cb:   jne    0x00007f2a97001522           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 174)
   3.00%  │          │  0x00007f2a970013d1:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 174)
          │          │  0x00007f2a970013d5:   mov    %esi,%r11d
          │          ╰  0x00007f2a970013d8:   jmp    0x00007f2a970012d0           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.01%  ↘             0x00007f2a970013dd:   mov    0x10(%rsp),%rbp
   0.03%                0x00007f2a970013e2:   add    $0x18,%rsp
                        0x00007f2a970013e6:   mov    0x348(%r15),%rcx
   0.00%                0x00007f2a970013ed:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%                0x00007f2a970013ef:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
   0.02%                0x00007f2a970013f0:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%                0x00007f2a970013fb:   data16 data16 xchg %ax,%ax
                        0x00007f2a970013ff:   nop                                 ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 156)
   0.00%                0x00007f2a97001400:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f2a97001686
                                                                                  ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.04%                0x00007f2a9700140b:   jne    0x00007f2a97001534           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.00%                0x00007f2a97001411:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
....................................................................................................
  97.87%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.87%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 
   0.81%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 776 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.78%  <...other 249 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 754 
   1.77%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 776 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  _int_malloc 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%       hsdis-amd64.so  oappend 
   0.00%            libjvm.so  AbstractDisassembler::print_location 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%            libjvm.so  printf_to_env 
   0.13%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.94%       jvmci, level 4
   1.77%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.02%   libpthread-2.31.so
   0.02%                     
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%          c1, level 3
   0.00%       perf-31296.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 35.71% complete, ETA 00:16:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.218 ns/op
# Warmup Iteration   2: 2.051 ns/op
# Warmup Iteration   3: 2.093 ns/op
# Warmup Iteration   4: 2.051 ns/op
# Warmup Iteration   5: 2.092 ns/op
Iteration   1: 2.049 ns/op
Iteration   2: 2.175 ns/op
Iteration   3: 2.086 ns/op
Iteration   4: 2.148 ns/op
Iteration   5: 2.097 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  2.111 ±(99.9%) 0.194 ns/op [Average]
  (min, avg, max) = (2.049, 2.111, 2.175), stdev = 0.050
  CI (99.9%): [1.917, 2.305] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 198641 total address lines.
Perf output processed (skipped 58.853 seconds):
 Column 1: cycles (50729 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 768 

                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@1 (line 156)
                          0x00007f0a86ffd146:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@6 (line 157)
   0.00%                  0x00007f0a86ffd14a:   cmp    $0x1c20,%r11d
                          0x00007f0a86ffd151:   jb     0x00007f0a86ffd359           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
                          0x00007f0a86ffd157:   nopw   0x0(%rax,%rax,1)
                          0x00007f0a86ffd160:   cmp    $0x1c20,%r9d
                          0x00007f0a86ffd167:   jb     0x00007f0a86ffd359           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   0.00%                  0x00007f0a86ffd16d:   mov    %edx,%r9d
                          0x00007f0a86ffd170:   mov    $0x1,%r11d
   0.00%                  0x00007f0a86ffd176:   data16 nopw 0x0(%rax,%rax,1)        ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   7.81%          ↗↗↗↗↗↗  0x00007f0a86ffd180:   cmp    $0x1c20,%r11d
          ╭       ││││││  0x00007f0a86ffd187:   jge    0x00007f0a86ffd2a5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
   4.77%  │       ││││││  0x00007f0a86ffd18d:   mov    0x10(%r10,%r11,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
   1.48%  │       ││││││  0x00007f0a86ffd192:   movsbl 0x10(%r11,%r8,8),%edx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   4.53%  │       ││││││  0x00007f0a86ffd198:   mov    %r11d,%esi
   7.93%  │       ││││││  0x00007f0a86ffd19b:   inc    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   4.49%  │       ││││││  0x00007f0a86ffd19d:   inc    %r9d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │       ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   1.15%  │       ││││││  0x00007f0a86ffd1a0:   cmp    $0x3,%edx
          │╭      ││││││  0x00007f0a86ffd1a3:   jge    0x00007f0a86ffd1cb
   2.69%  ││      ││││││  0x00007f0a86ffd1a9:   cmp    $0x2,%edx
          ││╭     ││││││  0x00007f0a86ffd1ac:   jge    0x00007f0a86ffd245
   2.57%  │││     ││││││  0x00007f0a86ffd1b2:   cmp    $0x0,%edx
          │││╭    ││││││  0x00007f0a86ffd1b5:   je     0x00007f0a86ffd208
   2.61%  ││││    ││││││  0x00007f0a86ffd1bb:   cmp    $0x1,%edx
   0.32%  ││││    ││││││  0x00007f0a86ffd1be:   xchg   %ax,%ax
   0.00%  ││││╭   ││││││  0x00007f0a86ffd1c0:   je     0x00007f0a86ffd1eb
          │││││   ││││││  0x00007f0a86ffd1c6:   jmp    0x00007f0a86ffd420
   1.70%  │↘│││   ││││││  0x00007f0a86ffd1cb:   cmp    $0x5,%edx
          │ │││   ││││││  0x00007f0a86ffd1ce:   jg     0x00007f0a86ffd420
   8.07%  │ │││   ││││││  0x00007f0a86ffd1d4:   cmp    $0x5,%edx
          │ │││╭  ││││││  0x00007f0a86ffd1d7:   jge    0x00007f0a86ffd285
   0.35%  │ ││││  ││││││  0x00007f0a86ffd1dd:   cmp    $0x3,%edx
          │ ││││╭ ││││││  0x00007f0a86ffd1e0:   je     0x00007f0a86ffd225
   0.05%  │ │││││╭││││││  0x00007f0a86ffd1e6:   jmp    0x00007f0a86ffd265           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ ││││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
          │ ││↘│││││││││  0x00007f0a86ffd1eb:   cmpl   $0xc2c8d0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0a86ffd4f3
          │ ││ │││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C2&apos;)}
   3.08%  │ ││ │││││││││  0x00007f0a86ffd1f6:   jne    0x00007f0a86ffd375           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
   0.02%  │ ││ │││││││││  0x00007f0a86ffd1fc:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ ││ │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
          │ ││ │││││││││  0x00007f0a86ffd200:   mov    %esi,%r11d
   2.69%  │ ││ │││╰│││││  0x00007f0a86ffd203:   jmp    0x00007f0a86ffd180           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ ││ │││ │││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ ││ │││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   2.08%  │ │↘ │││ │││││  0x00007f0a86ffd208:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0a86ffd50f
          │ │  │││ │││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   2.83%  │ │  │││ │││││  0x00007f0a86ffd213:   jne    0x00007f0a86ffd3d5           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   2.58%  │ │  │││ │││││  0x00007f0a86ffd219:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │  │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.32%  │ │  │││ │││││  0x00007f0a86ffd21d:   mov    %esi,%r11d
          │ │  │││ ╰││││  0x00007f0a86ffd220:   jmp    0x00007f0a86ffd180           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │  │││  ││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │  │││  ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.03%  │ │  │↘│  ││││  0x00007f0a86ffd225:   cmpl   $0xc2ce60,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0a86ffd52b
          │ │  │ │  ││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C4&apos;)}
   3.95%  │ │  │ │  ││││  0x00007f0a86ffd230:   jne    0x00007f0a86ffd445           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
   1.37%  │ │  │ │  ││││  0x00007f0a86ffd236:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │  │ │  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
   0.01%  │ │  │ │  ││││  0x00007f0a86ffd23a:   mov    %esi,%r11d
          │ │  │ │  ││││  0x00007f0a86ffd23d:   data16 xchg %ax,%ax
   1.69%  │ │  │ │  ╰│││  0x00007f0a86ffd240:   jmp    0x00007f0a86ffd180           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │ │  │ │   │││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │ │  │ │   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.40%  │ ↘  │ │   │││  0x00007f0a86ffd245:   cmpl   $0xc2cb98,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0a86ffd547
          │    │ │   │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C3&apos;)}
   5.34%  │    │ │   │││  0x00007f0a86ffd250:   jne    0x00007f0a86ffd432           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   2.62%  │    │ │   │││  0x00007f0a86ffd256:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │    │ │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
   0.26%  │    │ │   │││  0x00007f0a86ffd25a:   mov    %esi,%r11d
   0.02%  │    │ │   │││  0x00007f0a86ffd25d:   data16 xchg %ax,%ax
          │    │ │   ╰││  0x00007f0a86ffd260:   jmp    0x00007f0a86ffd180           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    │ │    ││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │ │    ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   2.85%  │    │ ↘    ││  0x00007f0a86ffd265:   cmpl   $0xc2d128,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0a86ffd566
          │    │      ││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C5&apos;)}
   6.53%  │    │      ││  0x00007f0a86ffd270:   jne    0x00007f0a86ffd396           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 174)
   1.80%  │    │      ││  0x00007f0a86ffd276:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │    │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 174)
   0.45%  │    │      ││  0x00007f0a86ffd27a:   mov    %esi,%r11d
   0.87%  │    │      ││  0x00007f0a86ffd27d:   data16 xchg %ax,%ax
   0.01%  │    │      ╰│  0x00007f0a86ffd280:   jmp    0x00007f0a86ffd180           ; ImmutableOopMap {rcx=Oop rdi=Oop r8=NarrowOop r10=Oop }
          │    │       │                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   1.26%  │    ↘       │  0x00007f0a86ffd285:   cmpl   $0xc2d3f0,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0a86ffd586
          │            │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C6&apos;)}
   1.28%  │            │  0x00007f0a86ffd290:   jne    0x00007f0a86ffd47b           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 177)
   1.79%  │            │  0x00007f0a86ffd296:   mov    %r9d,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 177)
   1.21%  │            │  0x00007f0a86ffd29a:   mov    %esi,%r11d
          │            │  0x00007f0a86ffd29d:   data16 xchg %ax,%ax
          │            ╰  0x00007f0a86ffd2a0:   jmp    0x00007f0a86ffd180           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.00%  ↘               0x00007f0a86ffd2a5:   mov    0x10(%rsp),%rbp
   0.09%                  0x00007f0a86ffd2aa:   add    $0x18,%rsp
                          0x00007f0a86ffd2ae:   mov    0x348(%r15),%rcx
   0.00%                  0x00007f0a86ffd2b5:   test   %eax,(%rcx)                  ;   {poll_return}
   0.02%                  0x00007f0a86ffd2b7:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@27 (line 160)
                          0x00007f0a86ffd2b8:   nopl   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=Oop rdi=Oop r8=NarrowOop r10=NarrowOop }
                                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                    ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 156)
   0.00%                  0x00007f0a86ffd2c0:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f0a86ffd5a6
                                                                                    ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.02%                  0x00007f0a86ffd2cb:   jne    0x00007f0a86ffd469           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
                          0x00007f0a86ffd2d1:   mov    %edx,0xc(%rdi)               ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
....................................................................................................
  97.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.99%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 768 
   0.50%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 787 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 768 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.92%  <...other 281 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 768 
   1.61%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 787 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%            libjvm.so  defaultStream::write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  os::javaTimeNanos 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.09%       jvmci, level 4
   1.61%               kernel
   0.11%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%         runtime stub
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6_DOMINANT_TARGET)

# Run progress: 42.86% complete, ETA 00:14:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.212 ns/op
# Warmup Iteration   2: 3.112 ns/op
# Warmup Iteration   3: 3.118 ns/op
# Warmup Iteration   4: 3.124 ns/op
# Warmup Iteration   5: 3.129 ns/op
Iteration   1: 3.113 ns/op
Iteration   2: 3.109 ns/op
Iteration   3: 3.121 ns/op
Iteration   4: 3.128 ns/op
Iteration   5: 3.127 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic":
  3.119 ±(99.9%) 0.032 ns/op [Average]
  (min, avg, max) = (3.109, 3.119, 3.128), stdev = 0.008
  CI (99.9%): [3.087, 3.152] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 197597 total address lines.
Perf output processed (skipped 58.609 seconds):
 Column 1: cycles (51031 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 

                         0x00007fcce70016d4:   nopl   0x0(%rax,%rax,1)
                         0x00007fcce70016dc:   data16 data16 xchg %ax,%ax
                         0x00007fcce70016e0:   cmp    $0x1c20,%r11d
                         0x00007fcce70016e7:   jb     0x00007fcce7001a5d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
                         0x00007fcce70016ed:   cmp    $0x1c20,%r9d
                         0x00007fcce70016f4:   jb     0x00007fcce7001a5d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
                         0x00007fcce70016fa:   mov    $0x1,%r11d                   ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.39%         ↗↗↗↗↗↗  0x00007fcce7001700:   cmp    $0x1c20,%r11d
          ╭      ││││││  0x00007fcce7001707:   jge    0x00007fcce70018c7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@16 (line 158)
   0.57%  │      ││││││  0x00007fcce700170d:   mov    0x10(%r10,%r11,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
  13.53%  │      ││││││  0x00007fcce7001712:   movsbl 0x10(%r11,%r8,8),%esi        ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@26 (line 160)
   1.60%  │      ││││││  0x00007fcce7001718:   mov    %r9d,%ecx
   0.27%  │      ││││││  0x00007fcce700171b:   shl    $0x3,%rcx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@21 (line 159)
   0.61%  │      ││││││  0x00007fcce700171f:   mov    %r11d,%ebx
   9.75%  │      ││││││  0x00007fcce7001722:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   1.30%  │      ││││││  0x00007fcce7001724:   mov    %ebx,0x20(%rsp)
   0.29%  │      ││││││  0x00007fcce7001728:   cmp    $0x0,%esi
          │╭     ││││││  0x00007fcce700172b:   je     0x00007fcce700176b
   0.21%  ││     ││││││  0x00007fcce7001731:   cmp    $0x1,%esi
          ││╭    ││││││  0x00007fcce7001734:   je     0x00007fcce7001788
   0.17%  │││    ││││││  0x00007fcce700173a:   cmp    $0x2,%esi
   0.40%  │││    ││││││  0x00007fcce700173d:   data16 xchg %ax,%ax
   0.05%  │││╭   ││││││  0x00007fcce7001740:   je     0x00007fcce70017c7
   0.34%  ││││   ││││││  0x00007fcce7001746:   cmp    $0x3,%esi
          ││││╭  ││││││  0x00007fcce7001749:   je     0x00007fcce7001807
   0.04%  │││││  ││││││  0x00007fcce700174f:   cmp    $0x4,%esi
          │││││╭ ││││││  0x00007fcce7001752:   je     0x00007fcce7001847
   0.20%  ││││││ ││││││  0x00007fcce7001758:   cmp    $0x5,%esi
          ││││││ ││││││  0x00007fcce700175b:   nopl   0x0(%rax,%rax,1)
   0.03%  ││││││╭││││││  0x00007fcce7001760:   je     0x00007fcce7001887
          │││││││││││││  0x00007fcce7001766:   jmp    0x00007fcce7001a79           ; ImmutableOopMap {rax=Oop r8=NarrowOop r10=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
          │││││││││││││                                                            ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │││││││││││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.44%  │↘│││││││││││  0x00007fcce700176b:   cmpl   $0xc2c400,0x8(,%r9,8)        ; implicit exception: dispatches to 0x00007fcce7001b51
          │ │││││││││││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
  11.64%  │ │││││││││││  0x00007fcce7001777:   jne    0x00007fcce7001a9d           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
   0.45%  │ │││││││││││  0x00007fcce700177d:   incl   0xc(%rax)                    ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@66 (line 162)
  21.44%  │ │││││││││││  0x00007fcce7001780:   mov    %ebx,%r11d
   0.42%  │ │││││╰│││││  0x00007fcce7001783:   jmp    0x00007fcce7001700           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.00%  │ ↘││││ │││││  0x00007fcce7001788:   mov    %r11d,0x24(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │  ││││ │││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.19%  │  ││││ │││││  0x00007fcce700178d:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │  ││││ │││││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.01%  │  ││││ │││││  0x00007fcce7001795:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
          │  ││││ │││││  0x00007fcce7001798:   nop
   0.17%  │  ││││ │││││  0x00007fcce7001799:   movabs $0xffffffffffffffff,%rax
   0.00%  │  ││││ │││││  0x00007fcce70017a3:   call   0x00007fccdf4ffd80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │  ││││ │││││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │  ││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@76 (line 165)
          │  ││││ │││││                                                            ;   {virtual_call}
   0.48%  │  ││││ │││││  0x00007fcce70017a8:   nop
   0.09%  │  ││││ │││││  0x00007fcce70017a9:   mov    0x20(%rsp),%r11d
   0.07%  │  ││││ │││││  0x00007fcce70017ae:   movabs $0x7fef3e8a8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
   0.06%  │  ││││ │││││  0x00007fcce70017b8:   mov    0x8(%rsp),%r10
   0.09%  │  ││││ │││││  0x00007fcce70017bd:   mov    0x1c(%rsp),%r8d
   0.03%  │  ││││ ╰││││  0x00007fcce70017c2:   jmp    0x00007fcce7001700           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.28%  │  ↘│││  ││││  0x00007fcce70017c7:   mov    %r11d,0x24(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.01%  │   │││  ││││  0x00007fcce70017cc:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │   │││  ││││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   1.02%  │   │││  ││││  0x00007fcce70017d4:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
          │   │││  ││││  0x00007fcce70017d7:   xchg   %ax,%ax
          │   │││  ││││  0x00007fcce70017d9:   movabs $0xffffffffffffffff,%rax
          │   │││  ││││  0x00007fcce70017e3:   call   0x00007fccdf4ffd80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │   │││  ││││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │   │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
          │   │││  ││││                                                            ;   {virtual_call}
   0.06%  │   │││  ││││  0x00007fcce70017e8:   nop
          │   │││  ││││  0x00007fcce70017e9:   mov    0x20(%rsp),%r11d
   0.26%  │   │││  ││││  0x00007fcce70017ee:   movabs $0x7fef3e8a8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
   0.01%  │   │││  ││││  0x00007fcce70017f8:   mov    0x8(%rsp),%r10
   0.00%  │   │││  ││││  0x00007fcce70017fd:   mov    0x1c(%rsp),%r8d
   0.12%  │   │││  ╰│││  0x00007fcce7001802:   jmp    0x00007fcce7001700           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.09%  │   ↘││   │││  0x00007fcce7001807:   mov    %r11d,0x24(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │    ││   │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.04%  │    ││   │││  0x00007fcce700180c:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │    ││   │││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.25%  │    ││   │││  0x00007fcce7001814:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
   0.00%  │    ││   │││  0x00007fcce7001817:   xchg   %ax,%ax
   0.00%  │    ││   │││  0x00007fcce7001819:   movabs $0xffffffffffffffff,%rax
          │    ││   │││  0x00007fcce7001823:   call   0x00007fccdf4ffd80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │    ││   │││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │    ││   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@96 (line 171)
          │    ││   │││                                                            ;   {virtual_call}
   0.01%  │    ││   │││  0x00007fcce7001828:   nop
          │    ││   │││  0x00007fcce7001829:   mov    0x20(%rsp),%r11d
   0.74%  │    ││   │││  0x00007fcce700182e:   movabs $0x7fef3e8a8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
          │    ││   │││  0x00007fcce7001838:   mov    0x8(%rsp),%r10
   0.00%  │    ││   │││  0x00007fcce700183d:   mov    0x1c(%rsp),%r8d
   0.15%  │    ││   ╰││  0x00007fcce7001842:   jmp    0x00007fcce7001700           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.28%  │    ↘│    ││  0x00007fcce7001847:   mov    %r11d,0x24(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │     │    ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
          │     │    ││  0x00007fcce700184c:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │     │    ││                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.97%  │     │    ││  0x00007fcce7001854:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 174)
   0.00%  │     │    ││  0x00007fcce7001857:   xchg   %ax,%ax
          │     │    ││  0x00007fcce7001859:   movabs $0xffffffffffffffff,%rax
   0.00%  │     │    ││  0x00007fcce7001863:   call   0x00007fccdf4ffd80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │     │    ││                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │     │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@106 (line 174)
          │     │    ││                                                            ;   {virtual_call}
   0.03%  │     │    ││  0x00007fcce7001868:   nop
          │     │    ││  0x00007fcce7001869:   mov    0x20(%rsp),%r11d
   0.50%  │     │    ││  0x00007fcce700186e:   movabs $0x7fef3e8a8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
   0.01%  │     │    ││  0x00007fcce7001878:   mov    0x8(%rsp),%r10
          │     │    ││  0x00007fcce700187d:   mov    0x1c(%rsp),%r8d
   0.14%  │     │    ╰│  0x00007fcce7001882:   jmp    0x00007fcce7001700           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
   0.04%  │     ↘     │  0x00007fcce7001887:   mov    %r11d,0x24(%rsp)             ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
          │           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.18%  │           │  0x00007fcce700188c:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
          │           │                                                            ; ImmutableOopMap {rcx=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
   0.09%  │           │  0x00007fcce7001894:   mov    %rcx,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 177)
   0.01%  │           │  0x00007fcce7001897:   xchg   %ax,%ax
   0.12%  │           │  0x00007fcce7001899:   movabs $0xffffffffffffffff,%rax
          │           │  0x00007fcce70018a3:   call   0x00007fccdf4ffd80           ; ImmutableOopMap {[8]=Oop [16]=Oop [28]=NarrowOop }
          │           │                                                            ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@116 (line 177)
          │           │                                                            ;   {virtual_call}
          │           │  0x00007fcce70018a8:   nop
          │           │  0x00007fcce70018a9:   mov    0x20(%rsp),%r11d
   1.37%  │           │  0x00007fcce70018ae:   movabs $0x7fef3e8a8,%rax            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
          │           │  0x00007fcce70018b8:   mov    0x8(%rsp),%r10
   0.00%  │           │  0x00007fcce70018bd:   mov    0x1c(%rsp),%r8d
   0.20%  │           ╰  0x00007fcce70018c2:   jmp    0x00007fcce7001700           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@12 (line 158)
   0.00%  ↘              0x00007fcce70018c7:   mov    0x30(%rsp),%rbp
                         0x00007fcce70018cc:   add    $0x38,%rsp
                         0x00007fcce70018d0:   mov    0x348(%r15),%rcx
                         0x00007fcce70018d7:   test   %eax,(%rcx)                  ;   {poll_return}
   0.01%                 0x00007fcce70018d9:   ret                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@134 (line 158)
                         0x00007fcce70018da:   mov    %r9d,0x24(%rsp)
                         0x00007fcce70018df:   mov    %r11d,0x20(%rsp)             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@0 (line 156)
                         0x00007fcce70018e4:   test   %eax,0x0(,%rbx,8)            ; implicit exception: deoptimizes
                                                                                   ; ImmutableOopMap {rsi=Oop rdi=Oop [8]=Oop [16]=Oop [28]=NarrowOop }
                         0x00007fcce70018eb:   mov    %rdi,%rsi                    ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic@86 (line 168)
                         0x00007fcce70018ee:   data16 xchg %ax,%ax
                         0x00007fcce70018f1:   movabs $0xffffffffffffffff,%rax
....................................................................................................
  72.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo, version 2, compile id 751 

   0.48%                               0x00007fcce6ffe530:   mov    0x8(%rsi),%r10d
   0.03%                               0x00007fcce6ffe534:   movabs $0x800000000,%r11
   0.53%                               0x00007fcce6ffe53e:   lea    (%r11,%r10,1),%r8
   0.01%                               0x00007fcce6ffe542:   movabs $0x800c26fe0,%r11            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
   0.48%                               0x00007fcce6ffe54c:   cmp    0x20(%r8),%r11
          ╭                            0x00007fcce6ffe550:   je     0x00007fcce6ffe56d           ;*invokeinterface baz {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │                            0x00007fcce6ffe556:   data16 nopw 0x0(%rax,%rax,1)
          │                            0x00007fcce6ffe560:   cmp    $0xc26fe0,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
          │╭                           0x00007fcce6ffe567:   jne    0x00007fcce6ffe735
   2.35%  ↘│                           0x00007fcce6ffe56d:   mov    0x8(%rsi),%r10d
   0.21%   │                           0x00007fcce6ffe571:   movabs $0x800000000,%r11
           │                           0x00007fcce6ffe57b:   lea    (%r11,%r10,1),%r10
   0.01%   │                           0x00007fcce6ffe57f:   cmp    -0xc6(%rip),%r10        # 0x00007fcce6ffe4c0
           │                                                                                     ;   {section_word}
   0.90%   │╭                          0x00007fcce6ffe586:   je     0x00007fcce6ffe5cd
   0.25%   ││                          0x00007fcce6ffe58c:   cmp    -0xcb(%rip),%r10        # 0x00007fcce6ffe4c8
           ││                                                                                    ;   {section_word}
   0.02%   ││╭                         0x00007fcce6ffe593:   je     0x00007fcce6ffe5cd
   0.14%   │││                         0x00007fcce6ffe599:   cmp    -0xd0(%rip),%r10        # 0x00007fcce6ffe4d0
           │││                                                                                   ;   {section_word}
   0.71%   │││╭                        0x00007fcce6ffe5a0:   je     0x00007fcce6ffe5cd
   0.20%   ││││                        0x00007fcce6ffe5a6:   cmp    -0xd5(%rip),%r10        # 0x00007fcce6ffe4d8
           ││││                                                                                  ;   {section_word}
   0.01%   ││││╭                       0x00007fcce6ffe5ad:   je     0x00007fcce6ffe5cd
   0.10%   │││││                       0x00007fcce6ffe5b3:   cmp    -0xda(%rip),%r10        # 0x00007fcce6ffe4e0
           │││││                                                                                 ;   {section_word}
   0.26%   │││││╭                      0x00007fcce6ffe5ba:   je     0x00007fcce6ffe5cd
   0.12%   ││││││                      0x00007fcce6ffe5c0:   cmp    -0xdf(%rip),%r10        # 0x00007fcce6ffe4e8
           ││││││                                                                                ;   {section_word}
           ││││││                      0x00007fcce6ffe5c7:   jne    0x00007fcce6ffe78e
   0.18%   │↘↘↘↘↘                      0x00007fcce6ffe5cd:   cmp    -0x114(%rip),%r10        # 0x00007fcce6ffe4c0
           │                                                                                     ;   {section_word}
   0.21%   │     ╭                     0x00007fcce6ffe5d4:   je     0x00007fcce6ffe620
   0.54%   │     │                     0x00007fcce6ffe5da:   cmp    -0x119(%rip),%r10        # 0x00007fcce6ffe4c8
           │     │                                                                               ;   {section_word}
   0.28%   │     │╭                    0x00007fcce6ffe5e1:   je     0x00007fcce6ffe620
   0.21%   │     ││                    0x00007fcce6ffe5e7:   cmp    -0x11e(%rip),%r10        # 0x00007fcce6ffe4d0
           │     ││                                                                              ;   {section_word}
   0.09%   │     ││╭                   0x00007fcce6ffe5ee:   je     0x00007fcce6ffe620
   0.26%   │     │││                   0x00007fcce6ffe5f4:   cmp    -0x123(%rip),%r10        # 0x00007fcce6ffe4d8
           │     │││                                                                             ;   {section_word}
   0.15%   │     │││                   0x00007fcce6ffe5fb:   nopl   0x0(%rax,%rax,1)
   0.14%   │     │││╭                  0x00007fcce6ffe600:   je     0x00007fcce6ffe620
   0.06%   │     ││││                  0x00007fcce6ffe606:   cmp    -0x12d(%rip),%r10        # 0x00007fcce6ffe4e0
           │     ││││                                                                            ;   {section_word}
   0.14%   │     ││││╭                 0x00007fcce6ffe60d:   je     0x00007fcce6ffe620
   0.01%   │     │││││                 0x00007fcce6ffe613:   cmp    -0x132(%rip),%r10        # 0x00007fcce6ffe4e8
           │     │││││                                                                           ;   {section_word}
   0.04%   │     │││││                 0x00007fcce6ffe61a:   jne    0x00007fcce6ffe7eb
   0.38%   │     ↘↘↘↘↘                 0x00007fcce6ffe620:   cmp    -0x167(%rip),%r10        # 0x00007fcce6ffe4c0
           │                                                                                     ;   {section_word}
   0.37%   │          ╭                0x00007fcce6ffe627:   je     0x00007fcce6ffe673
   0.35%   │          │                0x00007fcce6ffe62d:   cmp    -0x16c(%rip),%r10        # 0x00007fcce6ffe4c8
           │          │                                                                          ;   {section_word}
   0.09%   │          │╭               0x00007fcce6ffe634:   je     0x00007fcce6ffe673
   0.43%   │          ││               0x00007fcce6ffe63a:   cmp    -0x171(%rip),%r10        # 0x00007fcce6ffe4d0
           │          ││                                                                         ;   {section_word}
   0.25%   │          ││╭              0x00007fcce6ffe641:   je     0x00007fcce6ffe673
   0.16%   │          │││              0x00007fcce6ffe647:   cmp    -0x176(%rip),%r10        # 0x00007fcce6ffe4d8
           │          │││                                                                        ;   {section_word}
   0.06%   │          │││╭             0x00007fcce6ffe64e:   je     0x00007fcce6ffe673
   0.27%   │          ││││             0x00007fcce6ffe654:   cmp    -0x17b(%rip),%r10        # 0x00007fcce6ffe4e0
           │          ││││                                                                       ;   {section_word}
   0.05%   │          ││││             0x00007fcce6ffe65b:   nopl   0x0(%rax,%rax,1)
   0.08%   │          ││││╭            0x00007fcce6ffe660:   je     0x00007fcce6ffe673
   0.03%   │          │││││            0x00007fcce6ffe666:   cmp    -0x185(%rip),%r10        # 0x00007fcce6ffe4e8
           │          │││││                                                                      ;   {section_word}
   0.09%   │          │││││            0x00007fcce6ffe66d:   jne    0x00007fcce6ffe7dc
   0.30%   │          ↘↘↘↘↘            0x00007fcce6ffe673:   cmp    -0x1ba(%rip),%r10        # 0x00007fcce6ffe4c0
           │                                                                                     ;   {section_word}
   0.22%   │               ╭           0x00007fcce6ffe67a:   je     0x00007fcce6ffe6c6
   0.47%   │               │           0x00007fcce6ffe680:   cmp    -0x1bf(%rip),%r10        # 0x00007fcce6ffe4c8
           │               │                                                                     ;   {section_word}
   0.20%   │               │╭          0x00007fcce6ffe687:   je     0x00007fcce6ffe6c6
   0.24%   │               ││          0x00007fcce6ffe68d:   cmp    -0x1c4(%rip),%r10        # 0x00007fcce6ffe4d0
           │               ││                                                                    ;   {section_word}
   0.14%   │               ││╭         0x00007fcce6ffe694:   je     0x00007fcce6ffe6c6
   0.21%   │               │││         0x00007fcce6ffe69a:   cmp    -0x1c9(%rip),%r10        # 0x00007fcce6ffe4d8
           │               │││                                                                   ;   {section_word}
   0.09%   │               │││╭        0x00007fcce6ffe6a1:   je     0x00007fcce6ffe6c6
   0.17%   │               ││││        0x00007fcce6ffe6a7:   cmp    -0x1ce(%rip),%r10        # 0x00007fcce6ffe4e0
           │               ││││                                                                  ;   {section_word}
   0.14%   │               ││││╭       0x00007fcce6ffe6ae:   je     0x00007fcce6ffe6c6
   0.10%   │               │││││       0x00007fcce6ffe6b4:   cmp    -0x1d3(%rip),%r10        # 0x00007fcce6ffe4e8
           │               │││││                                                                 ;   {section_word}
   0.04%   │               │││││       0x00007fcce6ffe6bb:   nopl   0x0(%rax,%rax,1)
   0.06%   │               │││││       0x00007fcce6ffe6c0:   jne    0x00007fcce6ffe7be
   0.29%   │               ↘↘↘↘↘       0x00007fcce6ffe6c6:   cmp    -0x20d(%rip),%r10        # 0x00007fcce6ffe4c0
           │                                                                                     ;   {section_word}
   0.25%   │                    ╭      0x00007fcce6ffe6cd:   je     0x00007fcce6ffe714
   0.62%   │                    │      0x00007fcce6ffe6d3:   cmp    -0x212(%rip),%r10        # 0x00007fcce6ffe4c8
           │                    │                                                                ;   {section_word}
   0.09%   │                    │╭     0x00007fcce6ffe6da:   je     0x00007fcce6ffe714
   0.37%   │                    ││     0x00007fcce6ffe6e0:   cmp    -0x217(%rip),%r10        # 0x00007fcce6ffe4d0
           │                    ││                                                               ;   {section_word}
   0.16%   │                    ││╭    0x00007fcce6ffe6e7:   je     0x00007fcce6ffe714
   0.34%   │                    │││    0x00007fcce6ffe6ed:   cmp    -0x21c(%rip),%r10        # 0x00007fcce6ffe4d8
           │                    │││                                                              ;   {section_word}
   0.07%   │                    │││╭   0x00007fcce6ffe6f4:   je     0x00007fcce6ffe714
   0.22%   │                    ││││   0x00007fcce6ffe6fa:   cmp    -0x221(%rip),%r10        # 0x00007fcce6ffe4e0
           │                    ││││                                                             ;   {section_word}
   0.00%   │                    ││││╭  0x00007fcce6ffe701:   je     0x00007fcce6ffe714
   0.17%   │                    │││││  0x00007fcce6ffe707:   cmp    -0x226(%rip),%r10        # 0x00007fcce6ffe4e8
           │                    │││││                                                            ;   {section_word}
   0.01%   │                    │││││  0x00007fcce6ffe70e:   jne    0x00007fcce6ffe7cd
   0.43%   │                    ↘↘↘↘↘  0x00007fcce6ffe714:   movabs $0x7fef3e8a8,%r10            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
   0.05%   │                           0x00007fcce6ffe71e:   incl   0xc(%r10)                    ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
           │                                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
   2.20%   │                           0x00007fcce6ffe722:   mov    0x10(%rsp),%rbp
   0.04%   │                           0x00007fcce6ffe727:   add    $0x18,%rsp
   0.20%   │                           0x00007fcce6ffe72b:   mov    0x348(%r15),%rcx
   0.13%   │                           0x00007fcce6ffe732:   test   %eax,(%rcx)                  ;   {poll_return}
   1.42%   │                           0x00007fcce6ffe734:   ret    
           ↘                           0x00007fcce6ffe735:   mov    0x28(%r8),%r10
                                       0x00007fcce6ffe739:   mov    (%r10),%r9d
                                       0x00007fcce6ffe73c:   mov    $0x0,%ecx
                                       0x00007fcce6ffe741:   jmp    0x00007fcce6ffe77a
                                       0x00007fcce6ffe746:   data16 data16 nopw 0x0(%rax,%rax,1)
                                       0x00007fcce6ffe751:   data16 data16 xchg %ax,%ax
                                       0x00007fcce6ffe755:   data16 data16 nopw 0x0(%rax,%rax,1)
                                       0x00007fcce6ffe760:   mov    %ecx,%ebx
                                       0x00007fcce6ffe762:   shl    $0x3,%ebx
                                       0x00007fcce6ffe765:   lea    0x8(%rbx),%ebx
....................................................................................................
  19.65%  <total for region 2>

....[Hottest Regions]...............................................................................
  72.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
  19.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo, version 2, compile id 751 
   5.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo, version 2, compile id 751 
   1.01%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 787 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  HighResTimeSampler::take_sample 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.14%  <...other 352 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  72.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 758 
  24.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo, version 2, compile id 751 
   2.34%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 787 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  HighResTimeSampler::take_sample 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%  libjvmcicompiler.so  Utf8_utf8ToString_361bc2ada70006cd90381541cdcf04dcc19466ed 
   0.01%            libjvm.so  clock_gettime@plt 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.18%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.28%       jvmci, level 4
   2.34%               kernel
   0.16%            libjvm.so
   0.09%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%       perf-31410.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:12:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 0.934 ns/op
# Warmup Iteration   2: 0.908 ns/op
# Warmup Iteration   3: 0.908 ns/op
# Warmup Iteration   4: 0.908 ns/op
# Warmup Iteration   5: 0.908 ns/op
Iteration   1: 0.908 ns/op
Iteration   2: 0.908 ns/op
Iteration   3: 0.908 ns/op
Iteration   4: 0.908 ns/op
Iteration   5: 0.908 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  0.908 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (0.908, 0.908, 0.908), stdev = 0.001
  CI (99.9%): [0.907, 0.909] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 193333 total address lines.
Perf output processed (skipped 58.415 seconds):
 Column 1: cycles (50644 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 753 

                 #           [sp+0x20]  (sp of caller)
                 0x00007f809effd420:   mov    0x8(%rsi),%r10d
                 0x00007f809effd424:   movabs $0x800000000,%r12
                 0x00007f809effd42e:   add    %r12,%r10
                 0x00007f809effd431:   xor    %r12,%r12
                 0x00007f809effd434:   cmp    %r10,%rax
                 0x00007f809effd437:   jne    0x00007f80974ff780           ;   {runtime_call ic_miss_stub}
                 0x00007f809effd43d:   nop
                 0x00007f809effd43e:   xchg   %ax,%ax
               [Verified Entry Point]
   0.00%         0x00007f809effd440:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007f809effd447:   sub    $0x18,%rsp
   0.01%         0x00007f809effd44b:   mov    %rbp,0x10(%rsp)
                 0x00007f809effd450:   mov    0xc(%rsi),%r10d              ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 144)
   0.00%         0x00007f809effd454:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f809effd566
   0.04%         0x00007f809effd45c:   nopl   0x0(%rax)
                 0x00007f809effd460:   test   %r11d,%r11d
          ╭      0x00007f809effd463:   je     0x00007f809effd505           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   0.00%  │      0x00007f809effd469:   mov    %r11d,%r8d
          │      0x00007f809effd46c:   dec    %r8d
          │      0x00007f809effd46f:   movslq %r8d,%r8
   0.01%  │      0x00007f809effd472:   mov    %r11d,%r9d
          │      0x00007f809effd475:   cmp    %r8,%r9
          │╭     0x00007f809effd478:   ja     0x00007f809effd48a
          ││     0x00007f809effd47e:   xchg   %ax,%ax
          ││     0x00007f809effd480:   cmp    $0x2,%r11d
          ││╭    0x00007f809effd484:   jae    0x00007f809effd518
          │↘│    0x00007f809effd48a:   mov    0x10(,%r10,8),%r8d           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@22 (line 145)
   0.03%  │ │    0x00007f809effd492:   data16 nopw 0x0(%rax,%rax,1)
          │ │    0x00007f809effd49c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          │ │                                                              ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 144)
          │ │    0x00007f809effd4a0:   cmpl   $0xc2c400,0x8(,%r8,8)        ; implicit exception: dispatches to 0x00007f809effd586
          │ │                                                              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
   0.08%  │ │    0x00007f809effd4ac:   jne    0x00007f809effd539
   0.01%  │ │    0x00007f809effd4b2:   movabs $0x7fef3e8a8,%r8             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
          │ │    0x00007f809effd4bc:   mov    $0x1,%r9d
          │ │    0x00007f809effd4c2:   add    0xc(%r8),%r9d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
          │ │    0x00007f809effd4c6:   mov    %r9d,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.00%  │ │    0x00007f809effd4ca:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 144)
          │ │    0x00007f809effd4ce:   mov    %r9d,%ecx
          │ │    0x00007f809effd4d1:   mov    $0x1,%r9d
          │ │╭   0x00007f809effd4d7:   jmp    0x00007f809effd4ff           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
          │ ││   0x00007f809effd4dc:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   9.71%  │ ││↗  0x00007f809effd4e0:   mov    0x10(%r10,%r9,4),%ebx        ; ImmutableOopMap {r8=Oop r10=Oop }
          │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
  10.93%  │ │││  0x00007f809effd4e5:   cmpl   $0xc2c400,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f809effd5a6
          │ │││                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$C1&apos;)}
  24.47%  │ │││  0x00007f809effd4f0:   jne    0x00007f809effd548           ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
  11.12%  │ │││  0x00007f809effd4f6:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   9.77%  │ │││  0x00007f809effd4f8:   mov    %ecx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
  10.19%  │ │││  0x00007f809effd4fc:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 145)
  10.56%  │ │↘│  0x00007f809effd4ff:   nop
  11.13%  │ │ │  0x00007f809effd500:   cmp    %r9d,%r11d
          │ │ ╰  0x00007f809effd503:   jg     0x00007f809effd4e0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
          ↘ │    0x00007f809effd505:   mov    0x10(%rsp),%rbp
   0.05%    │    0x00007f809effd50a:   add    $0x18,%rsp
            │    0x00007f809effd50e:   mov    0x348(%r15),%rcx
   0.01%    │    0x00007f809effd515:   test   %eax,(%rcx)                  ;   {poll_return}
   0.08%    │    0x00007f809effd517:   ret    
            ↘    0x00007f809effd518:   mov    $0x14,%r11
                 0x00007f809effd51f:   mov    $0xffffffe5,%r10d
                 0x00007f809effd525:   mov    %r10d,0x370(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@8 (line 145)
                 0x00007f809effd52c:   mov    %r11,0x378(%r15)
                 0x00007f809effd533:   call   0x00007f809750527a           ; ImmutableOopMap {rsi=Oop }
                                                                           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@0 (line 144)
                                                                           ;   {runtime_call DeoptimizationBlob}
                 0x00007f809effd538:   nop                                 ;*invokeinterface foo {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.22%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 753 
   0.37%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 773 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.82%  <...other 287 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 753 
   1.40%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 773 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.15%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.24%       jvmci, level 4
   1.40%               kernel
   0.15%            libjvm.so
   0.11%         libc-2.31.so
   0.03%                     
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = BIMORPHIC)

# Run progress: 57.14% complete, ETA 00:11:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.680 ns/op
# Warmup Iteration   2: 4.592 ns/op
# Warmup Iteration   3: 4.584 ns/op
# Warmup Iteration   4: 4.575 ns/op
# Warmup Iteration   5: 4.581 ns/op
Iteration   1: 4.564 ns/op
Iteration   2: 4.585 ns/op
Iteration   3: 4.577 ns/op
Iteration   4: 4.590 ns/op
Iteration   5: 4.599 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  4.583 ±(99.9%) 0.052 ns/op [Average]
  (min, avg, max) = (4.564, 4.583, 4.599), stdev = 0.013
  CI (99.9%): [4.531, 4.635] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 197282 total address lines.
Perf output processed (skipped 58.595 seconds):
 Column 1: cycles (50714 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
                      0x00007f152f0001a2:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 144)
                      0x00007f152f0001a6:   mov    %r9d,%ebx
                      0x00007f152f0001a9:   mov    $0x1,%r9d
          ╭           0x00007f152f0001af:   jmp    0x00007f152f0002b0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
          │           0x00007f152f0001b4:   nopl   0x0(%rax,%rax,1)
          │           0x00007f152f0001bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   4.46%  │        ↗  0x00007f152f0001c0:   mov    0x10(%r10,%r9,4),%edi        ; ImmutableOopMap {rdi=NarrowOop r8=Oop r10=Oop }
          │        │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
   0.33%  │        │  0x00007f152f0001c5:   mov    0x8(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f152f0004dd
  12.31%  │        │  0x00007f152f0001cc:   movabs $0x800000000,%rsi
   3.56%  │        │  0x00007f152f0001d6:   lea    (%rsi,%rdx,1),%rax
   4.52%  │        │  0x00007f152f0001da:   cmp    -0x1e1(%rip),%rax        # 0x00007f152f000000
          │        │                                                            ;   {section_word}
   3.58%  │╭       │  0x00007f152f0001e1:   je     0x00007f152f0001f4
   2.47%  ││       │  0x00007f152f0001e7:   cmp    -0x1e6(%rip),%rax        # 0x00007f152f000008
          ││       │                                                            ;   {section_word}
   0.24%  ││       │  0x00007f152f0001ee:   jne    0x00007f152f0003ec
   3.94%  │↘       │  0x00007f152f0001f4:   cmp    0x20(%rax),%rcx
          │ ╭      │  0x00007f152f0001f8:   je     0x00007f152f00020c           ;*invokeinterface baz {reexecute=0 rethrow=0 return_oop=0}
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │ │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
          │ │      │  0x00007f152f0001fe:   xchg   %ax,%ax
          │ │      │  0x00007f152f000200:   cmp    $0xc26fe0,%edx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
          │ │╭     │  0x00007f152f000206:   jne    0x00007f152f0002be
  16.93%  │ ↘│     │  0x00007f152f00020c:   mov    0x8(,%rdi,8),%edi
          │  │     │  0x00007f152f000213:   movabs $0x800000000,%rdx
          │  │     │  0x00007f152f00021d:   lea    (%rdx,%rdi,1),%rdi
   1.09%  │  │     │  0x00007f152f000221:   cmp    -0x220(%rip),%rdi        # 0x00007f152f000008
          │  │     │                                                            ;   {section_word}
   7.13%  │  │╭    │  0x00007f152f000228:   je     0x00007f152f00023b
          │  ││    │  0x00007f152f00022e:   cmp    -0x235(%rip),%rdi        # 0x00007f152f000000
          │  ││    │                                                            ;   {section_word}
          │  ││    │  0x00007f152f000235:   jne    0x00007f152f00047e
   0.01%  │  │↘    │  0x00007f152f00023b:   cmp    -0x23a(%rip),%rdi        # 0x00007f152f000008
          │  │     │                                                            ;   {section_word}
   4.22%  │  │ ╭   │  0x00007f152f000242:   je     0x00007f152f000255
          │  │ │   │  0x00007f152f000248:   cmp    -0x24f(%rip),%rdi        # 0x00007f152f000000
          │  │ │   │                                                            ;   {section_word}
          │  │ │   │  0x00007f152f00024f:   jne    0x00007f152f000408
   4.31%  │  │ ↘   │  0x00007f152f000255:   cmp    -0x25c(%rip),%rdi        # 0x00007f152f000000
          │  │     │                                                            ;   {section_word}
   4.27%  │  │     │  0x00007f152f00025c:   nopl   0x0(%rax)
          │  │  ╭  │  0x00007f152f000260:   je     0x00007f152f000273
   0.00%  │  │  │  │  0x00007f152f000266:   cmp    -0x265(%rip),%rdi        # 0x00007f152f000008
          │  │  │  │                                                            ;   {section_word}
   4.08%  │  │  │  │  0x00007f152f00026d:   jne    0x00007f152f00046c
   0.03%  │  │  ↘  │  0x00007f152f000273:   cmp    -0x27a(%rip),%rdi        # 0x00007f152f000000
          │  │     │                                                            ;   {section_word}
   0.04%  │  │   ╭ │  0x00007f152f00027a:   je     0x00007f152f00028d
   0.06%  │  │   │ │  0x00007f152f000280:   cmp    -0x27f(%rip),%rdi        # 0x00007f152f000008
          │  │   │ │                                                            ;   {section_word}
   4.06%  │  │   │ │  0x00007f152f000287:   jne    0x00007f152f0003dd
   4.12%  │  │   ↘ │  0x00007f152f00028d:   cmp    -0x294(%rip),%rdi        # 0x00007f152f000000
          │  │     │                                                            ;   {section_word}
          │  │    ╭│  0x00007f152f000294:   je     0x00007f152f0002a7
   0.26%  │  │    ││  0x00007f152f00029a:   cmp    -0x299(%rip),%rdi        # 0x00007f152f000008
          │  │    ││                                                            ;   {section_word}
   3.68%  │  │    ││  0x00007f152f0002a1:   jne    0x00007f152f00036e
   4.35%  │  │    ↘│  0x00007f152f0002a7:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
          │  │     │  0x00007f152f0002a9:   mov    %ebx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.10%  │  │     │  0x00007f152f0002ad:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 145)
   3.88%  ↘  │     │  0x00007f152f0002b0:   cmp    %r9d,%r11d
             │     ╰  0x00007f152f0002b3:   jg     0x00007f152f0001c0
   0.00%     │        0x00007f152f0002b9:   jmp    0x00007f152f000312           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
             ↘        0x00007f152f0002be:   mov    0x28(%rax),%rdx
                      0x00007f152f0002c2:   mov    (%rdx),%esi
                      0x00007f152f0002c4:   mov    $0x0,%ebp
                      0x00007f152f0002c9:   jmp    0x00007f152f0002fd
                      0x00007f152f0002ce:   data16 data16 nopw 0x0(%rax,%rax,1)
                      0x00007f152f0002d9:   data16 data16 xchg %ax,%ax
                      0x00007f152f0002dd:   data16 xchg %ax,%ax
                      0x00007f152f0002e0:   mov    %ebp,%r13d
                      0x00007f152f0002e3:   shl    $0x3,%r13d
....................................................................................................
  98.00%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   0.67%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 785 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.76%  <...other 271 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   1.56%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 785 
   0.02%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.00%         libc-2.31.so  re_search_stub 
   0.14%  <...other 67 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.12%       jvmci, level 4
   1.56%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%       perf-31524.map
   0.00%     Unknown, level 0
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 64.29% complete, ETA 00:09:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.899 ns/op
# Warmup Iteration   2: 5.725 ns/op
# Warmup Iteration   3: 5.824 ns/op
# Warmup Iteration   4: 5.951 ns/op
# Warmup Iteration   5: 5.929 ns/op
Iteration   1: 5.856 ns/op
Iteration   2: 5.774 ns/op
Iteration   3: 5.708 ns/op
Iteration   4: 5.703 ns/op
Iteration   5: 5.706 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  5.749 ±(99.9%) 0.256 ns/op [Average]
  (min, avg, max) = (5.703, 5.749, 5.856), stdev = 0.067
  CI (99.9%): [5.493, 6.006] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 196381 total address lines.
Perf output processed (skipped 58.594 seconds):
 Column 1: cycles (50651 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 757 

                            0x00007fcd4affdcd5:   mov    %r9d,%ebx
                            0x00007fcd4affdcd8:   mov    $0x1,%r9d
                            0x00007fcd4affdcde:   xchg   %ax,%ax
          ╭                 0x00007fcd4affdce0:   jmp    0x00007fcd4affde43           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
          │                 0x00007fcd4affdce5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                 0x00007fcd4affdcf0:   data16 data16 xchg %ax,%ax
          │                 0x00007fcd4affdcf4:   nopl   0x0(%rax,%rax,1)
          │                 0x00007fcd4affdcfc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   2.73%  │              ↗  0x00007fcd4affdd00:   mov    0x10(%r10,%r9,4),%edi        ; ImmutableOopMap {rdi=NarrowOop r8=Oop r10=Oop }
          │              │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │              │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
   3.82%  │              │  0x00007fcd4affdd05:   mov    0x8(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007fcd4affe07d
  10.79%  │              │  0x00007fcd4affdd0c:   movabs $0x800000000,%rsi
   0.18%  │              │  0x00007fcd4affdd16:   lea    (%rsi,%rdx,1),%rax
   4.34%  │              │  0x00007fcd4affdd1a:   cmp    -0x241(%rip),%rax        # 0x00007fcd4affdae0
          │              │                                                            ;   {section_word}
   5.45%  │╭             │  0x00007fcd4affdd21:   je     0x00007fcd4affdd46
   2.43%  ││             │  0x00007fcd4affdd27:   cmp    -0x246(%rip),%rax        # 0x00007fcd4affdae8
          ││             │                                                            ;   {section_word}
   0.39%  ││╭            │  0x00007fcd4affdd2e:   je     0x00007fcd4affdd46
   1.06%  │││            │  0x00007fcd4affdd34:   cmp    -0x24b(%rip),%rax        # 0x00007fcd4affdaf0
          │││            │                                                            ;   {section_word}
   0.34%  │││            │  0x00007fcd4affdd3b:   nopl   0x0(%rax,%rax,1)
   0.68%  │││            │  0x00007fcd4affdd40:   jne    0x00007fcd4affdf8c
   3.24%  │↘↘            │  0x00007fcd4affdd46:   cmp    0x20(%rax),%rcx
          │  ╭           │  0x00007fcd4affdd4a:   je     0x00007fcd4affdd5c
          │  │           │  0x00007fcd4affdd50:   cmp    $0xc26fe0,%edx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
          │  │╭          │  0x00007fcd4affdd56:   jne    0x00007fcd4affde51
  13.31%  │  ↘│          │  0x00007fcd4affdd5c:   mov    0x8(,%rdi,8),%edi
   1.26%  │   │          │  0x00007fcd4affdd63:   movabs $0x800000000,%rdx
   0.10%  │   │          │  0x00007fcd4affdd6d:   lea    (%rdx,%rdi,1),%rdi
   1.11%  │   │          │  0x00007fcd4affdd71:   cmp    -0x298(%rip),%rdi        # 0x00007fcd4affdae0
          │   │          │                                                            ;   {section_word}
   6.39%  │   │╭         │  0x00007fcd4affdd78:   je     0x00007fcd4affdd98
   0.83%  │   ││         │  0x00007fcd4affdd7e:   cmp    -0x295(%rip),%rdi        # 0x00007fcd4affdaf0
          │   ││         │                                                            ;   {section_word}
   0.17%  │   ││╭        │  0x00007fcd4affdd85:   je     0x00007fcd4affdd98
   0.10%  │   │││        │  0x00007fcd4affdd8b:   cmp    -0x2aa(%rip),%rdi        # 0x00007fcd4affdae8
          │   │││        │                                                            ;   {section_word}
   2.12%  │   │││        │  0x00007fcd4affdd92:   jne    0x00007fcd4affe01e
   1.15%  │   │↘↘        │  0x00007fcd4affdd98:   cmp    -0x2af(%rip),%rdi        # 0x00007fcd4affdaf0
          │   │          │                                                            ;   {section_word}
   1.25%  │   │          │  0x00007fcd4affdd9f:   nop
   0.41%  │   │  ╭       │  0x00007fcd4affdda0:   je     0x00007fcd4affddc0
   4.06%  │   │  │       │  0x00007fcd4affdda6:   cmp    -0x2c5(%rip),%rdi        # 0x00007fcd4affdae8
          │   │  │       │                                                            ;   {section_word}
   0.41%  │   │  │╭      │  0x00007fcd4affddad:   je     0x00007fcd4affddc0
   0.29%  │   │  ││      │  0x00007fcd4affddb3:   cmp    -0x2da(%rip),%rdi        # 0x00007fcd4affdae0
          │   │  ││      │                                                            ;   {section_word}
   0.00%  │   │  ││      │  0x00007fcd4affddba:   jne    0x00007fcd4affdfa8
   2.67%  │   │  ↘↘      │  0x00007fcd4affddc0:   cmp    -0x2d7(%rip),%rdi        # 0x00007fcd4affdaf0
          │   │          │                                                            ;   {section_word}
   0.09%  │   │    ╭     │  0x00007fcd4affddc7:   je     0x00007fcd4affdde7
   2.39%  │   │    │     │  0x00007fcd4affddcd:   cmp    -0x2ec(%rip),%rdi        # 0x00007fcd4affdae8
          │   │    │     │                                                            ;   {section_word}
   0.01%  │   │    │╭    │  0x00007fcd4affddd4:   je     0x00007fcd4affdde7
   1.95%  │   │    ││    │  0x00007fcd4affddda:   cmp    -0x301(%rip),%rdi        # 0x00007fcd4affdae0
          │   │    ││    │                                                            ;   {section_word}
          │   │    ││    │  0x00007fcd4affdde1:   jne    0x00007fcd4affe00c
   2.51%  │   │    ↘↘    │  0x00007fcd4affdde7:   cmp    -0x2fe(%rip),%rdi        # 0x00007fcd4affdaf0
          │   │          │                                                            ;   {section_word}
   0.09%  │   │      ╭   │  0x00007fcd4affddee:   je     0x00007fcd4affde13
   4.02%  │   │      │   │  0x00007fcd4affddf4:   cmp    -0x313(%rip),%rdi        # 0x00007fcd4affdae8
          │   │      │   │                                                            ;   {section_word}
   0.01%  │   │      │   │  0x00007fcd4affddfb:   nopl   0x0(%rax,%rax,1)
   0.27%  │   │      │╭  │  0x00007fcd4affde00:   je     0x00007fcd4affde13
   0.14%  │   │      ││  │  0x00007fcd4affde06:   cmp    -0x32d(%rip),%rdi        # 0x00007fcd4affdae0
          │   │      ││  │                                                            ;   {section_word}
   1.81%  │   │      ││  │  0x00007fcd4affde0d:   jne    0x00007fcd4affdf7d
   2.68%  │   │      ↘↘  │  0x00007fcd4affde13:   cmp    -0x32a(%rip),%rdi        # 0x00007fcd4affdaf0
          │   │          │                                                            ;   {section_word}
   2.22%  │   │        ╭ │  0x00007fcd4affde1a:   je     0x00007fcd4affde3a
   0.23%  │   │        │ │  0x00007fcd4affde20:   cmp    -0x33f(%rip),%rdi        # 0x00007fcd4affdae8
          │   │        │ │                                                            ;   {section_word}
   1.81%  │   │        │╭│  0x00007fcd4affde27:   je     0x00007fcd4affde3a
   0.26%  │   │        │││  0x00007fcd4affde2d:   cmp    -0x354(%rip),%rdi        # 0x00007fcd4affdae0
          │   │        │││                                                            ;   {section_word}
   0.12%  │   │        │││  0x00007fcd4affde34:   jne    0x00007fcd4affdf0e
   2.52%  │   │        ↘↘│  0x00007fcd4affde3a:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   3.61%  │   │          │  0x00007fcd4affde3c:   mov    %ebx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.16%  │   │          │  0x00007fcd4affde40:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 145)
   0.16%  ↘   │          │  0x00007fcd4affde43:   cmp    %r9d,%r11d
              │          ╰  0x00007fcd4affde46:   jg     0x00007fcd4affdd00
              │             0x00007fcd4affde4c:   jmp    0x00007fcd4affdeb2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
              ↘             0x00007fcd4affde51:   mov    0x28(%rax),%rdx
                            0x00007fcd4affde55:   mov    (%rdx),%esi
                            0x00007fcd4affde57:   mov    $0x0,%ebp
                            0x00007fcd4affde5c:   nopl   0x0(%rax)
                            0x00007fcd4affde60:   jmp    0x00007fcd4affde9d
                            0x00007fcd4affde65:   data16 data16 nopw 0x0(%rax,%rax,1)
....................................................................................................
  98.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 757 
   0.45%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 757 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 757 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 788 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.82%  <...other 285 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 757 
   1.41%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 788 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%            libjvm.so  printf_to_env 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%   libpthread-2.31.so  __libc_write 
   0.00%       hsdis-amd64.so  print_insn 
   0.14%  <...other 69 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.27%       jvmci, level 4
   1.41%               kernel
   0.12%            libjvm.so
   0.06%         libc-2.31.so
   0.06%                     
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
   0.00%          c1, level 1
....................................................................................................
  99.99%  <totals>



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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 71.43% complete, ETA 00:07:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.496 ns/op
# Warmup Iteration   2: 7.328 ns/op
# Warmup Iteration   3: 7.344 ns/op
# Warmup Iteration   4: 7.297 ns/op
# Warmup Iteration   5: 7.301 ns/op
Iteration   1: 7.314 ns/op
Iteration   2: 7.352 ns/op
Iteration   3: 7.405 ns/op
Iteration   4: 7.406 ns/op
Iteration   5: 7.422 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  7.380 ±(99.9%) 0.175 ns/op [Average]
  (min, avg, max) = (7.314, 7.380, 7.422), stdev = 0.045
  CI (99.9%): [7.205, 7.554] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 194584 total address lines.
Perf output processed (skipped 58.600 seconds):
 Column 1: cycles (50553 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 

                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
                                  0x00007ffaf2ffdb6b:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 144)
                                  0x00007ffaf2ffdb6f:   mov    %r9d,%ebx
                                  0x00007ffaf2ffdb72:   mov    $0x1,%r9d
          ╭                       0x00007ffaf2ffdb78:   jmp    0x00007ffaf2ffdd1c           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
          │                       0x00007ffaf2ffdb7d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   1.31%  │                    ↗  0x00007ffaf2ffdb80:   mov    0x10(%r10,%r9,4),%edi        ; ImmutableOopMap {rdi=NarrowOop r8=Oop r10=Oop }
          │                    │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                    │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
   1.37%  │                    │  0x00007ffaf2ffdb85:   mov    0x8(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007ffaf2ffdf3d
  14.21%  │                    │  0x00007ffaf2ffdb8c:   movabs $0x800000000,%rsi
   1.76%  │                    │  0x00007ffaf2ffdb96:   lea    (%rsi,%rdx,1),%rax
   2.60%  │                    │  0x00007ffaf2ffdb9a:   cmp    -0x281(%rip),%rax        # 0x00007ffaf2ffd920
          │                    │                                                            ;   {section_word}
   3.40%  │╭                   │  0x00007ffaf2ffdba1:   je     0x00007ffaf2ffdbd3
   2.38%  ││                   │  0x00007ffaf2ffdba7:   cmp    -0x286(%rip),%rax        # 0x00007ffaf2ffd928
          ││                   │                                                            ;   {section_word}
   1.47%  ││╭                  │  0x00007ffaf2ffdbae:   je     0x00007ffaf2ffdbd3
   0.97%  │││                  │  0x00007ffaf2ffdbb4:   cmp    -0x28b(%rip),%rax        # 0x00007ffaf2ffd930
          │││                  │                                                            ;   {section_word}
   0.01%  │││                  │  0x00007ffaf2ffdbbb:   nopl   0x0(%rax,%rax,1)
   0.50%  │││╭                 │  0x00007ffaf2ffdbc0:   je     0x00007ffaf2ffdbd3
   1.18%  ││││                 │  0x00007ffaf2ffdbc6:   cmp    -0x295(%rip),%rax        # 0x00007ffaf2ffd938
          ││││                 │                                                            ;   {section_word}
   0.11%  ││││                 │  0x00007ffaf2ffdbcd:   jne    0x00007ffaf2ffde4c
   1.94%  │↘↘↘                 │  0x00007ffaf2ffdbd3:   cmp    0x20(%rax),%rcx
          │   ╭                │  0x00007ffaf2ffdbd7:   je     0x00007ffaf2ffdbec           ;*invokeinterface baz {reexecute=0 rethrow=0 return_oop=0}
          │   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │   │                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
          │   │                │  0x00007ffaf2ffdbdd:   data16 xchg %ax,%ax
          │   │                │  0x00007ffaf2ffdbe0:   cmp    $0xc26fe0,%edx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
          │   │╭               │  0x00007ffaf2ffdbe6:   jne    0x00007ffaf2ffdd2e
  10.18%  │   ↘│               │  0x00007ffaf2ffdbec:   mov    0x8(,%rdi,8),%edi
   1.99%  │    │               │  0x00007ffaf2ffdbf3:   movabs $0x800000000,%rdx
   0.01%  │    │               │  0x00007ffaf2ffdbfd:   lea    (%rdx,%rdi,1),%rdi
   1.42%  │    │               │  0x00007ffaf2ffdc01:   cmp    -0x2e8(%rip),%rdi        # 0x00007ffaf2ffd920
          │    │               │                                                            ;   {section_word}
   4.77%  │    │╭              │  0x00007ffaf2ffdc08:   je     0x00007ffaf2ffdc35
   2.28%  │    ││              │  0x00007ffaf2ffdc0e:   cmp    -0x2dd(%rip),%rdi        # 0x00007ffaf2ffd938
          │    ││              │                                                            ;   {section_word}
   0.27%  │    ││╭             │  0x00007ffaf2ffdc15:   je     0x00007ffaf2ffdc35
   0.83%  │    │││             │  0x00007ffaf2ffdc1b:   cmp    -0x2f2(%rip),%rdi        # 0x00007ffaf2ffd930
          │    │││             │                                                            ;   {section_word}
   1.26%  │    │││╭            │  0x00007ffaf2ffdc22:   je     0x00007ffaf2ffdc35
   0.00%  │    ││││            │  0x00007ffaf2ffdc28:   cmp    -0x307(%rip),%rdi        # 0x00007ffaf2ffd928
          │    ││││            │                                                            ;   {section_word}
   0.00%  │    ││││            │  0x00007ffaf2ffdc2f:   jne    0x00007ffaf2ffdede
   0.93%  │    │↘↘↘            │  0x00007ffaf2ffdc35:   cmp    -0x31c(%rip),%rdi        # 0x00007ffaf2ffd920
          │    │               │                                                            ;   {section_word}
   1.27%  │    │               │  0x00007ffaf2ffdc3c:   nopl   0x0(%rax)
   1.59%  │    │   ╭           │  0x00007ffaf2ffdc40:   je     0x00007ffaf2ffdc6d
   0.50%  │    │   │           │  0x00007ffaf2ffdc46:   cmp    -0x315(%rip),%rdi        # 0x00007ffaf2ffd938
          │    │   │           │                                                            ;   {section_word}
   0.80%  │    │   │╭          │  0x00007ffaf2ffdc4d:   je     0x00007ffaf2ffdc6d
   1.63%  │    │   ││          │  0x00007ffaf2ffdc53:   cmp    -0x32a(%rip),%rdi        # 0x00007ffaf2ffd930
          │    │   ││          │                                                            ;   {section_word}
   0.48%  │    │   ││╭         │  0x00007ffaf2ffdc5a:   je     0x00007ffaf2ffdc6d
   1.08%  │    │   │││         │  0x00007ffaf2ffdc60:   cmp    -0x33f(%rip),%rdi        # 0x00007ffaf2ffd928
          │    │   │││         │                                                            ;   {section_word}
          │    │   │││         │  0x00007ffaf2ffdc67:   jne    0x00007ffaf2ffde68
   2.60%  │    │   ↘↘↘         │  0x00007ffaf2ffdc6d:   cmp    -0x354(%rip),%rdi        # 0x00007ffaf2ffd920
          │    │               │                                                            ;   {section_word}
   1.57%  │    │      ╭        │  0x00007ffaf2ffdc74:   je     0x00007ffaf2ffdca6
   1.95%  │    │      │        │  0x00007ffaf2ffdc7a:   cmp    -0x349(%rip),%rdi        # 0x00007ffaf2ffd938
          │    │      │        │                                                            ;   {section_word}
   0.31%  │    │      │╭       │  0x00007ffaf2ffdc81:   je     0x00007ffaf2ffdca6
   1.33%  │    │      ││       │  0x00007ffaf2ffdc87:   cmp    -0x35e(%rip),%rdi        # 0x00007ffaf2ffd930
          │    │      ││       │                                                            ;   {section_word}
   0.33%  │    │      ││╭      │  0x00007ffaf2ffdc8e:   je     0x00007ffaf2ffdca6
   1.05%  │    │      │││      │  0x00007ffaf2ffdc94:   cmp    -0x373(%rip),%rdi        # 0x00007ffaf2ffd928
          │    │      │││      │                                                            ;   {section_word}
   0.00%  │    │      │││      │  0x00007ffaf2ffdc9b:   nopl   0x0(%rax,%rax,1)
   0.27%  │    │      │││      │  0x00007ffaf2ffdca0:   jne    0x00007ffaf2ffdecc
   2.79%  │    │      ↘↘↘      │  0x00007ffaf2ffdca6:   cmp    -0x38d(%rip),%rdi        # 0x00007ffaf2ffd920
          │    │               │                                                            ;   {section_word}
   1.88%  │    │         ╭     │  0x00007ffaf2ffdcad:   je     0x00007ffaf2ffdcda
   1.31%  │    │         │     │  0x00007ffaf2ffdcb3:   cmp    -0x382(%rip),%rdi        # 0x00007ffaf2ffd938
          │    │         │     │                                                            ;   {section_word}
   0.53%  │    │         │╭    │  0x00007ffaf2ffdcba:   je     0x00007ffaf2ffdcda
   1.06%  │    │         ││    │  0x00007ffaf2ffdcc0:   cmp    -0x397(%rip),%rdi        # 0x00007ffaf2ffd930
          │    │         ││    │                                                            ;   {section_word}
   0.49%  │    │         ││╭   │  0x00007ffaf2ffdcc7:   je     0x00007ffaf2ffdcda
   0.23%  │    │         │││   │  0x00007ffaf2ffdccd:   cmp    -0x3ac(%rip),%rdi        # 0x00007ffaf2ffd928
          │    │         │││   │                                                            ;   {section_word}
   0.26%  │    │         │││   │  0x00007ffaf2ffdcd4:   jne    0x00007ffaf2ffde3d
   2.55%  │    │         ↘↘↘   │  0x00007ffaf2ffdcda:   cmp    -0x3c1(%rip),%rdi        # 0x00007ffaf2ffd920
          │    │               │                                                            ;   {section_word}
   1.42%  │    │            ╭  │  0x00007ffaf2ffdce1:   je     0x00007ffaf2ffdd13
   1.30%  │    │            │  │  0x00007ffaf2ffdce7:   cmp    -0x3b6(%rip),%rdi        # 0x00007ffaf2ffd938
          │    │            │  │                                                            ;   {section_word}
   0.44%  │    │            │╭ │  0x00007ffaf2ffdcee:   je     0x00007ffaf2ffdd13
   0.85%  │    │            ││ │  0x00007ffaf2ffdcf4:   cmp    -0x3cb(%rip),%rdi        # 0x00007ffaf2ffd930
          │    │            ││ │                                                            ;   {section_word}
   0.51%  │    │            ││ │  0x00007ffaf2ffdcfb:   nopl   0x0(%rax,%rax,1)
   0.81%  │    │            ││╭│  0x00007ffaf2ffdd00:   je     0x00007ffaf2ffdd13
   0.27%  │    │            ││││  0x00007ffaf2ffdd06:   cmp    -0x3e5(%rip),%rdi        # 0x00007ffaf2ffd928
          │    │            ││││                                                            ;   {section_word}
   0.39%  │    │            ││││  0x00007ffaf2ffdd0d:   jne    0x00007ffaf2ffddce
   2.20%  │    │            ↘↘↘│  0x00007ffaf2ffdd13:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   1.36%  │    │               │  0x00007ffaf2ffdd15:   mov    %ebx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.63%  │    │               │  0x00007ffaf2ffdd19:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    │               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 145)
   0.99%  ↘    │               │  0x00007ffaf2ffdd1c:   nopl   0x0(%rax)
   2.13%       │               │  0x00007ffaf2ffdd20:   cmp    %r9d,%r11d
               │               ╰  0x00007ffaf2ffdd23:   jg     0x00007ffaf2ffdb80
   0.00%       │                  0x00007ffaf2ffdd29:   jmp    0x00007ffaf2ffdd72           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
               ↘                  0x00007ffaf2ffdd2e:   mov    0x28(%rax),%rdx
                                  0x00007ffaf2ffdd32:   mov    (%rdx),%esi
                                  0x00007ffaf2ffdd34:   mov    $0x0,%ebp
                                  0x00007ffaf2ffdd39:   jmp    0x00007ffaf2ffdd5d
                                  0x00007ffaf2ffdd3e:   xchg   %ax,%ax
                                  0x00007ffaf2ffdd40:   mov    %ebp,%r13d
                                  0x00007ffaf2ffdd43:   shl    $0x3,%r13d
                                  0x00007ffaf2ffdd47:   lea    0x8(%r13),%r13d
                                  0x00007ffaf2ffdd4b:   movslq %r13d,%r13
....................................................................................................
  98.31%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   0.29%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   0.04%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.91%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 762 
   1.31%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 792 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  PeriodicTask::real_time_tick 
   0.00%            libjvm.so  os::elapsed_counter 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%          interpreter  method entry point (kind = zerolocals)  
   0.00%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%          interpreter  invokevirtual  182 invokevirtual  
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.43%       jvmci, level 4
   1.31%               kernel
   0.10%            libjvm.so
   0.05%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.01%          interpreter
   0.00%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 78.57% complete, ETA 00:05:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.952 ns/op
# Warmup Iteration   2: 8.760 ns/op
# Warmup Iteration   3: 8.727 ns/op
# Warmup Iteration   4: 8.767 ns/op
# Warmup Iteration   5: 8.798 ns/op
Iteration   1: 8.761 ns/op
Iteration   2: 8.825 ns/op
Iteration   3: 8.764 ns/op
Iteration   4: 8.760 ns/op
Iteration   5: 8.740 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  8.770 ±(99.9%) 0.125 ns/op [Average]
  (min, avg, max) = (8.740, 8.770, 8.825), stdev = 0.032
  CI (99.9%): [8.645, 8.895] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 197550 total address lines.
Perf output processed (skipped 58.554 seconds):
 Column 1: cycles (50842 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 760 

                                         0x00007f6d43000406:   mov    %r11d,%r8d
                                         0x00007f6d43000409:   dec    %r8d
                                         0x00007f6d4300040c:   movslq %r8d,%r8
                                         0x00007f6d4300040f:   mov    %r11d,%r9d
                                         0x00007f6d43000412:   cmp    %r8,%r9
          ╭                              0x00007f6d43000415:   ja     0x00007f6d4300042a           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@22 (line 145)
          │                              0x00007f6d4300041b:   nopl   0x0(%rax,%rax,1)
          │                              0x00007f6d43000420:   cmp    $0x2,%r11d
          │                              0x00007f6d43000424:   jae    0x00007f6d43000830
   0.00%  ↘                              0x00007f6d4300042a:   movabs $0x7fef3e8a8,%r8             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$Wrapper&apos;{0x00000007fef3e8a8})}
   0.00%                                 0x00007f6d43000434:   mov    $0x1,%r9d
                                         0x00007f6d4300043a:   add    0xc(%r8),%r9d                ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.00%                                 0x00007f6d4300043e:   mov    %r9d,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.00%                                 0x00007f6d43000442:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 144)
                                         0x00007f6d43000446:   mov    %r9d,%ebx
                                         0x00007f6d43000449:   mov    $0x1,%r9d
           ╭                             0x00007f6d4300044f:   jmp    0x00007f6d43000649           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
           │                             0x00007f6d43000454:   nopl   0x0(%rax,%rax,1)
           │                             0x00007f6d4300045c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   1.65%   │                          ↗  0x00007f6d43000460:   mov    0x10(%r10,%r9,4),%edi        ; ImmutableOopMap {rdi=NarrowOop r8=Oop r10=Oop }
           │                          │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           │                          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
   2.84%   │                          │  0x00007f6d43000465:   mov    0x8(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f6d4300087d
  17.72%   │                          │  0x00007f6d4300046c:   movabs $0x800000000,%rsi
   0.40%   │                          │  0x00007f6d43000476:   lea    (%rsi,%rdx,1),%rax
   3.63%   │                          │  0x00007f6d4300047a:   cmp    -0x301(%rip),%rax        # 0x00007f6d43000180
           │                          │                                                            ;   {section_word}
   4.27%   │╭                         │  0x00007f6d43000481:   je     0x00007f6d430004c0
   2.99%   ││                         │  0x00007f6d43000487:   cmp    -0x306(%rip),%rax        # 0x00007f6d43000188
           ││                         │                                                            ;   {section_word}
   0.64%   ││╭                        │  0x00007f6d4300048e:   je     0x00007f6d430004c0
   1.65%   │││                        │  0x00007f6d43000494:   cmp    -0x30b(%rip),%rax        # 0x00007f6d43000190
           │││                        │                                                            ;   {section_word}
   0.13%   │││                        │  0x00007f6d4300049b:   nopl   0x0(%rax,%rax,1)
   0.55%   │││╭                       │  0x00007f6d430004a0:   je     0x00007f6d430004c0
   0.88%   ││││                       │  0x00007f6d430004a6:   cmp    -0x315(%rip),%rax        # 0x00007f6d43000198
           ││││                       │                                                            ;   {section_word}
   0.51%   ││││╭                      │  0x00007f6d430004ad:   je     0x00007f6d430004c0
   0.51%   │││││                      │  0x00007f6d430004b3:   cmp    -0x31a(%rip),%rax        # 0x00007f6d430001a0
           │││││                      │                                                            ;   {section_word}
   0.02%   │││││                      │  0x00007f6d430004ba:   jne    0x00007f6d4300078c
   1.61%   │↘↘↘↘                      │  0x00007f6d430004c0:   cmp    0x20(%rax),%rcx
           │    ╭                     │  0x00007f6d430004c4:   je     0x00007f6d430004d6
           │    │                     │  0x00007f6d430004ca:   cmp    $0xc26fe0,%edx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
           │    │╭                    │  0x00007f6d430004d0:   jne    0x00007f6d43000657
   8.20%   │    ↘│                    │  0x00007f6d430004d6:   mov    0x8(,%rdi,8),%edi
   0.27%   │     │                    │  0x00007f6d430004dd:   movabs $0x800000000,%rdx
           │     │                    │  0x00007f6d430004e7:   lea    (%rdx,%rdi,1),%rdi
   0.55%   │     │                    │  0x00007f6d430004eb:   cmp    -0x362(%rip),%rdi        # 0x00007f6d43000190
           │     │                    │                                                            ;   {section_word}
   4.18%   │     │╭                   │  0x00007f6d430004f2:   je     0x00007f6d4300052d
   0.38%   │     ││                   │  0x00007f6d430004f8:   cmp    -0x37f(%rip),%rdi        # 0x00007f6d43000180
           │     ││                   │                                                            ;   {section_word}
   0.11%   │     ││                   │  0x00007f6d430004ff:   nop
   0.11%   │     ││╭                  │  0x00007f6d43000500:   je     0x00007f6d4300052d
   2.44%   │     │││                  │  0x00007f6d43000506:   cmp    -0x375(%rip),%rdi        # 0x00007f6d43000198
           │     │││                  │                                                            ;   {section_word}
   0.12%   │     │││╭                 │  0x00007f6d4300050d:   je     0x00007f6d4300052d
   0.19%   │     ││││                 │  0x00007f6d43000513:   cmp    -0x37a(%rip),%rdi        # 0x00007f6d430001a0
           │     ││││                 │                                                            ;   {section_word}
   0.10%   │     ││││╭                │  0x00007f6d4300051a:   je     0x00007f6d4300052d
   0.87%   │     │││││                │  0x00007f6d43000520:   cmp    -0x39f(%rip),%rdi        # 0x00007f6d43000188
           │     │││││                │                                                            ;   {section_word}
           │     │││││                │  0x00007f6d43000527:   jne    0x00007f6d4300081e
   1.72%   │     │↘↘↘↘                │  0x00007f6d4300052d:   cmp    -0x3a4(%rip),%rdi        # 0x00007f6d43000190
           │     │                    │                                                            ;   {section_word}
   0.14%   │     │    ╭               │  0x00007f6d43000534:   je     0x00007f6d43000573
   2.13%   │     │    │               │  0x00007f6d4300053a:   cmp    -0x3c1(%rip),%rdi        # 0x00007f6d43000180
           │     │    │               │                                                            ;   {section_word}
   0.05%   │     │    │╭              │  0x00007f6d43000541:   je     0x00007f6d43000573
   0.77%   │     │    ││              │  0x00007f6d43000547:   cmp    -0x3b6(%rip),%rdi        # 0x00007f6d43000198
           │     │    ││              │                                                            ;   {section_word}
   0.06%   │     │    ││╭             │  0x00007f6d4300054e:   je     0x00007f6d43000573
   1.14%   │     │    │││             │  0x00007f6d43000554:   cmp    -0x3bb(%rip),%rdi        # 0x00007f6d430001a0
           │     │    │││             │                                                            ;   {section_word}
   0.06%   │     │    │││             │  0x00007f6d4300055b:   nopl   0x0(%rax,%rax,1)
   0.55%   │     │    │││╭            │  0x00007f6d43000560:   je     0x00007f6d43000573
   0.03%   │     │    ││││            │  0x00007f6d43000566:   cmp    -0x3e5(%rip),%rdi        # 0x00007f6d43000188
           │     │    ││││            │                                                            ;   {section_word}
   0.81%   │     │    ││││            │  0x00007f6d4300056d:   jne    0x00007f6d430007a8
   2.71%   │     │    ↘↘↘↘            │  0x00007f6d43000573:   cmp    -0x3ea(%rip),%rdi        # 0x00007f6d43000190
           │     │                    │                                                            ;   {section_word}
   0.71%   │     │        ╭           │  0x00007f6d4300057a:   je     0x00007f6d430005b4
   0.64%   │     │        │           │  0x00007f6d43000580:   cmp    -0x407(%rip),%rdi        # 0x00007f6d43000180
           │     │        │           │                                                            ;   {section_word}
   1.09%   │     │        │╭          │  0x00007f6d43000587:   je     0x00007f6d430005b4
   1.18%   │     │        ││          │  0x00007f6d4300058d:   cmp    -0x3fc(%rip),%rdi        # 0x00007f6d43000198
           │     │        ││          │                                                            ;   {section_word}
   0.24%   │     │        ││╭         │  0x00007f6d43000594:   je     0x00007f6d430005b4
   0.41%   │     │        │││         │  0x00007f6d4300059a:   cmp    -0x401(%rip),%rdi        # 0x00007f6d430001a0
           │     │        │││         │                                                            ;   {section_word}
   0.86%   │     │        │││╭        │  0x00007f6d430005a1:   je     0x00007f6d430005b4
   0.06%   │     │        ││││        │  0x00007f6d430005a7:   cmp    -0x426(%rip),%rdi        # 0x00007f6d43000188
           │     │        ││││        │                                                            ;   {section_word}
   0.04%   │     │        ││││        │  0x00007f6d430005ae:   jne    0x00007f6d4300080c
   2.42%   │     │        ↘↘↘↘        │  0x00007f6d430005b4:   cmp    -0x42b(%rip),%rdi        # 0x00007f6d43000190
           │     │                    │                                                            ;   {section_word}
   0.77%   │     │                    │  0x00007f6d430005bb:   nopl   0x0(%rax,%rax,1)
   0.87%   │     │            ╭       │  0x00007f6d430005c0:   je     0x00007f6d430005fa
   0.73%   │     │            │       │  0x00007f6d430005c6:   cmp    -0x44d(%rip),%rdi        # 0x00007f6d43000180
           │     │            │       │                                                            ;   {section_word}
   2.77%   │     │            │╭      │  0x00007f6d430005cd:   je     0x00007f6d430005fa
   1.65%   │     │            ││      │  0x00007f6d430005d3:   cmp    -0x442(%rip),%rdi        # 0x00007f6d43000198
           │     │            ││      │                                                            ;   {section_word}
   0.46%   │     │            ││╭     │  0x00007f6d430005da:   je     0x00007f6d430005fa
   0.57%   │     │            │││     │  0x00007f6d430005e0:   cmp    -0x447(%rip),%rdi        # 0x00007f6d430001a0
           │     │            │││     │                                                            ;   {section_word}
   0.11%   │     │            │││╭    │  0x00007f6d430005e7:   je     0x00007f6d430005fa
   0.63%   │     │            ││││    │  0x00007f6d430005ed:   cmp    -0x46c(%rip),%rdi        # 0x00007f6d43000188
           │     │            ││││    │                                                            ;   {section_word}
   0.05%   │     │            ││││    │  0x00007f6d430005f4:   jne    0x00007f6d4300077d
   1.97%   │     │            ↘↘↘↘    │  0x00007f6d430005fa:   cmp    -0x471(%rip),%rdi        # 0x00007f6d43000190
           │     │                    │                                                            ;   {section_word}
   0.30%   │     │                ╭   │  0x00007f6d43000601:   je     0x00007f6d43000640
   2.07%   │     │                │   │  0x00007f6d43000607:   cmp    -0x48e(%rip),%rdi        # 0x00007f6d43000180
           │     │                │   │                                                            ;   {section_word}
   0.97%   │     │                │╭  │  0x00007f6d4300060e:   je     0x00007f6d43000640
   1.03%   │     │                ││  │  0x00007f6d43000614:   cmp    -0x483(%rip),%rdi        # 0x00007f6d43000198
           │     │                ││  │                                                            ;   {section_word}
   0.13%   │     │                ││  │  0x00007f6d4300061b:   nopl   0x0(%rax,%rax,1)
   1.19%   │     │                ││╭ │  0x00007f6d43000620:   je     0x00007f6d43000640
   0.48%   │     │                │││ │  0x00007f6d43000626:   cmp    -0x48d(%rip),%rdi        # 0x00007f6d430001a0
           │     │                │││ │                                                            ;   {section_word}
   0.42%   │     │                │││╭│  0x00007f6d4300062d:   je     0x00007f6d43000640
   0.33%   │     │                │││││  0x00007f6d43000633:   cmp    -0x4b2(%rip),%rdi        # 0x00007f6d43000188
           │     │                │││││                                                            ;   {section_word}
   0.44%   │     │                │││││  0x00007f6d4300063a:   jne    0x00007f6d4300070e
   1.69%   │     │                ↘↘↘↘│  0x00007f6d43000640:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.45%   │     │                    │  0x00007f6d43000642:   mov    %ebx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.79%   │     │                    │  0x00007f6d43000646:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │     │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 145)
   1.62%   ↘     │                    │  0x00007f6d43000649:   cmp    %r9d,%r11d
                 │                    ╰  0x00007f6d4300064c:   jg     0x00007f6d43000460
   0.00%         │                       0x00007f6d43000652:   jmp    0x00007f6d430006b2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                 │                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
                 ↘                       0x00007f6d43000657:   mov    0x28(%rax),%rdx
                                         0x00007f6d4300065b:   mov    (%rdx),%esi
                                         0x00007f6d4300065d:   mov    $0x0,%ebp
                                         0x00007f6d43000662:   jmp    0x00007f6d4300069d
                                         0x00007f6d43000667:   data16 data16 nopw 0x0(%rax,%rax,1)
                                         0x00007f6d43000672:   data16 data16 xchg %ax,%ax
                                         0x00007f6d43000676:   data16 nopw 0x0(%rax,%rax,1)
                                         0x00007f6d43000680:   mov    %ebp,%r13d
                                         0x00007f6d43000683:   shl    $0x3,%r13d
....................................................................................................
  97.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 760 
   0.68%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 760 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.92%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 760 
   1.72%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.02%                       <unknown> 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 781 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%       jvmci, level 4
   1.72%               kernel
   0.17%            libjvm.so
   0.11%         libc-2.31.so
   0.03%       hsdis-amd64.so
   0.03%   libpthread-2.31.so
   0.02%                     
   0.02%           ld-2.31.so
   0.02%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%               [vdso]
   0.00%       libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 85.71% complete, ETA 00:03:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.697 ns/op
# Warmup Iteration   2: 8.520 ns/op
# Warmup Iteration   3: 8.519 ns/op
# Warmup Iteration   4: 8.519 ns/op
# Warmup Iteration   5: 8.519 ns/op
Iteration   1: 8.518 ns/op
Iteration   2: 8.520 ns/op
Iteration   3: 8.512 ns/op
Iteration   4: 8.519 ns/op
Iteration   5: 8.515 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  8.517 ±(99.9%) 0.012 ns/op [Average]
  (min, avg, max) = (8.512, 8.517, 8.520), stdev = 0.003
  CI (99.9%): [8.505, 8.529] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 199034 total address lines.
Perf output processed (skipped 58.749 seconds):
 Column 1: cycles (50699 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 758 

                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
                                              0x00007f8972ffffc2:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 144)
                                              0x00007f8972ffffc6:   mov    %r9d,%ebx
                                              0x00007f8972ffffc9:   mov    $0x1,%r9d
          ╭                                   0x00007f8972ffffcf:   jmp    0x00007f8973000223           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
          │                                   0x00007f8972ffffd4:   nopl   0x0(%rax,%rax,1)
          │                                   0x00007f8972ffffdc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   2.02%  │                                ↗  0x00007f8972ffffe0:   mov    0x10(%r10,%r9,4),%edi        ; ImmutableOopMap {rdi=NarrowOop r8=Oop r10=Oop }
          │                                │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                                │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
   2.26%  │                                │  0x00007f8972ffffe5:   mov    0x8(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007f897300045d
  13.84%  │                                │  0x00007f8972ffffec:   movabs $0x800000000,%rsi
   0.64%  │                                │  0x00007f8972fffff6:   lea    (%rsi,%rdx,1),%rax
   3.76%  │                                │  0x00007f8972fffffa:   cmp    -0x341(%rip),%rax        # 0x00007f8972fffcc0
          │                                │                                                            ;   {section_word}
   3.77%  │╭                               │  0x00007f8973000001:   je     0x00007f897300004d
   2.70%  ││                               │  0x00007f8973000007:   cmp    -0x346(%rip),%rax        # 0x00007f8972fffcc8
          ││                               │                                                            ;   {section_word}
   0.81%  ││╭                              │  0x00007f897300000e:   je     0x00007f897300004d
   2.38%  │││                              │  0x00007f8973000014:   cmp    -0x34b(%rip),%rax        # 0x00007f8972fffcd0
          │││                              │                                                            ;   {section_word}
   0.05%  │││                              │  0x00007f897300001b:   nopl   0x0(%rax,%rax,1)
   0.71%  │││╭                             │  0x00007f8973000020:   je     0x00007f897300004d
   0.76%  ││││                             │  0x00007f8973000026:   cmp    -0x355(%rip),%rax        # 0x00007f8972fffcd8
          ││││                             │                                                            ;   {section_word}
   1.14%  ││││╭                            │  0x00007f897300002d:   je     0x00007f897300004d
   0.67%  │││││                            │  0x00007f8973000033:   cmp    -0x35a(%rip),%rax        # 0x00007f8972fffce0
          │││││                            │                                                            ;   {section_word}
   0.13%  │││││╭                           │  0x00007f897300003a:   je     0x00007f897300004d
   0.36%  ││││││                           │  0x00007f8973000040:   cmp    -0x35f(%rip),%rax        # 0x00007f8972fffce8
          ││││││                           │                                                            ;   {section_word}
   0.07%  ││││││                           │  0x00007f8973000047:   jne    0x00007f897300036c
   1.53%  │↘↘↘↘↘                           │  0x00007f897300004d:   cmp    0x20(%rax),%rcx
          │     ╭                          │  0x00007f8973000051:   je     0x00007f897300006c           ;*invokeinterface baz {reexecute=0 rethrow=0 return_oop=0}
          │     │                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │     │                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
          │     │                          │  0x00007f8973000057:   nopw   0x0(%rax,%rax,1)
          │     │                          │  0x00007f8973000060:   cmp    $0xc26fe0,%edx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
          │     │╭                         │  0x00007f8973000066:   jne    0x00007f8973000231
   8.30%  │     ↘│                         │  0x00007f897300006c:   mov    0x8(,%rdi,8),%edi
   0.11%  │      │                         │  0x00007f8973000073:   movabs $0x800000000,%rdx
   0.02%  │      │                         │  0x00007f897300007d:   lea    (%rdx,%rdi,1),%rdi
   0.65%  │      │                         │  0x00007f8973000081:   cmp    -0x3c8(%rip),%rdi        # 0x00007f8972fffcc0
          │      │                         │                                                            ;   {section_word}
   4.34%  │      │╭                        │  0x00007f8973000088:   je     0x00007f89730000d3
   0.50%  │      ││                        │  0x00007f897300008e:   cmp    -0x3bd(%rip),%rdi        # 0x00007f8972fffcd8
          │      ││                        │                                                            ;   {section_word}
   0.15%  │      ││╭                       │  0x00007f8973000095:   je     0x00007f89730000d3
   1.02%  │      │││                       │  0x00007f897300009b:   cmp    -0x3da(%rip),%rdi        # 0x00007f8972fffcc8
          │      │││                       │                                                            ;   {section_word}
   2.09%  │      │││╭                      │  0x00007f89730000a2:   je     0x00007f89730000d3
   0.69%  │      ││││                      │  0x00007f89730000a8:   cmp    -0x3c7(%rip),%rdi        # 0x00007f8972fffce8
          │      ││││                      │                                                            ;   {section_word}
   0.16%  │      ││││╭                     │  0x00007f89730000af:   je     0x00007f89730000d3
   0.57%  │      │││││                     │  0x00007f89730000b5:   cmp    -0x3dc(%rip),%rdi        # 0x00007f8972fffce0
          │      │││││                     │                                                            ;   {section_word}
   0.70%  │      │││││                     │  0x00007f89730000bc:   nopl   0x0(%rax)
   0.22%  │      │││││╭                    │  0x00007f89730000c0:   je     0x00007f89730000d3
   0.09%  │      ││││││                    │  0x00007f89730000c6:   cmp    -0x3fd(%rip),%rdi        # 0x00007f8972fffcd0
          │      ││││││                    │                                                            ;   {section_word}
   0.19%  │      ││││││                    │  0x00007f89730000cd:   jne    0x00007f89730003fe
   0.89%  │      │↘↘↘↘↘                    │  0x00007f89730000d3:   cmp    -0x41a(%rip),%rdi        # 0x00007f8972fffcc0
          │      │                         │                                                            ;   {section_word}
   1.07%  │      │     ╭                   │  0x00007f89730000da:   je     0x00007f8973000126
   1.34%  │      │     │                   │  0x00007f89730000e0:   cmp    -0x40f(%rip),%rdi        # 0x00007f8972fffcd8
          │      │     │                   │                                                            ;   {section_word}
   0.93%  │      │     │╭                  │  0x00007f89730000e7:   je     0x00007f8973000126
   0.93%  │      │     ││                  │  0x00007f89730000ed:   cmp    -0x42c(%rip),%rdi        # 0x00007f8972fffcc8
          │      │     ││                  │                                                            ;   {section_word}
   0.28%  │      │     ││╭                 │  0x00007f89730000f4:   je     0x00007f8973000126
   1.17%  │      │     │││                 │  0x00007f89730000fa:   cmp    -0x419(%rip),%rdi        # 0x00007f8972fffce8
          │      │     │││                 │                                                            ;   {section_word}
   0.21%  │      │     │││╭                │  0x00007f8973000101:   je     0x00007f8973000126
   0.57%  │      │     ││││                │  0x00007f8973000107:   cmp    -0x42e(%rip),%rdi        # 0x00007f8972fffce0
          │      │     ││││                │                                                            ;   {section_word}
   0.19%  │      │     ││││╭               │  0x00007f897300010e:   je     0x00007f8973000126
   0.15%  │      │     │││││               │  0x00007f8973000114:   cmp    -0x44b(%rip),%rdi        # 0x00007f8972fffcd0
          │      │     │││││               │                                                            ;   {section_word}
   0.13%  │      │     │││││               │  0x00007f897300011b:   nopl   0x0(%rax,%rax,1)
   0.38%  │      │     │││││               │  0x00007f8973000120:   jne    0x00007f8973000388
   1.74%  │      │     ↘↘↘↘↘               │  0x00007f8973000126:   cmp    -0x46d(%rip),%rdi        # 0x00007f8972fffcc0
          │      │                         │                                                            ;   {section_word}
   1.65%  │      │          ╭              │  0x00007f897300012d:   je     0x00007f8973000174
   0.89%  │      │          │              │  0x00007f8973000133:   cmp    -0x462(%rip),%rdi        # 0x00007f8972fffcd8
          │      │          │              │                                                            ;   {section_word}
   0.53%  │      │          │╭             │  0x00007f897300013a:   je     0x00007f8973000174
   0.85%  │      │          ││             │  0x00007f8973000140:   cmp    -0x47f(%rip),%rdi        # 0x00007f8972fffcc8
          │      │          ││             │                                                            ;   {section_word}
   0.88%  │      │          ││╭            │  0x00007f8973000147:   je     0x00007f8973000174
   0.78%  │      │          │││            │  0x00007f897300014d:   cmp    -0x46c(%rip),%rdi        # 0x00007f8972fffce8
          │      │          │││            │                                                            ;   {section_word}
   0.47%  │      │          │││╭           │  0x00007f8973000154:   je     0x00007f8973000174
   0.59%  │      │          ││││           │  0x00007f897300015a:   cmp    -0x481(%rip),%rdi        # 0x00007f8972fffce0
          │      │          ││││           │                                                            ;   {section_word}
   0.17%  │      │          ││││╭          │  0x00007f8973000161:   je     0x00007f8973000174
   0.14%  │      │          │││││          │  0x00007f8973000167:   cmp    -0x49e(%rip),%rdi        # 0x00007f8972fffcd0
          │      │          │││││          │                                                            ;   {section_word}
   0.35%  │      │          │││││          │  0x00007f897300016e:   jne    0x00007f897300033f
   1.39%  │      │          ↘↘↘↘↘          │  0x00007f8973000174:   cmp    -0x4bb(%rip),%rdi        # 0x00007f8972fffcc0
          │      │                         │                                                            ;   {section_word}
   0.81%  │      │                         │  0x00007f897300017b:   nopl   0x0(%rax,%rax,1)
   1.05%  │      │               ╭         │  0x00007f8973000180:   je     0x00007f89730001c7
   1.20%  │      │               │         │  0x00007f8973000186:   cmp    -0x4b5(%rip),%rdi        # 0x00007f8972fffcd8
          │      │               │         │                                                            ;   {section_word}
   0.63%  │      │               │╭        │  0x00007f897300018d:   je     0x00007f89730001c7
   0.33%  │      │               ││        │  0x00007f8973000193:   cmp    -0x4d2(%rip),%rdi        # 0x00007f8972fffcc8
          │      │               ││        │                                                            ;   {section_word}
   0.97%  │      │               ││╭       │  0x00007f897300019a:   je     0x00007f89730001c7
   0.70%  │      │               │││       │  0x00007f89730001a0:   cmp    -0x4bf(%rip),%rdi        # 0x00007f8972fffce8
          │      │               │││       │                                                            ;   {section_word}
   0.44%  │      │               │││╭      │  0x00007f89730001a7:   je     0x00007f89730001c7
   0.22%  │      │               ││││      │  0x00007f89730001ad:   cmp    -0x4d4(%rip),%rdi        # 0x00007f8972fffce0
          │      │               ││││      │                                                            ;   {section_word}
   0.50%  │      │               ││││╭     │  0x00007f89730001b4:   je     0x00007f89730001c7
   0.36%  │      │               │││││     │  0x00007f89730001ba:   cmp    -0x4f1(%rip),%rdi        # 0x00007f8972fffcd0
          │      │               │││││     │                                                            ;   {section_word}
   0.08%  │      │               │││││     │  0x00007f89730001c1:   jne    0x00007f897300035d
   2.62%  │      │               ↘↘↘↘↘     │  0x00007f89730001c7:   cmp    -0x50e(%rip),%rdi        # 0x00007f8972fffcc0
          │      │                         │                                                            ;   {section_word}
   0.70%  │      │                    ╭    │  0x00007f89730001ce:   je     0x00007f897300021a
   0.87%  │      │                    │    │  0x00007f89730001d4:   cmp    -0x503(%rip),%rdi        # 0x00007f8972fffcd8
          │      │                    │    │                                                            ;   {section_word}
   0.61%  │      │                    │    │  0x00007f89730001db:   nopl   0x0(%rax,%rax,1)
   1.42%  │      │                    │╭   │  0x00007f89730001e0:   je     0x00007f897300021a
   0.81%  │      │                    ││   │  0x00007f89730001e6:   cmp    -0x525(%rip),%rdi        # 0x00007f8972fffcc8
          │      │                    ││   │                                                            ;   {section_word}
   0.76%  │      │                    ││╭  │  0x00007f89730001ed:   je     0x00007f897300021a
   1.08%  │      │                    │││  │  0x00007f89730001f3:   cmp    -0x512(%rip),%rdi        # 0x00007f8972fffce8
          │      │                    │││  │                                                            ;   {section_word}
   0.23%  │      │                    │││╭ │  0x00007f89730001fa:   je     0x00007f897300021a
   0.34%  │      │                    ││││ │  0x00007f8973000200:   cmp    -0x527(%rip),%rdi        # 0x00007f8972fffce0
          │      │                    ││││ │                                                            ;   {section_word}
   0.50%  │      │                    ││││╭│  0x00007f8973000207:   je     0x00007f897300021a
   0.10%  │      │                    ││││││  0x00007f897300020d:   cmp    -0x544(%rip),%rdi        # 0x00007f8972fffcd0
          │      │                    ││││││                                                            ;   {section_word}
   0.11%  │      │                    ││││││  0x00007f8973000214:   jne    0x00007f89730002ee
   1.79%  │      │                    ↘↘↘↘↘│  0x00007f897300021a:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   1.09%  │      │                         │  0x00007f897300021c:   mov    %ebx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.67%  │      │                         │  0x00007f8973000220:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 145)
   0.94%  ↘      │                         │  0x00007f8973000223:   cmp    %r9d,%r11d
                 │                         ╰  0x00007f8973000226:   jg     0x00007f8972ffffe0
   0.00%         │                            0x00007f897300022c:   jmp    0x00007f8973000292           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                 │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
                 ↘                            0x00007f8973000231:   mov    0x28(%rax),%rdx
                                              0x00007f8973000235:   mov    (%rdx),%esi
                                              0x00007f8973000237:   mov    $0x0,%ebp
                                              0x00007f897300023c:   nopl   0x0(%rax)
                                              0x00007f8973000240:   jmp    0x00007f897300027d
                                              0x00007f8973000245:   data16 data16 nopw 0x0(%rax,%rax,1)
                                              0x00007f8973000250:   data16 data16 xchg %ax,%ax
                                              0x00007f8973000254:   nopl   0x0(%rax,%rax,1)
                                              0x00007f897300025c:   data16 data16 xchg %ax,%ax
....................................................................................................
  98.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 758 
   0.56%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 758 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 758 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 781 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 758 
   0.01%               kernel  [unknown] 
   0.83%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 3, compile id 758 
   1.55%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 781 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  fileStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%       hsdis-amd64.so  hsdis_read_memory_func 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         libc-2.31.so  ptmalloc_init.part.0 
   0.00%            libjvm.so  fileStream::flush 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.15%       jvmci, level 4
   1.55%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain
# Parameters: (targetType = MEGAMORPHIC_6_DOMINANT_TARGET)

# Run progress: 92.86% complete, ETA 00:01:50
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.158 ns/op
# Warmup Iteration   2: 5.014 ns/op
# Warmup Iteration   3: 5.014 ns/op
# Warmup Iteration   4: 5.011 ns/op
# Warmup Iteration   5: 5.013 ns/op
Iteration   1: 5.010 ns/op
Iteration   2: 5.010 ns/op
Iteration   3: 5.013 ns/op
Iteration   4: 5.009 ns/op
Iteration   5: 5.009 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain":
  5.010 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (5.009, 5.010, 5.013), stdev = 0.001
  CI (99.9%): [5.004, 5.016] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm":
PrintAssembly processed: 198271 total address lines.
Perf output processed (skipped 58.695 seconds):
 Column 1: cycles (50562 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 760 

                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
                                              0x00007fa923001fc2:   shl    $0x3,%r10                    ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@1 (line 144)
                                              0x00007fa923001fc6:   mov    %r9d,%ebx
                                              0x00007fa923001fc9:   mov    $0x1,%r9d
          ╭                                   0x00007fa923001fcf:   jmp    0x00007fa923002223           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
          │                                   0x00007fa923001fd4:   nopl   0x0(%rax,%rax,1)
          │                                   0x00007fa923001fdc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
   7.28%  │                                ↗  0x00007fa923001fe0:   mov    0x10(%r10,%r9,4),%edi        ; ImmutableOopMap {rdi=NarrowOop r8=Oop r10=Oop }
          │                                │                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
          │                                │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@13 (line 145)
   0.34%  │                                │  0x00007fa923001fe5:   mov    0x8(,%rdi,8),%edx            ; implicit exception: dispatches to 0x00007fa92300245d
  11.09%  │                                │  0x00007fa923001fec:   movabs $0x800000000,%rsi
   0.03%  │                                │  0x00007fa923001ff6:   lea    (%rsi,%rdx,1),%rax
   7.50%  │                                │  0x00007fa923001ffa:   cmp    -0x341(%rip),%rax        # 0x00007fa923001cc0
          │                                │                                                            ;   {section_word}
   2.73%  │╭                               │  0x00007fa923002001:   je     0x00007fa92300204d
   0.42%  ││                               │  0x00007fa923002007:   cmp    -0x346(%rip),%rax        # 0x00007fa923001cc8
          ││                               │                                                            ;   {section_word}
   0.06%  ││╭                              │  0x00007fa92300200e:   je     0x00007fa92300204d
   0.35%  │││                              │  0x00007fa923002014:   cmp    -0x34b(%rip),%rax        # 0x00007fa923001cd0
          │││                              │                                                            ;   {section_word}
   0.02%  │││                              │  0x00007fa92300201b:   nopl   0x0(%rax,%rax,1)
   0.11%  │││╭                             │  0x00007fa923002020:   je     0x00007fa92300204d
   0.17%  ││││                             │  0x00007fa923002026:   cmp    -0x355(%rip),%rax        # 0x00007fa923001cd8
          ││││                             │                                                            ;   {section_word}
   0.09%  ││││╭                            │  0x00007fa92300202d:   je     0x00007fa92300204d
   0.16%  │││││                            │  0x00007fa923002033:   cmp    -0x35a(%rip),%rax        # 0x00007fa923001ce0
          │││││                            │                                                            ;   {section_word}
   0.06%  │││││╭                           │  0x00007fa92300203a:   je     0x00007fa92300204d
   0.09%  ││││││                           │  0x00007fa923002040:   cmp    -0x35f(%rip),%rax        # 0x00007fa923001ce8
          ││││││                           │                                                            ;   {section_word}
   0.00%  ││││││                           │  0x00007fa923002047:   jne    0x00007fa92300236c
   2.87%  │↘↘↘↘↘                           │  0x00007fa92300204d:   cmp    0x20(%rax),%rcx
          │     ╭                          │  0x00007fa923002051:   je     0x00007fa92300206c           ;*invokeinterface baz {reexecute=0 rethrow=0 return_oop=0}
          │     │                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │     │                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
          │     │                          │  0x00007fa923002057:   nopw   0x0(%rax,%rax,1)
          │     │                          │  0x00007fa923002060:   cmp    $0xc26fe0,%edx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/MegamorphicInterfaceCallBenchmark$I&apos;)}
          │     │╭                         │  0x00007fa923002066:   jne    0x00007fa923002231
  16.71%  │     ↘│                         │  0x00007fa92300206c:   mov    0x8(,%rdi,8),%edi
   1.67%  │      │                         │  0x00007fa923002073:   movabs $0x800000000,%rdx
   0.01%  │      │                         │  0x00007fa92300207d:   lea    (%rdx,%rdi,1),%rdi
   1.85%  │      │                         │  0x00007fa923002081:   cmp    -0x3c8(%rip),%rdi        # 0x00007fa923001cc0
          │      │                         │                                                            ;   {section_word}
   7.56%  │      │╭                        │  0x00007fa923002088:   je     0x00007fa9230020d3
   0.10%  │      ││                        │  0x00007fa92300208e:   cmp    -0x3bd(%rip),%rdi        # 0x00007fa923001cd8
          │      ││                        │                                                            ;   {section_word}
   0.02%  │      ││╭                       │  0x00007fa923002095:   je     0x00007fa9230020d3
   0.18%  │      │││                       │  0x00007fa92300209b:   cmp    -0x3c2(%rip),%rdi        # 0x00007fa923001ce0
          │      │││                       │                                                            ;   {section_word}
   0.34%  │      │││╭                      │  0x00007fa9230020a2:   je     0x00007fa9230020d3
   0.04%  │      ││││                      │  0x00007fa9230020a8:   cmp    -0x3c7(%rip),%rdi        # 0x00007fa923001ce8
          │      ││││                      │                                                            ;   {section_word}
   0.01%  │      ││││╭                     │  0x00007fa9230020af:   je     0x00007fa9230020d3
   0.05%  │      │││││                     │  0x00007fa9230020b5:   cmp    -0x3f4(%rip),%rdi        # 0x00007fa923001cc8
          │      │││││                     │                                                            ;   {section_word}
   0.17%  │      │││││                     │  0x00007fa9230020bc:   nopl   0x0(%rax)
   0.02%  │      │││││╭                    │  0x00007fa9230020c0:   je     0x00007fa9230020d3
   0.03%  │      ││││││                    │  0x00007fa9230020c6:   cmp    -0x3fd(%rip),%rdi        # 0x00007fa923001cd0
          │      ││││││                    │                                                            ;   {section_word}
   0.03%  │      ││││││                    │  0x00007fa9230020cd:   jne    0x00007fa9230023fe
   1.86%  │      │↘↘↘↘↘                    │  0x00007fa9230020d3:   cmp    -0x41a(%rip),%rdi        # 0x00007fa923001cc0
          │      │                         │                                                            ;   {section_word}
   0.21%  │      │     ╭                   │  0x00007fa9230020da:   je     0x00007fa923002126
   0.23%  │      │     │                   │  0x00007fa9230020e0:   cmp    -0x41f(%rip),%rdi        # 0x00007fa923001cc8
          │      │     │                   │                                                            ;   {section_word}
   0.08%  │      │     │╭                  │  0x00007fa9230020e7:   je     0x00007fa923002126
   0.20%  │      │     ││                  │  0x00007fa9230020ed:   cmp    -0x424(%rip),%rdi        # 0x00007fa923001cd0
          │      │     ││                  │                                                            ;   {section_word}
   0.16%  │      │     ││╭                 │  0x00007fa9230020f4:   je     0x00007fa923002126
   0.09%  │      │     │││                 │  0x00007fa9230020fa:   cmp    -0x429(%rip),%rdi        # 0x00007fa923001cd8
          │      │     │││                 │                                                            ;   {section_word}
   0.07%  │      │     │││╭                │  0x00007fa923002101:   je     0x00007fa923002126
   0.11%  │      │     ││││                │  0x00007fa923002107:   cmp    -0x42e(%rip),%rdi        # 0x00007fa923001ce0
          │      │     ││││                │                                                            ;   {section_word}
   0.03%  │      │     ││││╭               │  0x00007fa92300210e:   je     0x00007fa923002126
   0.04%  │      │     │││││               │  0x00007fa923002114:   cmp    -0x433(%rip),%rdi        # 0x00007fa923001ce8
          │      │     │││││               │                                                            ;   {section_word}
   0.00%  │      │     │││││               │  0x00007fa92300211b:   nopl   0x0(%rax,%rax,1)
   0.07%  │      │     │││││               │  0x00007fa923002120:   jne    0x00007fa923002388
   7.14%  │      │     ↘↘↘↘↘               │  0x00007fa923002126:   cmp    -0x46d(%rip),%rdi        # 0x00007fa923001cc0
          │      │                         │                                                            ;   {section_word}
   0.26%  │      │          ╭              │  0x00007fa92300212d:   je     0x00007fa923002174
   0.27%  │      │          │              │  0x00007fa923002133:   cmp    -0x472(%rip),%rdi        # 0x00007fa923001cc8
          │      │          │              │                                                            ;   {section_word}
   0.04%  │      │          │╭             │  0x00007fa92300213a:   je     0x00007fa923002174
   0.18%  │      │          ││             │  0x00007fa923002140:   cmp    -0x477(%rip),%rdi        # 0x00007fa923001cd0
          │      │          ││             │                                                            ;   {section_word}
   0.19%  │      │          ││╭            │  0x00007fa923002147:   je     0x00007fa923002174
   0.10%  │      │          │││            │  0x00007fa92300214d:   cmp    -0x47c(%rip),%rdi        # 0x00007fa923001cd8
          │      │          │││            │                                                            ;   {section_word}
   0.03%  │      │          │││╭           │  0x00007fa923002154:   je     0x00007fa923002174
   0.09%  │      │          ││││           │  0x00007fa92300215a:   cmp    -0x481(%rip),%rdi        # 0x00007fa923001ce0
          │      │          ││││           │                                                            ;   {section_word}
   0.06%  │      │          ││││╭          │  0x00007fa923002161:   je     0x00007fa923002174
   0.03%  │      │          │││││          │  0x00007fa923002167:   cmp    -0x486(%rip),%rdi        # 0x00007fa923001ce8
          │      │          │││││          │                                                            ;   {section_word}
   0.03%  │      │          │││││          │  0x00007fa92300216e:   jne    0x00007fa9230023ec
   7.28%  │      │          ↘↘↘↘↘          │  0x00007fa923002174:   cmp    -0x4bb(%rip),%rdi        # 0x00007fa923001cc0
          │      │                         │                                                            ;   {section_word}
   0.13%  │      │                         │  0x00007fa92300217b:   nopl   0x0(%rax,%rax,1)
   0.20%  │      │               ╭         │  0x00007fa923002180:   je     0x00007fa9230021c7
   0.11%  │      │               │         │  0x00007fa923002186:   cmp    -0x4c5(%rip),%rdi        # 0x00007fa923001cc8
          │      │               │         │                                                            ;   {section_word}
   0.15%  │      │               │╭        │  0x00007fa92300218d:   je     0x00007fa9230021c7
   0.15%  │      │               ││        │  0x00007fa923002193:   cmp    -0x4ca(%rip),%rdi        # 0x00007fa923001cd0
          │      │               ││        │                                                            ;   {section_word}
   0.08%  │      │               ││╭       │  0x00007fa92300219a:   je     0x00007fa9230021c7
   0.13%  │      │               │││       │  0x00007fa9230021a0:   cmp    -0x4cf(%rip),%rdi        # 0x00007fa923001cd8
          │      │               │││       │                                                            ;   {section_word}
   0.05%  │      │               │││╭      │  0x00007fa9230021a7:   je     0x00007fa9230021c7
   0.05%  │      │               ││││      │  0x00007fa9230021ad:   cmp    -0x4d4(%rip),%rdi        # 0x00007fa923001ce0
          │      │               ││││      │                                                            ;   {section_word}
   0.04%  │      │               ││││╭     │  0x00007fa9230021b4:   je     0x00007fa9230021c7
   0.03%  │      │               │││││     │  0x00007fa9230021ba:   cmp    -0x4d9(%rip),%rdi        # 0x00007fa923001ce8
          │      │               │││││     │                                                            ;   {section_word}
   0.04%  │      │               │││││     │  0x00007fa9230021c1:   jne    0x00007fa92300235d
   7.19%  │      │               ↘↘↘↘↘     │  0x00007fa9230021c7:   cmp    -0x50e(%rip),%rdi        # 0x00007fa923001cc0
          │      │                         │                                                            ;   {section_word}
   0.27%  │      │                    ╭    │  0x00007fa9230021ce:   je     0x00007fa92300221a
   0.07%  │      │                    │    │  0x00007fa9230021d4:   cmp    -0x513(%rip),%rdi        # 0x00007fa923001cc8
          │      │                    │    │                                                            ;   {section_word}
   0.11%  │      │                    │    │  0x00007fa9230021db:   nopl   0x0(%rax,%rax,1)
   0.24%  │      │                    │╭   │  0x00007fa9230021e0:   je     0x00007fa92300221a
   0.14%  │      │                    ││   │  0x00007fa9230021e6:   cmp    -0x51d(%rip),%rdi        # 0x00007fa923001cd0
          │      │                    ││   │                                                            ;   {section_word}
   0.07%  │      │                    ││╭  │  0x00007fa9230021ed:   je     0x00007fa92300221a
   0.12%  │      │                    │││  │  0x00007fa9230021f3:   cmp    -0x522(%rip),%rdi        # 0x00007fa923001cd8
          │      │                    │││  │                                                            ;   {section_word}
   0.15%  │      │                    │││╭ │  0x00007fa9230021fa:   je     0x00007fa92300221a
   0.07%  │      │                    ││││ │  0x00007fa923002200:   cmp    -0x527(%rip),%rdi        # 0x00007fa923001ce0
          │      │                    ││││ │                                                            ;   {section_word}
   0.03%  │      │                    ││││╭│  0x00007fa923002207:   je     0x00007fa92300221a
   0.05%  │      │                    ││││││  0x00007fa92300220d:   cmp    -0x52c(%rip),%rdi        # 0x00007fa923001ce8
          │      │                    ││││││                                                            ;   {section_word}
   0.04%  │      │                    ││││││  0x00007fa923002214:   jne    0x00007fa9230022ee
   7.16%  │      │                    ↘↘↘↘↘│  0x00007fa92300221a:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@8 (line 209)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.11%  │      │                         │  0x00007fa92300221c:   mov    %ebx,0xc(%r8)                ;*putfield x {reexecute=0 rethrow=0 return_oop=0}
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::baz_1@9 (line 209)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I1::foo_1@1 (line 213)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::baz_2@1 (line 219)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I2::foo_2@1 (line 223)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::baz_3@1 (line 229)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I3::foo_3@1 (line 233)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::baz_4@1 (line 239)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I4::foo_4@1 (line 243)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::baz_5@1 (line 249)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I5::foo_5@1 (line 253)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::baz@1 (line 259)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark$I::foo@1 (line 263)
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@27 (line 146)
   0.16%  │      │                         │  0x00007fa923002220:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │      │                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@32 (line 145)
   0.12%  ↘      │                         │  0x00007fa923002223:   cmp    %r9d,%r11d
                 │                         ╰  0x00007fa923002226:   jg     0x00007fa923001fe0
   0.01%         │                            0x00007fa92300222c:   jmp    0x00007fa923002292           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                 │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain@16 (line 145)
                 ↘                            0x00007fa923002231:   mov    0x28(%rax),%rdx
                                              0x00007fa923002235:   mov    (%rdx),%esi
                                              0x00007fa923002237:   mov    $0x0,%ebp
                                              0x00007fa92300223c:   nopl   0x0(%rax)
                                              0x00007fa923002240:   jmp    0x00007fa92300227d
                                              0x00007fa923002245:   data16 data16 nopw 0x0(%rax,%rax,1)
                                              0x00007fa923002250:   data16 data16 xchg %ax,%ax
                                              0x00007fa923002254:   nopl   0x0(%rax,%rax,1)
                                              0x00007fa92300225c:   data16 data16 xchg %ax,%ax
....................................................................................................
  98.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 760 
   0.27%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 760 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 760 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 781 
   0.01%               kernel  [unknown] 
   0.80%  <...other 254 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.42%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.MegamorphicInterfaceCallBenchmark::virtual_calls_chain, version 4, compile id 760 
   1.33%               kernel  [unknown] 
   0.02%         libc-2.31.so  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.MegamorphicInterfaceCallBenchmark_virtual_calls_chain_jmhTest::virtual_calls_chain_avgt_jmhStub, version 5, compile id 781 
   0.01%                       <unknown> 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.00%            libjvm.so  fileStream::flush 
   0.00%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  outputStream::update_position 
   0.00%          interpreter  invokevirtual  182 invokevirtual  
   0.00%            libjvm.so  os::current_thread_id 
   0.00%            libjvm.so  stringStream::write 
   0.00%            libjvm.so  GraphBuilder::iterate_bytecodes_for_block 
   0.00%            libjvm.so  BlockBegin::try_merge 
   0.00%          interpreter  getstatic  178 getstatic  
   0.12%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.43%       jvmci, level 4
   1.33%               kernel
   0.13%            libjvm.so
   0.05%         libc-2.31.so
   0.02%       hsdis-amd64.so
   0.02%  libjvmcicompiler.so
   0.01%                     
   0.01%          interpreter
   0.01%   libpthread-2.31.so
   0.00%       perf-31831.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:25:52

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

Benchmark                                                                            (targetType)  Mode  Cnt  Score    Error  Units
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                         MONOMORPHIC  avgt    5  1.550 ±  0.001  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                    MONOMORPHIC  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                           BIMORPHIC  avgt    5  1.423 ±  0.001  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                      BIMORPHIC  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_3  avgt    5  1.897 ±  0.179  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_3  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_4  avgt    5  1.844 ±  0.002  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_4  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_5  avgt    5  2.483 ±  0.055  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_5  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic                       MEGAMORPHIC_6  avgt    5  2.111 ±  0.194  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm                  MEGAMORPHIC_6  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_6_DOMINANT_TARGET  avgt    5  3.119 ±  0.032  ns/op
MegamorphicInterfaceCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_6_DOMINANT_TARGET  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                                 MONOMORPHIC  avgt    5  0.908 ±  0.001  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                            MONOMORPHIC  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                                   BIMORPHIC  avgt    5  4.583 ±  0.052  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                              BIMORPHIC  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_3  avgt    5  5.749 ±  0.256  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_3  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_4  avgt    5  7.380 ±  0.175  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_4  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_5  avgt    5  8.770 ±  0.125  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_5  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain                               MEGAMORPHIC_6  avgt    5  8.517 ±  0.012  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm                          MEGAMORPHIC_6  avgt         NaN             ---
MegamorphicInterfaceCallBenchmark.virtual_calls_chain               MEGAMORPHIC_6_DOMINANT_TARGET  avgt    5  5.010 ±  0.006  ns/op
MegamorphicInterfaceCallBenchmark.virtual_calls_chain:·asm          MEGAMORPHIC_6_DOMINANT_TARGET  avgt         NaN             ---
