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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method
# Parameters: (depth = 256)

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 477.985 ns/op
# Warmup Iteration   2: 476.040 ns/op
# Warmup Iteration   3: 475.862 ns/op
# Warmup Iteration   4: 475.936 ns/op
# Warmup Iteration   5: 476.006 ns/op
Iteration   1: 475.916 ns/op
Iteration   2: 475.969 ns/op
Iteration   3: 475.815 ns/op
Iteration   4: 475.935 ns/op
Iteration   5: 475.910 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method":
  475.909 ±(99.9%) 0.221 ns/op [Average]
  (min, avg, max) = (475.815, 475.909, 475.969), stdev = 0.057
  CI (99.9%): [475.688, 476.130] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_non_static_method:·asm":
PrintAssembly processed: 193002 total address lines.
Perf output processed (skipped 58.714 seconds):
 Column 1: cycles (50919 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 749 

                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
   3.92%       0x00007f9722ffcced:   cmp    $0x2,%r10d
          ╭    0x00007f9722ffccf1:   jge    0x00007f9722ffcd15
          │    0x00007f9722ffccf7:   cmp    $0x0,%r10d
          │    0x00007f9722ffccfb:   nopl   0x0(%rax,%rax,1)
          │    0x00007f9722ffcd00:   je     0x00007f9722ffcd74
          │    0x00007f9722ffcd06:   cmp    $0x1,%r10d
          │    0x00007f9722ffcd0a:   je     0x00007f9722ffcd83
          │╭   0x00007f9722ffcd10:   jmp    0x00007f9722ffcd29
   0.17%  ↘│   0x00007f9722ffcd15:   cmp    $0x2,%r10d
           │   0x00007f9722ffcd19:   je     0x00007f9722ffcd92
   0.34%   │   0x00007f9722ffcd1f:   cmp    $0x3,%r10d
           │   0x00007f9722ffcd23:   je     0x00007f9722ffcda2           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 108)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
   0.28%   ↘   0x00007f9722ffcd29:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
   3.72%       0x00007f9722ffcd2c:   data16 xchg %ax,%ax
   0.01%       0x00007f9722ffcd2f:   call   0x00007f9722ffccc0           ; ImmutableOopMap {}
                                                                         ;*invokevirtual cls_non_static {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
                                                                         ;   {optimized virtual_call}
  24.97%       0x00007f9722ffcd34:   nop
   2.07%    ↗  0x00007f9722ffcd35:   mov    0x10(%rsp),%rbp
  26.06%    │  0x00007f9722ffcd3a:   add    $0x18,%rsp
   0.08%    │  0x00007f9722ffcd3e:   mov    0x348(%r15),%rcx
   0.06%    │  0x00007f9722ffcd45:   test   %eax,(%rcx)                  ;   {poll_return}
  13.71%    │  0x00007f9722ffcd47:   ret    
            │  0x00007f9722ffcd48:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
            │  0x00007f9722ffcd52:   mov    0x10(%rsp),%rbp
            │  0x00007f9722ffcd57:   add    $0x18,%rsp
            │  0x00007f9722ffcd5b:   mov    0x348(%r15),%rcx
            │  0x00007f9722ffcd62:   test   %eax,(%rcx)                  ;   {poll_return}
            │  0x00007f9722ffcd64:   ret    
            │  0x00007f9722ffcd65:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
            │  0x00007f9722ffcd6f:   mov    %r10,%rax
            ╰  0x00007f9722ffcd72:   jmp    0x00007f9722ffcd35
               0x00007f9722ffcd74:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
....................................................................................................
  71.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 749 

            #           [sp+0x20]  (sp of caller)
            0x00007f9722ffcca0:   mov    0x8(%rsi),%r10d
            0x00007f9722ffcca4:   movabs $0x800000000,%r12
            0x00007f9722ffccae:   add    %r12,%r10
            0x00007f9722ffccb1:   xor    %r12,%r12
            0x00007f9722ffccb4:   cmp    %r10,%rax
            0x00007f9722ffccb7:   jne    0x00007f971b4ff780           ;   {runtime_call ic_miss_stub}
            0x00007f9722ffccbd:   nop
            0x00007f9722ffccbe:   xchg   %ax,%ax
          [Verified Entry Point]
   0.45%    0x00007f9722ffccc0:   mov    %eax,-0x14000(%rsp)
  11.18%    0x00007f9722ffccc7:   sub    $0x18,%rsp
   0.09%    0x00007f9722ffcccb:   mov    %rbp,0x10(%rsp)
   4.14%    0x00007f9722ffccd0:   test   %edx,%edx
            0x00007f9722ffccd2:   je     0x00007f9722ffcd48           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 108)
   0.03%    0x00007f9722ffccd8:   nopl   0x0(%rax,%rax,1)
   0.06%    0x00007f9722ffcce0:   cmp    $0x1,%edx
            0x00007f9722ffcce3:   je     0x00007f9722ffcd65           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@1 (line 108)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
   0.20%    0x00007f9722ffcce9:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@11 (line 111)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static@12 (line 111)
   3.92%    0x00007f9722ffcced:   cmp    $0x2,%r10d
            0x00007f9722ffccf1:   jge    0x00007f9722ffcd15
            0x00007f9722ffccf7:   cmp    $0x0,%r10d
            0x00007f9722ffccfb:   nopl   0x0(%rax,%rax,1)
            0x00007f9722ffcd00:   je     0x00007f9722ffcd74
            0x00007f9722ffcd06:   cmp    $0x1,%r10d
            0x00007f9722ffcd0a:   je     0x00007f9722ffcd83
            0x00007f9722ffcd10:   jmp    0x00007f9722ffcd29
   0.17%    0x00007f9722ffcd15:   cmp    $0x2,%r10d
