# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
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
# Warmup Iteration   1: 268.763 us/op
# Warmup Iteration   2: 266.927 us/op
# Warmup Iteration   3: 266.775 us/op
# Warmup Iteration   4: 266.751 us/op
# Warmup Iteration   5: 266.743 us/op
Iteration   1: 266.744 us/op
Iteration   2: 266.746 us/op
Iteration   3: 266.740 us/op
Iteration   4: 266.739 us/op
Iteration   5: 266.738 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative":
  266.742 ±(99.9%) 0.013 us/op [Average]
  (min, avg, max) = (266.738, 266.742, 266.746), stdev = 0.003
  CI (99.9%): [266.729, 266.754] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.iterative:·asm":
PrintAssembly processed: 115848 total address lines.
Perf output processed (skipped 55.575 seconds):
 Column 1: cycles (50692 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 464 

               0x00007fcd14f62a33:   cmp    %r8d,%edx
               0x00007fcd14f62a36:   jg     0x00007fcd14f62a02           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@1 (line 94)
   0.00%       0x00007fcd14f62a38:   cmp    $0x3,%edx
               0x00007fcd14f62a3b:   nopl   0x0(%rax,%rax,1)
          ╭    0x00007fcd14f62a40:   jle    0x00007fcd14f62b30
          │    0x00007fcd14f62a46:   mov    $0xfa0,%r8d
          │ ↗  0x00007fcd14f62a4c:   mov    %edx,%r9d
          │ │  0x00007fcd14f62a4f:   add    $0xfffffffd,%r9d
          │ │  0x00007fcd14f62a53:   cmp    $0xfa0,%r9d
   0.00%  │ │  0x00007fcd14f62a5a:   cmova  %r8d,%r9d
          │ │  0x00007fcd14f62a5e:   mov    %edx,%r11d
          │ │  0x00007fcd14f62a61:   sub    %r9d,%r11d
   0.01%  │ │  0x00007fcd14f62a64:   nopl   0x0(%rax,%rax,1)
          │ │  0x00007fcd14f62a6c:   data16 data16 xchg %ax,%ax          ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@4 (line 95)
   1.28%  │↗│  0x00007fcd14f62a70:   mov    %edx,%r9d
   3.40%  │││  0x00007fcd14f62a73:   and    $0xfffffc00,%r9d
   1.28%  │││  0x00007fcd14f62a7a:   mov    %edx,%eax
   3.31%  │││  0x00007fcd14f62a7c:   sub    %r9d,%eax                    ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 97)
   1.28%  │││  0x00007fcd14f62a7f:   nop
   3.39%  │││  0x00007fcd14f62a80:   cmp    %r10d,%eax
          │││  0x00007fcd14f62a83:   jae    0x00007fcd14f62b80
   1.24%  │││  0x00007fcd14f62a89:   movslq 0x10(%rbx,%rax,4),%rbp
   3.39%  │││  0x00007fcd14f62a8e:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 97)
   1.22%  │││  0x00007fcd14f62a91:   mov    %edx,%r9d
   3.36%  │││  0x00007fcd14f62a94:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 98)
   1.26%  │││  0x00007fcd14f62a97:   mov    %r9d,%esi
   3.31%  │││  0x00007fcd14f62a9a:   and    $0xfffffc00,%esi
   1.32%  │││  0x00007fcd14f62aa0:   mov    %edx,%r13d
   3.41%  │││  0x00007fcd14f62aa3:   sub    %esi,%r13d
   1.23%  │││  0x00007fcd14f62aa6:   mov    %r13d,%eax
   3.38%  │││  0x00007fcd14f62aa9:   dec    %eax                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 97)
   1.29%  │││  0x00007fcd14f62aab:   cmp    %r10d,%eax
          │││  0x00007fcd14f62aae:   jae    0x00007fcd14f62b86
   3.56%  │││  0x00007fcd14f62ab4:   movslq 0xc(%rbx,%r13,4),%rcx
   1.29%  │││  0x00007fcd14f62ab9:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 97)
   3.28%  │││  0x00007fcd14f62abc:   mov    %edx,%r9d
   1.23%  │││  0x00007fcd14f62abf:   add    $0xfffffffe,%r9d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 98)
   3.51%  │││  0x00007fcd14f62ac3:   mov    %r9d,%esi
   1.15%  │││  0x00007fcd14f62ac6:   and    $0xfffffc00,%esi
   3.60%  │││  0x00007fcd14f62acc:   mov    %edx,%eax
   1.29%  │││  0x00007fcd14f62ace:   sub    %esi,%eax
   3.32%  │││  0x00007fcd14f62ad0:   add    $0xfffffffe,%eax             ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 97)
   1.29%  │││  0x00007fcd14f62ad3:   cmp    %r10d,%eax
          │││  0x00007fcd14f62ad6:   jae    0x00007fcd14f62b83
   3.38%  │││  0x00007fcd14f62adc:   movslq 0x10(%rbx,%rax,4),%rbp
   1.24%  │││  0x00007fcd14f62ae1:   add    %rcx,%rbp                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 97)
   3.48%  │││  0x00007fcd14f62ae4:   mov    %edx,%r9d
   1.23%  │││  0x00007fcd14f62ae7:   add    $0xfffffffd,%r9d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 98)
   3.27%  │││  0x00007fcd14f62aeb:   mov    %r9d,%esi
   1.32%  │││  0x00007fcd14f62aee:   and    $0xfffffc00,%esi
   3.57%  │││  0x00007fcd14f62af4:   mov    %edx,%eax
   1.29%  │││  0x00007fcd14f62af6:   sub    %esi,%eax
   3.33%  │││  0x00007fcd14f62af8:   add    $0xfffffffd,%eax             ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@15 (line 97)
   1.20%  │││  0x00007fcd14f62afb:   nopl   0x0(%rax,%rax,1)
   3.43%  │││  0x00007fcd14f62b00:   cmp    %r10d,%eax
          │││  0x00007fcd14f62b03:   jae    0x00007fcd14f62b86
   1.29%  │││  0x00007fcd14f62b09:   movslq 0x10(%rbx,%rax,4),%rcx
   3.43%  │││  0x00007fcd14f62b0e:   add    %rbp,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@18 (line 97)
   1.24%  │││  0x00007fcd14f62b11:   add    $0xfffffffc,%edx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@20 (line 98)
   3.39%  │││  0x00007fcd14f62b14:   cmp    %r11d,%edx
          │╰│  0x00007fcd14f62b17:   jg     0x00007fcd14f62a70           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@23 (line 98)
   0.01%  │ │  0x00007fcd14f62b1d:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rbx=Oop rdi=NarrowOop r14=Oop }
          │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@23 (line 98)
   0.09%  │ │  0x00007fcd14f62b24:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@23 (line 98)
          │ │                                                            ;   {poll}
   0.05%  │ │  0x00007fcd14f62b27:   cmp    $0x3,%edx
          │ ╰  0x00007fcd14f62b2a:   jg     0x00007fcd14f62a4c
          ↘    0x00007fcd14f62b30:   test   %edx,%edx
               0x00007fcd14f62b32:   jle    0x00007fcd14f62b65           ;*lload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative@4 (line 95)
               0x00007fcd14f62b34:   mov    %edx,%r11d
               0x00007fcd14f62b37:   sar    $0x1f,%r11d
               0x00007fcd14f62b3b:   shr    $0x16,%r11d
               0x00007fcd14f62b3f:   add    %edx,%r11d
