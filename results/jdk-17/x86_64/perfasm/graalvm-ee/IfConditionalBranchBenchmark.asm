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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.no_if_branch
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1609.199 ns/op
# Warmup Iteration   2: 1600.159 ns/op
# Warmup Iteration   3: 1599.819 ns/op
# Warmup Iteration   4: 1599.845 ns/op
# Warmup Iteration   5: 1599.820 ns/op
Iteration   1: 1599.817 ns/op
Iteration   2: 1599.871 ns/op
Iteration   3: 1599.766 ns/op
Iteration   4: 1599.849 ns/op
Iteration   5: 1599.823 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.no_if_branch":
  1599.825 ±(99.9%) 0.152 ns/op [Average]
  (min, avg, max) = (1599.766, 1599.825, 1599.871), stdev = 0.040
  CI (99.9%): [1599.673, 1599.978] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.no_if_branch:·asm":
PrintAssembly processed: 186869 total address lines.
Perf output processed (skipped 58.485 seconds):
 Column 1: cycles (50863 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 728 

               #           [sp+0x20]  (sp of caller)
               0x00007f7116b19a00:   mov    0x8(%rsi),%r10d
               0x00007f7116b19a04:   movabs $0x800000000,%r12
               0x00007f7116b19a0e:   add    %r12,%r10
               0x00007f7116b19a11:   xor    %r12,%r12
               0x00007f7116b19a14:   cmp    %r10,%rax
               0x00007f7116b19a17:   jne    0x00007f710f01e780           ;   {runtime_call ic_miss_stub}
               0x00007f7116b19a1d:   nop
               0x00007f7116b19a1e:   xchg   %ax,%ax
             [Verified Entry Point]
   0.01%       0x00007f7116b19a20:   mov    %eax,-0x14000(%rsp)
   0.01%       0x00007f7116b19a27:   sub    $0x18,%rsp
   0.01%       0x00007f7116b19a2b:   mov    %rbp,0x10(%rsp)
               0x00007f7116b19a30:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                         ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch@0 (line 75)
   0.01%       0x00007f7116b19a33:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f7116b19af6
   0.21%       0x00007f7116b19a3b:   nopl   0x0(%rax,%rax,1)
               0x00007f7116b19a40:   test   %r10,%r10
               0x00007f7116b19a43:   je     0x00007f7116b19aee
   0.03%       0x00007f7116b19a49:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch@3 (line 77)
               0x00007f7116b19a4d:   lea    0x10(%rax),%rax
               0x00007f7116b19a51:   vpxor  %xmm0,%xmm0,%xmm0
               0x00007f7116b19a55:   cmp    $0x8,%r10
               0x00007f7116b19a59:   jb     0x00007f7116b19ae5
   0.02%       0x00007f7116b19a5f:   lea    -0x8(%r10),%r11
               0x00007f7116b19a63:   mov    $0x0,%r8
               0x00007f7116b19a6a:   nopw   0x0(%rax,%rax,1)
  16.52%  ↗    0x00007f7116b19a70:   vmovdqu (%rax,%r8,4),%ymm1
  19.99%  │    0x00007f7116b19a76:   vpaddd %ymm1,%ymm0,%ymm0
  46.94%  │    0x00007f7116b19a7a:   lea    0x8(%r8),%r8
   5.96%  │    0x00007f7116b19a7e:   xchg   %ax,%ax
   7.31%  │    0x00007f7116b19a80:   cmp    %r11,%r8
          ╰    0x00007f7116b19a83:   jle    0x00007f7116b19a70
               0x00007f7116b19a85:   vextracti128 $0x1,%ymm0,%xmm1
   0.02%       0x00007f7116b19a8b:   vpaddd %xmm1,%xmm0,%xmm0
   0.09%       0x00007f7116b19a8f:   vpshufd $0xe,%xmm0,%xmm1
               0x00007f7116b19a94:   vpaddd %xmm1,%xmm0,%xmm0
   0.01%       0x00007f7116b19a98:   vmovd  %xmm0,%r11d
               0x00007f7116b19a9d:   vpextrd $0x1,%xmm0,%r9d
   0.02%       0x00007f7116b19aa3:   add    %r9d,%r11d
   0.02%       0x00007f7116b19aa6:   dec    %r10
           ╭   0x00007f7116b19aa9:   jmp    0x00007f7116b19ac7
           │   0x00007f7116b19aae:   data16 data16 nopw 0x0(%rax,%rax,1)
           │   0x00007f7116b19ab9:   data16 data16 xchg %ax,%ax
           │   0x00007f7116b19abd:   data16 xchg %ax,%ax
           │↗  0x00007f7116b19ac0:   add    (%rax,%r8,4),%r11d           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch@28 (line 78)
           ││  0x00007f7116b19ac4:   inc    %r8
           ↘│  0x00007f7116b19ac7:   cmp    %r10,%r8
            ╰  0x00007f7116b19aca:   jle    0x00007f7116b19ac0
               0x00007f7116b19acc:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  97.18%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 728 
   0.61%               kernel  [unknown] 
   0.55%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 728 
   0.11%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 744 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%         libc-2.31.so  re_search_stub 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.99%  <...other 324 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::no_if_branch, version 4, compile id 728 
   1.76%               kernel  [unknown] 
   0.10%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_no_if_branch_jmhTest::no_if_branch_avgt_jmhStub, version 5, compile id 744 
   0.03%                       <unknown> 
   0.02%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%         libc-2.31.so  __strxfrm_l 
   0.02%         libc-2.31.so  re_search_stub 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  WatcherThread::sleep 
   0.17%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%       jvmci, level 4
   1.76%               kernel
   0.20%            libjvm.so
   0.09%         libc-2.31.so
   0.03%                     
   0.02%           ld-2.31.so
   0.02%   libpthread-2.31.so
   0.01%               [vdso]
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.predictable_if_branch
# Parameters: (size = 16384)

# Run progress: 33.33% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3314.486 ns/op
# Warmup Iteration   2: 3296.846 ns/op
# Warmup Iteration   3: 3294.033 ns/op
# Warmup Iteration   4: 3292.375 ns/op
# Warmup Iteration   5: 3294.683 ns/op
Iteration   1: 3292.029 ns/op
Iteration   2: 3291.877 ns/op
Iteration   3: 3291.029 ns/op
Iteration   4: 3293.823 ns/op
Iteration   5: 3292.773 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.predictable_if_branch":
  3292.306 ±(99.9%) 4.043 ns/op [Average]
  (min, avg, max) = (3291.029, 3292.306, 3293.823), stdev = 1.050
  CI (99.9%): [3288.263, 3296.349] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.predictable_if_branch:·asm":
PrintAssembly processed: 190880 total address lines.
Perf output processed (skipped 58.683 seconds):
 Column 1: cycles (50874 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 730 

               0x00007fe1a6b1c024:   jb     0x00007fe1a6b1c0f4
               0x00007fe1a6b1c02a:   lea    -0x8(%r8),%r9
               0x00007fe1a6b1c02e:   vmovdqa -0x96(%rip),%ymm1        # 0x00007fe1a6b1bfa0
                                                                         ;   {section_word}
   0.01%       0x00007fe1a6b1c036:   vpcmpeqd %ymm2,%ymm2,%ymm2
               0x00007fe1a6b1c03a:   mov    $0x0,%rcx
          ╭    0x00007fe1a6b1c041:   jmp    0x00007fe1a6b1c071
          │    0x00007fe1a6b1c046:   data16 data16 nopw 0x0(%rax,%rax,1)
          │    0x00007fe1a6b1c051:   data16 data16 xchg %ax,%ax
          │    0x00007fe1a6b1c055:   data16 data16 nopw 0x0(%rax,%rax,1)
  15.68%  │ ↗  0x00007fe1a6b1c060:   vpaddd %ymm3,%ymm0,%ymm0
   3.43%  │ │  0x00007fe1a6b1c064:   lea    0x8(%rcx),%rcx
   2.94%  │ │  0x00007fe1a6b1c068:   cmp    %r9,%rcx
          │╭│  0x00007fe1a6b1c06b:   jg     0x00007fe1a6b1c08b
  10.06%  ↘││  0x00007fe1a6b1c071:   vmovdqu (%r11,%rcx,4),%ymm3
  14.78%   ││  0x00007fe1a6b1c077:   vpcmpgtd %ymm3,%ymm1,%ymm4
  27.65%   ││  0x00007fe1a6b1c07b:   vpxor  %ymm2,%ymm4,%ymm4
   5.71%   ││  0x00007fe1a6b1c07f:   vptest %ymm4,%ymm4
  17.08%   │╰  0x00007fe1a6b1c084:   je     0x00007fe1a6b1c060
           │   0x00007fe1a6b1c086:   jmp    0x00007fe1a6b1c121           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 90)
   0.00%   ↘   0x00007fe1a6b1c08b:   vextracti128 $0x1,%ymm0,%xmm1
   0.01%       0x00007fe1a6b1c091:   vpaddd %xmm1,%xmm0,%xmm0
   0.01%       0x00007fe1a6b1c095:   vpshufd $0xe,%xmm0,%xmm1
   0.01%       0x00007fe1a6b1c09a:   vpaddd %xmm1,%xmm0,%xmm0
   0.02%       0x00007fe1a6b1c09e:   vmovd  %xmm0,%r9d
               0x00007fe1a6b1c0a3:   vpextrd $0x1,%xmm0,%ebx
   0.00%       0x00007fe1a6b1c0a9:   add    %ebx,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
   0.01%       0x00007fe1a6b1c0ac:   dec    %r8
               0x00007fe1a6b1c0af:   jmp    0x00007fe1a6b1c0d6
               0x00007fe1a6b1c0b4:   nopl   0x0(%rax,%rax,1)
               0x00007fe1a6b1c0bc:   data16 data16 xchg %ax,%ax
               0x00007fe1a6b1c0c0:   mov    (%r11,%rcx,4),%ebx
               0x00007fe1a6b1c0c4:   cmp    $0x1000,%ebx
               0x00007fe1a6b1c0ca:   jge    0x00007fe1a6b1c105           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch@13 (line 90)
               0x00007fe1a6b1c0d0:   add    %ebx,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch@36 (line 92)
....................................................................................................
  97.38%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.38%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 730 
   1.06%               kernel  [unknown] 
   0.22%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 730 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 730 
   0.10%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 748 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.69%  <...other 263 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::predictable_if_branch, version 4, compile id 730 
   1.89%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_predictable_if_branch_jmhTest::predictable_if_branch_avgt_jmhStub, version 5, compile id 748 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%         libc-2.31.so  [unknown] 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%          interpreter  getstatic  178 getstatic  
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  outputStream::print 
   0.00%         libc-2.31.so  __strxfrm_l 
   0.00%         libc-2.31.so  _int_realloc 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%            libjvm.so  xmlTextStream::write 
   0.00%   libpthread-2.31.so  __libc_write 
   0.14%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.81%       jvmci, level 4
   1.89%               kernel
   0.11%            libjvm.so
   0.08%         libc-2.31.so
   0.03%                     
   0.03%   libpthread-2.31.so
   0.02%          interpreter
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch
# Parameters: (size = 16384)

# Run progress: 66.67% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2415.264 ns/op
# Warmup Iteration   2: 2399.073 ns/op
# Warmup Iteration   3: 2398.502 ns/op
# Warmup Iteration   4: 2398.219 ns/op
# Warmup Iteration   5: 2397.881 ns/op
Iteration   1: 2398.037 ns/op
Iteration   2: 2397.806 ns/op
Iteration   3: 2398.113 ns/op
Iteration   4: 2397.976 ns/op
Iteration   5: 2398.137 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch":
  2398.014 ±(99.9%) 0.510 ns/op [Average]
  (min, avg, max) = (2397.806, 2398.014, 2398.137), stdev = 0.133
  CI (99.9%): [2397.503, 2398.524] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark.unpredictable_if_branch:·asm":
PrintAssembly processed: 190795 total address lines.
Perf output processed (skipped 58.678 seconds):
 Column 1: cycles (50519 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 734 

             #           [sp+0x20]  (sp of caller)
             0x00007f2ad6b1b2a0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
             0x00007f2ad6b1b2a4:   movabs $0x800000000,%r12
             0x00007f2ad6b1b2ae:   add    %r12,%r10
             0x00007f2ad6b1b2b1:   xor    %r12,%r12
             0x00007f2ad6b1b2b4:   cmp    %r10,%rax
             0x00007f2ad6b1b2b7:   jne    0x00007f2acf01e780           ;   {runtime_call ic_miss_stub}
             0x00007f2ad6b1b2bd:   nop
             0x00007f2ad6b1b2be:   xchg   %ax,%ax
           [Verified Entry Point]
   0.00%     0x00007f2ad6b1b2c0:   mov    %eax,-0x14000(%rsp)
   0.01%     0x00007f2ad6b1b2c7:   sub    $0x18,%rsp
             0x00007f2ad6b1b2cb:   mov    %rbp,0x10(%rsp)
             0x00007f2ad6b1b2d0:   mov    0x18(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@0 (line 102)
   0.01%     0x00007f2ad6b1b2d3:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f2ad6b1b3cd
   0.13%     0x00007f2ad6b1b2db:   nopl   0x0(%rax,%rax,1)
             0x00007f2ad6b1b2e0:   test   %r10,%r10
             0x00007f2ad6b1b2e3:   je     0x00007f2ad6b1b3c5
   0.01%     0x00007f2ad6b1b2e9:   shl    $0x3,%rax                    ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@3 (line 104)
             0x00007f2ad6b1b2ed:   lea    0x10(%rax),%rax
             0x00007f2ad6b1b2f1:   vpxor  %xmm0,%xmm0,%xmm0
             0x00007f2ad6b1b2f5:   cmp    $0x8,%r10
             0x00007f2ad6b1b2f9:   jb     0x00007f2ad6b1b3b6
   0.01%     0x00007f2ad6b1b2ff:   lea    -0x8(%r10),%r11
             0x00007f2ad6b1b303:   vmovdqa -0x8b(%rip),%ymm1        # 0x00007f2ad6b1b280
                                                                       ;   {section_word}
             0x00007f2ad6b1b30b:   mov    $0x0,%r8
             0x00007f2ad6b1b312:   data16 nopw 0x0(%rax,%rax,1)
   0.02%     0x00007f2ad6b1b31c:   data16 data16 xchg %ax,%ax
          ↗  0x00007f2ad6b1b320:   vmovdqu (%rax,%r8,4),%ymm2
  34.46%  │  0x00007f2ad6b1b326:   vpaddd %ymm2,%ymm0,%ymm3
  22.69%  │  0x00007f2ad6b1b32a:   vpcmpgtd %ymm2,%ymm1,%ymm2
   5.07%  │  0x00007f2ad6b1b32e:   vpblendvb %ymm2,%ymm3,%ymm0,%ymm0
  35.67%  │  0x00007f2ad6b1b334:   lea    0x8(%r8),%r8
          │  0x00007f2ad6b1b338:   cmp    %r11,%r8
          ╰  0x00007f2ad6b1b33b:   jle    0x00007f2ad6b1b320
             0x00007f2ad6b1b33d:   vextracti128 $0x1,%ymm0,%xmm1
   0.01%     0x00007f2ad6b1b343:   vpaddd %xmm1,%xmm0,%xmm0
   0.10%     0x00007f2ad6b1b347:   vpshufd $0xe,%xmm0,%xmm1
             0x00007f2ad6b1b34c:   vpaddd %xmm1,%xmm0,%xmm0
   0.02%     0x00007f2ad6b1b350:   vmovd  %xmm0,%r11d
             0x00007f2ad6b1b355:   vpextrd $0x1,%xmm0,%r9d
             0x00007f2ad6b1b35b:   add    %r9d,%r11d
   0.01%     0x00007f2ad6b1b35e:   dec    %r10
             0x00007f2ad6b1b361:   jmp    0x00007f2ad6b1b398
             0x00007f2ad6b1b366:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f2ad6b1b371:   data16 data16 xchg %ax,%ax
             0x00007f2ad6b1b375:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f2ad6b1b380:   mov    (%rax,%r8,4),%r9d
             0x00007f2ad6b1b384:   mov    %r11d,%ecx
             0x00007f2ad6b1b387:   add    %r9d,%ecx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch@36 (line 106)
             0x00007f2ad6b1b38a:   cmp    $0x801,%r9d
             0x00007f2ad6b1b391:   cmovl  %ecx,%r11d                   ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.21%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 734 
   0.29%               kernel  [unknown] 
   0.25%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 734 
   0.11%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 751 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.73%  <...other 263 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.46%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.IfConditionalBranchBenchmark::unpredictable_if_branch, version 4, compile id 734 
   1.21%               kernel  [unknown] 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.IfConditionalBranchBenchmark_unpredictable_if_branch_jmhTest::unpredictable_if_branch_avgt_jmhStub, version 5, compile id 751 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  stringStream::write 
   0.00%         libc-2.31.so  getifaddrs_internal 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%            libjvm.so  G1CollectionSet::update_young_region_prediction 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.50%       jvmci, level 4
   1.21%               kernel
   0.13%            libjvm.so
   0.07%         libc-2.31.so
   0.03%                     
   0.03%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.01%  libjvmcicompiler.so
   0.00%       perf-50769.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:35

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

Benchmark                                                  (size)  Mode  Cnt     Score   Error  Units
IfConditionalBranchBenchmark.no_if_branch                   16384  avgt    5  1599.825 ± 0.152  ns/op
IfConditionalBranchBenchmark.no_if_branch:·asm              16384  avgt            NaN            ---
IfConditionalBranchBenchmark.predictable_if_branch          16384  avgt    5  3292.306 ± 4.043  ns/op
IfConditionalBranchBenchmark.predictable_if_branch:·asm     16384  avgt            NaN            ---
IfConditionalBranchBenchmark.unpredictable_if_branch        16384  avgt    5  2398.014 ± 0.510  ns/op
IfConditionalBranchBenchmark.unpredictable_if_branch:·asm   16384  avgt            NaN            ---
