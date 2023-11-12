# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
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
# Warmup Iteration   1: 866.258 us/op
# Warmup Iteration   2: 861.385 us/op
# Warmup Iteration   3: 861.293 us/op
# Warmup Iteration   4: 861.348 us/op
# Warmup Iteration   5: 861.329 us/op
Iteration   1: 861.129 us/op
Iteration   2: 861.105 us/op
Iteration   3: 861.098 us/op
Iteration   4: 861.059 us/op
Iteration   5: 861.110 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative":
  861.100 ±(99.9%) 0.098 us/op [Average]
  (min, avg, max) = (861.059, 861.100, 861.129), stdev = 0.026
  CI (99.9%): [861.002, 861.198] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.iterative:asm":
PrintAssembly processed: 228242 total address lines.
Perf output processed (skipped 60.795 seconds):
 Column 1: cycles (50696 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 3, compile id 967 

               0x00007fa3ded80ead:   vmovdqu %xmm1,%xmm9
               0x00007fa3ded80eb1:   vmovdqu %xmm1,%xmm8
               0x00007fa3ded80eb5:   mov    $0x0,%r9
               0x00007fa3ded80ebc:   vmovdqu %ymm0,%ymm1
          ╭    0x00007fa3ded80ec0:   jmp    0x00007fa3ded80f2e
          │    0x00007fa3ded80ec5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fa3ded80ed0:   data16 data16 xchg %ax,%ax
          │    0x00007fa3ded80ed4:   nopl   0x0(%rax,%rax,1)
          │    0x00007fa3ded80edc:   data16 data16 xchg %ax,%ax          ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@0 (line 92)
   0.09%  │ ↗  0x00007fa3ded80ee0:   vpsrad $0x1f,%xmm9,%xmm0
   2.88%  │ │  0x00007fa3ded80ee6:   vpsrld $0x16,%xmm0,%xmm0
          │ │  0x00007fa3ded80eeb:   vpaddd %xmm9,%xmm0,%xmm0
          │ │  0x00007fa3ded80ef0:   vpand  %xmm6,%xmm0,%xmm0
   0.11%  │ │  0x00007fa3ded80ef4:   vpsubd %xmm0,%xmm9,%xmm0            ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
   2.80%  │ │  0x00007fa3ded80ef8:   vpmovzxdq %xmm0,%ymm0
          │ │  0x00007fa3ded80efd:   vpsllq $0x2,%ymm0,%ymm0
          │ │  0x00007fa3ded80f02:   vpaddq %ymm4,%ymm0,%ymm10           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@16 (line 95)
   0.12%  │ │  0x00007fa3ded80f06:   vpcmpeqd %ymm0,%ymm0,%ymm0
   2.67%  │ │  0x00007fa3ded80f0a:   vpgatherqd %xmm0,(%rax,%ymm10,1),%xmm11
  72.57%  │ │  0x00007fa3ded80f10:   vpmovsxdq %xmm11,%ymm0
   2.90%  │ │  0x00007fa3ded80f15:   vpaddq %ymm0,%ymm1,%ymm1
   5.27%  │ │  0x00007fa3ded80f19:   vpaddd %xmm5,%xmm9,%xmm9
          │ │  0x00007fa3ded80f1d:   vpaddd %xmm5,%xmm8,%xmm8
          │ │  0x00007fa3ded80f21:   lea    0x4(%r9),%r9
   0.11%  │ │  0x00007fa3ded80f25:   cmp    %r8,%r9
          │╭│  0x00007fa3ded80f28:   jg     0x00007fa3ded80f5e           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@0 (line 92)
   2.68%  ↘││  0x00007fa3ded80f2e:   vpsrad $0x1f,%xmm8,%xmm0
           ││  0x00007fa3ded80f34:   vpsrld $0x16,%xmm0,%xmm0
           ││  0x00007fa3ded80f39:   vpaddd %xmm8,%xmm0,%xmm0
   0.11%   ││  0x00007fa3ded80f3e:   vpand  %xmm6,%xmm0,%xmm0
   2.67%   ││  0x00007fa3ded80f42:   vpsubd %xmm0,%xmm8,%xmm0            ;*irem {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@15 (line 95)
           ││  0x00007fa3ded80f46:   vpxor  %xmm3,%xmm0,%xmm0
           ││  0x00007fa3ded80f4a:   vpcmpgtd %xmm0,%xmm2,%xmm0
   0.14%   ││  0x00007fa3ded80f4e:   vpxor  %xmm7,%xmm0,%xmm0
   2.72%   ││  0x00007fa3ded80f52:   vptest %xmm0,%xmm0
           │╰  0x00007fa3ded80f57:   je     0x00007fa3ded80ee0
           │   0x00007fa3ded80f59:   jmp    0x00007fa3ded8104d
           ↘   0x00007fa3ded80f5e:   vmovd  %xmm9,%r8d
               0x00007fa3ded80f63:   vmovd  %xmm8,%ebx                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative@0 (line 92)
               0x00007fa3ded80f67:   vextracti128 $0x1,%ymm1,%xmm0
               0x00007fa3ded80f6d:   vpaddq %xmm0,%xmm1,%xmm0
               0x00007fa3ded80f71:   vmovq  %xmm0,%rdi
               0x00007fa3ded80f76:   vpextrq $0x1,%xmm0,%rbp
               0x00007fa3ded80f7c:   add    %rbp,%rdi
....................................................................................................
  97.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 3, compile id 967 
   0.49%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.01%  <...other 368 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::iterative, version 3, compile id 967 
   1.72%              kernel  [unknown] 
   0.16%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  outputStream::print 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.12%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.84%      jvmci, level 4
   1.72%              kernel
   0.16%                    
   0.13%           libjvm.so
   0.10%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2152784.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5366.925 us/op
# Warmup Iteration   2: 5348.407 us/op
# Warmup Iteration   3: 5334.040 us/op
# Warmup Iteration   4: 5333.514 us/op
# Warmup Iteration   5: 5331.036 us/op
Iteration   1: 5332.931 us/op
Iteration   2: 5342.390 us/op
Iteration   3: 5347.989 us/op
Iteration   4: 5350.723 us/op
Iteration   5: 5352.008 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive":
  5345.208 ±(99.9%) 30.016 us/op [Average]
  (min, avg, max) = (5332.931, 5345.208, 5352.008), stdev = 7.795
  CI (99.9%): [5315.192, 5375.224] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark.tail_recursive:asm":
PrintAssembly processed: 221662 total address lines.
Perf output processed (skipped 60.608 seconds):
 Column 1: cycles (50966 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 962 

             # parm1:    rcx:rcx   = long
             #           [sp+0x20]  (sp of caller)
             0x00007f362ed7f820:   mov    0x8(%rsi),%r10d
             0x00007f362ed7f824:   movabs $0x7f35b3000000,%r12
             0x00007f362ed7f82e:   add    %r12,%r10
             0x00007f362ed7f831:   xor    %r12,%r12
             0x00007f362ed7f834:   cmp    %r10,%rax
             0x00007f362ed7f837:   jne    0x00007f362e764080           ;   {runtime_call ic_miss_stub}
             0x00007f362ed7f83d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   6.83%     0x00007f362ed7f840:   mov    %eax,-0x14000(%rsp)
   8.53%     0x00007f362ed7f847:   sub    $0x18,%rsp
   0.00%     0x00007f362ed7f84b:   nop
   0.01%     0x00007f362ed7f84c:   cmpl   $0x0,0x20(%r15)
   3.07%     0x00007f362ed7f854:   jne    0x00007f362ed7f90d
   1.84%     0x00007f362ed7f85a:   mov    %rbp,0x10(%rsp)
   0.74%     0x00007f362ed7f85f:   nop
   0.01%     0x00007f362ed7f860:   test   %edx,%edx
          ╭  0x00007f362ed7f862:   je     0x00007f362ed7f8ce           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
   0.04%  │  0x00007f362ed7f868:   mov    0x14(%rsi),%r10d             ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@12 (line 86)
   2.45%  │  0x00007f362ed7f86c:   mov    %edx,%r11d
   0.21%  │  0x00007f362ed7f86f:   sar    $0x1f,%r11d
   0.01%  │  0x00007f362ed7f873:   shr    $0x16,%r11d
   0.02%  │  0x00007f362ed7f877:   add    %edx,%r11d
   1.66%  │  0x00007f362ed7f87a:   and    $0xfffffc00,%r11d            ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@19 (line 86)
   0.18%  │  0x00007f362ed7f881:   mov    %edx,%r8d
          │  0x00007f362ed7f884:   sub    %r11d,%r8d                   ; ImmutableOopMap {rsi=Oop r10=NarrowOop }
          │                                                            ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@0 (line 83)
   0.02%  │  0x00007f362ed7f887:   cmp    0xc(,%r10,8),%r8d            ; implicit exception: dispatches to 0x00007f362ed7f946
          │  0x00007f362ed7f88f:   jae    0x00007f362ed7f8ee           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@20 (line 86)
   4.41%  │  0x00007f362ed7f895:   shl    $0x3,%r10                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@12 (line 86)
   0.01%  │  0x00007f362ed7f899:   dec    %edx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@9 (line 86)
   0.03%  │  0x00007f362ed7f89b:   movslq 0x10(%r10,%r8,4),%r10        ;*i2l {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@21 (line 86)
   3.13%  │  0x00007f362ed7f8a0:   add    %r10,%rcx
   1.47%  │  0x00007f362ed7f8a3:   call   0x00007f362e764380           ; ImmutableOopMap {}
          │                                                            ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@23 (line 86)
          │                                                            ;   {optimized virtual_call}
  29.85%  │  0x00007f362ed7f8a8:   nopl   0x1000218(%rax,%rax,1)       ;   {other}
   1.71%  │  0x00007f362ed7f8b0:   mov    0x10(%rsp),%rbp
  30.79%  │  0x00007f362ed7f8b5:   add    $0x18,%rsp
   0.03%  │  0x00007f362ed7f8b9:   nopl   0x0(%rax)
   0.01%  │  0x00007f362ed7f8c0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f362ed7f8c7:   ja     0x00007f362ed7f91d
   0.01%  │  0x00007f362ed7f8cd:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@1 (line 83)
          ↘  0x00007f362ed7f8ce:   mov    %rcx,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@5 (line 84)
             0x00007f362ed7f8d1:   mov    0x10(%rsp),%rbp
             0x00007f362ed7f8d6:   add    $0x18,%rsp
             0x00007f362ed7f8da:   nopw   0x0(%rax,%rax,1)
             0x00007f362ed7f8e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007f362ed7f8e7:   ja     0x00007f362ed7f931
             0x00007f362ed7f8ed:   ret                                 ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive@26 (line 86)
....................................................................................................
  97.08%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 962 
   1.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
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
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.17%  <...other 375 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.TailRecursionBenchmark::recursive, version 4, compile id 962 
   2.58%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%    perf-2152856.map  [unknown] 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  os::vsnprintf 
   0.14%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.08%      jvmci, level 4
   2.58%              kernel
   0.13%           libjvm.so
   0.08%                    
   0.08%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%    perf-2152856.map
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:48

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

Benchmark                                     (n)  Mode  Cnt     Score    Error  Units
TailRecursionBenchmark.iterative           262144  avgt    5   861.100 ±  0.098  us/op
TailRecursionBenchmark.iterative:asm       262144  avgt            NaN             ---
TailRecursionBenchmark.tail_recursive      262144  avgt    5  5345.208 ± 30.016  us/op
TailRecursionBenchmark.tail_recursive:asm  262144  avgt            NaN             ---
