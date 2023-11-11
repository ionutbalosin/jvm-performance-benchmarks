# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop
# Parameters: (size = 2048)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 43719.307 us/op
# Warmup Iteration   2: 42706.272 us/op
# Warmup Iteration   3: 42705.960 us/op
# Warmup Iteration   4: 43182.195 us/op
# Warmup Iteration   5: 43201.076 us/op
Iteration   1: 43197.772 us/op
Iteration   2: 42469.088 us/op
Iteration   3: 42467.072 us/op
Iteration   4: 42469.327 us/op
Iteration   5: 42453.853 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop":
  42611.422 ±(99.9%) 1262.402 us/op [Average]
  (min, avg, max) = (42453.853, 42611.422, 43197.772), stdev = 327.842
  CI (99.9%): [41349.020, 43873.824] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.initial_loop:asm":
PrintAssembly processed: 130495 total address lines.
Perf output processed (skipped 56.355 seconds):
 Column 1: cycles (50830 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 573 

              0x00007fa83863a783:   cmp    $0xffffffff80000000,%r10
              0x00007fa83863a78a:   cmovl  %r11,%r10
              0x00007fa83863a78e:   mov    %r10d,%r11d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@39 (line 72)
              0x00007fa83863a791:   xor    %ecx,%ecx
              0x00007fa83863a793:   xor    %ebp,%ebp                    ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@17 (line 72)
              0x00007fa83863a795:   mov    0xc(%r12,%rbx,8),%r9d        ; implicit exception: dispatches to 0x00007fa83863a98b
                                                                        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.02%      0x00007fa83863a79a:   nopw   0x0(%rax,%rax,1)
   0.00%      0x00007fa83863a7a0:   test   %r9d,%r9d
              0x00007fa83863a7a3:   jbe    0x00007fa83863a98b
   0.00%      0x00007fa83863a7a9:   movslq %r9d,%r10
              0x00007fa83863a7ac:   cmp    %r10,%r14
              0x00007fa83863a7af:   jae    0x00007fa83863a98b           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@26 (line 73)
              0x00007fa83863a7b5:   mov    0x10(%r12,%rbx,8),%edi
              0x00007fa83863a7ba:   nopw   0x0(%rax,%rax,1)
   0.00%      0x00007fa83863a7c0:   mov    0xc(%r12,%rdi,8),%r10d       ; implicit exception: dispatches to 0x00007fa83863a9c5
   0.00%      0x00007fa83863a7c5:   lea    (%r12,%rdi,8),%r9            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.00%      0x00007fa83863a7c9:   cmp    %r10d,%ebp
              0x00007fa83863a7cc:   jae    0x00007fa83863a9a4
   0.00%      0x00007fa83863a7d2:   mov    %r12d,0x10(%r9,%rbp,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
   0.02%      0x00007fa83863a7d7:   cmp    $0x1,%r11d
              0x00007fa83863a7db:   nopl   0x0(%rax,%rax,1)
              0x00007fa83863a7e0:   jle    0x00007fa83863a9ae
              0x00007fa83863a7e6:   mov    $0x1,%edi
          ╭   0x00007fa83863a7eb:   jmp    0x00007fa83863a8c3
   0.57%  │↗  0x00007fa83863a7f0:   vmovd  %xmm1,%ebx
   0.26%  ││  0x00007fa83863a7f4:   vmovd  %xmm0,%eax                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@26 (line 73)
   0.06%  ││  0x00007fa83863a7f8:   mov    0x10(%r13,%rdi,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.19%  ││  0x00007fa83863a7fd:   mov    %ebp,%edx
   0.59%  ││  0x00007fa83863a7ff:   imul   %edi,%edx                    ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.20%  ││  0x00007fa83863a802:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007fa83863a9c7
  17.64%  ││  0x00007fa83863a807:   shl    $0x3,%r9                     ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.04%  ││  0x00007fa83863a80b:   cmp    %r10d,%ebp
          ││  0x00007fa83863a80e:   jae    0x00007fa83863a8e9
   0.72%  ││  0x00007fa83863a814:   vmovd  %eax,%xmm0
   0.10%  ││  0x00007fa83863a818:   vmovd  %ebx,%xmm1
   0.04%  ││  0x00007fa83863a81c:   mov    %edx,0x10(%r9,%rbp,4)        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@26 (line 73)
   4.29%  ││  0x00007fa83863a821:   mov    0x14(%r13,%rdi,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.81%  ││  0x00007fa83863a826:   mov    %edi,%r10d
   0.08%  ││  0x00007fa83863a829:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.04%  ││  0x00007fa83863a82c:   mov    %ebp,%edx
   0.19%  ││  0x00007fa83863a82e:   imul   %r10d,%edx                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.64%  ││  0x00007fa83863a832:   mov    0xc(%r12,%rbx,8),%eax        ; implicit exception: dispatches to 0x00007fa83863a9c7
          ││                                                            ;   {no_reloc}
  18.07%  ││  0x00007fa83863a837:   lea    (%r12,%rbx,8),%r9            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.01%  ││  0x00007fa83863a83b:   cmp    %eax,%ebp
   0.59%  ││  0x00007fa83863a83d:   data16 xchg %ax,%ax
   0.32%  ││  0x00007fa83863a840:   jae    0x00007fa83863a8df
   0.49%  ││  0x00007fa83863a846:   mov    %edx,0x10(%r9,%rbp,4)        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@26 (line 73)
   4.19%  ││  0x00007fa83863a84b:   mov    0x18(%r13,%rdi,4),%eax       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.13%  ││  0x00007fa83863a850:   lea    0x2(%rdi),%r10d
   0.28%  ││  0x00007fa83863a854:   mov    %ebp,%edx
   0.40%  ││  0x00007fa83863a856:   imul   %r10d,%edx                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.16%  ││  0x00007fa83863a85a:   nopw   0x0(%rax,%rax,1)
   0.06%  ││  0x00007fa83863a860:   mov    0xc(%r12,%rax,8),%ebx        ; implicit exception: dispatches to 0x00007fa83863a9c7
  17.54%  ││  0x00007fa83863a865:   lea    (%r12,%rax,8),%r9            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.24%  ││  0x00007fa83863a869:   cmp    %ebx,%ebp
          ││  0x00007fa83863a86b:   jae    0x00007fa83863a8ee
   0.52%  ││  0x00007fa83863a871:   mov    %edx,0x10(%r9,%rbp,4)        ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@26 (line 73)
   4.14%  ││  0x00007fa83863a876:   mov    0x1c(%r13,%rdi,4),%ebx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.24%  ││  0x00007fa83863a87b:   lea    0x3(%rdi),%r10d
   0.18%  ││  0x00007fa83863a87f:   mov    %ebp,%edx
   0.42%  ││  0x00007fa83863a881:   imul   %r10d,%edx                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@34 (line 73)
   0.22%  ││  0x00007fa83863a885:   mov    0xc(%r12,%rbx,8),%eax        ; implicit exception: dispatches to 0x00007fa83863a9c7
  17.79%  ││  0x00007fa83863a88a:   lea    (%r12,%rbx,8),%r9            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@29 (line 73)
   0.09%  ││  0x00007fa83863a88e:   cmp    %eax,%ebp
          ││  0x00007fa83863a890:   jae    0x00007fa83863a8df
   0.66%  ││  0x00007fa83863a896:   mov    %edx,0x10(%r9,%rbp,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@35 (line 73)
   4.34%  ││  0x00007fa83863a89b:   add    $0x4,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@36 (line 72)
   0.07%  ││  0x00007fa83863a89e:   xchg   %ax,%ax
   0.08%  ││  0x00007fa83863a8a0:   cmp    %esi,%edi
          │╰  0x00007fa83863a8a2:   jl     0x00007fa83863a7f0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@39 (line 72)
   0.00%  │   0x00007fa83863a8a8:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r13=Oop xmm1=NarrowOop }
          │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@39 (line 72)
   0.03%  │   0x00007fa83863a8af:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@39 (line 72)
          │                                                             ;   {poll}
   0.15%  │   0x00007fa83863a8b2:   cmp    %r11d,%edi
          │   0x00007fa83863a8b5:   jge    0x00007fa83863a920
          │   0x00007fa83863a8bb:   vmovd  %xmm1,%ebx
          │   0x00007fa83863a8bf:   vmovd  %xmm0,%eax                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop@26 (line 73)
          ↘   0x00007fa83863a8c3:   mov    %r11d,%esi
              0x00007fa83863a8c6:   sub    %edi,%esi
              0x00007fa83863a8c8:   cmp    %edi,%r11d
              0x00007fa83863a8cb:   cmovl  %ecx,%esi
....................................................................................................
  97.92%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 573 
   0.30%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 573 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.90%  <...other 279 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::initial_loop, version 6, compile id 573 
   1.64%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  stringStream::write 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  _IO_str_init_static_internal 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.00%         c2, level 4
   1.64%              kernel
   0.17%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange
# Parameters: (size = 2048)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 891.684 us/op
# Warmup Iteration   2: 941.092 us/op
# Warmup Iteration   3: 894.662 us/op
# Warmup Iteration   4: 871.954 us/op
# Warmup Iteration   5: 872.209 us/op
Iteration   1: 895.235 us/op
Iteration   2: 895.223 us/op
Iteration   3: 895.369 us/op
Iteration   4: 895.218 us/op
Iteration   5: 895.575 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange":
  895.324 ±(99.9%) 0.592 us/op [Average]
  (min, avg, max) = (895.218, 895.324, 895.575), stdev = 0.154
  CI (99.9%): [894.732, 895.916] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark.manual_loop_interchange:asm":
PrintAssembly processed: 125776 total address lines.
Perf output processed (skipped 56.055 seconds):
 Column 1: cycles (50860 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 4, compile id 543 

                       0x00007f6af063a15a:   mov    %r10d,%esi                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@39 (line 85)
                       0x00007f6af063a15d:   xor    %r14d,%r14d
                       0x00007f6af063a160:   xor    %eax,%eax
          ╭            0x00007f6af063a162:   jmp    0x00007f6af063a372
          │ ↗          0x00007f6af063a167:   vmovd  %xmm0,%edi
          │ │          0x00007f6af063a16b:   vmovd  %xmm2,%edx
          │ │          0x00007f6af063a16f:   vmovq  %xmm1,%rcx
          │ │          0x00007f6af063a174:   vmovq  %xmm3,%rbp
          │ │          0x00007f6af063a179:   mov    (%rsp),%esi
   0.00%  │ │       ↗  0x00007f6af063a17c:   mov    %r13d,%r10d
   0.01%  │ │       │  0x00007f6af063a17f:   sub    %ebx,%r10d
   0.00%  │ │       │  0x00007f6af063a182:   cmp    %ebx,%r13d
   0.08%  │ │       │  0x00007f6af063a185:   cmovl  %r14d,%r10d
   0.01%  │ │       │  0x00007f6af063a189:   cmp    $0xfa00,%r10d
   0.01%  │ │       │  0x00007f6af063a190:   mov    $0xfa00,%r11d
   0.00%  │ │       │  0x00007f6af063a196:   cmova  %r11d,%r10d
   0.08%  │ │       │  0x00007f6af063a19a:   add    %ebx,%r10d
   0.01%  │ │       │  0x00007f6af063a19d:   vmovd  %edi,%xmm0
          │ │       │  0x00007f6af063a1a1:   vmovd  %edx,%xmm2
   0.07%  │ │       │  0x00007f6af063a1a5:   vmovq  %rcx,%xmm1
   0.01%  │ │       │  0x00007f6af063a1aa:   vmovq  %rbp,%xmm3
   0.01%  │ │       │  0x00007f6af063a1af:   mov    %esi,(%rsp)                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │ │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@26 (line 86)
   0.50%  │↗│       │  0x00007f6af063a1b2:   lea    0x38(%rbx),%r9d
   0.44%  │││       │  0x00007f6af063a1b6:   lea    0x30(%rbx),%r11d
   0.66%  │││       │  0x00007f6af063a1ba:   lea    0x28(%rbx),%edi
   1.15%  │││       │  0x00007f6af063a1bd:   lea    0x20(%rbx),%ecx
   0.50%  │││       │  0x00007f6af063a1c0:   lea    0x18(%rbx),%esi
   0.40%  │││       │  0x00007f6af063a1c3:   lea    0x10(%rbx),%edx
   0.66%  │││       │  0x00007f6af063a1c6:   lea    0x8(%rbx),%ebp
   1.24%  │││       │  0x00007f6af063a1c9:   vmovd  %esi,%xmm5
   0.55%  │││       │  0x00007f6af063a1cd:   vpbroadcastd %xmm5,%ymm5
   0.48%  │││       │  0x00007f6af063a1d2:   vmovdqu -0x55173a(%rip),%ymm4        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   1.19%  │││       │  0x00007f6af063a1da:   vpaddd %ymm5,%ymm4,%ymm4
   2.72%  │││       │  0x00007f6af063a1de:   vpmulld %ymm6,%ymm4,%ymm9
   4.74%  │││       │  0x00007f6af063a1e3:   vmovd  %ecx,%xmm5
   0.43%  │││       │  0x00007f6af063a1e7:   vpbroadcastd %xmm5,%ymm5
   0.95%  │││       │  0x00007f6af063a1ec:   vmovdqu -0x551754(%rip),%ymm4        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   0.45%  │││       │  0x00007f6af063a1f4:   vpaddd %ymm5,%ymm4,%ymm4
   0.98%  │││       │  0x00007f6af063a1f8:   vpmulld %ymm6,%ymm4,%ymm10
   2.53%  │││       │  0x00007f6af063a1fd:   vmovd  %edi,%xmm5
   0.45%  │││       │  0x00007f6af063a201:   vpbroadcastd %xmm5,%ymm5
   0.47%  │││       │  0x00007f6af063a206:   vmovdqu -0x55176e(%rip),%ymm4        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   0.40%  │││       │  0x00007f6af063a20e:   vpaddd %ymm5,%ymm4,%ymm4
   1.52%  │││       │  0x00007f6af063a212:   vpmulld %ymm6,%ymm4,%ymm11
   1.68%  │││       │  0x00007f6af063a217:   vmovd  %r11d,%xmm5
   0.41%  │││       │  0x00007f6af063a21c:   vpbroadcastd %xmm5,%ymm5
   1.06%  │││       │  0x00007f6af063a221:   vmovdqu -0x551789(%rip),%ymm4        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   0.43%  │││       │  0x00007f6af063a229:   vpaddd %ymm5,%ymm4,%ymm4
   0.88%  │││       │  0x00007f6af063a22d:   vpmulld %ymm6,%ymm4,%ymm12
   2.20%  │││       │  0x00007f6af063a232:   vmovd  %r9d,%xmm7
   0.40%  │││       │  0x00007f6af063a237:   vpbroadcastd %xmm7,%ymm7
   0.77%  │││       │  0x00007f6af063a23c:   vmovdqu -0x5517a4(%rip),%ymm4        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   0.35%  │││       │  0x00007f6af063a244:   vpaddd %ymm7,%ymm4,%ymm4
   1.24%  │││       │  0x00007f6af063a248:   vpmulld %ymm6,%ymm4,%ymm7
   2.01%  │││       │  0x00007f6af063a24d:   vmovd  %edx,%xmm8
   0.34%  │││       │  0x00007f6af063a251:   vpbroadcastd %xmm8,%ymm8
   0.85%  │││       │  0x00007f6af063a256:   vmovdqu -0x5517be(%rip),%ymm4        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   0.30%  │││       │  0x00007f6af063a25e:   vpaddd %ymm8,%ymm4,%ymm4
   1.09%  │││       │  0x00007f6af063a263:   vpmulld %ymm6,%ymm4,%ymm8
   2.49%  │││       │  0x00007f6af063a268:   vmovd  %ebp,%xmm4
   0.34%  │││       │  0x00007f6af063a26c:   vpbroadcastd %xmm4,%ymm4
   0.73%  │││       │  0x00007f6af063a271:   vmovdqu -0x5517d9(%rip),%ymm5        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   0.35%  │││       │  0x00007f6af063a279:   vpaddd %ymm4,%ymm5,%ymm5
   1.45%  │││       │  0x00007f6af063a27d:   vpmulld %ymm6,%ymm5,%ymm4
   2.22%  │││       │  0x00007f6af063a282:   vmovd  %ebx,%xmm5
   0.31%  │││       │  0x00007f6af063a286:   vpbroadcastd %xmm5,%ymm5
   0.88%  │││       │  0x00007f6af063a28b:   vmovdqu -0x5517f3(%rip),%ymm13        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │││       │                                                            ;   {external_word}
   0.29%  │││       │  0x00007f6af063a293:   vpaddd %ymm5,%ymm13,%ymm13
   1.48%  │││       │  0x00007f6af063a297:   vpmulld %ymm6,%ymm13,%ymm5
   3.32%  │││       │  0x00007f6af063a29c:   vmovdqu %ymm5,0x10(%r8,%rbx,4)
   4.21%  │││       │  0x00007f6af063a2a3:   vmovdqu %ymm4,0x30(%r8,%rbx,4)
   3.71%  │││       │  0x00007f6af063a2aa:   vmovdqu %ymm8,0x50(%r8,%rbx,4)
   3.73%  │││       │  0x00007f6af063a2b1:   vmovdqu %ymm9,0x70(%r8,%rbx,4)
   4.26%  │││       │  0x00007f6af063a2b8:   vmovdqu %ymm10,0x90(%r8,%rbx,4)
   5.06%  │││       │  0x00007f6af063a2c2:   vmovdqu %ymm11,0xb0(%r8,%rbx,4)
   4.11%  │││       │  0x00007f6af063a2cc:   vmovdqu %ymm12,0xd0(%r8,%rbx,4)
   3.31%  │││       │  0x00007f6af063a2d6:   vmovdqu %ymm7,0xf0(%r8,%rbx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   3.26%  │││       │  0x00007f6af063a2e0:   add    $0x40,%ebx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   1.24%  │││       │  0x00007f6af063a2e3:   cmp    %r10d,%ebx
   0.00%  │╰│       │  0x00007f6af063a2e6:   jl     0x00007f6af063a1b2           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@39 (line 85)
   0.01%  │ │       │  0x00007f6af063a2ec:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop xmm0=NarrowOop xmm3=Oop }
          │ │       │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │       │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@39 (line 85)
   0.33%  │ │       │  0x00007f6af063a2f3:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@39 (line 85)
          │ │       │                                                            ;   {poll}
   1.49%  │ │       │  0x00007f6af063a2f6:   cmp    %r13d,%ebx
          │ ╰       │  0x00007f6af063a2f9:   jl     0x00007f6af063a167
   0.02%  │         │  0x00007f6af063a2ff:   nop
   0.01%  │         │  0x00007f6af063a300:   cmp    (%rsp),%ebx
          │  ╭      │  0x00007f6af063a303:   jge    0x00007f6af063a331
   0.08%  │  │      │  0x00007f6af063a305:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │  │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@26 (line 86)
   0.22%  │  │↗     │  0x00007f6af063a308:   vmovd  %ebx,%xmm4
   0.14%  │  ││     │  0x00007f6af063a30c:   vpbroadcastd %xmm4,%ymm4
   0.20%  │  ││     │  0x00007f6af063a311:   vmovdqu -0x551879(%rip),%ymm5        # Stub::iota_indices+128 0x00007f6af00e8aa0
          │  ││     │                                                            ;   {external_word}
   0.16%  │  ││     │  0x00007f6af063a319:   vpaddd %ymm4,%ymm5,%ymm5
   0.29%  │  ││     │  0x00007f6af063a31d:   vpmulld %ymm6,%ymm5,%ymm4
   0.66%  │  ││     │  0x00007f6af063a322:   vmovdqu %ymm4,0x10(%r8,%rbx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.55%  │  ││     │  0x00007f6af063a329:   add    $0x8,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   0.18%  │  ││     │  0x00007f6af063a32c:   cmp    (%rsp),%ebx
          │  │╰     │  0x00007f6af063a32f:   jl     0x00007f6af063a308           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@23 (line 85)
   0.03%  │  ↘      │  0x00007f6af063a331:   vmovd  %xmm0,%edi
   0.04%  │         │  0x00007f6af063a335:   vmovd  %xmm2,%edx
   0.03%  │         │  0x00007f6af063a339:   vmovq  %xmm1,%rcx
   0.01%  │         │  0x00007f6af063a33e:   vmovq  %xmm3,%rbp
   0.02%  │         │  0x00007f6af063a343:   mov    (%rsp),%esi
   0.02%  │         │  0x00007f6af063a346:   cmp    %edx,%ebx
          │    ╭    │  0x00007f6af063a348:   jge    0x00007f6af063a35e
   0.01%  │    │    │  0x00007f6af063a34a:   xchg   %ax,%ax                      ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │    │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@26 (line 86)
   0.07%  │    │↗   │  0x00007f6af063a34c:   mov    %ebx,%r10d
   0.05%  │    ││   │  0x00007f6af063a34f:   imul   %eax,%r10d
   0.07%  │    ││   │  0x00007f6af063a353:   mov    %r10d,0x10(%r8,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.08%  │    ││   │  0x00007f6af063a358:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   0.03%  │    ││   │  0x00007f6af063a35a:   cmp    %edx,%ebx
          │    │╰   │  0x00007f6af063a35c:   jl     0x00007f6af063a34c           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │    │    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@45 (line 84)
   0.02%  │    ↘    │  0x00007f6af063a35e:   mov    0x458(%r15),%r10
   0.08%  │         │  0x00007f6af063a365:   inc    %eax                         ; ImmutableOopMap {rdi=NarrowOop rbp=Oop }
          │         │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │         │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@45 (line 84)
   0.03%  │         │  0x00007f6af063a367:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@45 (line 84)
          │         │                                                            ;   {poll}
   0.46%  │         │  0x00007f6af063a36a:   cmp    %edx,%eax
          │      ╭  │  0x00007f6af063a36c:   jge    0x00007f6af063a406           ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
          │      │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@17 (line 85)
   0.02%  ↘      │  │  0x00007f6af063a372:   mov    0xc(%r12,%rdi,8),%r11d       ; implicit exception: dispatches to 0x00007f6af063a423
   0.04%         │  │  0x00007f6af063a377:   cmp    %r11d,%eax
   0.03%         │  │  0x00007f6af063a37a:   nopw   0x0(%rax,%rax,1)
   0.05%         │  │  0x00007f6af063a380:   jae    0x00007f6af063a423
   0.02%         │  │  0x00007f6af063a386:   mov    0x10(%rbp,%rax,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                 │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@28 (line 86)
   0.29%         │  │  0x00007f6af063a38b:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f6af063a423
                 │  │                                                            ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                 │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   5.47%         │  │  0x00007f6af063a390:   test   %r8d,%r8d
                 │  │  0x00007f6af063a393:   jbe    0x00007f6af063a423
   0.12%         │  │  0x00007f6af063a399:   movslq %r8d,%r11
   0.00%         │  │  0x00007f6af063a39c:   nopl   0x0(%rax)
   0.00%         │  │  0x00007f6af063a3a0:   cmp    %r11,%rcx
                 │  │  0x00007f6af063a3a3:   jae    0x00007f6af063a423
   0.06%         │  │  0x00007f6af063a3a9:   lea    (%r12,%r10,8),%r8
   0.01%         │  │  0x00007f6af063a3ad:   mov    %r8d,%ebx
                 │  │  0x00007f6af063a3b0:   shr    $0x2,%ebx
   0.00%         │  │  0x00007f6af063a3b3:   and    $0x7,%ebx
   0.06%         │  │  0x00007f6af063a3b6:   mov    $0x3,%r10d
   0.01%         │  │  0x00007f6af063a3bc:   sub    %ebx,%r10d
   0.01%         │  │  0x00007f6af063a3bf:   and    $0x7,%r10d
   0.00%         │  │  0x00007f6af063a3c3:   inc    %r10d
   0.09%         │  │  0x00007f6af063a3c6:   cmp    %edx,%r10d
   0.01%         │  │  0x00007f6af063a3c9:   cmovg  %edx,%r10d
                 │  │  0x00007f6af063a3cd:   xor    %ebx,%ebx
                 │  │  0x00007f6af063a3cf:   xor    %r11d,%r11d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                 │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   0.17%         │ ↗│  0x00007f6af063a3d2:   mov    %r11d,0x10(%r8,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                 │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@35 (line 86)
   0.16%         │ ││  0x00007f6af063a3d7:   mov    %ebx,%r9d
   0.15%         │ ││  0x00007f6af063a3da:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@36 (line 85)
   0.16%         │ ││  0x00007f6af063a3dd:   data16 xchg %ax,%ax
   0.15%         │ ││  0x00007f6af063a3e0:   cmp    %r10d,%r9d
   0.00%         │╭││  0x00007f6af063a3e3:   jge    0x00007f6af063a3f1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@23 (line 85)
   0.07%         ││││  0x00007f6af063a3e5:   mov    %r9d,%r11d
   0.10%         ││││  0x00007f6af063a3e8:   imul   %eax,%r11d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
                 ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@34 (line 86)
   0.12%         ││││  0x00007f6af063a3ec:   mov    %r9d,%ebx
   0.11%         ││╰│  0x00007f6af063a3ef:   jmp    0x00007f6af063a3d2
   0.06%         │↘ │  0x00007f6af063a3f1:   cmp    %r13d,%r9d
                 │  │  0x00007f6af063a3f4:   jge    0x00007f6af063a444
   0.01%         │  │  0x00007f6af063a3f6:   vmovd  %eax,%xmm6
   0.01%         │  │  0x00007f6af063a3fa:   vpbroadcastd %xmm6,%ymm6
                 │  │  0x00007f6af063a3ff:   inc    %ebx
   0.08%         │  ╰  0x00007f6af063a401:   jmp    0x00007f6af063a17c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                 │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@14 (line 84)
                 ↘     0x00007f6af063a406:   mov    %rdi,%rax
                       0x00007f6af063a409:   shl    $0x3,%rax                    ;*getfield A {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange@1 (line 82)
                       0x00007f6af063a40d:   vzeroupper 
                       0x00007f6af063a410:   add    $0x20,%rsp
                       0x00007f6af063a414:   pop    %rbp
                       0x00007f6af063a415:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                       0x00007f6af063a41c:   ja     0x00007f6af063a44c
                       0x00007f6af063a422:   ret                                 ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.48%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 4, compile id 543 
   0.85%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.00%  <...other 313 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopInterchangeBenchmark::manual_loop_interchange, version 4, compile id 543 
   2.14%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.02%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopInterchangeBenchmark_manual_loop_interchange_jmhTest::manual_loop_interchange_avgt_jmhStub, version 2, compile id 595 
   0.02%  libpthread-2.31.so  __libc_write 
   0.02%           libjvm.so  fileStream::write 
   0.02%           libjvm.so  defaultStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.16%  <...other 68 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  97.48%         c2, level 4
   2.14%              kernel
   0.18%           libjvm.so
   0.10%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%                    
   0.02%      hsdis-amd64.so
   0.02%         c1, level 3
   0.01%         interpreter
   0.00%    perf-1939595.map
   0.00%    Unknown, level 0
....................................................................................................
  99.99%  <totals>



# Run complete. Total time: 00:03:38

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

Benchmark                                             (size)  Mode  Cnt      Score      Error  Units
LoopInterchangeBenchmark.initial_loop                   2048  avgt    5  42611.422 ± 1262.402  us/op
LoopInterchangeBenchmark.initial_loop:asm               2048  avgt             NaN               ---
LoopInterchangeBenchmark.manual_loop_interchange        2048  avgt    5    895.324 ±    0.592  us/op
LoopInterchangeBenchmark.manual_loop_interchange:asm    2048  avgt             NaN               ---