....................................................................................................
  20.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 749 
  20.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 749 
   2.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 764 
   2.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 750 
   0.80%               kernel  [unknown] 
   0.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 750 
   0.11%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 749 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%               kernel  [unknown] 
   1.01%  <...other 346 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.63%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_non_static, version 2, compile id 749 
   3.17%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_non_static_method, version 2, compile id 750 
   2.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_non_static_method_jmhTest::class_non_static_method_avgt_jmhStub, version 5, compile id 764 
   2.03%               kernel  [unknown] 
   0.06%                       <unknown> 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  PerfLongVariant::sample 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%            libjvm.so  event_to_env 
   0.17%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.61%       jvmci, level 4
   2.03%               kernel
   0.14%            libjvm.so
   0.07%         libc-2.31.so
   0.06%                     
   0.02%   libpthread-2.31.so
   0.02%          interpreter
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%               [vdso]
   0.00%          c1, level 3
   0.00%     Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method
# Parameters: (depth = 256)

# Run progress: 16.67% complete, ETA 00:09:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 481.209 ns/op
# Warmup Iteration   2: 480.746 ns/op
# Warmup Iteration   3: 477.992 ns/op
# Warmup Iteration   4: 477.980 ns/op
# Warmup Iteration   5: 478.256 ns/op
Iteration   1: 477.994 ns/op
Iteration   2: 478.013 ns/op
Iteration   3: 477.986 ns/op
Iteration   4: 477.994 ns/op
Iteration   5: 478.008 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method":
  477.999 ±(99.9%) 0.043 ns/op [Average]
  (min, avg, max) = (477.986, 477.999, 478.013), stdev = 0.011
  CI (99.9%): [477.956, 478.042] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.class_static_method:·asm":
PrintAssembly processed: 190538 total address lines.
Perf output processed (skipped 58.520 seconds):
 Column 1: cycles (50763 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 733 

                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
   2.54%       0x00007f2a22ffb44d:   cmp    $0x2,%r10d
          ╭    0x00007f2a22ffb451:   jge    0x00007f2a22ffb475
          │    0x00007f2a22ffb457:   cmp    $0x0,%r10d
          │    0x00007f2a22ffb45b:   nopl   0x0(%rax,%rax,1)
          │    0x00007f2a22ffb460:   je     0x00007f2a22ffb4d4
          │    0x00007f2a22ffb466:   cmp    $0x1,%r10d
          │    0x00007f2a22ffb46a:   je     0x00007f2a22ffb4e3
          │╭   0x00007f2a22ffb470:   jmp    0x00007f2a22ffb489
   0.03%  ↘│   0x00007f2a22ffb475:   cmp    $0x2,%r10d
           │   0x00007f2a22ffb479:   je     0x00007f2a22ffb4f2
   0.15%   │   0x00007f2a22ffb47f:   cmp    $0x3,%r10d
           │   0x00007f2a22ffb483:   je     0x00007f2a22ffb502           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 115)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
   0.13%   ↘   0x00007f2a22ffb489:   lea    -0x6(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
   2.44%       0x00007f2a22ffb48c:   data16 xchg %ax,%ax
   0.00%       0x00007f2a22ffb48f:   call   0x00007f2a22ffb420           ; ImmutableOopMap {}
                                                                         ;*invokestatic cls_static {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
                                                                         ;   {static_call}
  28.57%       0x00007f2a22ffb494:   nop
   2.28%    ↗  0x00007f2a22ffb495:   mov    0x10(%rsp),%rbp
  31.01%    │  0x00007f2a22ffb49a:   add    $0x18,%rsp
   0.08%    │  0x00007f2a22ffb49e:   mov    0x348(%r15),%rcx
            │  0x00007f2a22ffb4a5:   test   %eax,(%rcx)                  ;   {poll_return}
  17.25%    │  0x00007f2a22ffb4a7:   ret    
            │  0x00007f2a22ffb4a8:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
            │  0x00007f2a22ffb4b2:   mov    0x10(%rsp),%rbp
            │  0x00007f2a22ffb4b7:   add    $0x18,%rsp
            │  0x00007f2a22ffb4bb:   mov    0x348(%r15),%rcx
            │  0x00007f2a22ffb4c2:   test   %eax,(%rcx)                  ;   {poll_return}
            │  0x00007f2a22ffb4c4:   ret    
            │  0x00007f2a22ffb4c5:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
            │  0x00007f2a22ffb4cf:   mov    %r10,%rax
            ╰  0x00007f2a22ffb4d2:   jmp    0x00007f2a22ffb495
               0x00007f2a22ffb4d4:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
....................................................................................................
  81.95%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 733 

           dependencies   [0x00007f2a22ffb628,0x00007f2a22ffb630] = 8
           JVMCI data     [0x00007f2a22ffb630,0x00007f2a22ffb640] = 16
          [Disassembly]
          --------------------------------------------------------------------------------
          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Verified Entry Point]
            # {method} {0x00007f2a10c75ba8} &apos;cls_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark&apos;
            # parm0:    rsi       = int
            #           [sp+0x20]  (sp of caller)
   0.21%    0x00007f2a22ffb420:   mov    %eax,-0x14000(%rsp)
   7.27%    0x00007f2a22ffb427:   sub    $0x18,%rsp
   0.05%    0x00007f2a22ffb42b:   mov    %rbp,0x10(%rsp)
   2.63%    0x00007f2a22ffb430:   test   %esi,%esi
            0x00007f2a22ffb432:   je     0x00007f2a22ffb4a8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 115)
   0.01%    0x00007f2a22ffb438:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007f2a22ffb440:   cmp    $0x1,%esi
            0x00007f2a22ffb443:   je     0x00007f2a22ffb4c5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@1 (line 115)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
   0.05%    0x00007f2a22ffb449:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@10 (line 118)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static@11 (line 118)
   2.54%    0x00007f2a22ffb44d:   cmp    $0x2,%r10d
            0x00007f2a22ffb451:   jge    0x00007f2a22ffb475
            0x00007f2a22ffb457:   cmp    $0x0,%r10d
            0x00007f2a22ffb45b:   nopl   0x0(%rax,%rax,1)
            0x00007f2a22ffb460:   je     0x00007f2a22ffb4d4
            0x00007f2a22ffb466:   cmp    $0x1,%r10d
            0x00007f2a22ffb46a:   je     0x00007f2a22ffb4e3
            0x00007f2a22ffb470:   jmp    0x00007f2a22ffb489
   0.03%    0x00007f2a22ffb475:   cmp    $0x2,%r10d
