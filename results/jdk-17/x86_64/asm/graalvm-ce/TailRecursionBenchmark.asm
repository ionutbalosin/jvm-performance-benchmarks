# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative
# Parameters: (n = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 331.761 us/op
# Warmup Iteration   2: 329.774 us/op
# Warmup Iteration   3: 329.548 us/op
# Warmup Iteration   4: 329.569 us/op
# Warmup Iteration   5: 329.522 us/op
Iteration   1: 329.508 us/op
Iteration   2: 329.516 us/op
Iteration   3: 329.516 us/op
Iteration   4: 329.498 us/op
Iteration   5: 329.524 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative":
  329.512 ±(99.9%) 0.039 us/op [Average]
  (min, avg, max) = (329.498, 329.512, 329.524), stdev = 0.010
  CI (99.9%): [329.474, 329.551] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative:·asm":
PrintAssembly processed: 193176 total address lines.
Perf output processed (skipped 58.550 seconds):
 Column 1: cycles (50600 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 737 

               0x00007faf72ffb677:   mov    %edx,%r8d
               0x00007faf72ffb67a:   mov    %rcx,%r11
               0x00007faf72ffb67d:   data16 xchg %ax,%ax
          ╭    0x00007faf72ffb680:   jmp    0x00007faf72ffb6d4           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@0 (line 94)
          │    0x00007faf72ffb685:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007faf72ffb690:   data16 data16 xchg %ax,%ax
          │    0x00007faf72ffb694:   nopl   0x0(%rax,%rax,1)
          │    0x00007faf72ffb69c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 94)
   7.37%  │↗   0x00007faf72ffb6a0:   mov    %r8d,%r9d
   7.57%  ││   0x00007faf72ffb6a3:   sar    $0x1f,%r9d
   7.59%  ││   0x00007faf72ffb6a7:   shr    $0x16,%r9d
   7.68%  ││   0x00007faf72ffb6ab:   add    %r8d,%r9d
   7.59%  ││   0x00007faf72ffb6ae:   and    $0xfffffc00,%r9d
   7.33%  ││   0x00007faf72ffb6b5:   mov    %r8d,%ecx
   7.67%  ││   0x00007faf72ffb6b8:   sub    %r9d,%ecx
   7.59%  ││   0x00007faf72ffb6bb:   nopl   0x0(%rax,%rax,1)
   7.54%  ││   0x00007faf72ffb6c0:   cmp    %ecx,%r10d
          ││   0x00007faf72ffb6c3:   jbe    0x00007faf72ffb710           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@16 (line 97)
   7.52%  ││   0x00007faf72ffb6c9:   movslq 0x10(%rax,%rcx,4),%r9        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@17 (line 97)
   7.67%  ││   0x00007faf72ffb6ce:   add    %r9,%r11                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 97)
   7.70%  ││   0x00007faf72ffb6d1:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 98)
   7.49%  ↘│   0x00007faf72ffb6d4:   test   %r8d,%r8d
           ╰   0x00007faf72ffb6d7:   jne    0x00007faf72ffb6a0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 94)
            ↗  0x00007faf72ffb6d9:   mov    %r11,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@5 (line 95)
            │  0x00007faf72ffb6dc:   mov    0x10(%rsp),%rbp
   0.00%    │  0x00007faf72ffb6e1:   add    $0x18,%rsp
            │  0x00007faf72ffb6e5:   mov    0x348(%r15),%rcx
            │  0x00007faf72ffb6ec:   test   %eax,(%rcx)                  ;   {poll_return}
            │  0x00007faf72ffb6ee:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 94)
            │  0x00007faf72ffb6ef:   mov    %rcx,%r11
            ╰  0x00007faf72ffb6f2:   jmp    0x00007faf72ffb6d9
               0x00007faf72ffb6f4:   movl   $0xffffffe5,0x370(%r15)      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@16 (line 97)
               0x00007faf72ffb6ff:   movq   $0x0,0x378(%r15)
               0x00007faf72ffb70a:   call   0x00007faf6b50527a           ; ImmutableOopMap {rsi=Oop }
