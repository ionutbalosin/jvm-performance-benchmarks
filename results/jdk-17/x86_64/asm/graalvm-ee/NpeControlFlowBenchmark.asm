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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 231.309 us/op
# Warmup Iteration   2: 230.170 us/op
# Warmup Iteration   3: 230.404 us/op
# Warmup Iteration   4: 235.296 us/op
# Warmup Iteration   5: 234.807 us/op
Iteration   1: 235.245 us/op
Iteration   2: 235.301 us/op
Iteration   3: 235.107 us/op
Iteration   4: 235.040 us/op
Iteration   5: 235.336 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  235.206 ±(99.9%) 0.490 us/op [Average]
  (min, avg, max) = (235.040, 235.206, 235.336), stdev = 0.127
  CI (99.9%): [234.716, 235.696] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 188940 total address lines.
Perf output processed (skipped 58.455 seconds):
 Column 1: cycles (50750 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 730 

                0x00007f51deb1b1da:   lea    -0x8(%r10),%r11d
                0x00007f51deb1b1de:   cmp    $0x80000008,%r10d
                0x00007f51deb1b1e5:   mov    $0x80000000,%ecx
                0x00007f51deb1b1ea:   cmovl  %ecx,%r11d
          ╭     0x00007f51deb1b1ee:   jmp    0x00007f51deb1b284
          │     0x00007f51deb1b1f3:   nopw   0x0(%rax,%rax,1)
          │     0x00007f51deb1b1fc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
          │↗    0x00007f51deb1b200:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   3.54%  ││    0x00007f51deb1b205:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop [0]=Oop }
          ││                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││    0x00007f51deb1b208:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f51deb1b32f
   8.75%  ││    0x00007f51deb1b20f:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   0.00%  ││    0x00007f51deb1b214:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f51deb1b34b
   3.68%  ││    0x00007f51deb1b21b:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   0.00%  ││    0x00007f51deb1b220:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007f51deb1b367
   6.08%  ││    0x00007f51deb1b227:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   0.89%  ││    0x00007f51deb1b22c:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007f51deb1b386
  19.12%  ││    0x00007f51deb1b233:   mov    0x20(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││    0x00007f51deb1b238:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007f51deb1b3a6
  12.03%  ││    0x00007f51deb1b23f:   mov    0x24(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││    0x00007f51deb1b244:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007f51deb1b3c6
   7.43%  ││    0x00007f51deb1b24c:   mov    0x28(%rax,%r9,4),%r14d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                              ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
          ││    0x00007f51deb1b251:   mov    0xc(,%r14,8),%r14d           ; implicit exception: dispatches to 0x00007f51deb1b3e6
   6.63%  ││    0x00007f51deb1b259:   mov    0x2c(%rax,%r9,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.00%  ││    0x00007f51deb1b25e:   xchg   %ax,%ax
   0.75%  ││    0x00007f51deb1b260:   test   %esi,%esi
          ││    0x00007f51deb1b262:   je     0x00007f51deb1b2f7           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
          ││    0x00007f51deb1b268:   add    %ecx,%ebx
   4.48%  ││    0x00007f51deb1b26a:   add    %edi,%ebx
          ││    0x00007f51deb1b26c:   add    %edx,%ebx
   1.09%  ││    0x00007f51deb1b26e:   add    %ebp,%ebx
          ││    0x00007f51deb1b270:   add    %r13d,%ebx
   4.38%  ││    0x00007f51deb1b273:   add    %r14d,%ebx
   0.68%  ││    0x00007f51deb1b276:   add    0xc(,%rsi,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
  16.43%  ││    0x00007f51deb1b27d:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
          ││    0x00007f51deb1b281:   mov    %ebx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
   1.60%  ↘│    0x00007f51deb1b284:   cmp    %r9d,%r11d
           ╰    0x00007f51deb1b287:   jg     0x00007f51deb1b200
            ╭   0x00007f51deb1b28d:   jmp    0x00007f51deb1b2c0
            │   0x00007f51deb1b292:   data16 nopw 0x0(%rax,%rax,1)
            │   0x00007f51deb1b29c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
   0.00%    │↗  0x00007f51deb1b2a0:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
            ││  0x00007f51deb1b2a5:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop [0]=Oop }
            ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
            ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
            ││  0x00007f51deb1b2a8:   add    0xc(,%r11,8),%ecx            ; implicit exception: dispatches to 0x00007f51deb1b406
   0.00%    ││  0x00007f51deb1b2b0:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
            ││  0x00007f51deb1b2b3:   mov    %ecx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@4 (line 100)
            ││  0x00007f51deb1b2b6:   data16 nopw 0x0(%rax,%rax,1)
            ↘│  0x00007f51deb1b2c0:   cmp    %r9d,%r10d
             ╰  0x00007f51deb1b2c3:   jg     0x00007f51deb1b2a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
                0x00007f51deb1b2c5:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@40 (line 105)
                0x00007f51deb1b2c8:   mov    0x10(%rsp),%rbp
....................................................................................................
  97.57%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.57%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 730 
   0.59%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.18%  <...other 369 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 730 
   2.04%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  __strchr_sse2 
   0.00%            libjvm.so  G1ServiceThread::schedule 
   0.00%            libjvm.so  WatcherThread::sleep 
   0.00%          interpreter  invokeinterface  185 invokeinterface  
   0.15%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.60%       jvmci, level 4
   2.04%               kernel
   0.14%            libjvm.so
   0.07%                     
   0.07%         libc-2.31.so
   0.04%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 12.50% complete, ETA 00:13:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1210.738 us/op
# Warmup Iteration   2: 1207.589 us/op
# Warmup Iteration   3: 1207.343 us/op
# Warmup Iteration   4: 1207.481 us/op
# Warmup Iteration   5: 1207.475 us/op
Iteration   1: 1207.395 us/op
Iteration   2: 1207.421 us/op
Iteration   3: 1207.087 us/op
Iteration   4: 1206.770 us/op
Iteration   5: 1207.453 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement":
  1207.225 ±(99.9%) 1.131 us/op [Average]
  (min, avg, max) = (1206.770, 1207.225, 1207.453), stdev = 0.294
  CI (99.9%): [1206.094, 1208.356] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_not_npe_do_statement:·asm":
PrintAssembly processed: 192952 total address lines.
Perf output processed (skipped 58.729 seconds):
 Column 1: cycles (50739 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 733 

                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
                        0x00007f5e9eb1b0a5:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
                        0x00007f5e9eb1b0ad:   jmp    0x00007f5e9eb1b090
                        0x00007f5e9eb1b0af:   lea    -0x8(%r10),%r11d
                        0x00007f5e9eb1b0b3:   cmp    $0x80000008,%r10d
                        0x00007f5e9eb1b0ba:   mov    $0x80000000,%ecx
                        0x00007f5e9eb1b0bf:   cmovl  %ecx,%r11d
                        0x00007f5e9eb1b0c3:   nopw   0x0(%rax,%rax,1)
                        0x00007f5e9eb1b0cc:   data16 data16 xchg %ax,%ax
   2.43%          ↗↗    0x00007f5e9eb1b0d0:   cmp    %r9d,%r11d
          ╭       ││    0x00007f5e9eb1b0d3:   jle    0x00007f5e9eb1b1a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
   1.60%  │       ││    0x00007f5e9eb1b0d9:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   1.17%  │       ││    0x00007f5e9eb1b0de:   xchg   %ax,%ax
   0.44%  │       ││    0x00007f5e9eb1b0e0:   test   %ecx,%ecx
          │╭      ││    0x00007f5e9eb1b0e2:   je     0x00007f5e9eb1b0f0           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.28%  ││      ││    0x00007f5e9eb1b0e8:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.21%  │↘      ││    0x00007f5e9eb1b0f0:   mov    0x14(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.49%  │       ││    0x00007f5e9eb1b0f5:   test   %ecx,%ecx
          │ ╭     ││    0x00007f5e9eb1b0f7:   je     0x00007f5e9eb1b105           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.39%  │ │     ││    0x00007f5e9eb1b0fd:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.07%  │ ↘     ││    0x00007f5e9eb1b105:   mov    0x18(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.81%  │       ││    0x00007f5e9eb1b10a:   test   %ecx,%ecx
          │  ╭    ││    0x00007f5e9eb1b10c:   je     0x00007f5e9eb1b11a           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.18%  │  │    ││    0x00007f5e9eb1b112:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.28%  │  ↘    ││    0x00007f5e9eb1b11a:   mov    0x1c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.99%  │       ││    0x00007f5e9eb1b11f:   nop
   0.09%  │       ││    0x00007f5e9eb1b120:   test   %ecx,%ecx
          │   ╭   ││    0x00007f5e9eb1b122:   je     0x00007f5e9eb1b130           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.11%  │   │   ││    0x00007f5e9eb1b128:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.26%  │   ↘   ││    0x00007f5e9eb1b130:   mov    0x20(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.80%  │       ││    0x00007f5e9eb1b135:   test   %ecx,%ecx
          │    ╭  ││    0x00007f5e9eb1b137:   je     0x00007f5e9eb1b145           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.22%  │    │  ││    0x00007f5e9eb1b13d:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.29%  │    ↘  ││    0x00007f5e9eb1b145:   mov    0x24(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.71%  │       ││    0x00007f5e9eb1b14a:   test   %ecx,%ecx
          │     ╭ ││    0x00007f5e9eb1b14c:   je     0x00007f5e9eb1b15a           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.25%  │     │ ││    0x00007f5e9eb1b152:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   7.38%  │     ↘ ││    0x00007f5e9eb1b15a:   mov    0x28(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.65%  │       ││    0x00007f5e9eb1b15f:   nop
   0.08%  │       ││    0x00007f5e9eb1b160:   test   %ecx,%ecx
          │      ╭││    0x00007f5e9eb1b162:   je     0x00007f5e9eb1b170           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.19%  │      │││    0x00007f5e9eb1b168:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   6.89%  │      ↘││    0x00007f5e9eb1b170:   mov    0x2c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   2.87%  │       ││    0x00007f5e9eb1b175:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
   0.01%  │       ││    0x00007f5e9eb1b179:   nopl   0x0(%rax)
   0.02%  │       ││    0x00007f5e9eb1b180:   test   %ecx,%ecx
          │       ╰│    0x00007f5e9eb1b182:   je     0x00007f5e9eb1b0d0           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
   2.27%  │        │    0x00007f5e9eb1b188:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
   4.65%  │        ╰    0x00007f5e9eb1b190:   jmp    0x00007f5e9eb1b0d0
          │             0x00007f5e9eb1b195:   data16 data16 nopw 0x0(%rax,%rax,1)
          ↘         ↗↗  0x00007f5e9eb1b1a0:   cmp    %r9d,%r10d
                    ││  0x00007f5e9eb1b1a3:   jle    0x00007f5e9eb1b1c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@9 (line 100)
                    ││  0x00007f5e9eb1b1a9:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@17 (line 101)
   0.00%            ││  0x00007f5e9eb1b1ae:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@33 (line 100)
                    ││  0x00007f5e9eb1b1b1:   test   %r11d,%r11d
                    ╰│  0x00007f5e9eb1b1b4:   je     0x00007f5e9eb1b1a0           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@18 (line 101)
                     │  0x00007f5e9eb1b1b6:   add    0xc(,%r11,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@31 (line 102)
                     ╰  0x00007f5e9eb1b1be:   jmp    0x00007f5e9eb1b1a0
                        0x00007f5e9eb1b1c0:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement@40 (line 105)
....................................................................................................
  98.06%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 733 
   0.64%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               kernel  [unknown] 
   0.75%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_not_npe_do_statement, version 3, compile id 733 
   1.58%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%         libc-2.31.so  [unknown] 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%       perf-43181.map  [unknown] 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.00%            libjvm.so  ImplicitExceptionTable::continuation_offset 
   0.00%       hsdis-amd64.so  putop 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.06%       jvmci, level 4
   1.58%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.03%          interpreter
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%       perf-43181.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 25.00% complete, ETA 00:11:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 235.883 us/op
# Warmup Iteration   2: 234.947 us/op
# Warmup Iteration   3: 232.333 us/op
# Warmup Iteration   4: 235.201 us/op
# Warmup Iteration   5: 235.332 us/op
Iteration   1: 234.909 us/op
Iteration   2: 235.104 us/op
Iteration   3: 234.576 us/op
Iteration   4: 235.205 us/op
Iteration   5: 235.234 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  235.006 ±(99.9%) 1.046 us/op [Average]
  (min, avg, max) = (234.576, 235.006, 235.234), stdev = 0.272
  CI (99.9%): [233.959, 236.052] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 190100 total address lines.
Perf output processed (skipped 58.494 seconds):
 Column 1: cycles (51224 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 734 

              0x00007f6efeb1ae5a:   lea    -0x8(%r10),%r11d
              0x00007f6efeb1ae5e:   cmp    $0x80000008,%r10d
              0x00007f6efeb1ae65:   mov    $0x80000000,%ecx
              0x00007f6efeb1ae6a:   cmovl  %ecx,%r11d
          ╭   0x00007f6efeb1ae6e:   jmp    0x00007f6efeb1af04
          │   0x00007f6efeb1ae73:   nopw   0x0(%rax,%rax,1)
          │   0x00007f6efeb1ae7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
          │↗  0x00007f6efeb1ae80:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   3.55%  ││  0x00007f6efeb1ae85:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││  0x00007f6efeb1ae88:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f6efeb1afaf
   8.65%  ││  0x00007f6efeb1ae8f:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││  0x00007f6efeb1ae94:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f6efeb1afcb
   3.63%  ││  0x00007f6efeb1ae9b:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.00%  ││  0x00007f6efeb1aea0:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007f6efeb1afe7
   6.08%  ││  0x00007f6efeb1aea7:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.89%  ││  0x00007f6efeb1aeac:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007f6efeb1b006
  19.02%  ││  0x00007f6efeb1aeb3:   mov    0x20(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   0.00%  ││  0x00007f6efeb1aeb8:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007f6efeb1b026
  12.16%  ││  0x00007f6efeb1aebf:   mov    0x24(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││  0x00007f6efeb1aec4:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007f6efeb1b046
   7.21%  ││  0x00007f6efeb1aecc:   mov    0x28(%rax,%r9,4),%r14d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
          ││  0x00007f6efeb1aed1:   mov    0xc(,%r14,8),%r14d           ; implicit exception: dispatches to 0x00007f6efeb1b066
   6.50%  ││  0x00007f6efeb1aed9:   mov    0x2c(%rax,%r9,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
          ││  0x00007f6efeb1aede:   xchg   %ax,%ax
   0.80%  ││  0x00007f6efeb1aee0:   test   %esi,%esi
          ││  0x00007f6efeb1aee2:   je     0x00007f6efeb1af77           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
          ││  0x00007f6efeb1aee8:   add    %ecx,%ebx
   4.34%  ││  0x00007f6efeb1aeea:   add    %edi,%ebx
          ││  0x00007f6efeb1aeec:   add    %edx,%ebx
   0.99%  ││  0x00007f6efeb1aeee:   add    %ebp,%ebx
          ││  0x00007f6efeb1aef0:   add    %r13d,%ebx
   4.65%  ││  0x00007f6efeb1aef3:   add    %r14d,%ebx
   0.73%  ││  0x00007f6efeb1aef6:   add    0xc(,%rsi,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
  16.19%  ││  0x00007f6efeb1aefd:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
          ││  0x00007f6efeb1af01:   mov    %ebx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@4 (line 112)
   1.68%  ↘│  0x00007f6efeb1af04:   cmp    %r9d,%r11d
           ╰  0x00007f6efeb1af07:   jg     0x00007f6efeb1ae80
              0x00007f6efeb1af0d:   jmp    0x00007f6efeb1af40
              0x00007f6efeb1af12:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f6efeb1af1c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
              0x00007f6efeb1af20:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
              0x00007f6efeb1af25:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop [0]=Oop }
                                                                        ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  97.09%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 734 
   1.69%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 734 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 734 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.70%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 734 
   2.57%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  defaultStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.00%          interpreter  getstatic  178 getstatic  
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%         libc-2.31.so  ptmalloc_init.part.0 
   0.00%            libjvm.so  printf_to_env 
   0.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_if_npe_continue_jmhTest::if_npe_continue_avgt_jmhStub, version 4, compile id 754 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%            libjvm.so  xmlStream::write 
   0.13%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.14%       jvmci, level 4
   2.57%               kernel
   0.12%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%          c1, level 3
   0.01%           ld-2.31.so
   0.00%  libjvmcicompiler.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 37.50% complete, ETA 00:09:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1211.917 us/op
# Warmup Iteration   2: 1207.426 us/op
# Warmup Iteration   3: 1207.670 us/op
# Warmup Iteration   4: 1207.708 us/op
# Warmup Iteration   5: 1207.600 us/op
Iteration   1: 1207.605 us/op
Iteration   2: 1207.222 us/op
Iteration   3: 1206.655 us/op
Iteration   4: 1206.408 us/op
Iteration   5: 1206.434 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue":
  1206.865 ±(99.9%) 2.033 us/op [Average]
  (min, avg, max) = (1206.408, 1206.865, 1207.605), stdev = 0.528
  CI (99.9%): [1204.832, 1208.898] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.if_npe_continue:·asm":
PrintAssembly processed: 189902 total address lines.
Perf output processed (skipped 58.634 seconds):
 Column 1: cycles (50586 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 735 

                        0x00007f735eb1d0a1:   test   %ecx,%ecx
                        0x00007f735eb1d0a3:   je     0x00007f735eb1d090           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
                        0x00007f735eb1d0a5:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
                        0x00007f735eb1d0ad:   jmp    0x00007f735eb1d090
                        0x00007f735eb1d0af:   lea    -0x8(%r10),%r11d
                        0x00007f735eb1d0b3:   cmp    $0x80000008,%r10d
                        0x00007f735eb1d0ba:   mov    $0x80000000,%ecx
                        0x00007f735eb1d0bf:   cmovl  %ecx,%r11d
   0.00%                0x00007f735eb1d0c3:   nopw   0x0(%rax,%rax,1)
                        0x00007f735eb1d0cc:   data16 data16 xchg %ax,%ax
   2.53%          ↗↗    0x00007f735eb1d0d0:   cmp    %r9d,%r11d
          ╭       ││    0x00007f735eb1d0d3:   jle    0x00007f735eb1d1a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
   1.62%  │       ││    0x00007f735eb1d0d9:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   1.17%  │       ││    0x00007f735eb1d0de:   xchg   %ax,%ax
   0.54%  │       ││    0x00007f735eb1d0e0:   test   %ecx,%ecx
          │╭      ││    0x00007f735eb1d0e2:   je     0x00007f735eb1d0f0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.25%  ││      ││    0x00007f735eb1d0e8:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││      ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.27%  │↘      ││    0x00007f735eb1d0f0:   mov    0x14(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.52%  │       ││    0x00007f735eb1d0f5:   test   %ecx,%ecx
          │ ╭     ││    0x00007f735eb1d0f7:   je     0x00007f735eb1d105           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.15%  │ │     ││    0x00007f735eb1d0fd:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.13%  │ ↘     ││    0x00007f735eb1d105:   mov    0x18(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.78%  │       ││    0x00007f735eb1d10a:   test   %ecx,%ecx
          │  ╭    ││    0x00007f735eb1d10c:   je     0x00007f735eb1d11a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.42%  │  │    ││    0x00007f735eb1d112:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │  │    ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.38%  │  ↘    ││    0x00007f735eb1d11a:   mov    0x1c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   3.12%  │       ││    0x00007f735eb1d11f:   nop
   0.08%  │       ││    0x00007f735eb1d120:   test   %ecx,%ecx
          │   ╭   ││    0x00007f735eb1d122:   je     0x00007f735eb1d130           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.11%  │   │   ││    0x00007f735eb1d128:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │   │   ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   6.96%  │   ↘   ││    0x00007f735eb1d130:   mov    0x20(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.66%  │       ││    0x00007f735eb1d135:   test   %ecx,%ecx
          │    ╭  ││    0x00007f735eb1d137:   je     0x00007f735eb1d145           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.17%  │    │  ││    0x00007f735eb1d13d:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │    │  ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.01%  │    ↘  ││    0x00007f735eb1d145:   mov    0x24(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.77%  │       ││    0x00007f735eb1d14a:   test   %ecx,%ecx
          │     ╭ ││    0x00007f735eb1d14c:   je     0x00007f735eb1d15a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.29%  │     │ ││    0x00007f735eb1d152:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   7.54%  │     ↘ ││    0x00007f735eb1d15a:   mov    0x28(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.61%  │       ││    0x00007f735eb1d15f:   nop
   0.09%  │       ││    0x00007f735eb1d160:   test   %ecx,%ecx
          │      ╭││    0x00007f735eb1d162:   je     0x00007f735eb1d170           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.16%  │      │││    0x00007f735eb1d168:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   6.73%  │      ↘││    0x00007f735eb1d170:   mov    0x2c(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   2.69%  │       ││    0x00007f735eb1d175:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │       ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
   0.01%  │       ││    0x00007f735eb1d179:   nopl   0x0(%rax)
   0.02%  │       ││    0x00007f735eb1d180:   test   %ecx,%ecx
          │       ╰│    0x00007f735eb1d182:   je     0x00007f735eb1d0d0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
   2.50%  │        │    0x00007f735eb1d188:   add    0xc(,%rcx,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
   4.64%  │        ╰    0x00007f735eb1d190:   jmp    0x00007f735eb1d0d0
          │             0x00007f735eb1d195:   data16 data16 nopw 0x0(%rax,%rax,1)
          ↘         ↗↗  0x00007f735eb1d1a0:   cmp    %r9d,%r10d
                    ││  0x00007f735eb1d1a3:   jle    0x00007f735eb1d1c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@9 (line 112)
   0.00%            ││  0x00007f735eb1d1a9:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@17 (line 113)
   0.00%            ││  0x00007f735eb1d1ae:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@36 (line 112)
                    ││  0x00007f735eb1d1b1:   test   %r11d,%r11d
                    ╰│  0x00007f735eb1d1b4:   je     0x00007f735eb1d1a0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@18 (line 113)
                     │  0x00007f735eb1d1b6:   add    0xc(,%r11,8),%r8d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@34 (line 116)
                     ╰  0x00007f735eb1d1be:   jmp    0x00007f735eb1d1a0
                        0x00007f735eb1d1c0:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue@43 (line 118)
....................................................................................................
  97.90%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 735 
   0.39%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
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
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.13%  <...other 394 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::if_npe_continue, version 3, compile id 735 
   1.75%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%               [vdso]  __vdso_clock_gettime 
   0.00%       hsdis-amd64.so  oappend 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%         libc-2.31.so  re_search_stub 
   0.00%         libc-2.31.so  __vfwprintf_internal 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.91%       jvmci, level 4
   1.75%               kernel
   0.13%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.02%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.00%       perf-43301.map
   0.00%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 50.00% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2814.142 us/op
# Warmup Iteration   2: 437.596 us/op
# Warmup Iteration   3: 247.857 us/op
# Warmup Iteration   4: 247.498 us/op
# Warmup Iteration   5: 247.475 us/op
Iteration   1: 247.301 us/op
Iteration   2: 247.841 us/op
Iteration   3: 247.453 us/op
Iteration   4: 247.773 us/op
Iteration   5: 247.641 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  247.602 ±(99.9%) 0.862 us/op [Average]
  (min, avg, max) = (247.301, 247.602, 247.841), stdev = 0.224
  CI (99.9%): [246.740, 248.464] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 215579 total address lines.
Perf output processed (skipped 58.773 seconds):
 Column 1: cycles (50420 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 847 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
              0x00007fb51ab2d6de:   xchg   %ax,%ax
              0x00007fb51ab2d6e0:   cmp    %r11d,%r10d
              0x00007fb51ab2d6e3:   ja     0x00007fb51ab2d6c0
              0x00007fb51ab2d6e5:   jmp    0x00007fb51ab2d7cc
              0x00007fb51ab2d6ea:   lea    -0x4(%r10),%r8d
              0x00007fb51ab2d6ee:   cmp    %r11d,%r8d
              0x00007fb51ab2d6f1:   jle    0x00007fb51ab2d745
              0x00007fb51ab2d6f7:   lea    -0x2(%r10),%r8d
          ╭   0x00007fb51ab2d6fb:   jmp    0x00007fb51ab2d738
   7.55%  │↗  0x00007fb51ab2d700:   mov    0x10(%rax,%r11,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   4.47%  ││  0x00007fb51ab2d705:   mov    %r9d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 992)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   4.99%  ││  0x00007fb51ab2d708:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fb51ab2d886
  23.62%  ││  0x00007fb51ab2d70f:   mov    %r11d,%ecx
   5.08%  ││  0x00007fb51ab2d712:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   3.01%  ││  0x00007fb51ab2d714:   cmp    %ecx,%r10d
          ││  0x00007fb51ab2d717:   jbe    0x00007fb51ab2d7e6           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   4.50%  ││  0x00007fb51ab2d71d:   movslq %r11d,%rcx
   7.98%  ││  0x00007fb51ab2d720:   mov    0x14(%rax,%rcx,4),%ecx       ; ImmutableOopMap {rax=Oop rcx=NarrowOop }
          ││                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.Spliterators$ArraySpliterator::forEachRemaining@49 (line 992)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   5.13%  ││  0x00007fb51ab2d724:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007fb51ab2d8a6
  19.69%  ││  0x00007fb51ab2d72b:   lea    0x2(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   3.49%  ││  0x00007fb51ab2d72f:   cmp    %r11d,%r8d
          ││  0x00007fb51ab2d732:   jle    0x00007fb51ab2d745           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 992)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   5.01%  ↘│  0x00007fb51ab2d738:   mov    %ebx,%r9d
   4.17%   │  0x00007fb51ab2d73b:   cmp    %r11d,%r10d
           ╰  0x00007fb51ab2d73e:   ja     0x00007fb51ab2d700
              0x00007fb51ab2d740:   jmp    0x00007fb51ab2d7fe           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
              0x00007fb51ab2d745:   cmp    %r11d,%r10d
....................................................................................................
  98.69%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 847 
   0.15%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.03%               kernel  [unknown] 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 847 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.66%  <...other 247 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 847 
   0.93%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  [unknown] 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  G1Analytics::predict_card_scan_time_ms 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%            libjvm.so  G1Policy::predict_region_non_copy_time_ms 
   0.00%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.71%       jvmci, level 4
   0.93%               kernel
   0.19%            libjvm.so
   0.07%         libc-2.31.so
   0.04%                     
   0.02%  libjvmcicompiler.so
   0.01%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.00%          interpreter
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 62.50% complete, ETA 00:05:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3383.297 us/op
# Warmup Iteration   2: 2577.676 us/op
# Warmup Iteration   3: 1239.900 us/op
# Warmup Iteration   4: 1239.844 us/op
# Warmup Iteration   5: 1239.892 us/op
Iteration   1: 1239.942 us/op
Iteration   2: 1239.795 us/op
Iteration   3: 1239.843 us/op
Iteration   4: 1239.752 us/op
Iteration   5: 1239.224 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe":
  1239.711 ±(99.9%) 1.083 us/op [Average]
  (min, avg, max) = (1239.224, 1239.711, 1239.942), stdev = 0.281
  CI (99.9%): [1238.628, 1240.794] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.stream_filter_npe:·asm":
PrintAssembly processed: 213973 total address lines.
Perf output processed (skipped 58.701 seconds):
 Column 1: cycles (50494 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 843 

                        0x00007f115ab2f64e:   lea    -0x10(%r10),%ecx
                        0x00007f115ab2f652:   cmp    $0x8,%r8d
                        0x00007f115ab2f656:   mov    $0x80000000,%r8d
                        0x00007f115ab2f65c:   cmovb  %r8d,%ecx
                        0x00007f115ab2f660:   cmp    %r11d,%ecx
          ╭             0x00007f115ab2f663:   jle    0x00007f115ab2f745
          │             0x00007f115ab2f669:   lea    -0x8(%r10),%r8d
          │╭            0x00007f115ab2f66d:   jmp    0x00007f115ab2f731
          ││            0x00007f115ab2f672:   data16 nopw 0x0(%rax,%rax,1)
          ││            0x00007f115ab2f67c:   data16 data16 xchg %ax,%ax
   2.46%  ││        ↗   0x00007f115ab2f680:   add    0xc(,%rcx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                             ; - java.lang.Integer::sum@2 (line 1819)
          ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          ││        │                                                             ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││        │                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││        │                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││        │                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││        │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        │                                                             ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   5.11%  ││        │   0x00007f115ab2f688:   nopl   0x0(%rax,%rax,1)             ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││        │                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││        │                                                             ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││        │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        │                                                             ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.45%  ││        │↗  0x00007f115ab2f690:   movslq %r11d,%rcx
   0.13%  ││        ││  0x00007f115ab2f693:   mov    0x14(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.88%  ││        ││  0x00007f115ab2f697:   test   %ebx,%ebx
          ││╭       ││  0x00007f115ab2f699:   je     0x00007f115ab2f6a7           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││       ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          │││       ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          │││       ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │││       ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││       ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │││       ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││       ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          │││       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.32%  │││       ││  0x00007f115ab2f69f:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││       ││                                                            ; - java.lang.Integer::sum@2 (line 1819)
          │││       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          │││       ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          │││       ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          │││       ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │││       ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          │││       ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │││       ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │││       ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │││       ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │││       ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          │││       ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   7.46%  ││↘       ││  0x00007f115ab2f6a7:   mov    0x18(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.92%  ││        ││  0x00007f115ab2f6ab:   test   %ebx,%ebx
          ││ ╭      ││  0x00007f115ab2f6ad:   je     0x00007f115ab2f6bb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │      ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││ │      ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││ │      ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││ │      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ │      ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││ │      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ │      ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││ │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.13%  ││ │      ││  0x00007f115ab2f6b3:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │      ││                                                            ; - java.lang.Integer::sum@2 (line 1819)
          ││ │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          ││ │      ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││ │      ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││ │      ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││ │      ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││ │      ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││ │      ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││ │      ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││ │      ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││ │      ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││ │      ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   7.07%  ││ ↘      ││  0x00007f115ab2f6bb:   mov    0x1c(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.47%  ││        ││  0x00007f115ab2f6bf:   nop
   0.09%  ││        ││  0x00007f115ab2f6c0:   test   %ebx,%ebx
          ││  ╭     ││  0x00007f115ab2f6c2:   je     0x00007f115ab2f6d0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││  │     ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││  │     ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││  │     ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││  │     ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││  │     ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││  │     ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││  │     ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││  │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.16%  ││  │     ││  0x00007f115ab2f6c8:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │     ││                                                            ; - java.lang.Integer::sum@2 (line 1819)
          ││  │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          ││  │     ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││  │     ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││  │     ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││  │     ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││  │     ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││  │     ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││  │     ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││  │     ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││  │     ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││  │     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   7.02%  ││  ↘     ││  0x00007f115ab2f6d0:   mov    0x20(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.60%  ││        ││  0x00007f115ab2f6d4:   test   %ebx,%ebx
          ││   ╭    ││  0x00007f115ab2f6d6:   je     0x00007f115ab2f6e4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││   │    ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││   │    ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││   │    ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││   │    ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │    ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││   │    ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │    ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││   │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.11%  ││   │    ││  0x00007f115ab2f6dc:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││   │    ││                                                            ; - java.lang.Integer::sum@2 (line 1819)
          ││   │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          ││   │    ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││   │    ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││   │    ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││   │    ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││   │    ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││   │    ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │    ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││   │    ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │    ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││   │    ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   7.25%  ││   ↘    ││  0x00007f115ab2f6e4:   mov    0x24(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.45%  ││        ││  0x00007f115ab2f6e8:   test   %ebx,%ebx
          ││    ╭   ││  0x00007f115ab2f6ea:   je     0x00007f115ab2f6f8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││    │   ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││    │   ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││    │   ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││    │   ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││    │   ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││    │   ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││    │   ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.37%  ││    │   ││  0x00007f115ab2f6f0:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││    │   ││                                                            ; - java.lang.Integer::sum@2 (line 1819)
          ││    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          ││    │   ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││    │   ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││    │   ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││    │   ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││    │   ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││    │   ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││    │   ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││    │   ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││    │   ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││    │   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   7.39%  ││    ↘   ││  0x00007f115ab2f6f8:   mov    0x28(%rax,%rcx,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.43%  ││        ││  0x00007f115ab2f6fc:   nopl   0x0(%rax)
   0.10%  ││        ││  0x00007f115ab2f700:   test   %ebx,%ebx
          ││     ╭  ││  0x00007f115ab2f702:   je     0x00007f115ab2f710           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││     │  ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││     │  ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││     │  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││     │  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││     │  ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││     │  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││     │  ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.18%  ││     │  ││  0x00007f115ab2f708:   add    0xc(,%rbx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││     │  ││                                                            ; - java.lang.Integer::sum@2 (line 1819)
          ││     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          ││     │  ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││     │  ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││     │  ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││     │  ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││     │  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││     │  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││     │  ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││     │  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││     │  ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   7.19%  ││     ↘  ││  0x00007f115ab2f710:   mov    0x2c(%rax,%rcx,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.47%  ││        ││  0x00007f115ab2f714:   test   %ecx,%ecx
          ││      ╭ ││  0x00007f115ab2f716:   je     0x00007f115ab2f724           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││      │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││      │ ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││      │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││      │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││      │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││      │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││      │ ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   2.20%  ││      │ ││  0x00007f115ab2f71c:   add    0xc(,%rcx,8),%r9d            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││      │ ││                                                            ; - java.lang.Integer::sum@2 (line 1819)
          ││      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
          ││      │ ││                                                            ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
          ││      │ ││                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
          ││      │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          ││      │ ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          ││      │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││      │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││      │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││      │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││      │ ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││      │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   6.97%  ││      ↘ ││  0x00007f115ab2f724:   lea    0x8(%r11),%r11d              ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││        ││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@58 (line 992)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││        ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││        ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││        ││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││        ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.42%  ││        ││  0x00007f115ab2f728:   cmp    %r11d,%r8d
          ││       ╭││  0x00007f115ab2f72b:   jle    0x00007f115ab2f745           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││       │││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@64 (line 992)
          ││       │││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││       │││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││       │││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││       │││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││       │││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          ││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   0.63%  │↘       │││  0x00007f115ab2f731:   mov    0x10(%rax,%r11,4),%ecx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │        │││                                                            ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@52 (line 992)
          │        │││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │        │││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │        │││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │        │││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │        │││                                                            ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          │        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
   1.30%  │        │││  0x00007f115ab2f736:   test   %ecx,%ecx
          │        │╰│  0x00007f115ab2f738:   jne    0x00007f115ab2f680
   2.56%  │        │ │  0x00007f115ab2f73e:   xchg   %ax,%ax
   0.27%  │        │ ╰  0x00007f115ab2f740:   jmp    0x00007f115ab2f690           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          │        │                                                              ; - java.util.Spliterators$ArraySpliterator::forEachRemaining@53 (line 992)
          │        │                                                              ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │        │                                                              ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │        │                                                              ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │        │                                                              ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │        │                                                              ; - java.util.stream.ReferencePipeline::reduce@7 (line 657)
          │        │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@36 (line 127)
          ↘        ↘    0x00007f115ab2f745:   cmp    %r11d,%r10d
                        0x00007f115ab2f748:   jg     0x00007f115ab2f798
   0.00%                0x00007f115ab2f74e:   movslq %r9d,%rax                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe@47 (line 127)
                        0x00007f115ab2f751:   mov    0x10(%rsp),%rbp
   0.00%                0x00007f115ab2f756:   add    $0x18,%rsp
                        0x00007f115ab2f75a:   mov    0x348(%r15),%rcx
                        0x00007f115ab2f761:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%                0x00007f115ab2f763:   ret    
                        0x00007f115ab2f764:   data16 data16 nopw 0x0(%rax,%rax,1)
                        0x00007f115ab2f76f:   data16 data16 xchg %ax,%ax
                        0x00007f115ab2f773:   nopw   0x0(%rax,%rax,1)
                        0x00007f115ab2f77c:   data16 data16 xchg %ax,%ax
                        0x00007f115ab2f780:   add    0xc(,%r8,8),%r9d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - java.lang.Integer::sum@2 (line 1819)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark$$Lambda$53/0x0000000800c27080::apply@14
                                                                                  ; - java.util.stream.ReduceOps$1ReducingSink::accept@10 (line 80)
                                                                                  ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                                  ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
....................................................................................................
  98.53%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 843 
   0.12%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  AbsSeq::dsd 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.80%  <...other 277 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::stream_filter_npe, version 2, compile id 843 
   0.96%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.04%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.02%           libjvm.so  AbsSeq::dsd 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%      hsdis-amd64.so  hsdis_read_memory_func 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.17%  <...other 68 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  98.54%      jvmci, level 4
   0.96%              kernel
   0.26%           libjvm.so
   0.08%                    
   0.08%        libc-2.31.so
   0.04%         interpreter
   0.03%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%    Unknown, level 0
   0.00%      perf-43419.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 0, size = 262144)

# Run progress: 75.00% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 229.186 us/op
# Warmup Iteration   2: 228.497 us/op
# Warmup Iteration   3: 228.018 us/op
# Warmup Iteration   4: 229.021 us/op
# Warmup Iteration   5: 229.057 us/op
Iteration   1: 229.041 us/op
Iteration   2: 228.976 us/op
Iteration   3: 228.270 us/op
Iteration   4: 235.155 us/op
Iteration   5: 230.676 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  230.424 ±(99.9%) 10.737 us/op [Average]
  (min, avg, max) = (228.270, 230.424, 235.155), stdev = 2.788
  CI (99.9%): [219.687, 241.160] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 192489 total address lines.
Perf output processed (skipped 58.659 seconds):
 Column 1: cycles (50759 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 737 

              0x00007f6a6ab1ac5a:   lea    -0x8(%r10),%r11d
              0x00007f6a6ab1ac5e:   cmp    $0x80000008,%r10d
              0x00007f6a6ab1ac65:   mov    $0x80000000,%ecx
              0x00007f6a6ab1ac6a:   cmovl  %ecx,%r11d
          ╭   0x00007f6a6ab1ac6e:   jmp    0x00007f6a6ab1ad04
          │   0x00007f6a6ab1ac73:   nopw   0x0(%rax,%rax,1)
          │   0x00007f6a6ab1ac7c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
          │↗  0x00007f6a6ab1ac80:   mov    0x10(%rax,%r9,4),%ecx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
   3.52%  ││  0x00007f6a6ab1ac85:   mov    %r8d,%ebx                    ; ImmutableOopMap {rax=Oop rcx=NarrowOop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007f6a6ab1ac88:   add    0xc(,%rcx,8),%ebx            ; implicit exception: dispatches to 0x00007f6a6ab1adab
   9.64%  ││  0x00007f6a6ab1ac8f:   mov    0x14(%rax,%r9,4),%ecx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.00%  ││  0x00007f6a6ab1ac94:   mov    0xc(,%rcx,8),%ecx            ; implicit exception: dispatches to 0x00007f6a6ab1adc7
   2.86%  ││  0x00007f6a6ab1ac9b:   mov    0x18(%rax,%r9,4),%edi        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007f6a6ab1aca0:   mov    0xc(,%rdi,8),%edi            ; implicit exception: dispatches to 0x00007f6a6ab1ade6
   6.50%  ││  0x00007f6a6ab1aca7:   mov    0x1c(%rax,%r9,4),%edx        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.62%  ││  0x00007f6a6ab1acac:   mov    0xc(,%rdx,8),%edx            ; implicit exception: dispatches to 0x00007f6a6ab1ae06
  18.37%  ││  0x00007f6a6ab1acb3:   mov    0x20(%rax,%r9,4),%ebp        ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   0.00%  ││  0x00007f6a6ab1acb8:   mov    0xc(,%rbp,8),%ebp            ; implicit exception: dispatches to 0x00007f6a6ab1ae26
  13.27%  ││  0x00007f6a6ab1acbf:   mov    0x24(%rax,%r9,4),%r13d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007f6a6ab1acc4:   mov    0xc(,%r13,8),%r13d           ; implicit exception: dispatches to 0x00007f6a6ab1ae46
   6.73%  ││  0x00007f6a6ab1accc:   mov    0x28(%rax,%r9,4),%r14d       ; ImmutableOopMap {rax=Oop [0]=Oop }
          ││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
          ││  0x00007f6a6ab1acd1:   mov    0xc(,%r14,8),%r14d           ; implicit exception: dispatches to 0x00007f6a6ab1ae66
   7.45%  ││  0x00007f6a6ab1acd9:   mov    0x2c(%rax,%r9,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
          ││  0x00007f6a6ab1acde:   xchg   %ax,%ax
   0.73%  ││  0x00007f6a6ab1ace0:   test   %esi,%esi
          ││  0x00007f6a6ab1ace2:   je     0x00007f6a6ab1ad77           ;*getfield x {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@19 (line 88)
          ││  0x00007f6a6ab1ace8:   add    %ecx,%ebx
   4.61%  ││  0x00007f6a6ab1acea:   add    %edi,%ebx
          ││  0x00007f6a6ab1acec:   add    %edx,%ebx
   0.87%  ││  0x00007f6a6ab1acee:   add    %ebp,%ebx
          ││  0x00007f6a6ab1acf0:   add    %r13d,%ebx
   4.85%  ││  0x00007f6a6ab1acf3:   add    %r14d,%ebx
   0.50%  ││  0x00007f6a6ab1acf6:   add    0xc(,%rsi,8),%ebx            ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@22 (line 88)
  15.56%  ││  0x00007f6a6ab1acfd:   lea    0x8(%r9),%r9d                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@33 (line 86)
          ││  0x00007f6a6ab1ad01:   mov    %ebx,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@4 (line 86)
   1.91%  ↘│  0x00007f6a6ab1ad04:   cmp    %r9d,%r11d
           ╰  0x00007f6a6ab1ad07:   jg     0x00007f6a6ab1ac80
              0x00007f6a6ab1ad0d:   jmp    0x00007f6a6ab1ad40
              0x00007f6a6ab1ad12:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f6a6ab1ad1c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@9 (line 86)
              0x00007f6a6ab1ad20:   mov    0x10(%rax,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch@18 (line 88)
              0x00007f6a6ab1ad25:   mov    %r8d,%ecx                    ; ImmutableOopMap {rax=Oop r11=NarrowOop [0]=Oop }
                                                                        ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  98.00%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 737 
   0.74%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 737 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.76%  <...other 286 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark::try_npe_catch, version 3, compile id 737 
   1.62%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  defaultStream::write 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  stringStream::write 
   0.00%       hsdis-amd64.so  putop 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.00%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.NpeControlFlowBenchmark_try_npe_catch_jmhTest::try_npe_catch_avgt_jmhStub, version 4, compile id 759 
   0.16%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.03%       jvmci, level 4
   1.62%               kernel
   0.16%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.00%           ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch
# Parameters: (nullThreshold = 16, size = 262144)

# Run progress: 87.50% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1990258.241 us/op
# Warmup Iteration   2: 1983941.391 us/op
# Warmup Iteration   3: 1984940.669 us/op
# Warmup Iteration   4: 1984330.187 us/op
# Warmup Iteration   5: 1985846.049 us/op
Iteration   1: 1985617.257 us/op
Iteration   2: 1986964.056 us/op
Iteration   3: 1982926.067 us/op
Iteration   4: 1983413.244 us/op
Iteration   5: 1983369.421 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch":
  1984458.009 ±(99.9%) 6737.948 us/op [Average]
  (min, avg, max) = (1982926.067, 1984458.009, 1986964.056), stdev = 1749.824
  CI (99.9%): [1977720.061, 1991195.957] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.NpeControlFlowBenchmark.try_npe_catch:·asm":
PrintAssembly processed: 192875 total address lines.
Perf output processed (skipped 68.270 seconds):
 Column 1: cycles (60118 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   6.71%            libjvm.so  stringStream::write 
   6.31%         libc-2.31.so  _int_malloc 
   3.98%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.60%                       <unknown> 
   3.45%            libjvm.so  CodeBlob::is_compiled 
   3.03%            libjvm.so  CodeHeap::find_blob_unsafe 
   3.02%         libc-2.31.so  __strncat_ssse3 
   2.85%            libjvm.so  CodeCache::find_blob 
   2.71%                       <unknown> 
   2.68%            libjvm.so  frame::sender 
   2.68%         libc-2.31.so  ptmalloc_init.part.0 
   2.57%         libc-2.31.so  _int_realloc 
   2.51%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   2.45%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.37%                       <unknown> 
   2.10%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   2.08%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   1.68%                       <unknown> 
   1.58%         libc-2.31.so  __strncat_ssse3 
   1.37%            libjvm.so  frame::sender_for_interpreter_frame 
  40.27%  <...other 605 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  11.85%                       <unknown> 
   9.01%         libc-2.31.so  __strncat_ssse3 
   6.72%            libjvm.so  stringStream::write 
   6.48%            libjvm.so  java_lang_Throwable::fill_in_stack_trace 
   6.31%         libc-2.31.so  _int_malloc 
   4.46%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   3.45%            libjvm.so  CodeBlob::is_compiled 
   3.27%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   3.03%            libjvm.so  CodeHeap::find_blob_unsafe 
   2.85%            libjvm.so  CodeCache::find_blob 
   2.83%            libjvm.so  frame::sender 
   2.70%         libc-2.31.so  ptmalloc_init.part.0 
   2.57%         libc-2.31.so  _int_realloc 
   2.53%            libjvm.so  frame::sender_for_interpreter_frame 
   2.08%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<1335398ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 1335398ul>::oop_access_barrier 
   2.01%            libjvm.so  outputStream::print 
   1.26%         libc-2.31.so  _nl_parse_alt_digit 
   1.23%         libc-2.31.so  _nl_cleanup_time 
   1.13%            libjvm.so  frame::sender_for_compiled_frame 
   1.02%               kernel  [unknown] 
  23.22%  <...other 213 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  54.75%            libjvm.so
  30.42%         libc-2.31.so
  11.85%                     
   1.02%               kernel
   0.57%       jvmci, level 4
   0.53%           ld-2.31.so
   0.28%   libpthread-2.31.so
   0.26%               [vdso]
   0.14%         runtime stub
   0.11%     Unknown, level 0
   0.05%       perf-43540.map
   0.02%           libjava.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          interpreter
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:15:11

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

Benchmark                                             (nullThreshold)  (size)  Mode  Cnt        Score      Error  Units
NpeControlFlowBenchmark.if_not_npe_do_statement                     0  262144  avgt    5      235.206 ±    0.490  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm                0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_not_npe_do_statement                    16  262144  avgt    5     1207.225 ±    1.131  us/op
NpeControlFlowBenchmark.if_not_npe_do_statement:·asm               16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                             0  262144  avgt    5      235.006 ±    1.046  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                        0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.if_npe_continue                            16  262144  avgt    5     1206.865 ±    2.033  us/op
NpeControlFlowBenchmark.if_npe_continue:·asm                       16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                           0  262144  avgt    5      247.602 ±    0.862  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                      0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.stream_filter_npe                          16  262144  avgt    5     1239.711 ±    1.083  us/op
NpeControlFlowBenchmark.stream_filter_npe:·asm                     16  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                               0  262144  avgt    5      230.424 ±   10.737  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                          0  262144  avgt               NaN               ---
NpeControlFlowBenchmark.try_npe_catch                              16  262144  avgt    5  1984458.009 ± 6737.948  us/op
NpeControlFlowBenchmark.try_npe_catch:·asm                         16  262144  avgt               NaN               ---