....................................................................................................
  12.75%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.95%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 733 
  12.75%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 733 
   1.53%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 734 
   1.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 5, compile id 750 
   0.85%               kernel  [unknown] 
   0.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 734 
   0.12%               kernel  [unknown] 
   0.08%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 733 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.91%  <...other 317 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.79%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::cls_static, version 2, compile id 733 
   1.93%               kernel  [unknown] 
   1.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::class_static_method, version 2, compile id 734 
   1.31%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_class_static_method_jmhTest::class_static_method_avgt_jmhStub, version 5, compile id 750 
   0.03%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%                       <unknown> 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::flush 
   0.01%            libjvm.so  outputStream::update_position 
   0.00%            libjvm.so  AbstractDisassembler::print_location 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%            libjvm.so  os::PlatformMonitor::wait 
   0.00%       hsdis-amd64.so  print_insn 
   0.13%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.78%       jvmci, level 4
   1.93%               kernel
   0.12%            libjvm.so
   0.09%         libc-2.31.so
   0.01%                     
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method
# Parameters: (depth = 256)

# Run progress: 33.33% complete, ETA 00:07:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 517.604 ns/op
# Warmup Iteration   2: 512.673 ns/op
# Warmup Iteration   3: 509.604 ns/op
# Warmup Iteration   4: 509.576 ns/op
# Warmup Iteration   5: 509.648 ns/op
Iteration   1: 509.903 ns/op
Iteration   2: 509.587 ns/op
Iteration   3: 509.582 ns/op
Iteration   4: 509.597 ns/op
Iteration   5: 509.568 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method":
  509.647 ±(99.9%) 0.551 ns/op [Average]
  (min, avg, max) = (509.568, 509.647, 509.903), stdev = 0.143
  CI (99.9%): [509.096, 510.199] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_non_static_method:·asm":