....................................................................................................
  98.14%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 464 
   0.61%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.71%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::iterative, version 3, compile id 464 
   1.55%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  defaultStream::write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.11%  <...other 55 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.16%         c2, level 4
   1.55%              kernel
   0.15%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
   0.00%      perf-26289.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss64M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive
# Parameters: (n = 262144)

# Run progress: 50.00% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3243.380 us/op
# Warmup Iteration   2: 3192.544 us/op
# Warmup Iteration   3: 3199.053 us/op
# Warmup Iteration   4: 3189.171 us/op
# Warmup Iteration   5: 3196.498 us/op
Iteration   1: 3197.557 us/op
Iteration   2: 3190.911 us/op
Iteration   3: 3176.452 us/op
Iteration   4: 3172.387 us/op
Iteration   5: 3173.136 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive":
  3182.089 ±(99.9%) 44.037 us/op [Average]
  (min, avg, max) = (3172.387, 3182.089, 3197.557), stdev = 11.436
  CI (99.9%): [3138.052, 3226.126] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark.tail_recursive:·asm":
PrintAssembly processed: 117072 total address lines.
Perf output processed (skipped 55.596 seconds):
 Column 1: cycles (50615 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 4, compile id 470 

                 # parm1:    rcx:rcx   = long
                 #           [sp+0x40]  (sp of caller)
                 0x00007fcb20f633a0:   mov    0x8(%rsi),%r10d
                 0x00007fcb20f633a4:   movabs $0x800000000,%r11
                 0x00007fcb20f633ae:   add    %r11,%r10
                 0x00007fcb20f633b1:   cmp    %r10,%rax
                 0x00007fcb20f633b4:   jne    0x00007fcb209fbd80           ;   {runtime_call ic_miss_stub}
                 0x00007fcb20f633ba:   xchg   %ax,%ax
                 0x00007fcb20f633bc:   nopl   0x0(%rax)
               [Verified Entry Point]
   1.45%     ↗   0x00007fcb20f633c0:   mov    %eax,-0x14000(%rsp)
  29.06%     │   0x00007fcb20f633c7:   push   %rbp
   0.00%     │   0x00007fcb20f633c8:   sub    $0x30,%rsp                   ;*synchronization entry
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@-1 (line 85)
   0.01%     │   0x00007fcb20f633cc:   mov    %rsi,%rdi
   1.70%     │   0x00007fcb20f633cf:   test   %edx,%edx
          ╭  │   0x00007fcb20f633d1:   je     0x00007fcb20f6346b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
   0.00%  │  │   0x00007fcb20f633d7:   mov    0x14(%rsi),%r8d              ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@12 (line 88)
   0.02%  │  │   0x00007fcb20f633db:   mov    %edx,%r11d
   0.00%  │  │   0x00007fcb20f633de:   sar    $0x1f,%r11d
   1.60%  │  │   0x00007fcb20f633e2:   shr    $0x16,%r11d
          │  │   0x00007fcb20f633e6:   add    %edx,%r11d
   0.02%  │  │   0x00007fcb20f633e9:   and    $0xfffffc00,%r11d
          │  │   0x00007fcb20f633f0:   mov    %edx,%r10d
   1.58%  │  │   0x00007fcb20f633f3:   sub    %r11d,%r10d                  ;*irem {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@19 (line 88)
          │  │   0x00007fcb20f633f6:   data16 nopw 0x0(%rax,%rax,1)
   0.04%  │  │   0x00007fcb20f63400:   mov    0xc(%r12,%r8,8),%ebx         ; implicit exception: dispatches to 0x00007fcb20f634bd
          │  │                                                             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@20 (line 88)
   0.03%  │  │   0x00007fcb20f63405:   mov    %edx,%ebp
   1.63%  │  │   0x00007fcb20f63407:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
          │  │   0x00007fcb20f63409:   cmp    %ebx,%r10d
          │╭ │   0x00007fcb20f6340c:   jae    0x00007fcb20f63470
   0.02%  ││ │   0x00007fcb20f63412:   lea    (%r12,%r8,8),%r11
   0.01%  ││ │   0x00007fcb20f63416:   movslq 0x10(%r11,%r10,4),%rax
   2.50%  ││ │   0x00007fcb20f6341b:   add    %rcx,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
   0.11%  ││ │   0x00007fcb20f6341e:   xchg   %ax,%ax
   0.02%  ││ │   0x00007fcb20f63420:   cmp    $0x1,%edx
          ││╭│   0x00007fcb20f63423:   je     0x00007fcb20f63458           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@1 (line 85)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          ││││   0x00007fcb20f63425:   mov    %edx,%r9d
   1.50%  ││││   0x00007fcb20f63428:   add    $0xfffffffe,%r9d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@9 (line 88)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.10%  ││││   0x00007fcb20f6342c:   sar    $0x1f,%ebp
   0.01%  ││││   0x00007fcb20f6342f:   shr    $0x16,%ebp
   0.01%  ││││   0x00007fcb20f63432:   add    %edx,%ebp
   1.55%  ││││   0x00007fcb20f63434:   dec    %ebp
   0.10%  ││││   0x00007fcb20f63436:   and    $0xfffffc00,%ebp
   0.03%  ││││   0x00007fcb20f6343c:   sub    %ebp,%edx
          ││││   0x00007fcb20f6343e:   mov    %edx,%ebp
   1.46%  ││││   0x00007fcb20f63440:   dec    %ebp                         ;*irem {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@19 (line 88)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   0.11%  ││││   0x00007fcb20f63442:   cmp    %ebx,%ebp
          ││││   0x00007fcb20f63444:   jae    0x00007fcb20f63490
   0.03%  ││││   0x00007fcb20f63446:   movslq 0xc(%r11,%rdx,4),%rcx
   1.56%  ││││   0x00007fcb20f6344b:   add    %rax,%rcx                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@22 (line 88)
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
   1.46%  ││││   0x00007fcb20f6344e:   mov    %r9d,%edx
   0.12%  ││││   0x00007fcb20f63451:   xchg   %ax,%ax
   0.03%  │││╰   0x00007fcb20f63453:   call   0x00007fcb20f633c0           ; ImmutableOopMap {}
          │││                                                              ;*invokevirtual recursive {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive@23 (line 88)
          │││                                                              ;   {optimized virtual_call}
  24.64%  ││↘ ↗  0x00007fcb20f63458:   add    $0x30,%rsp
  10.78%  ││  │  0x00007fcb20f6345c:   pop    %rbp
  14.68%  ││  │  0x00007fcb20f6345d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007fcb20f63464:   ja     0x00007fcb20f634cc
   0.05%  ││  │  0x00007fcb20f6346a:   ret    
          ↘│  │  0x00007fcb20f6346b:   mov    %rcx,%rax
           │  ╰  0x00007fcb20f6346e:   jmp    0x00007fcb20f63458
           ↘     0x00007fcb20f63470:   mov    $0xffffffe4,%esi
                 0x00007fcb20f63475:   mov    %rdi,(%rsp)
                 0x00007fcb20f63479:   mov    %rcx,0x8(%rsp)
                 0x00007fcb20f6347e:   mov    %r8d,0x10(%rsp)
                 0x00007fcb20f63483:   mov    %r10d,0x14(%rsp)
                 0x00007fcb20f63488:   data16 xchg %ax,%ax
                 0x00007fcb20f6348b:   call   0x00007fcb20a01600           ; ImmutableOopMap {[0]=Oop [16]=NarrowOop }
                                                                           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 4, compile id 470 
   0.43%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.94%  <...other 314 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.TailRecursionBenchmark::recursive, version 4, compile id 470 
   1.63%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  fileStream::flush 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  G1CollectionSet::iterate 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%         interpreter  fast_bgetfield  204 fast_bgetfield  
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%           libjvm.so  AbstractDisassembler::print_location 
   0.17%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%         c2, level 4
   1.63%              kernel
   0.18%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.03%         interpreter
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:35

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
TailRecursionBenchmark.iterative            262144  avgt    5   266.742 ±  0.013  us/op
TailRecursionBenchmark.iterative:·asm       262144  avgt            NaN             ---
TailRecursionBenchmark.tail_recursive       262144  avgt    5  3182.089 ± 44.037  us/op
TailRecursionBenchmark.tail_recursive:·asm  262144  avgt            NaN             ---