....................................................................................................
  98.33%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 737 
   0.42%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  fileStream::write 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.77%  <...other 267 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 737 
   1.33%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.02%            libjvm.so  fileStream::write 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%       hsdis-amd64.so  hsdis_read_memory_func 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%            libjvm.so  xmlTextStream::write 
   0.01%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TailRecursionBenchmark_iterative_jmhTest::iterative_avgt_jmhStub, version 4, compile id 771 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  G1ServiceThread::schedule 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%       jvmci, level 4
   1.33%               kernel
   0.12%            libjvm.so
   0.06%         libc-2.31.so
   0.06%                     
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%  libjvmcicompiler.so
   0.00%           libjava.so
   0.00%               [vdso]
   0.00%       perf-36041.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 855.951 us/op
# Warmup Iteration   2: 856.269 us/op
# Warmup Iteration   3: 857.972 us/op
# Warmup Iteration   4: 856.404 us/op
# Warmup Iteration   5: 853.878 us/op
Iteration   1: 858.559 us/op
Iteration   2: 855.104 us/op
Iteration   3: 855.451 us/op
Iteration   4: 857.073 us/op
Iteration   5: 855.900 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive":
  856.417 ±(99.9%) 5.425 us/op [Average]
  (min, avg, max) = (855.104, 856.417, 858.559), stdev = 1.409
  CI (99.9%): [850.992, 861.843] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive:·asm":