PrintAssembly processed: 197948 total address lines.
Perf output processed (skipped 58.635 seconds):
 Column 1: cycles (50601 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 743 

                  #           [sp+0x20]  (sp of caller)
                  0x00007f3df6ffc4a0:   mov    0x8(%rsi),%r10d
                  0x00007f3df6ffc4a4:   movabs $0x800000000,%r12
                  0x00007f3df6ffc4ae:   add    %r12,%r10
                  0x00007f3df6ffc4b1:   xor    %r12,%r12
                  0x00007f3df6ffc4b4:   cmp    %r10,%rax
                  0x00007f3df6ffc4b7:   jne    0x00007f3def4ff780           ;   {runtime_call ic_miss_stub}
                  0x00007f3df6ffc4bd:   nop
                  0x00007f3df6ffc4be:   xchg   %ax,%ax
                [Verified Entry Point]
   0.19%      ↗   0x00007f3df6ffc4c0:   mov    %eax,-0x14000(%rsp)
  12.94%      │   0x00007f3df6ffc4c7:   sub    $0x18,%rsp
   0.08%      │   0x00007f3df6ffc4cb:   mov    %rbp,0x10(%rsp)
   3.31%      │   0x00007f3df6ffc4d0:   test   %edx,%edx
          ╭   │   0x00007f3df6ffc4d2:   je     0x00007f3df6ffc550           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 124)
          │   │   0x00007f3df6ffc4d8:   nopl   0x0(%rax,%rax,1)
   0.09%  │   │   0x00007f3df6ffc4e0:   cmpl   $0xc26e78,0x8(%rsi)          ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$1&apos;)}
   0.05%  │   │   0x00007f3df6ffc4e7:   jne    0x00007f3df6ffc5b8           ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   3.29%  │   │   0x00007f3df6ffc4ed:   cmp    $0x1,%edx
          │╭  │   0x00007f3df6ffc4f0:   je     0x00007f3df6ffc56d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 124)
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   0.01%  ││  │   0x00007f3df6ffc4f6:   lea    -0x2(%rdx),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 127)
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   0.09%  ││  │   0x00007f3df6ffc4fa:   cmp    $0x2,%r10d
   0.07%  ││  │   0x00007f3df6ffc4fe:   xchg   %ax,%ax
   3.43%  ││╭ │   0x00007f3df6ffc500:   jge    0x00007f3df6ffc51f
          │││ │   0x00007f3df6ffc506:   cmp    $0x0,%r10d
          │││ │   0x00007f3df6ffc50a:   je     0x00007f3df6ffc57c
          │││ │   0x00007f3df6ffc510:   cmp    $0x1,%r10d
          │││ │   0x00007f3df6ffc514:   je     0x00007f3df6ffc58b
          │││╭│   0x00007f3df6ffc51a:   jmp    0x00007f3df6ffc533
   0.02%  ││↘││   0x00007f3df6ffc51f:   cmp    $0x2,%r10d
          ││ ││   0x00007f3df6ffc523:   je     0x00007f3df6ffc59a
   0.17%  ││ ││   0x00007f3df6ffc529:   cmp    $0x3,%r10d
          ││ ││   0x00007f3df6ffc52d:   je     0x00007f3df6ffc5a9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@1 (line 124)
          ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   0.10%  ││ ↘│   0x00007f3df6ffc533:   lea    -0x6(%rdx),%edx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@11 (line 127)
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
   3.20%  ││  │   0x00007f3df6ffc536:   nop
   0.01%  ││  ╰   0x00007f3df6ffc537:   call   0x00007f3df6ffc4c0           ; ImmutableOopMap {}
          ││                                                                ;*invokeinterface itf_non_static {reexecute=0 rethrow=0 return_oop=1}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static@12 (line 127)
          ││                                                                ;   {optimized virtual_call}
  24.16%  ││      0x00007f3df6ffc53c:   nop
   1.95%  ││   ↗  0x00007f3df6ffc53d:   mov    0x10(%rsp),%rbp
  30.70%  ││   │  0x00007f3df6ffc542:   add    $0x18,%rsp
   0.05%  ││   │  0x00007f3df6ffc546:   mov    0x348(%r15),%rcx
          ││   │  0x00007f3df6ffc54d:   test   %eax,(%rcx)                  ;   {poll_return}
   8.36%  ││   │  0x00007f3df6ffc54f:   ret    
          ↘│   │  0x00007f3df6ffc550:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
           │   │  0x00007f3df6ffc55a:   mov    0x10(%rsp),%rbp
           │   │  0x00007f3df6ffc55f:   add    $0x18,%rsp
           │   │  0x00007f3df6ffc563:   mov    0x348(%r15),%rcx
           │   │  0x00007f3df6ffc56a:   test   %eax,(%rcx)                  ;   {poll_return}
           │   │  0x00007f3df6ffc56c:   ret    
           ↘   │  0x00007f3df6ffc56d:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
               │  0x00007f3df6ffc577:   mov    %r10,%rax
               ╰  0x00007f3df6ffc57a:   jmp    0x00007f3df6ffc53d
                  0x00007f3df6ffc57c:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
....................................................................................................
  92.28%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.28%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 743 
   2.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 744 
   2.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 758 
   0.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 744 
   0.47%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 743 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.78%  <...other 274 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_non_static, version 2, compile id 743 
   3.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_non_static_method, version 2, compile id 744 
   2.58%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_non_static_method_jmhTest::interface_non_static_method_avgt_jmhStub, version 5, compile id 758 
   1.44%               kernel  [unknown] 
   0.07%                       <unknown> 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  _int_malloc 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.22%       jvmci, level 4
   1.44%               kernel
   0.14%            libjvm.so
   0.07%                     
   0.07%         libc-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method
# Parameters: (depth = 256)

# Run progress: 50.00% complete, ETA 00:05:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 481.112 ns/op
# Warmup Iteration   2: 480.408 ns/op
# Warmup Iteration   3: 477.623 ns/op
# Warmup Iteration   4: 477.604 ns/op
# Warmup Iteration   5: 477.637 ns/op
Iteration   1: 478.151 ns/op
Iteration   2: 478.246 ns/op
Iteration   3: 477.628 ns/op
Iteration   4: 477.606 ns/op
Iteration   5: 477.617 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method":
  477.849 ±(99.9%) 1.234 ns/op [Average]
  (min, avg, max) = (477.606, 477.849, 478.246), stdev = 0.320
  CI (99.9%): [476.615, 479.084] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.interface_static_method:·asm":
