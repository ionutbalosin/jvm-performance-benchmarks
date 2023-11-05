# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative
# Parameters: (n = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 261.763 us/op
# Warmup Iteration   2: 260.681 us/op
# Warmup Iteration   3: 260.514 us/op
# Warmup Iteration   4: 260.472 us/op
# Warmup Iteration   5: 260.478 us/op
Iteration   1: 260.484 us/op
Iteration   2: 260.472 us/op
Iteration   3: 260.470 us/op
Iteration   4: 260.493 us/op
Iteration   5: 260.494 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative":
  260.483 ±(99.9%) 0.043 us/op [Average]
  (min, avg, max) = (260.470, 260.483, 260.494), stdev = 0.011
  CI (99.9%): [260.439, 260.526] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative:·asm":
PrintAssembly processed: 191141 total address lines.
Perf output processed (skipped 58.540 seconds):
 Column 1: cycles (50903 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 4, compile id 719 

               0x00007f8e4eb17917:   vmovdqa -0xcf(%rip),%xmm6        # 0x00007f8e4eb17850
                                                                         ;   {section_word}
   0.00%       0x00007f8e4eb1791f:   vpcmpeqd %ymm7,%ymm7,%ymm7
               0x00007f8e4eb17923:   vmovdqu %xmm1,%xmm9
               0x00007f8e4eb17927:   vmovdqu %xmm1,%xmm8
               0x00007f8e4eb1792b:   mov    $0x0,%r9
               0x00007f8e4eb17932:   vmovdqu %ymm0,%ymm1
          ╭    0x00007f8e4eb17936:   jmp    0x00007f8e4eb1798e
          │    0x00007f8e4eb1793b:   nopl   0x0(%rax,%rax,1)             ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@0 (line 94)
   8.32%  │ ↗  0x00007f8e4eb17940:   vpsrad $0x1f,%xmm9,%xmm0
   1.26%  │ │  0x00007f8e4eb17946:   vpsrld $0x16,%xmm0,%xmm0
          │ │  0x00007f8e4eb1794b:   vpaddd %xmm9,%xmm0,%xmm0
          │ │  0x00007f8e4eb17950:   vpand  %xmm6,%xmm0,%xmm0
   8.32%  │ │  0x00007f8e4eb17954:   vpsubd %xmm0,%xmm9,%xmm0
   1.35%  │ │  0x00007f8e4eb17958:   vpmovzxdq %xmm0,%ymm0
          │ │  0x00007f8e4eb1795d:   vpsllq $0x2,%ymm0,%ymm0
   0.00%  │ │  0x00007f8e4eb17962:   vpaddq %ymm4,%ymm0,%ymm10           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@16 (line 97)
   8.10%  │ │  0x00007f8e4eb17966:   vpcmpeqd %ymm0,%ymm0,%ymm0
   1.22%  │ │  0x00007f8e4eb1796a:   vpgatherqd %xmm0,(%rax,%ymm10,1),%xmm11
  28.72%  │ │  0x00007f8e4eb17970:   vpmovsxdq %xmm11,%ymm0
   9.80%  │ │  0x00007f8e4eb17975:   vpaddq %ymm0,%ymm1,%ymm1
   2.48%  │ │  0x00007f8e4eb17979:   vpaddd %xmm5,%xmm9,%xmm9
          │ │  0x00007f8e4eb1797d:   vpaddd %xmm5,%xmm8,%xmm8
          │ │  0x00007f8e4eb17981:   lea    0x4(%r9),%r9
   8.13%  │ │  0x00007f8e4eb17985:   cmp    %r8,%r9
          │╭│  0x00007f8e4eb17988:   jg     0x00007f8e4eb179be
   1.23%  ↘││  0x00007f8e4eb1798e:   vpsrad $0x1f,%xmm8,%xmm0
   0.00%   ││  0x00007f8e4eb17994:   vpsrld $0x16,%xmm0,%xmm0
           ││  0x00007f8e4eb17999:   vpaddd %xmm8,%xmm0,%xmm0
   8.09%   ││  0x00007f8e4eb1799e:   vpand  %xmm6,%xmm0,%xmm0
   1.27%   ││  0x00007f8e4eb179a2:   vpsubd %xmm0,%xmm8,%xmm0
           ││  0x00007f8e4eb179a6:   vpxor  %xmm3,%xmm0,%xmm0
           ││  0x00007f8e4eb179aa:   vpcmpgtd %xmm0,%xmm2,%xmm0
   8.19%   ││  0x00007f8e4eb179ae:   vpxor  %xmm7,%xmm0,%xmm0
   1.26%   ││  0x00007f8e4eb179b2:   vptest %xmm0,%xmm0
           │╰  0x00007f8e4eb179b7:   je     0x00007f8e4eb17940
           │   0x00007f8e4eb179b9:   jmp    0x00007f8e4eb17aa6
           ↘   0x00007f8e4eb179be:   vmovd  %xmm9,%r8d
               0x00007f8e4eb179c3:   vmovd  %xmm8,%ebx                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@0 (line 94)
               0x00007f8e4eb179c7:   vextracti128 $0x1,%ymm1,%xmm0
               0x00007f8e4eb179cd:   vpaddq %xmm0,%xmm1,%xmm0
               0x00007f8e4eb179d1:   vmovq  %xmm0,%rdi
               0x00007f8e4eb179d6:   vpextrq $0x1,%xmm0,%rbp
               0x00007f8e4eb179dc:   add    %rbp,%rdi
....................................................................................................
  97.75%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 4, compile id 719 
   0.78%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%            libjvm.so  StatSamplerTask::task 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.93%  <...other 322 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 4, compile id 719 
   1.82%               kernel  [unknown] 
   0.04%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%                       <unknown> 
   0.02%            libjvm.so  StatSamplerTask::task 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  [unknown] 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  _pthread_cleanup_pop 
   0.01%            libjvm.so  os::PlatformMonitor::wait 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.17%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.76%       jvmci, level 4
   1.82%               kernel
   0.18%            libjvm.so
   0.08%         libc-2.31.so
   0.07%   libpthread-2.31.so
   0.03%                     
   0.01%               [vdso]
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          c1, level 1
   0.00%       perf-48497.map
   0.00%         libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5209.265 us/op
# Warmup Iteration   2: 5193.361 us/op
# Warmup Iteration   3: 5192.991 us/op
# Warmup Iteration   4: 5159.885 us/op
# Warmup Iteration   5: 5209.164 us/op
Iteration   1: 5210.304 us/op
Iteration   2: 5196.510 us/op
Iteration   3: 5203.995 us/op
Iteration   4: 5205.470 us/op
Iteration   5: 5196.653 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive":
  5202.586 ±(99.9%) 22.942 us/op [Average]
  (min, avg, max) = (5196.510, 5202.586, 5210.304), stdev = 5.958
  CI (99.9%): [5179.644, 5225.528] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive:·asm":
PrintAssembly processed: 182969 total address lines.
Perf output processed (skipped 58.337 seconds):
 Column 1: cycles (51123 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 717 

               #           [sp+0x20]  (sp of caller)
               0x00007fc272b1b420:   mov    0x8(%rsi),%r10d
               0x00007fc272b1b424:   movabs $0x800000000,%r12
               0x00007fc272b1b42e:   add    %r12,%r10
               0x00007fc272b1b431:   xor    %r12,%r12
               0x00007fc272b1b434:   cmp    %r10,%rax
               0x00007fc272b1b437:   jne    0x00007fc26b01e780           ;   {runtime_call ic_miss_stub}
               0x00007fc272b1b43d:   nop
               0x00007fc272b1b43e:   xchg   %ax,%ax
             [Verified Entry Point]
   9.32%    ↗  0x00007fc272b1b440:   mov    %eax,-0x14000(%rsp)
   8.91%    │  0x00007fc272b1b447:   sub    $0x18,%rsp
   0.91%    │  0x00007fc272b1b44b:   mov    %rbp,0x10(%rsp)
   3.28%    │  0x00007fc272b1b450:   test   %edx,%edx
          ╭ │  0x00007fc272b1b452:   je     0x00007fc272b1b4bc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 85)
   0.01%  │ │  0x00007fc272b1b458:   mov    0x14(%rsi),%r10d             ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@12 (line 88)
   0.03%  │ │  0x00007fc272b1b45c:   mov    %edx,%r11d
   0.90%  │ │  0x00007fc272b1b45f:   sar    $0x1f,%r11d
   1.09%  │ │  0x00007fc272b1b463:   shr    $0x16,%r11d
   0.01%  │ │  0x00007fc272b1b467:   add    %edx,%r11d
   0.02%  │ │  0x00007fc272b1b46a:   and    $0xfffffc00,%r11d
   0.98%  │ │  0x00007fc272b1b471:   mov    %edx,%r8d
   0.94%  │ │  0x00007fc272b1b474:   sub    %r11d,%r8d
   0.00%  │ │  0x00007fc272b1b477:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          │ │                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@0 (line 85)
   0.03%  │ │  0x00007fc272b1b480:   cmp    0xc(,%r10,8),%r8d            ; implicit exception: dispatches to 0x00007fc272b1b4ea
          │╭│  0x00007fc272b1b488:   jae    0x00007fc272b1b4d2           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 88)
   3.07%  │││  0x00007fc272b1b48e:   shl    $0x3,%r10                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@12 (line 88)
   0.01%  │││  0x00007fc272b1b492:   dec    %edx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 88)
   0.03%  │││  0x00007fc272b1b494:   movslq 0x10(%r10,%r8,4),%r10        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 88)
   3.35%  │││  0x00007fc272b1b499:   add    %r10,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@22 (line 88)
   1.68%  │││  0x00007fc272b1b49c:   data16 xchg %ax,%ax
   0.01%  │││  0x00007fc272b1b49f:   nop
   0.03%  │││  0x00007fc272b1b4a0:   data16 xchg %ax,%ax
   0.26%  ││╰  0x00007fc272b1b4a3:   call   0x00007fc272b1b440           ; ImmutableOopMap {}
          ││                                                             ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││                                                             ;   {optimized virtual_call}
  28.76%  ││   0x00007fc272b1b4a8:   nop
   1.82%  ││   0x00007fc272b1b4a9:   mov    0x10(%rsp),%rbp
  27.98%  ││   0x00007fc272b1b4ae:   add    $0x18,%rsp
   0.08%  ││   0x00007fc272b1b4b2:   mov    0x348(%r15),%rcx
   0.01%  ││   0x00007fc272b1b4b9:   test   %eax,(%rcx)                  ;   {poll_return}
   3.63%  ││   0x00007fc272b1b4bb:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ↘│   0x00007fc272b1b4bc:   mov    %rcx,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@5 (line 86)
           │   0x00007fc272b1b4bf:   mov    0x10(%rsp),%rbp
           │   0x00007fc272b1b4c4:   add    $0x18,%rsp
           │   0x00007fc272b1b4c8:   mov    0x348(%r15),%rcx
           │   0x00007fc272b1b4cf:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%   │   0x00007fc272b1b4d1:   ret                                 ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@26 (line 88)
           ↘   0x00007fc272b1b4d2:   movl   $0xffffffe5,0x370(%r15)      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 88)
               0x00007fc272b1b4dd:   mov    %r12,0x378(%r15)
               0x00007fc272b1b4e4:   call   0x00007fc26b02427a           ; ImmutableOopMap {rsi=Oop }
                                                                         ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@0 (line 85)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007fc272b1b4e9:   nop
               0x00007fc272b1b4ea:   movl   $0xfffffff5,0x370(%r15)
....................................................................................................
  97.15%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 717 
   1.36%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.96%  <...other 331 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 717 
   2.46%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%          interpreter  return entry points  
   0.01%         libc-2.31.so  re_search_stub 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  _int_realloc 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  stringStream::write 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%            libjvm.so  Interval::add_range 
   0.00%         libm-2.31.so  __mpranred_fma 
   0.00%       perf-48561.map  [unknown] 
   0.19%  <...other 83 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.15%       jvmci, level 4
   2.46%               kernel
   0.15%            libjvm.so
   0.07%         libc-2.31.so
   0.07%                     
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.02%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.00%       perf-48561.map
   0.00%         libm-2.31.so
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:03:44

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

Benchmark                                      (n)  Mode  Cnt     Score    Error  Units
TailRecursionBenchmark.iterative            262144  avgt    5   260.483 ±  0.043  us/op
TailRecursionBenchmark.iterative:·asm       262144  avgt            NaN             ---
TailRecursionBenchmark.tail_recursive       262144  avgt    5  5202.586 ± 22.942  us/op
TailRecursionBenchmark.tail_recursive:·asm  262144  avgt            NaN             ---