PrintAssembly processed: 193495 total address lines.
Perf output processed (skipped 58.556 seconds):
 Column 1: cycles (51146 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 732 

              #           [sp+0x20]  (sp of caller)
              0x00007f73feffb920:   mov    0x8(%rsi),%r10d
              0x00007f73feffb924:   movabs $0x800000000,%r12
              0x00007f73feffb92e:   add    %r12,%r10
              0x00007f73feffb931:   xor    %r12,%r12
              0x00007f73feffb934:   cmp    %r10,%rax
              0x00007f73feffb937:   jne    0x00007f73f74ff780           ;   {runtime_call ic_miss_stub}
              0x00007f73feffb93d:   nop
              0x00007f73feffb93e:   xchg   %ax,%ax
            [Verified Entry Point]
   0.78%   ↗  0x00007f73feffb940:   mov    %eax,-0x14000(%rsp)
   0.83%   │  0x00007f73feffb947:   sub    $0x18,%rsp
   0.32%   │  0x00007f73feffb94b:   mov    %rbp,0x10(%rsp)
   0.44%   │  0x00007f73feffb950:   test   %edx,%edx
          ╭│  0x00007f73feffb952:   je     0x00007f73feffbac4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
   0.44%  ││  0x00007f73feffb958:   mov    0x14(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          ││                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@0 (line 85)
   0.43%  ││  0x00007f73feffb95c:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f73feffbb0f
   0.38%  ││  0x00007f73feffb964:   mov    %edx,%r8d
   0.41%  ││  0x00007f73feffb967:   sar    $0x1f,%r8d
   0.44%  ││  0x00007f73feffb96b:   shr    $0x16,%r8d
   0.43%  ││  0x00007f73feffb96f:   add    %edx,%r8d
   0.38%  ││  0x00007f73feffb972:   and    $0xfffffc00,%r8d
   0.40%  ││  0x00007f73feffb979:   mov    %edx,%r9d
   0.40%  ││  0x00007f73feffb97c:   sub    %r8d,%r9d
   0.42%  ││  0x00007f73feffb97f:   nop
   0.35%  ││  0x00007f73feffb980:   cmp    %r9d,%r11d
          ││  0x00007f73feffb983:   jbe    0x00007f73feffbaf3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 88)
   0.45%  ││  0x00007f73feffb989:   shl    $0x3,%r10                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@12 (line 88)
   0.38%  ││  0x00007f73feffb98d:   movslq 0x10(%r10,%r9,4),%r8         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 88)
   0.44%  ││  0x00007f73feffb992:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
   0.37%  ││  0x00007f73feffb995:   cmp    $0x1,%edx
          ││  0x00007f73feffb998:   je     0x00007f73feffbada           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.46%  ││  0x00007f73feffb99e:   mov    %edx,%r9d
   0.35%  ││  0x00007f73feffb9a1:   dec    %r9d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
   0.43%  ││  0x00007f73feffb9a4:   mov    %r9d,%ebx
   0.37%  ││  0x00007f73feffb9a7:   sar    $0x1f,%ebx
   0.42%  ││  0x00007f73feffb9aa:   shr    $0x16,%ebx
   0.36%  ││  0x00007f73feffb9ad:   add    %r9d,%ebx
   0.46%  ││  0x00007f73feffb9b0:   and    $0xfffffc00,%ebx
   0.33%  ││  0x00007f73feffb9b6:   sub    %ebx,%r9d
   0.45%  ││  0x00007f73feffb9b9:   nopl   0x0(%rax)
   0.39%  ││  0x00007f73feffb9c0:   cmp    %r9d,%r11d
          ││  0x00007f73feffb9c3:   jbe    0x00007f73feffbaf3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.43%  ││  0x00007f73feffb9c9:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.42%  ││  0x00007f73feffb9ce:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.39%  ││  0x00007f73feffb9d1:   cmp    $0x2,%edx
          ││  0x00007f73feffb9d4:   je     0x00007f73feffbadf           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.37%  ││  0x00007f73feffb9da:   lea    -0x2(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.45%  ││  0x00007f73feffb9de:   mov    %r9d,%ebx
   0.38%  ││  0x00007f73feffb9e1:   sar    $0x1f,%ebx
   0.44%  ││  0x00007f73feffb9e4:   shr    $0x16,%ebx
   0.38%  ││  0x00007f73feffb9e7:   add    %r9d,%ebx
   0.46%  ││  0x00007f73feffb9ea:   and    $0xfffffc00,%ebx
   0.39%  ││  0x00007f73feffb9f0:   sub    %ebx,%r9d
   0.44%  ││  0x00007f73feffb9f3:   cmp    %r9d,%r11d
          ││  0x00007f73feffb9f6:   jbe    0x00007f73feffbaf3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.42%  ││  0x00007f73feffb9fc:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.46%  ││  0x00007f73feffba01:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.43%  ││  0x00007f73feffba04:   cmp    $0x3,%edx
          ││  0x00007f73feffba07:   je     0x00007f73feffbae4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.41%  ││  0x00007f73feffba0d:   lea    -0x3(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.34%  ││  0x00007f73feffba11:   mov    %r9d,%ebx
   0.46%  ││  0x00007f73feffba14:   sar    $0x1f,%ebx
   0.35%  ││  0x00007f73feffba17:   shr    $0x16,%ebx
   0.45%  ││  0x00007f73feffba1a:   add    %r9d,%ebx
   0.40%  ││  0x00007f73feffba1d:   and    $0xfffffc00,%ebx
   0.48%  ││  0x00007f73feffba23:   sub    %ebx,%r9d
   0.34%  ││  0x00007f73feffba26:   cmp    %r9d,%r11d
          ││  0x00007f73feffba29:   jbe    0x00007f73feffbaf3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.42%  ││  0x00007f73feffba2f:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.40%  ││  0x00007f73feffba34:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.48%  ││  0x00007f73feffba37:   cmp    $0x4,%edx
          ││  0x00007f73feffba3a:   je     0x00007f73feffbae9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.39%  ││  0x00007f73feffba40:   lea    -0x4(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.41%  ││  0x00007f73feffba44:   mov    %r9d,%ebx
   0.42%  ││  0x00007f73feffba47:   sar    $0x1f,%ebx
   0.43%  ││  0x00007f73feffba4a:   shr    $0x16,%ebx
   0.46%  ││  0x00007f73feffba4d:   add    %r9d,%ebx
   0.44%  ││  0x00007f73feffba50:   and    $0xfffffc00,%ebx
   0.36%  ││  0x00007f73feffba56:   sub    %ebx,%r9d
   0.49%  ││  0x00007f73feffba59:   nopl   0x0(%rax)
   0.40%  ││  0x00007f73feffba60:   cmp    %r9d,%r11d
          ││  0x00007f73feffba63:   jbe    0x00007f73feffbaf3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.39%  ││  0x00007f73feffba69:   movslq 0x10(%r10,%r9,4),%r9         ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.38%  ││  0x00007f73feffba6e:   add    %r9,%r8                      ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.44%  ││  0x00007f73feffba71:   cmp    $0x5,%edx
          ││  0x00007f73feffba74:   je     0x00007f73feffbaee           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.38%  ││  0x00007f73feffba7a:   lea    -0x5(%rdx),%r9d              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.44%  ││  0x00007f73feffba7e:   mov    %r9d,%ebx
   0.37%  ││  0x00007f73feffba81:   sar    $0x1f,%ebx
   0.42%  ││  0x00007f73feffba84:   shr    $0x16,%ebx
   0.38%  ││  0x00007f73feffba87:   add    %r9d,%ebx
   0.47%  ││  0x00007f73feffba8a:   and    $0xfffffc00,%ebx
   0.38%  ││  0x00007f73feffba90:   sub    %ebx,%r9d
   0.42%  ││  0x00007f73feffba93:   cmp    %r9d,%r11d
          ││  0x00007f73feffba96:   jbe    0x00007f73feffbaf3           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.39%  ││  0x00007f73feffba9c:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.42%  ││  0x00007f73feffba9f:   movslq 0x10(%r10,%r9,4),%rcx        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@21 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.39%  ││  0x00007f73feffbaa4:   add    %rcx,%r8                     ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.44%  ││  0x00007f73feffbaa7:   mov    %r8,%rcx                     ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.38%  ││  0x00007f73feffbaaa:   nop
   0.47%  │╰  0x00007f73feffbaab:   call   0x00007f73feffb940           ; ImmutableOopMap {}
          │                                                             ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │                                                             ;   {optimized virtual_call}
  27.31%  │   0x00007f73feffbab0:   nop
   1.65%  │   0x00007f73feffbab1:   mov    0x10(%rsp),%rbp
  28.79%  │   0x00007f73feffbab6:   add    $0x18,%rsp
   0.25%  │   0x00007f73feffbaba:   mov    0x348(%r15),%rcx
   0.01%  │   0x00007f73feffbac1:   test   %eax,(%rcx)                  ;   {poll_return}
   5.38%  │   0x00007f73feffbac3:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ↘   0x00007f73feffbac4:   mov    %rcx,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@5 (line 86)
              0x00007f73feffbac7:   mov    0x10(%rsp),%rbp
              0x00007f73feffbacc:   add    $0x18,%rsp
              0x00007f73feffbad0:   mov    0x348(%r15),%rcx
              0x00007f73feffbad7:   test   %eax,(%rcx)                  ;   {poll_return}
              0x00007f73feffbad9:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
....................................................................................................
  97.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 732 
   1.20%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.07%  <...other 363 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 2, compile id 732 
   2.47%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.03%         libc-2.31.so  __strxfrm_l 
   0.03%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  __strcat_ssse3 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%          c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.TailRecursionBenchmark_tail_recursive_jmhTest::tail_recursive_avgt_jmhStub, version 2, compile id 758 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.22%  <...other 97 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.05%       jvmci, level 4
   2.47%               kernel
   0.16%            libjvm.so
   0.11%         libc-2.31.so
   0.07%                     
   0.06%  libjvmcicompiler.so
   0.03%   libpthread-2.31.so
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.01%           ld-2.31.so
   0.01%          c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:42

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

Benchmark                                      (n)  Mode  Cnt    Score   Error  Units
TailRecursionBenchmark.iterative            262144  avgt    5  329.512 ± 0.039  us/op
TailRecursionBenchmark.iterative:·asm       262144  avgt           NaN            ---
TailRecursionBenchmark.tail_recursive       262144  avgt    5  856.417 ± 5.425  us/op
TailRecursionBenchmark.tail_recursive:·asm  262144  avgt           NaN            ---