PrintAssembly processed: 195399 total address lines.
Perf output processed (skipped 58.715 seconds):
 Column 1: cycles (50859 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 738 

                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
   3.27%       0x00007f9646ffc1cd:   cmp    $0x2,%r10d
          ╭    0x00007f9646ffc1d1:   jge    0x00007f9646ffc1f5
          │    0x00007f9646ffc1d7:   cmp    $0x0,%r10d
          │    0x00007f9646ffc1db:   nopl   0x0(%rax,%rax,1)
          │    0x00007f9646ffc1e0:   je     0x00007f9646ffc254
          │    0x00007f9646ffc1e6:   cmp    $0x1,%r10d
          │    0x00007f9646ffc1ea:   je     0x00007f9646ffc263
          │╭   0x00007f9646ffc1f0:   jmp    0x00007f9646ffc209
   0.10%  ↘│   0x00007f9646ffc1f5:   cmp    $0x2,%r10d
           │   0x00007f9646ffc1f9:   je     0x00007f9646ffc272
   0.30%   │   0x00007f9646ffc1ff:   cmp    $0x3,%r10d
           │   0x00007f9646ffc203:   je     0x00007f9646ffc282           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 131)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
   0.26%   ↘   0x00007f9646ffc209:   lea    -0x6(%rsi),%esi              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
   3.32%       0x00007f9646ffc20c:   data16 xchg %ax,%ax
   0.01%       0x00007f9646ffc20f:   call   0x00007f9646ffc1a0           ; ImmutableOopMap {}
                                                                         ;*invokestatic itf_static {reexecute=0 rethrow=0 return_oop=1}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
                                                                         ;   {static_call}
  25.99%       0x00007f9646ffc214:   nop
   2.03%    ↗  0x00007f9646ffc215:   mov    0x10(%rsp),%rbp
  27.66%    │  0x00007f9646ffc21a:   add    $0x18,%rsp
   0.08%    │  0x00007f9646ffc21e:   mov    0x348(%r15),%rcx
   0.00%    │  0x00007f9646ffc225:   test   %eax,(%rcx)                  ;   {poll_return}
  15.40%    │  0x00007f9646ffc227:   ret    
            │  0x00007f9646ffc228:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
            │  0x00007f9646ffc232:   mov    0x10(%rsp),%rbp
            │  0x00007f9646ffc237:   add    $0x18,%rsp
            │  0x00007f9646ffc23b:   mov    0x348(%r15),%rcx
            │  0x00007f9646ffc242:   test   %eax,(%rcx)                  ;   {poll_return}
            │  0x00007f9646ffc244:   ret    
            │  0x00007f9646ffc245:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
            │  0x00007f9646ffc24f:   mov    %r10,%rax
            ╰  0x00007f9646ffc252:   jmp    0x00007f9646ffc215
               0x00007f9646ffc254:   movabs $0x7fef253c0,%r10            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
....................................................................................................
  75.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 738 

           dependencies   [0x00007f9646ffc3a8,0x00007f9646ffc3b0] = 8
           JVMCI data     [0x00007f9646ffc3b0,0x00007f9646ffc3c0] = 16
          [Disassembly]
          --------------------------------------------------------------------------------
          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Verified Entry Point]
            # {method} {0x00007f9625cd6238} &apos;itf_static&apos; &apos;(I)Ljava/lang/Object;&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$RInterface&apos;
            # parm0:    rsi       = int
            #           [sp+0x20]  (sp of caller)
   0.39%    0x00007f9646ffc1a0:   mov    %eax,-0x14000(%rsp)
   9.97%    0x00007f9646ffc1a7:   sub    $0x18,%rsp
   0.08%    0x00007f9646ffc1ab:   mov    %rbp,0x10(%rsp)
   3.53%    0x00007f9646ffc1b0:   test   %esi,%esi
            0x00007f9646ffc1b2:   je     0x00007f9646ffc228           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 131)
   0.04%    0x00007f9646ffc1b8:   nopl   0x0(%rax,%rax,1)
   0.02%    0x00007f9646ffc1c0:   cmp    $0x1,%esi
            0x00007f9646ffc1c3:   je     0x00007f9646ffc245           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@1 (line 131)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
   0.15%    0x00007f9646ffc1c9:   lea    -0x2(%rsi),%r10d             ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@10 (line 134)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static@11 (line 134)
   3.27%    0x00007f9646ffc1cd:   cmp    $0x2,%r10d
            0x00007f9646ffc1d1:   jge    0x00007f9646ffc1f5
            0x00007f9646ffc1d7:   cmp    $0x0,%r10d
            0x00007f9646ffc1db:   nopl   0x0(%rax,%rax,1)
            0x00007f9646ffc1e0:   je     0x00007f9646ffc254
            0x00007f9646ffc1e6:   cmp    $0x1,%r10d
            0x00007f9646ffc1ea:   je     0x00007f9646ffc263
            0x00007f9646ffc1f0:   jmp    0x00007f9646ffc209
   0.10%    0x00007f9646ffc1f5:   cmp    $0x2,%r10d
....................................................................................................
  17.45%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 738 
  17.45%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 738 
   2.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 739 
   2.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 5, compile id 755 
   0.92%               kernel  [unknown] 
   0.30%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 739 
   0.11%               kernel  [unknown] 
   0.07%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 738 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.79%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.66%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$RInterface::itf_static, version 2, compile id 738 
   2.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::interface_static_method, version 2, compile id 739 
   2.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_interface_static_method_jmhTest::interface_static_method_avgt_jmhStub, version 5, compile id 755 
   1.83%               kernel  [unknown] 
   0.03%         libc-2.31.so  [unknown] 
   0.03%                       <unknown> 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __malloc_fork_unlock_parent 
   0.01%            libjvm.so  StatSamplerTask::task 
   0.01%            libjvm.so  VMError::is_error_reported 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.84%       jvmci, level 4
   1.83%               kernel
   0.12%            libjvm.so
   0.12%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%                     
   0.01%  libjvmcicompiler.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static
# Parameters: (depth = 256)

# Run progress: 66.67% complete, ETA 00:03:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.208 ns/op
# Warmup Iteration   2: 7.924 ns/op
# Warmup Iteration   3: 8.058 ns/op
# Warmup Iteration   4: 7.841 ns/op
# Warmup Iteration   5: 7.803 ns/op
Iteration   1: 7.811 ns/op
Iteration   2: 7.910 ns/op
Iteration   3: 7.810 ns/op
Iteration   4: 7.792 ns/op
Iteration   5: 7.798 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static":
  7.824 ±(99.9%) 0.187 ns/op [Average]
  (min, avg, max) = (7.792, 7.824, 7.910), stdev = 0.048
  CI (99.9%): [7.638, 8.011] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_non_static:·asm":
PrintAssembly processed: 197251 total address lines.
Perf output processed (skipped 58.644 seconds):
 Column 1: cycles (50875 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 744 

             #           [sp+0x20]  (sp of caller)
             0x00007f305effb2a0:   mov    0x8(%rsi),%r10d
             0x00007f305effb2a4:   movabs $0x800000000,%r12
             0x00007f305effb2ae:   add    %r12,%r10
             0x00007f305effb2b1:   xor    %r12,%r12
             0x00007f305effb2b4:   cmp    %r10,%rax
             0x00007f305effb2b7:   jne    0x00007f30574ff780           ;   {runtime_call ic_miss_stub}
             0x00007f305effb2bd:   nop
             0x00007f305effb2be:   xchg   %ax,%ax
           [Verified Entry Point]
   3.62%     0x00007f305effb2c0:   mov    %eax,-0x14000(%rsp)
   1.17%     0x00007f305effb2c7:   sub    $0x18,%rsp
   3.60%     0x00007f305effb2cb:   mov    %rbp,0x10(%rsp)
   0.65%     0x00007f305effb2d0:   mov    0x18(%rsi),%eax              ;*getfield LAMBDA_NON_STATIC {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@1 (line 98)
   0.02%     0x00007f305effb2d3:   nopw   0x0(%rax,%rax,1)
   0.48%     0x00007f305effb2dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
   3.51%     0x00007f305effb2e0:   cmpl   $0xc26c30,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f305effb367
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/RecursiveMethodCallBenchmark$$Lambda$52+0x0000000800c26c30&apos;)}
  10.18%  ╭  0x00007f305effb2eb:   jne    0x00007f305effb337           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
   4.80%  │  0x00007f305effb2f1:   mov    0x14(%rsi),%r10d             ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@5 (line 98)
          │  0x00007f305effb2f5:   data16 data16 nopw 0x0(%rax,%rax,1) ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
          │  0x00007f305effb300:   cmpl   $0x0,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007f305effb386
   8.55%  │  0x00007f305effb309:   jne    0x00007f305effb358           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda$new$0@4 (line 140)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$$Lambda$52/0x0000000800c26c30::apply@8
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
   3.56%  │  0x00007f305effb30f:   mov    0xc(,%rax,8),%eax            ; ImmutableOopMap {rsi=Oop }
          │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
          │  0x00007f305effb316:   test   %eax,(%r12,%rax,8)           ; implicit exception: dispatches to 0x00007f305effb3a6
   8.20%  │  0x00007f305effb31a:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
          │  0x00007f305effb324:   mov    0x10(%rsp),%rbp
          │  0x00007f305effb329:   add    $0x18,%rsp
          │  0x00007f305effb32d:   mov    0x348(%r15),%rcx
   4.82%  │  0x00007f305effb334:   test   %eax,(%rcx)                  ;   {poll_return}
   0.00%  │  0x00007f305effb336:   ret    
          ↘  0x00007f305effb337:   mov    $0x14,%r11
             0x00007f305effb33e:   mov    $0xffffffcd,%r10d
             0x00007f305effb344:   mov    %r10d,0x370(%r15)            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@8 (line 98)
             0x00007f305effb34b:   mov    %r11,0x378(%r15)
             0x00007f305effb352:   call   0x00007f305750527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static@0 (line 98)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007f305effb357:   nop                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 767 

              0x00007f305efffef5:   mov    0x18(%rsp),%rsi
              0x00007f305efffefa:   nopw   0x0(%rax,%rax,1)
              0x00007f305effff00:   cmpb   $0x0,0x94(%rsi)
              0x00007f305effff07:   jne    0x00007f305effff8e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
              0x00007f305effff0d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f305effff16:   jmp    0x00007f305effff2f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 232)
          │   0x00007f305effff1b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
   4.25%  │↗  0x00007f305effff20:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
   0.53%  ││  0x00007f305effff27:   test   %eax,(%r11)                  ;   {poll}
   3.62%  ││  0x00007f305effff2a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f305effff2f:   mov    0x8(%rsp),%r10
   0.69%   │  0x00007f305effff34:   mov    %r10,%rsi
   0.52%   │  0x00007f305effff37:   call   0x00007f30574ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_non_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   9.50%   │  0x00007f305effff3c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@20 (line 232)
           │  0x00007f305effff3d:   mov    0x20(%rsp),%r10
   4.39%   │  0x00007f305effff42:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@26 (line 233)
   4.26%   │  0x00007f305effff45:   mov    0x18(%rsp),%rsi
           │  0x00007f305effff4a:   cmpb   $0x0,0x94(%rsi)
  16.80%   ╰  0x00007f305effff51:   je     0x00007f305effff20           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@33 (line 234)
              0x00007f305effff53:   mov    %r10,0x20(%rsp)
              0x00007f305effff58:   call   0x00007f30771346f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f305effff5d:   nop
              0x00007f305effff5e:   mov    0x10(%rsp),%rdx
              0x00007f305effff63:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@40 (line 235)
              0x00007f305effff67:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub@46 (line 236)
              0x00007f305effff6f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  44.54%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 744 
  44.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 767 
   0.81%               kernel  [unknown] 
   0.14%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.86%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.16%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_non_static, version 2, compile id 744 
  44.54%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_non_static_jmhTest::lambda_non_static_avgt_jmhStub, version 6, compile id 767 
   1.92%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.04%         libc-2.31.so  [unknown] 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%            libjvm.so  fileStream::write 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  os::current_thread_id 
   0.01%            libjvm.so  event_to_env 
   0.01%            libjvm.so  os::elapsed_counter 
   0.01%         libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%            libjvm.so  defaultStream::hold 
   0.01%         libc-2.31.so  _int_memalign 
   0.17%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.70%       jvmci, level 4
   1.92%               kernel
   0.14%            libjvm.so
   0.12%         libc-2.31.so
   0.04%                     
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.01%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static
# Parameters: (depth = 256)

# Run progress: 83.33% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.018 ns/op
# Warmup Iteration   2: 6.955 ns/op
# Warmup Iteration   3: 7.011 ns/op
# Warmup Iteration   4: 6.948 ns/op
# Warmup Iteration   5: 6.949 ns/op
Iteration   1: 6.947 ns/op
Iteration   2: 6.961 ns/op
Iteration   3: 6.965 ns/op
Iteration   4: 6.958 ns/op
Iteration   5: 6.962 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static":
  6.959 ±(99.9%) 0.028 ns/op [Average]
  (min, avg, max) = (6.947, 6.959, 6.965), stdev = 0.007
  CI (99.9%): [6.931, 6.987] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark.lambda_static:·asm":
PrintAssembly processed: 187563 total address lines.
Perf output processed (skipped 58.452 seconds):
 Column 1: cycles (50747 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 736 

             #           [sp+0x20]  (sp of caller)
             0x00007f619effcd00:   mov    0x8(%rsi),%r10d
             0x00007f619effcd04:   movabs $0x800000000,%r12
             0x00007f619effcd0e:   add    %r12,%r10
             0x00007f619effcd11:   xor    %r12,%r12
             0x00007f619effcd14:   cmp    %r10,%rax
             0x00007f619effcd17:   jne    0x00007f61974ff780           ;   {runtime_call ic_miss_stub}
             0x00007f619effcd1d:   nop
             0x00007f619effcd1e:   xchg   %ax,%ax
           [Verified Entry Point]
   0.09%     0x00007f619effcd20:   mov    %eax,-0x14000(%rsp)
   6.49%     0x00007f619effcd27:   sub    $0x18,%rsp
   0.10%     0x00007f619effcd2b:   mov    %rbp,0x10(%rsp)
   2.19%     0x00007f619effcd30:   mov    0x14(%rsi),%eax              ;*getfield wrapper {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@4 (line 104)
   2.06%     0x00007f619effcd33:   nopw   0x0(%rax,%rax,1)
   1.01%     0x00007f619effcd3c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 104)
   0.10%     0x00007f619effcd40:   cmpl   $0x0,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f619effcd87
  26.72%  ╭  0x00007f619effcd48:   jne    0x00007f619effcd6b
   5.47%  │  0x00007f619effcd4e:   movabs $0x7fef253c0,%rax            ;   {oop(a &apos;java/lang/Object&apos;{0x00000007fef253c0})}
          │  0x00007f619effcd58:   mov    0x10(%rsp),%rbp
          │  0x00007f619effcd5d:   add    $0x18,%rsp
          │  0x00007f619effcd61:   mov    0x348(%r15),%rcx
   5.45%  │  0x00007f619effcd68:   test   %eax,(%rcx)                  ;   {poll_return}
          │  0x00007f619effcd6a:   ret                                 ;*areturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@12 (line 104)
          ↘  0x00007f619effcd6b:   movl   $0xffffffed,0x370(%r15)      ;*getfield depth {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda$static$1@1 (line 148)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark$$Lambda$51/0x0000000800c269f0::apply@4
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@7 (line 104)
             0x00007f619effcd76:   movq   $0x10,0x378(%r15)
             0x00007f619effcd81:   call   0x00007f619750527a           ; ImmutableOopMap {rsi=Oop }
                                                                       ;*getstatic LAMBDA_STATIC {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static@0 (line 104)
....................................................................................................
  49.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 753 

              0x00007f619efff1f5:   mov    0x18(%rsp),%rsi
              0x00007f619efff1fa:   nopw   0x0(%rax,%rax,1)
              0x00007f619efff200:   cmpb   $0x0,0x94(%rsi)
              0x00007f619efff207:   jne    0x00007f619efff28e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
              0x00007f619efff20d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f619efff216:   jmp    0x00007f619efff22f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 232)
          │   0x00007f619efff21b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
   5.44%  │↗  0x00007f619efff220:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
          ││  0x00007f619efff227:   test   %eax,(%r11)                  ;   {poll}
   0.10%  ││  0x00007f619efff22a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@13 (line 232)
          ↘│  0x00007f619efff22f:   mov    0x8(%rsp),%r10
   5.29%   │  0x00007f619efff234:   mov    %r10,%rsi
           │  0x00007f619efff237:   call   0x00007f61974ffa80           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual lambda_static {reexecute=0 rethrow=0 return_oop=1}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@17 (line 232)
           │                                                            ;   {optimized virtual_call}
   9.91%   │  0x00007f619efff23c:   nop                                 ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@20 (line 232)
           │  0x00007f619efff23d:   mov    0x20(%rsp),%r10
   4.47%   │  0x00007f619efff242:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@26 (line 233)
   5.45%   │  0x00007f619efff245:   mov    0x18(%rsp),%rsi
           │  0x00007f619efff24a:   cmpb   $0x0,0x94(%rsi)
  17.70%   ╰  0x00007f619efff251:   je     0x00007f619efff220           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@33 (line 234)
              0x00007f619efff253:   mov    %r10,0x20(%rsp)
              0x00007f619efff258:   call   0x00007f61b5caa6f0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f619efff25d:   nop
              0x00007f619efff25e:   mov    0x10(%rsp),%rdx
              0x00007f619efff263:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@40 (line 235)
              0x00007f619efff267:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub@46 (line 236)
              0x00007f619efff26f:   vcvtsi2sdq 0x20(%rsp),%xmm0,%xmm0   ;*l2d {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  48.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 736 
  48.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 753 
   0.69%               kernel  [unknown] 
   0.11%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.77%  <...other 272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.69%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.RecursiveMethodCallBenchmark::lambda_static, version 2, compile id 736 
  48.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.RecursiveMethodCallBenchmark_lambda_static_jmhTest::lambda_static_avgt_jmhStub, version 6, compile id 753 
   1.63%               kernel  [unknown] 
   0.05%                       <unknown> 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%            libjvm.so  fileStream::write 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  ptmalloc_init.part.0 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strchr_sse2 
   0.01%         libc-2.31.so  getifaddrs_internal 
   0.01%         libc-2.31.so  re_search_stub 
   0.01%            libjvm.so  outputStream::update_position 
   0.01%         libc-2.31.so  tcache_init.part.0 
   0.01%            libjvm.so  defaultStream::write 
   0.00%       hsdis-amd64.so  oappend 
   0.00%            libjvm.so  decode_env::print_hook_comments 
   0.14%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%       jvmci, level 4
   1.63%               kernel
   0.12%            libjvm.so
   0.07%         libc-2.31.so
   0.05%                     
   0.02%       hsdis-amd64.so
   0.02%          interpreter
   0.01%   libpthread-2.31.so
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.00%          c1, level 3
   0.00%       perf-34525.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:11:08

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

Benchmark                                                      (depth)  Mode  Cnt    Score   Error  Units
RecursiveMethodCallBenchmark.class_non_static_method               256  avgt    5  475.909 ± 0.221  ns/op
RecursiveMethodCallBenchmark.class_non_static_method:·asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.class_static_method                   256  avgt    5  477.999 ± 0.043  ns/op
RecursiveMethodCallBenchmark.class_static_method:·asm              256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_non_static_method           256  avgt    5  509.647 ± 0.551  ns/op
RecursiveMethodCallBenchmark.interface_non_static_method:·asm      256  avgt           NaN            ---
RecursiveMethodCallBenchmark.interface_static_method               256  avgt    5  477.849 ± 1.234  ns/op
RecursiveMethodCallBenchmark.interface_static_method:·asm          256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_non_static                     256  avgt    5    7.824 ± 0.187  ns/op
RecursiveMethodCallBenchmark.lambda_non_static:·asm                256  avgt           NaN            ---
RecursiveMethodCallBenchmark.lambda_static                         256  avgt    5    6.959 ± 0.028  ns/op
RecursiveMethodCallBenchmark.lambda_static:·asm                    256  avgt           NaN            ---
