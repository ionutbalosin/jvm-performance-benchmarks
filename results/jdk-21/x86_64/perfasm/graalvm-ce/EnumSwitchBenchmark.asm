# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.990 ns/op
# Warmup Iteration   2: 1.957 ns/op
# Warmup Iteration   3: 1.959 ns/op
# Warmup Iteration   4: 1.960 ns/op
# Warmup Iteration   5: 1.956 ns/op
Iteration   1: 1.957 ns/op
Iteration   2: 1.955 ns/op
Iteration   3: 1.956 ns/op
Iteration   4: 1.961 ns/op
Iteration   5: 1.965 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  1.959 ±(99.9%) 0.015 ns/op [Average]
  (min, avg, max) = (1.955, 1.959, 1.965), stdev = 0.004
  CI (99.9%): [1.944, 1.974] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 218557 total address lines.
Perf output processed (skipped 60.349 seconds):
 Column 1: cycles (50802 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 971 

   0.02%            0x00007fdc7323f3ac:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
                    0x00007fdc7323f3b0:   cmp    %r8,%r9
          ╭         0x00007fdc7323f3b3:   ja     0x00007fdc7323f3ca
          │         0x00007fdc7323f3b9:   nopl   0x0(%rax)
          │         0x00007fdc7323f3c0:   cmp    $0x2,%r10d
          │         0x00007fdc7323f3c4:   jae    0x00007fdc7323f480           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
          ↘         0x00007fdc7323f3ca:   mov    %r11d,%r8d
                    0x00007fdc7323f3cd:   mov    $0x1,%r11d
   0.02%   ╭        0x00007fdc7323f3d3:   jmp    0x00007fdc7323f40b           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
           │        0x00007fdc7323f3d8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
  31.35%   │  ↗     0x00007fdc7323f3e0:   mov    0x10(%rax,%r11,4),%r9d
  19.51%   │  │     0x00007fdc7323f3e5:   cmp    $0xffd86ed5,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
           │╭ │     0x00007fdc7323f3ec:   je     0x00007fdc7323f415
  12.75%   ││ │     0x00007fdc7323f3f2:   cmp    $0xffd86ee7,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
           ││╭│     0x00007fdc7323f3f9:   jne    0x00007fdc7323f41d           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
           ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   6.35%   ││││     0x00007fdc7323f3ff:   mov    $0x3,%r9d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
           ││││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
  12.71%   ││││ ↗↗  0x00007fdc7323f405:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.00%   ││││ ││  0x00007fdc7323f408:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   0.23%   ↘│││ ││  0x00007fdc7323f40b:   cmp    %r11d,%r10d
            ││╰ ││  0x00007fdc7323f40e:   jg     0x00007fdc7323f3e0
   0.27%    ││ ╭││  0x00007fdc7323f410:   jmp    0x00007fdc7323f435           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   6.45%    ↘│ │││  0x00007fdc7323f415:   mov    $0x1,%r9d
   0.01%     │ │╰│  0x00007fdc7323f41b:   jmp    0x00007fdc7323f405           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
             │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   6.28%     ↘ │ │  0x00007fdc7323f41d:   data16 xchg %ax,%ax
               │ │  0x00007fdc7323f420:   cmp    $0xffd86ede,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
               │ │  0x00007fdc7323f427:   jne    0x00007fdc7323f4a3           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
               │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
               │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.13%       │ │  0x00007fdc7323f42d:   mov    $0x2,%r9d
               │ ╰  0x00007fdc7323f433:   jmp    0x00007fdc7323f405           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.13%       ↘    0x00007fdc7323f435:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@41 (line 128)
   0.00%            0x00007fdc7323f438:   mov    0x10(%rsp),%rbp
   0.11%            0x00007fdc7323f43d:   add    $0x18,%rsp
                    0x00007fdc7323f441:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                    0x00007fdc7323f448:   ja     0x00007fdc7323f4fd
   0.06%            0x00007fdc7323f44e:   ret                                 ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@6 (line 244)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.01%            0x00007fdc7323f44f:   mov    $0x1,%r11d
                    0x00007fdc7323f455:   jmp    0x00007fdc7323f3a0           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                    0x00007fdc7323f45a:   nopw   0x0(%rax,%rax,1)
                    0x00007fdc7323f460:   cmp    $0xffd86ede,%r11d            ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
                    0x00007fdc7323f467:   jne    0x00007fdc7323f4c6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
....................................................................................................
  96.38%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.38%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 971 
   0.51%              kernel  [unknown] 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 998 
   0.25%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 971 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 971 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.50%  <...other 443 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 971 
   2.72%              kernel  [unknown] 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 998 
   0.11%                      <unknown> 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.18%  <...other 76 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.84%      jvmci, level 4
   2.72%              kernel
   0.14%           libjvm.so
   0.11%        libc-2.31.so
   0.11%                    
   0.04%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:20:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.240 ns/op
# Warmup Iteration   2: 2.218 ns/op
# Warmup Iteration   3: 2.218 ns/op
# Warmup Iteration   4: 2.216 ns/op
# Warmup Iteration   5: 2.216 ns/op
Iteration   1: 2.216 ns/op
Iteration   2: 2.217 ns/op
Iteration   3: 2.217 ns/op
Iteration   4: 2.216 ns/op
Iteration   5: 2.217 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  2.217 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (2.216, 2.217, 2.217), stdev = 0.001
  CI (99.9%): [2.215, 2.219] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 219056 total address lines.
Perf output processed (skipped 60.368 seconds):
 Column 1: cycles (50674 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 962 

   0.01%                  0x00007f10d323dd89:   mov    %r10d,%r9d
   0.02%                  0x00007f10d323dd8c:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@3 (line 125)
                          0x00007f10d323dd90:   cmp    %r8,%r9
          ╭               0x00007f10d323dd93:   ja     0x00007f10d323ddaa
          │               0x00007f10d323dd99:   nopl   0x0(%rax)
          │               0x00007f10d323dda0:   cmp    $0x2,%r10d
          │               0x00007f10d323dda4:   jae    0x00007f10d323deb1           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@22 (line 125)
          ↘               0x00007f10d323ddaa:   mov    %r11d,%r8d
   0.00%                  0x00007f10d323ddad:   mov    $0x1,%r11d
           ╭              0x00007f10d323ddb3:   jmp    0x00007f10d323de26           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
           │              0x00007f10d323ddb8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
  31.42%   │     ↗        0x00007f10d323ddc0:   mov    0x10(%rax,%r11,4),%r9d
  11.61%   │     │        0x00007f10d323ddc5:   cmp    $0xffd86ede,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
           │╭    │        0x00007f10d323ddcc:   je     0x00007f10d323de30
  13.79%   ││    │        0x00007f10d323ddd2:   cmp    $0xffd86ee7,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
           ││╭   │        0x00007f10d323ddd9:   je     0x00007f10d323de38
   8.46%   │││   │        0x00007f10d323dddf:   nop
   0.07%   │││   │        0x00007f10d323dde0:   cmp    $0xffd86ed5,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
           │││╭  │        0x00007f10d323dde7:   je     0x00007f10d323de48
   8.29%   ││││  │        0x00007f10d323dded:   cmp    $0xffd86ef1,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37788})}
           ││││╭ │        0x00007f10d323ddf4:   je     0x00007f10d323de40           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
           │││││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.06%   │││││ │        0x00007f10d323ddfa:   nopw   0x0(%rax,%rax,1)
   0.09%   │││││ │        0x00007f10d323de00:   cmp    $0xffd86efb,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377d8})}
           │││││╭│        0x00007f10d323de07:   je     0x00007f10d323de50
   0.02%   │││││││        0x00007f10d323de0d:   cmp    $0xffd86f04,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37820})}
           │││││││        0x00007f10d323de14:   jne    0x00007f10d323def7           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@66 (line 254)
           │││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   2.74%   │││││││        0x00007f10d323de1a:   mov    $0x6,%r9d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
           │││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   8.87%   │││││││ ↗↗↗↗↗  0x00007f10d323de20:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   0.04%   │││││││ │││││  0x00007f10d323de23:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   0.03%   ↘││││││ │││││  0x00007f10d323de26:   cmp    %r11d,%r10d
            │││││╰ │││││  0x00007f10d323de29:   jg     0x00007f10d323ddc0
   0.15%    │││││ ╭│││││  0x00007f10d323de2b:   jmp    0x00007f10d323de58           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││││ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   2.75%    ↘││││ ││││││  0x00007f10d323de30:   mov    $0x2,%r9d
             ││││ │╰││││  0x00007f10d323de36:   jmp    0x00007f10d323de20
   0.03%     ↘│││ │ ││││  0x00007f10d323de38:   mov    $0x3,%r9d
   0.00%      │││ │ ╰│││  0x00007f10d323de3e:   jmp    0x00007f10d323de20
   0.03%      │↘│ │  │││  0x00007f10d323de40:   mov    $0x4,%r9d
   2.77%      │ │ │  ╰││  0x00007f10d323de46:   jmp    0x00007f10d323de20
   2.88%      ↘ │ │   ││  0x00007f10d323de48:   mov    $0x1,%r9d
                │ │   ╰│  0x00007f10d323de4e:   jmp    0x00007f10d323de20
   0.05%        ↘ │    │  0x00007f10d323de50:   mov    $0x5,%r9d
   2.80%          │    ╰  0x00007f10d323de56:   jmp    0x00007f10d323de20           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
                  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.11%          ↘       0x00007f10d323de58:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@41 (line 128)
   0.02%                  0x00007f10d323de5b:   mov    0x10(%rsp),%rbp
   0.21%                  0x00007f10d323de60:   add    $0x18,%rsp
                          0x00007f10d323de64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                          0x00007f10d323de6b:   ja     0x00007f10d323df2a
   0.06%                  0x00007f10d323de71:   ret                                 ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@18 (line 246)
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                          0x00007f10d323de72:   mov    $0x2,%r11d
                          0x00007f10d323de78:   jmp    0x00007f10d323dd80
                          0x00007f10d323de7d:   mov    $0x3,%r11d
                          0x00007f10d323de83:   jmp    0x00007f10d323dd80
                          0x00007f10d323de88:   mov    $0x4,%r11d
                          0x00007f10d323de8e:   jmp    0x00007f10d323dd80
   0.02%                  0x00007f10d323de93:   mov    $0x1,%r11d
   0.01%                  0x00007f10d323de99:   jmp    0x00007f10d323dd80
....................................................................................................
  97.35%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.35%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 962 
   0.55%              kernel  [unknown] 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 994 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 962 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 962 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 962 
   1.04%  <...other 328 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.53%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 962 
   1.85%              kernel  [unknown] 
   0.29%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 994 
   0.07%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::flush 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.00%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  os::current_thread_id 
   0.00%           libjvm.so  GraphBuilder::iterate_bytecodes_for_block 
   0.00%           libjvm.so  opt_virtual_call_Relocation::static_stub 
   0.12%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%      jvmci, level 4
   1.85%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.07%                    
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.00%  libpthread-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:18:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.699 ns/op
# Warmup Iteration   2: 3.660 ns/op
# Warmup Iteration   3: 3.655 ns/op
# Warmup Iteration   4: 3.657 ns/op
# Warmup Iteration   5: 3.661 ns/op
Iteration   1: 3.657 ns/op
Iteration   2: 3.664 ns/op
Iteration   3: 3.656 ns/op
Iteration   4: 3.656 ns/op
Iteration   5: 3.655 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  3.658 ±(99.9%) 0.014 ns/op [Average]
  (min, avg, max) = (3.655, 3.658, 3.664), stdev = 0.004
  CI (99.9%): [3.644, 3.671] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 215533 total address lines.
Perf output processed (skipped 60.248 seconds):
 Column 1: cycles (50537 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 946 

                                     0x00007f9c6723d796:   mov    %r11d,%r8d
                                     0x00007f9c6723d799:   mov    $0x1,%r11d
   0.01%                             0x00007f9c6723d79f:   nop
          ╭                          0x00007f9c6723d7a0:   jmp    0x00007f9c6723d879           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
          │                          0x00007f9c6723d7a5:   data16 data16 nopw 0x0(%rax,%rax,1)
          │                          0x00007f9c6723d7b0:   data16 data16 xchg %ax,%ax
          │                          0x00007f9c6723d7b4:   nopl   0x0(%rax,%rax,1)
          │                          0x00007f9c6723d7bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   9.05%  │           ↗              0x00007f9c6723d7c0:   mov    0x10(%rax,%r11,4),%r9d
  24.86%  │           │              0x00007f9c6723d7c5:   cmp    $0xffde6ee7,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef37738})}
          │╭          │              0x00007f9c6723d7cc:   je     0x00007f9c6723d88e
   9.34%  ││          │              0x00007f9c6723d7d2:   cmp    $0xffde6ede,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef376f0})}
          ││╭         │              0x00007f9c6723d7d9:   je     0x00007f9c6723d896
   7.08%  │││         │              0x00007f9c6723d7df:   nop
          │││         │              0x00007f9c6723d7e0:   cmp    $0xffde6ed5,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef376a8})}
          │││╭        │              0x00007f9c6723d7e7:   je     0x00007f9c6723d89e
   9.22%  ││││        │              0x00007f9c6723d7ed:   cmp    $0xffde6ef1,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef37788})}
          ││││╭       │              0x00007f9c6723d7f4:   je     0x00007f9c6723d8a6
   0.01%  │││││       │              0x00007f9c6723d7fa:   nopw   0x0(%rax,%rax,1)
   2.31%  │││││       │              0x00007f9c6723d800:   cmp    $0xffde6f04,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef37820})}
          │││││╭      │              0x00007f9c6723d807:   je     0x00007f9c6723d8ae
          ││││││      │              0x00007f9c6723d80d:   cmp    $0xffde6f20,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef37900})}
          ││││││╭     │              0x00007f9c6723d814:   je     0x00007f9c6723d8be
   4.47%  │││││││     │              0x00007f9c6723d81a:   nopw   0x0(%rax,%rax,1)
          │││││││     │              0x00007f9c6723d820:   cmp    $0xffde6f3b,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef379d8})}
          │││││││╭    │              0x00007f9c6723d827:   je     0x00007f9c6723d8b6
   2.60%  ││││││││    │              0x00007f9c6723d82d:   cmp    $0xffde6f29,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef37948})}
          ││││││││╭   │              0x00007f9c6723d834:   je     0x00007f9c6723d8d6
          │││││││││   │              0x00007f9c6723d83a:   nopw   0x0(%rax,%rax,1)
   2.35%  │││││││││   │              0x00007f9c6723d840:   cmp    $0xffde6efb,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef377d8})}
          │││││││││╭  │              0x00007f9c6723d847:   je     0x00007f9c6723d8c6
   0.00%  ││││││││││  │              0x00007f9c6723d84d:   cmp    $0xffde6f0d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef37868})}
          ││││││││││╭ │              0x00007f9c6723d854:   je     0x00007f9c6723d8ce           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││ │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          │││││││││││ │                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.95%  │││││││││││ │              0x00007f9c6723d85a:   nopw   0x0(%rax,%rax,1)
          │││││││││││ │              0x00007f9c6723d860:   cmp    $0xffde6f32,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef37990})}
          │││││││││││╭│              0x00007f9c6723d867:   jne    0x00007f9c6723d8de           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@131 (line 264)
          │││││││││││││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.11%  │││││││││││││              0x00007f9c6723d86d:   mov    $0xb,%r9d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
          │││││││││││││                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   6.46%  │││││││││││││ ↗↗↗↗↗↗↗↗↗↗↗  0x00007f9c6723d873:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   4.32%  │││││││││││││ │││││││││││  0x00007f9c6723d876:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││ │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
   1.03%  ↘││││││││││││ │││││││││││  0x00007f9c6723d879:   nopl   0x0(%rax)
   4.83%   ││││││││││││ │││││││││││  0x00007f9c6723d880:   cmp    %r11d,%r10d
           │││││││││││╰ │││││││││││  0x00007f9c6723d883:   jg     0x00007f9c6723d7c0
   0.12%   │││││││││││ ╭│││││││││││  0x00007f9c6723d889:   jmp    0x00007f9c6723d8f8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.89%   ↘││││││││││ ││││││││││││  0x00007f9c6723d88e:   mov    $0x3,%r9d
            ││││││││││ │╰││││││││││  0x00007f9c6723d894:   jmp    0x00007f9c6723d873
   0.66%    ↘│││││││││ │ ││││││││││  0x00007f9c6723d896:   mov    $0x2,%r9d
             │││││││││ │ ╰│││││││││  0x00007f9c6723d89c:   jmp    0x00007f9c6723d873
             ↘││││││││ │  │││││││││  0x00007f9c6723d89e:   mov    $0x1,%r9d
              ││││││││ │  ╰││││││││  0x00007f9c6723d8a4:   jmp    0x00007f9c6723d873
   0.00%      ↘│││││││ │   ││││││││  0x00007f9c6723d8a6:   mov    $0x4,%r9d
   0.82%       │││││││ │   ╰│││││││  0x00007f9c6723d8ac:   jmp    0x00007f9c6723d873
   0.00%       ↘││││││ │    │││││││  0x00007f9c6723d8ae:   mov    $0x6,%r9d
   0.72%        ││││││ │    ╰││││││  0x00007f9c6723d8b4:   jmp    0x00007f9c6723d873
   0.00%        │↘││││ │     ││││││  0x00007f9c6723d8b6:   mov    $0xc,%r9d
                │ ││││ │     ╰│││││  0x00007f9c6723d8bc:   jmp    0x00007f9c6723d873
   0.02%        ↘ ││││ │      │││││  0x00007f9c6723d8be:   mov    $0x9,%r9d
                  ││││ │      ╰││││  0x00007f9c6723d8c4:   jmp    0x00007f9c6723d873
                  │↘││ │       ││││  0x00007f9c6723d8c6:   mov    $0x5,%r9d
   0.06%          │ ││ │       ╰│││  0x00007f9c6723d8cc:   jmp    0x00007f9c6723d873
   1.06%          │ ↘│ │        │││  0x00007f9c6723d8ce:   mov    $0x7,%r9d
                  │  │ │        ╰││  0x00007f9c6723d8d4:   jmp    0x00007f9c6723d873
                  ↘  │ │         ││  0x00007f9c6723d8d6:   mov    $0xa,%r9d
   0.87%             │ │         ╰│  0x00007f9c6723d8dc:   jmp    0x00007f9c6723d873           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                     │ │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
                     │ │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.44%             ↘ │          │  0x00007f9c6723d8de:   xchg   %ax,%ax
   0.01%               │          │  0x00007f9c6723d8e0:   cmp    $0xffde6f16,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fef378b0})}
                       │          │  0x00007f9c6723d8e7:   jne    0x00007f9c6723d9c8           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                       │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@92 (line 258)
                       │          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.99%               │          │  0x00007f9c6723d8ed:   mov    $0x8,%r9d
                       │          ╰  0x00007f9c6723d8f3:   jmp    0x00007f9c6723d873           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
                       │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   0.06%               ↘             0x00007f9c6723d8f8:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@41 (line 128)
   0.00%                             0x00007f9c6723d8fb:   mov    0x10(%rsp),%rbp
   0.07%                             0x00007f9c6723d900:   add    $0x18,%rsp
                                     0x00007f9c6723d904:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                     0x00007f9c6723d90b:   ja     0x00007f9c6723da20
   0.03%                             0x00007f9c6723d911:   ret                                 ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@30 (line 248)
                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                                     0x00007f9c6723d912:   mov    $0x3,%r11d
                                     0x00007f9c6723d918:   jmp    0x00007f9c6723d773
                                     0x00007f9c6723d91d:   mov    $0x2,%r11d
                                     0x00007f9c6723d923:   jmp    0x00007f9c6723d773
   0.01%                             0x00007f9c6723d928:   mov    $0x1,%r11d
   0.00%                             0x00007f9c6723d92e:   jmp    0x00007f9c6723d773
                                     0x00007f9c6723d933:   mov    $0x4,%r11d
                                     0x00007f9c6723d939:   jmp    0x00007f9c6723d773
                                     0x00007f9c6723d93e:   mov    $0x6,%r11d
                                     0x00007f9c6723d944:   jmp    0x00007f9c6723d773
                                     0x00007f9c6723d949:   mov    $0x9,%r11d
                                     0x00007f9c6723d94f:   jmp    0x00007f9c6723d773
                                     0x00007f9c6723d954:   mov    $0xc,%r11d
                                     0x00007f9c6723d95a:   jmp    0x00007f9c6723d773
                                     0x00007f9c6723d95f:   mov    $0x7,%r11d
                                     0x00007f9c6723d965:   jmp    0x00007f9c6723d773
....................................................................................................
  97.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 946 
   0.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 975 
   0.11%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 946 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 946 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.16%  <...other 357 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 946 
   1.44%              kernel  [unknown] 
   0.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 975 
   0.11%                      <unknown> 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%      hsdis-amd64.so  decode_instructions_virtual 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.12%      jvmci, level 4
   1.44%              kernel
   0.16%           libjvm.so
   0.11%                    
   0.10%        libc-2.31.so
   0.03%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         c1, level 1
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:17:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.059 ns/op
# Warmup Iteration   2: 5.999 ns/op
# Warmup Iteration   3: 5.981 ns/op
# Warmup Iteration   4: 5.982 ns/op
# Warmup Iteration   5: 5.981 ns/op
Iteration   1: 5.981 ns/op
Iteration   2: 5.980 ns/op
Iteration   3: 5.982 ns/op
Iteration   4: 5.981 ns/op
Iteration   5: 5.981 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs":
  5.981 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (5.980, 5.981, 5.982), stdev = 0.001
  CI (99.9%): [5.979, 5.983] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 219119 total address lines.
Perf output processed (skipped 60.183 seconds):
 Column 1: cycles (50586 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 

            0x00007fa3eb23dbb6:   mov    %r11d,%r8d
   0.00%    0x00007fa3eb23dbb9:   mov    $0x1,%r11d
            0x00007fa3eb23dbbf:   nop
            0x00007fa3eb23dbc0:   jmp    0x00007fa3eb23dd59           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@13 (line 125)
            0x00007fa3eb23dbc5:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fa3eb23dbd0:   data16 data16 xchg %ax,%ax
            0x00007fa3eb23dbd4:   nopl   0x0(%rax,%rax,1)
            0x00007fa3eb23dbdc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   3.71%    0x00007fa3eb23dbe0:   mov    0x10(%rax,%r11,4),%r9d
  20.66%    0x00007fa3eb23dbe5:   cmp    $0xffd86ee7,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37738})}
            0x00007fa3eb23dbec:   je     0x00007fa3eb23dd6e
   5.89%    0x00007fa3eb23dbf2:   cmp    $0xffd86efb,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec377d8})}
            0x00007fa3eb23dbf9:   je     0x00007fa3eb23dd76
   5.24%    0x00007fa3eb23dbff:   nop
            0x00007fa3eb23dc00:   cmp    $0xffd86f20,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37900})}
            0x00007fa3eb23dc07:   je     0x00007fa3eb23dd7e
   7.42%    0x00007fa3eb23dc0d:   cmp    $0xffd86ed5,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376a8})}
            0x00007fa3eb23dc14:   je     0x00007fa3eb23dd86
   0.29%    0x00007fa3eb23dc1a:   nopw   0x0(%rax,%rax,1)
   1.76%    0x00007fa3eb23dc20:   cmp    $0xffd86f0d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37868})}
            0x00007fa3eb23dc27:   je     0x00007fa3eb23dd8e
            0x00007fa3eb23dc2d:   cmp    $0xffd86f60,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b00})}
            0x00007fa3eb23dc34:   je     0x00007fa3eb23dd96
   3.51%    0x00007fa3eb23dc3a:   nopw   0x0(%rax,%rax,1)
   0.02%    0x00007fa3eb23dc40:   cmp    $0xffd86f56,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37ab0})}
            0x00007fa3eb23dc47:   je     0x00007fa3eb23dd9e
   2.60%    0x00007fa3eb23dc4d:   cmp    $0xffd86f4d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a68})}
            0x00007fa3eb23dc54:   je     0x00007fa3eb23dda6
   0.01%    0x00007fa3eb23dc5a:   nopw   0x0(%rax,%rax,1)
   3.28%    0x00007fa3eb23dc60:   cmp    $0xffd86f3b,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec379d8})}
            0x00007fa3eb23dc67:   je     0x00007fa3eb23ddae
   0.01%    0x00007fa3eb23dc6d:   cmp    $0xffd86ede,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec376f0})}
            0x00007fa3eb23dc74:   je     0x00007fa3eb23ddb6
   4.41%    0x00007fa3eb23dc7a:   nopw   0x0(%rax,%rax,1)
            0x00007fa3eb23dc80:   cmp    $0xffd86f29,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37948})}
            0x00007fa3eb23dc87:   je     0x00007fa3eb23ddc6
   1.72%    0x00007fa3eb23dc8d:   cmp    $0xffd86ef1,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37788})}
            0x00007fa3eb23dc94:   je     0x00007fa3eb23dde5
            0x00007fa3eb23dc9a:   nopw   0x0(%rax,%rax,1)
   3.06%    0x00007fa3eb23dca0:   cmp    $0xffd86f44,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37a20})}
            0x00007fa3eb23dca7:   je     0x00007fa3eb23ddbe
            0x00007fa3eb23dcad:   cmp    $0xffd86f32,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37990})}
            0x00007fa3eb23dcb4:   je     0x00007fa3eb23ddce
   1.53%    0x00007fa3eb23dcba:   nopw   0x0(%rax,%rax,1)
            0x00007fa3eb23dcc0:   cmp    $0xffd86f16,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec378b0})}
            0x00007fa3eb23dcc7:   je     0x00007fa3eb23ddd9
   4.82%    0x00007fa3eb23dccd:   cmp    $0xffd86f04,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37820})}
            0x00007fa3eb23dcd4:   je     0x00007fa3eb23ddf0
            0x00007fa3eb23dcda:   nopw   0x0(%rax,%rax,1)
   1.28%    0x00007fa3eb23dce0:   cmp    $0xffd86f6a,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b50})}
            0x00007fa3eb23dce7:   je     0x00007fa3eb23ddfb
            0x00007fa3eb23dced:   cmp    $0xffd86f73,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b98})}
            0x00007fa3eb23dcf4:   je     0x00007fa3eb23de06
   4.71%    0x00007fa3eb23dcfa:   nopw   0x0(%rax,%rax,1)
            0x00007fa3eb23dd00:   cmp    $0xffd86fae,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37d70})}
            0x00007fa3eb23dd07:   je     0x00007fa3eb23de11
            0x00007fa3eb23dd0d:   cmp    $0xffd86f91,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37c88})}
            0x00007fa3eb23dd14:   je     0x00007fa3eb23de27
            0x00007fa3eb23dd1a:   nopw   0x0(%rax,%rax,1)
   2.40%    0x00007fa3eb23dd20:   cmp    $0xffd86f9a,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37cd0})}
            0x00007fa3eb23dd27:   je     0x00007fa3eb23de32
            0x00007fa3eb23dd2d:   cmp    $0xffd86f7d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37be8})}
            0x00007fa3eb23dd34:   je     0x00007fa3eb23de1c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
....................................................................................................
  75.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 

   1.28%             0x00007fa3eb23dce0:   cmp    $0xffd86f6a,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b50})}
                     0x00007fa3eb23dce7:   je     0x00007fa3eb23ddfb
                     0x00007fa3eb23dced:   cmp    $0xffd86f73,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37b98})}
                     0x00007fa3eb23dcf4:   je     0x00007fa3eb23de06
   4.71%             0x00007fa3eb23dcfa:   nopw   0x0(%rax,%rax,1)
                     0x00007fa3eb23dd00:   cmp    $0xffd86fae,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37d70})}
                     0x00007fa3eb23dd07:   je     0x00007fa3eb23de11
                     0x00007fa3eb23dd0d:   cmp    $0xffd86f91,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37c88})}
                     0x00007fa3eb23dd14:   je     0x00007fa3eb23de27
                     0x00007fa3eb23dd1a:   nopw   0x0(%rax,%rax,1)
   2.40%             0x00007fa3eb23dd20:   cmp    $0xffd86f9a,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37cd0})}
                     0x00007fa3eb23dd27:   je     0x00007fa3eb23de32
                     0x00007fa3eb23dd2d:   cmp    $0xffd86f7d,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37be8})}
                     0x00007fa3eb23dd34:   je     0x00007fa3eb23de1c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   1.18%             0x00007fa3eb23dd3a:   nopw   0x0(%rax,%rax,1)
                     0x00007fa3eb23dd40:   cmp    $0xffd86fa4,%r9d             ;   {oop(a &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/EnumSwitchBenchmark$Vehicle&apos;{0x00000007fec37d20})}
                     0x00007fa3eb23dd47:   jne    0x00007fa3eb23de3d           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@287 (line 288)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
                     0x00007fa3eb23dd4d:   mov    $0x17,%r9d                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chainedIfs@306 (line 294)
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@29 (line 126)
   5.18%  ↗↗↗↗↗↗↗↗↗  0x00007fa3eb23dd53:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@32 (line 126)
   7.83%  │││││││││  0x00007fa3eb23dd56:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@34 (line 125)
          │││││││││  0x00007fa3eb23dd59:   nopl   0x0(%rax)
   0.99%  │││││││││  0x00007fa3eb23dd60:   cmp    %r11d,%r10d
          │││││││││  0x00007fa3eb23dd63:   jg     0x00007fa3eb23dbe0
   0.08%  │││││││││  0x00007fa3eb23dd69:   jmp    0x00007fa3eb23de58           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs@16 (line 125)
   0.29%  │││││││││  0x00007fa3eb23dd6e:   mov    $0x3,%r9d
          ╰││││││││  0x00007fa3eb23dd74:   jmp    0x00007fa3eb23dd53
   0.22%   ││││││││  0x00007fa3eb23dd76:   mov    $0x5,%r9d
           ╰│││││││  0x00007fa3eb23dd7c:   jmp    0x00007fa3eb23dd53
            │││││││  0x00007fa3eb23dd7e:   mov    $0x9,%r9d
            ╰││││││  0x00007fa3eb23dd84:   jmp    0x00007fa3eb23dd53
             ││││││  0x00007fa3eb23dd86:   mov    $0x1,%r9d
   0.22%     ╰│││││  0x00007fa3eb23dd8c:   jmp    0x00007fa3eb23dd53
              │││││  0x00007fa3eb23dd8e:   mov    $0x7,%r9d
   0.02%      ╰││││  0x00007fa3eb23dd94:   jmp    0x00007fa3eb23dd53
               ││││  0x00007fa3eb23dd96:   mov    $0x10,%r9d
               ╰│││  0x00007fa3eb23dd9c:   jmp    0x00007fa3eb23dd53
                │││  0x00007fa3eb23dd9e:   mov    $0xf,%r9d
                ╰││  0x00007fa3eb23dda4:   jmp    0x00007fa3eb23dd53
                 ││  0x00007fa3eb23dda6:   mov    $0xe,%r9d
                 ╰│  0x00007fa3eb23ddac:   jmp    0x00007fa3eb23dd53
                  │  0x00007fa3eb23ddae:   mov    $0xc,%r9d
                  ╰  0x00007fa3eb23ddb4:   jmp    0x00007fa3eb23dd53
                     0x00007fa3eb23ddb6:   mov    $0x2,%r9d
   0.01%             0x00007fa3eb23ddbc:   jmp    0x00007fa3eb23dd53
....................................................................................................
  18.40%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 
  18.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 
   2.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 
   1.64%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 
   0.24%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 978 
   0.09%              kernel  [unknown] 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.98%  <...other 344 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::chained_ifs, version 4, compile id 949 
   1.27%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 978 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%      hsdis-amd64.so  decode_instructions_virtual 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.19%  <...other 82 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.27%      jvmci, level 4
   1.27%              kernel
   0.17%           libjvm.so
   0.11%                    
   0.10%        libc-2.31.so
   0.03%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%    perf-2108538.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:15:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.488 ns/op
# Warmup Iteration   2: 2.449 ns/op
# Warmup Iteration   3: 2.441 ns/op
# Warmup Iteration   4: 2.652 ns/op
# Warmup Iteration   5: 2.445 ns/op
Iteration   1: 2.437 ns/op
Iteration   2: 2.472 ns/op
Iteration   3: 2.475 ns/op
Iteration   4: 2.433 ns/op
Iteration   5: 2.482 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  2.460 ±(99.9%) 0.089 ns/op [Average]
  (min, avg, max) = (2.433, 2.460, 2.482), stdev = 0.023
  CI (99.9%): [2.370, 2.549] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 218848 total address lines.
Perf output processed (skipped 60.238 seconds):
 Column 1: cycles (50678 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 963 

            0x00007f2ef323db34:   mov    %r11d,%r8d
   0.01%    0x00007f2ef323db37:   mov    $0x1,%r11d
            0x00007f2ef323db3d:   data16 xchg %ax,%ax
            0x00007f2ef323db40:   jmp    0x00007f2ef323dc81           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
            0x00007f2ef323db45:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f2ef323db50:   data16 data16 xchg %ax,%ax
            0x00007f2ef323db54:   nopl   0x0(%rax,%rax,1)
            0x00007f2ef323db5c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
  30.59%    0x00007f2ef323db60:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   0.07%    0x00007f2ef323db65:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f2ef323ddb0
  28.89%    0x00007f2ef323db6d:   cmp    $0x0,%r9d
            0x00007f2ef323db71:   je     0x00007f2ef323dc75
  10.51%    0x00007f2ef323db77:   cmp    $0x2,%r9d
   1.43%    0x00007f2ef323db7b:   nopl   0x0(%rax,%rax,1)
            0x00007f2ef323db80:   je     0x00007f2ef323dc8f
   4.72%    0x00007f2ef323db86:   cmp    $0x1,%r9d
            0x00007f2ef323db8a:   je     0x00007f2ef323dc97
            0x00007f2ef323db90:   cmp    $0x3,%r9d
            0x00007f2ef323db94:   je     0x00007f2ef323dd1e
            0x00007f2ef323db9a:   cmp    $0x4,%r9d
            0x00007f2ef323db9e:   xchg   %ax,%ax
            0x00007f2ef323dba0:   je     0x00007f2ef323dd1e
            0x00007f2ef323dba6:   cmp    $0x5,%r9d
            0x00007f2ef323dbaa:   je     0x00007f2ef323dd1e
            0x00007f2ef323dbb0:   cmp    $0x6,%r9d
            0x00007f2ef323dbb4:   je     0x00007f2ef323dd1e           ;   {no_reloc}
....................................................................................................
  76.20%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 963 

               0x00007f2ef323dc50:   cmp    $0x15,%r9d
               0x00007f2ef323dc54:   je     0x00007f2ef323dd1e
               0x00007f2ef323dc5a:   cmp    $0x16,%r9d
               0x00007f2ef323dc5e:   xchg   %ax,%ax
               0x00007f2ef323dc60:   je     0x00007f2ef323dd1e
               0x00007f2ef323dc66:   cmp    $0x17,%r9d
               0x00007f2ef323dc6a:   je     0x00007f2ef323dd1e
               0x00007f2ef323dc70:   jmp    0x00007f2ef323dd1e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   5.20%       0x00007f2ef323dc75:   mov    $0x1,%r9d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   9.96%   ↗↗  0x00007f2ef323dc7b:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
           ││  0x00007f2ef323dc7e:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
           ││  0x00007f2ef323dc81:   cmp    %r11d,%r10d
           ││  0x00007f2ef323dc84:   jg     0x00007f2ef323db60
   0.13%  ╭││  0x00007f2ef323dc8a:   jmp    0x00007f2ef323dc9f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   5.00%  │││  0x00007f2ef323dc8f:   mov    $0x3,%r9d
   0.16%  │╰│  0x00007f2ef323dc95:   jmp    0x00007f2ef323dc7b
   0.35%  │ │  0x00007f2ef323dc97:   mov    $0x2,%r9d
   0.06%  │ ╰  0x00007f2ef323dc9d:   jmp    0x00007f2ef323dc7b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.08%  ↘    0x00007f2ef323dc9f:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@41 (line 117)
   0.00%       0x00007f2ef323dca2:   mov    0x10(%rsp),%rbp
   0.13%       0x00007f2ef323dca7:   add    $0x18,%rsp
               0x00007f2ef323dcab:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007f2ef323dcb2:   ja     0x00007f2ef323dd51
   0.07%       0x00007f2ef323dcb8:   ret    
               0x00007f2ef323dcb9:   mov    $0x3,%r11d
               0x00007f2ef323dcbf:   nop
               0x00007f2ef323dcc0:   jmp    0x00007f2ef323db11
               0x00007f2ef323dcc5:   mov    $0x2,%r11d
               0x00007f2ef323dccb:   jmp    0x00007f2ef323db11           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
               0x00007f2ef323dcd0:   mov    $0x0,%r8d
               0x00007f2ef323dcd6:   jmp    0x00007f2ef323dc9f           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@40 (line 117)
....................................................................................................
  21.14%  <total for region 2>

....[Hottest Regions]...............................................................................
  76.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 963 
  21.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 963 
   0.50%               kernel  [unknown] 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 992 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 963 
   0.12%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 963 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   1.13%  <...other 354 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.51%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 963 
   1.88%               kernel  [unknown] 
   0.23%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 992 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%                       <unknown> 
   0.02%            libjvm.so  defaultStream::write 
   0.02%            libjvm.so  fileStream::write 
   0.02%            libjvm.so  xmlStream::write_text 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%         libc-2.31.so  _IO_str_init_static_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%            libjvm.so  defaultStream::hold 
   0.17%  <...other 79 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.73%       jvmci, level 4
   1.88%               kernel
   0.15%            libjvm.so
   0.12%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%          interpreter
   0.01%   libpthread-2.31.so
   0.00%     perf-2108601.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:13:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.469 ns/op
# Warmup Iteration   2: 3.432 ns/op
# Warmup Iteration   3: 3.434 ns/op
# Warmup Iteration   4: 3.434 ns/op
# Warmup Iteration   5: 3.433 ns/op
Iteration   1: 3.435 ns/op
Iteration   2: 3.434 ns/op
Iteration   3: 3.433 ns/op
Iteration   4: 3.434 ns/op
Iteration   5: 3.432 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  3.434 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (3.432, 3.434, 3.435), stdev = 0.001
  CI (99.9%): [3.430, 3.437] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 226398 total address lines.
Perf output processed (skipped 60.651 seconds):
 Column 1: cycles (50794 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 966 

   0.01%      0x00007fa1ff2441f3:   mov    %r11d,%r8d
              0x00007fa1ff2441f6:   mov    $0x1,%r11d
              0x00007fa1ff2441fc:   nopl   0x0(%rax)
              0x00007fa1ff244200:   jmp    0x00007fa1ff24437a           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
              0x00007fa1ff244205:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fa1ff244210:   data16 data16 xchg %ax,%ax
              0x00007fa1ff244214:   nopl   0x0(%rax,%rax,1)
              0x00007fa1ff24421c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
  18.42%      0x00007fa1ff244220:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   7.40%      0x00007fa1ff244225:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fa1ff2444e2
  33.00%      0x00007fa1ff24422d:   cmp    $0x3,%r9d
          ╭   0x00007fa1ff244231:   jge    0x00007fa1ff24425f           ;   {no_reloc}
   5.36%  │   0x00007fa1ff244237:   cmp    $0x2,%r9d
   0.11%  │   0x00007fa1ff24423b:   nopl   0x0(%rax,%rax,1)
          │   0x00007fa1ff244240:   jge    0x00007fa1ff24439e
   3.52%  │   0x00007fa1ff244246:   cmp    $0x0,%r9d
          │   0x00007fa1ff24424a:   je     0x00007fa1ff24438e
   0.01%  │   0x00007fa1ff244250:   cmp    $0x1,%r9d
          │   0x00007fa1ff244254:   je     0x00007fa1ff244396
          │   0x00007fa1ff24425a:   jmp    0x00007fa1ff24440f
   5.56%  ↘   0x00007fa1ff24425f:   cmp    $0x5,%r9d
           ╭  0x00007fa1ff244263:   jge    0x00007fa1ff244278
   0.00%   │  0x00007fa1ff244269:   cmp    $0x3,%r9d
           │  0x00007fa1ff24426d:   je     0x00007fa1ff24436e
   1.89%   │  0x00007fa1ff244273:   jmp    0x00007fa1ff2443a6
   3.66%   ↘  0x00007fa1ff244278:   cmp    $0x5,%r9d
              0x00007fa1ff24427c:   nopl   0x0(%rax)
              0x00007fa1ff244280:   jle    0x00007fa1ff2443ae
              0x00007fa1ff244286:   cmp    $0xf,%r9d
              0x00007fa1ff24428a:   jge    0x00007fa1ff2442fa
              0x00007fa1ff244290:   cmp    $0xb,%r9d
              0x00007fa1ff244294:   jge    0x00007fa1ff2442ce
              0x00007fa1ff24429a:   cmp    $0x9,%r9d
              0x00007fa1ff24429e:   xchg   %ax,%ax
              0x00007fa1ff2442a0:   jge    0x00007fa1ff2442bf
              0x00007fa1ff2442a6:   cmp    $0x8,%r9d
....................................................................................................
  78.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 966 

                  0x00007fa1ff244346:   cmp    $0x14,%r9d
                  0x00007fa1ff24434a:   je     0x00007fa1ff24440f
                  0x00007fa1ff244350:   jmp    0x00007fa1ff24440f
                  0x00007fa1ff244355:   cmp    $0x16,%r9d
                  0x00007fa1ff244359:   je     0x00007fa1ff24440f
                  0x00007fa1ff24435f:   cmp    $0x17,%r9d
                  0x00007fa1ff244363:   je     0x00007fa1ff24440f
                  0x00007fa1ff244369:   jmp    0x00007fa1ff24440f           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   1.96%          0x00007fa1ff24436e:   mov    $0x4,%r9d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   9.09%   ↗↗↗↗↗  0x00007fa1ff244374:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   0.09%   │││││  0x00007fa1ff244377:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.01%   │││││  0x00007fa1ff24437a:   nopw   0x0(%rax,%rax,1)
   3.44%   │││││  0x00007fa1ff244380:   cmp    %r11d,%r10d
           │││││  0x00007fa1ff244383:   jg     0x00007fa1ff244220
   0.11%  ╭│││││  0x00007fa1ff244389:   jmp    0x00007fa1ff2443b6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.03%  ││││││  0x00007fa1ff24438e:   mov    $0x1,%r9d
          │╰││││  0x00007fa1ff244394:   jmp    0x00007fa1ff244374
   0.03%  │ ││││  0x00007fa1ff244396:   mov    $0x2,%r9d
          │ ╰│││  0x00007fa1ff24439c:   jmp    0x00007fa1ff244374
   1.84%  │  │││  0x00007fa1ff24439e:   mov    $0x3,%r9d
          │  ╰││  0x00007fa1ff2443a4:   jmp    0x00007fa1ff244374
          │   ││  0x00007fa1ff2443a6:   mov    $0x5,%r9d
          │   ╰│  0x00007fa1ff2443ac:   jmp    0x00007fa1ff244374
   1.85%  │    │  0x00007fa1ff2443ae:   mov    $0x6,%r9d
          │    ╰  0x00007fa1ff2443b4:   jmp    0x00007fa1ff244374           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.06%  ↘       0x00007fa1ff2443b6:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@41 (line 117)
                  0x00007fa1ff2443b9:   mov    0x10(%rsp),%rbp
   0.08%          0x00007fa1ff2443be:   add    $0x18,%rsp
                  0x00007fa1ff2443c2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007fa1ff2443c9:   ja     0x00007fa1ff244488
   0.03%          0x00007fa1ff2443cf:   ret    
                  0x00007fa1ff2443d0:   mov    $0x2,%r11d
                  0x00007fa1ff2443d6:   jmp    0x00007fa1ff2441cb
                  0x00007fa1ff2443db:   mov    $0x1,%r11d
   0.01%          0x00007fa1ff2443e1:   jmp    0x00007fa1ff2441cb
                  0x00007fa1ff2443e6:   mov    $0x3,%r11d
                  0x00007fa1ff2443ec:   jmp    0x00007fa1ff2441cb
                  0x00007fa1ff2443f1:   mov    $0x6,%r11d
                  0x00007fa1ff2443f7:   jmp    0x00007fa1ff2441cb
                  0x00007fa1ff2443fc:   mov    $0x5,%r11d
                  0x00007fa1ff244402:   jmp    0x00007fa1ff2441cb           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                  0x00007fa1ff244407:   mov    $0x0,%r8d
                  0x00007fa1ff24440d:   jmp    0x00007fa1ff2443b6           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  18.63%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 966 
  18.63%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 966 
   0.71%              kernel  [unknown] 
   0.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 990 
   0.15%              kernel  [unknown] 
   0.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 966 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 966 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.81%  <...other 291 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.70%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 966 
   1.71%              kernel  [unknown] 
   0.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 990 
   0.08%                      <unknown> 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  MethodMatcher::matches 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  syscall 
   0.16%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%      jvmci, level 4
   1.71%              kernel
   0.15%           libjvm.so
   0.12%        libc-2.31.so
   0.08%                    
   0.03%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2108668.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:11:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.160 ns/op
# Warmup Iteration   2: 3.129 ns/op
# Warmup Iteration   3: 3.123 ns/op
# Warmup Iteration   4: 3.125 ns/op
# Warmup Iteration   5: 3.123 ns/op
Iteration   1: 3.125 ns/op
Iteration   2: 3.123 ns/op
Iteration   3: 3.123 ns/op
Iteration   4: 3.126 ns/op
Iteration   5: 3.124 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  3.124 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (3.123, 3.124, 3.126), stdev = 0.001
  CI (99.9%): [3.120, 3.129] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 216918 total address lines.
Perf output processed (skipped 60.173 seconds):
 Column 1: cycles (50678 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 

   0.01%          0x00007fb70b23de51:   shl    $0x3,%rax                    ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@3 (line 114)
                  0x00007fb70b23de55:   cmp    %r8,%r9
          ╭       0x00007fb70b23de58:   ja     0x00007fb70b23de6a
          │       0x00007fb70b23de5e:   xchg   %ax,%ax
          │       0x00007fb70b23de60:   cmp    $0x2,%r10d
          │       0x00007fb70b23de64:   jae    0x00007fb70b23e124           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@22 (line 114)
          ↘       0x00007fb70b23de6a:   mov    %r11d,%r8d
                  0x00007fb70b23de6d:   mov    $0x1,%r11d
   0.01%          0x00007fb70b23de73:   jmp    0x00007fb70b23dfd7           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
                  0x00007fb70b23de78:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
  22.29%          0x00007fb70b23de80:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
   1.09%          0x00007fb70b23de85:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fb70b23e1b1
  24.29%          0x00007fb70b23de8d:   cmp    $0x6,%r9d
           ╭      0x00007fb70b23de91:   jge    0x00007fb70b23dee5
   6.07%   │      0x00007fb70b23de97:   cmp    $0x3,%r9d
   0.78%   │      0x00007fb70b23de9b:   nopl   0x0(%rax,%rax,1)
   0.02%   │╭     0x00007fb70b23dea0:   jge    0x00007fb70b23decb
   2.91%   ││     0x00007fb70b23dea6:   cmp    $0x2,%r9d
           ││     0x00007fb70b23deaa:   jge    0x00007fb70b23dfed
   0.06%   ││     0x00007fb70b23deb0:   cmp    $0x0,%r9d
           ││     0x00007fb70b23deb4:   je     0x00007fb70b23dfe5           ;   {no_reloc}
   0.35%   ││     0x00007fb70b23deba:   cmp    $0x1,%r9d
           ││     0x00007fb70b23debe:   xchg   %ax,%ax
   0.65%   ││     0x00007fb70b23dec0:   je     0x00007fb70b23dfcb
           ││     0x00007fb70b23dec6:   jmp    0x00007fb70b23e101
   2.51%   │↘     0x00007fb70b23decb:   cmp    $0x5,%r9d
           │      0x00007fb70b23decf:   jge    0x00007fb70b23e015
   0.32%   │      0x00007fb70b23ded5:   cmp    $0x3,%r9d
           │      0x00007fb70b23ded9:   je     0x00007fb70b23dff5
   0.34%   │      0x00007fb70b23dedf:   nop
           │      0x00007fb70b23dee0:   jmp    0x00007fb70b23e035
   6.99%   ↘      0x00007fb70b23dee5:   cmp    $0xa,%r9d
             ╭    0x00007fb70b23dee9:   jge    0x00007fb70b23df1a
   0.88%     │    0x00007fb70b23deef:   cmp    $0x8,%r9d
             │╭   0x00007fb70b23def3:   jge    0x00007fb70b23df0b
   2.48%     ││   0x00007fb70b23def9:   cmp    $0x6,%r9d
             ││   0x00007fb70b23defd:   data16 xchg %ax,%ax
   0.10%     ││   0x00007fb70b23df00:   je     0x00007fb70b23e01d
             ││   0x00007fb70b23df06:   jmp    0x00007fb70b23e025
   2.14%     │↘   0x00007fb70b23df0b:   cmp    $0x8,%r9d
             │    0x00007fb70b23df0f:   je     0x00007fb70b23dffd
             │    0x00007fb70b23df15:   jmp    0x00007fb70b23e005
   2.48%     ↘    0x00007fb70b23df1a:   cmp    $0xc,%r9d
                  0x00007fb70b23df1e:   xchg   %ax,%ax
               ╭  0x00007fb70b23df20:   jge    0x00007fb70b23df35
               │  0x00007fb70b23df26:   cmp    $0xa,%r9d
               │  0x00007fb70b23df2a:   je     0x00007fb70b23e00d
   0.98%       │  0x00007fb70b23df30:   jmp    0x00007fb70b23e02d
               ↘  0x00007fb70b23df35:   cmp    $0x12,%r9d
                  0x00007fb70b23df39:   jge    0x00007fb70b23df7e
                  0x00007fb70b23df3f:   cmp    $0xf,%r9d
                  0x00007fb70b23df43:   jge    0x00007fb70b23df65
                  0x00007fb70b23df49:   cmp    $0xe,%r9d
                  0x00007fb70b23df4d:   jge    0x00007fb70b23e101
                  0x00007fb70b23df53:   cmp    $0xc,%r9d
                  0x00007fb70b23df57:   je     0x00007fb70b23e101
                  0x00007fb70b23df5d:   data16 xchg %ax,%ax
                  0x00007fb70b23df60:   jmp    0x00007fb70b23e101
....................................................................................................
  77.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 

                        0x00007fb70b23dfa5:   cmp    $0x17,%r9d
                        0x00007fb70b23dfa9:   jg     0x00007fb70b23e101
                        0x00007fb70b23dfaf:   cmp    $0x17,%r9d
                        0x00007fb70b23dfb3:   jge    0x00007fb70b23e101           ;   {no_reloc}
                        0x00007fb70b23dfb9:   cmp    $0x15,%r9d
                        0x00007fb70b23dfbd:   data16 xchg %ax,%ax
                        0x00007fb70b23dfc0:   je     0x00007fb70b23e101
                        0x00007fb70b23dfc6:   jmp    0x00007fb70b23e101           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.04%                0x00007fb70b23dfcb:   mov    $0x2,%r9d                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
  11.02%   ↗↗↗↗↗↗↗↗↗↗↗  0x00007fb70b23dfd1:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
           │││││││││││  0x00007fb70b23dfd4:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   1.33%   │││││││││││  0x00007fb70b23dfd7:   cmp    %r11d,%r10d
           │││││││││││  0x00007fb70b23dfda:   jg     0x00007fb70b23de80
   0.13%  ╭│││││││││││  0x00007fb70b23dfe0:   jmp    0x00007fb70b23e03d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
          ││││││││││││  0x00007fb70b23dfe5:   mov    $0x1,%r9d
          │╰││││││││││  0x00007fb70b23dfeb:   jmp    0x00007fb70b23dfd1
          │ ││││││││││  0x00007fb70b23dfed:   mov    $0x3,%r9d
          │ ╰│││││││││  0x00007fb70b23dff3:   jmp    0x00007fb70b23dfd1
   0.82%  │  │││││││││  0x00007fb70b23dff5:   mov    $0x4,%r9d
          │  ╰││││││││  0x00007fb70b23dffb:   jmp    0x00007fb70b23dfd1
   0.99%  │   ││││││││  0x00007fb70b23dffd:   mov    $0x9,%r9d
          │   ╰│││││││  0x00007fb70b23e003:   jmp    0x00007fb70b23dfd1
   1.02%  │    │││││││  0x00007fb70b23e005:   mov    $0xa,%r9d
          │    ╰││││││  0x00007fb70b23e00b:   jmp    0x00007fb70b23dfd1
   0.93%  │     ││││││  0x00007fb70b23e00d:   mov    $0xb,%r9d
          │     ╰│││││  0x00007fb70b23e013:   jmp    0x00007fb70b23dfd1
   0.99%  │      │││││  0x00007fb70b23e015:   mov    $0x6,%r9d
          │      ╰││││  0x00007fb70b23e01b:   jmp    0x00007fb70b23dfd1
   0.37%  │       ││││  0x00007fb70b23e01d:   mov    $0x7,%r9d
   0.53%  │       ╰│││  0x00007fb70b23e023:   jmp    0x00007fb70b23dfd1
   0.94%  │        │││  0x00007fb70b23e025:   mov    $0x8,%r9d
          │        ╰││  0x00007fb70b23e02b:   jmp    0x00007fb70b23dfd1
          │         ││  0x00007fb70b23e02d:   mov    $0xc,%r9d
          │         ╰│  0x00007fb70b23e033:   jmp    0x00007fb70b23dfd1
   0.53%  │          │  0x00007fb70b23e035:   mov    $0x5,%r9d
   0.10%  │          ╰  0x00007fb70b23e03b:   jmp    0x00007fb70b23dfd1           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.08%  ↘             0x00007fb70b23e03d:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@41 (line 117)
   0.01%                0x00007fb70b23e040:   mov    0x10(%rsp),%rbp
   0.07%                0x00007fb70b23e045:   add    $0x18,%rsp
                        0x00007fb70b23e049:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                        0x00007fb70b23e050:   ja     0x00007fb70b23e157
   0.03%                0x00007fb70b23e056:   ret                                 ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.01%                0x00007fb70b23e057:   mov    $0x1,%r11d
                        0x00007fb70b23e05d:   data16 xchg %ax,%ax
                        0x00007fb70b23e060:   jmp    0x00007fb70b23de45
                        0x00007fb70b23e065:   mov    $0x3,%r11d
                        0x00007fb70b23e06b:   jmp    0x00007fb70b23de45
                        0x00007fb70b23e070:   mov    $0x4,%r11d
                        0x00007fb70b23e076:   jmp    0x00007fb70b23de45
                        0x00007fb70b23e07b:   mov    $0x7,%r11d
                        0x00007fb70b23e081:   jmp    0x00007fb70b23de45
....................................................................................................
  19.94%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
  19.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   0.29%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 976 
   0.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.82%  <...other 277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.87%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   1.53%              kernel  [unknown] 
   0.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 976 
   0.08%                      <unknown> 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%         interpreter  invokestatic  184 invokestatic  
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.14%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.09%      jvmci, level 4
   1.53%              kernel
   0.13%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%    perf-2108733.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:09:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.850 ns/op
# Warmup Iteration   2: 15.655 ns/op
# Warmup Iteration   3: 15.644 ns/op
# Warmup Iteration   4: 15.641 ns/op
# Warmup Iteration   5: 15.643 ns/op
Iteration   1: 15.641 ns/op
Iteration   2: 15.640 ns/op
Iteration   3: 15.642 ns/op
Iteration   4: 15.643 ns/op
Iteration   5: 15.642 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions":
  15.641 ±(99.9%) 0.004 ns/op [Average]
  (min, avg, max) = (15.640, 15.641, 15.643), stdev = 0.001
  CI (99.9%): [15.637, 15.646] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 222233 total address lines.
Perf output processed (skipped 60.316 seconds):
 Column 1: cycles (50635 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 

                                    0x00007fa89b23fb5d:   add    %eax,(%rax)
                                    0x00007fa89b23fb5f:   add    %bh,(%rbx)
                                    0x00007fa89b23fb61:   add    %eax,(%rax)
                                    0x00007fa89b23fb63:   add    %al,0x1(%rsi)
                                    0x00007fa89b23fb66:   add    %al,(%rax)
                                    0x00007fa89b23fb68:   push   %rcx
                                    0x00007fa89b23fb69:   add    %eax,(%rax)
                                    0x00007fa89b23fb6b:   add    %al,-0x47(%rcx)              ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@4 (line 213)
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
                                    0x00007fa89b23fb6e:   adc    %al,(%rax)
                                    0x00007fa89b23fb70:   add    %al,(%rax)                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.65%   ↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗  0x00007fa89b23fb72:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@32 (line 115)
   5.84%   │││││││││││││││││││││││  0x00007fa89b23fb75:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@34 (line 114)
   0.23%   │││││││││││││││││││││││  0x00007fa89b23fb78:   nopl   0x0(%rax,%rax,1)
   0.18%   │││││││││││││││││││││││  0x00007fa89b23fb80:   cmp    %r11d,%r10d
           │││││││││││││││││││││││  0x00007fa89b23fb83:   jg     0x00007fa89b23fae0
   0.04%  ╭│││││││││││││││││││││││  0x00007fa89b23fb89:   jmp    0x00007fa89b23fc68           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   1.28%  ││││││││││││││││││││││││  0x00007fa89b23fb8e:   mov    $0x8,%r9d
   0.71%  │╰││││││││││││││││││││││  0x00007fa89b23fb94:   jmp    0x00007fa89b23fb72
   1.22%  │ ││││││││││││││││││││││  0x00007fa89b23fb96:   mov    $0x9,%r9d
   0.75%  │ ╰│││││││││││││││││││││  0x00007fa89b23fb9c:   jmp    0x00007fa89b23fb72
   1.54%  │  │││││││││││││││││││││  0x00007fa89b23fb9e:   mov    $0xc,%r9d
   0.68%  │  ╰││││││││││││││││││││  0x00007fa89b23fba4:   jmp    0x00007fa89b23fb72
   1.51%  │   ││││││││││││││││││││  0x00007fa89b23fba6:   mov    $0xd,%r9d
   0.67%  │   ╰│││││││││││││││││││  0x00007fa89b23fbac:   jmp    0x00007fa89b23fb72
   1.64%  │    │││││││││││││││││││  0x00007fa89b23fbae:   mov    $0xe,%r9d
   0.67%  │    ╰││││││││││││││││││  0x00007fa89b23fbb4:   jmp    0x00007fa89b23fb72           ;   {no_reloc}
   1.34%  │     ││││││││││││││││││  0x00007fa89b23fbb6:   mov    $0xf,%r9d
   0.68%  │     ╰│││││││││││││││││  0x00007fa89b23fbbc:   jmp    0x00007fa89b23fb72
   1.56%  │      │││││││││││││││││  0x00007fa89b23fbbe:   mov    $0xa,%r9d
   0.72%  │      ╰││││││││││││││││  0x00007fa89b23fbc4:   jmp    0x00007fa89b23fb72
   1.45%  │       ││││││││││││││││  0x00007fa89b23fbc6:   mov    $0xb,%r9d
   0.62%  │       ╰│││││││││││││││  0x00007fa89b23fbcc:   jmp    0x00007fa89b23fb72
   1.72%  │        │││││││││││││││  0x00007fa89b23fbce:   mov    $0x2,%r9d
   0.77%  │        ╰││││││││││││││  0x00007fa89b23fbd4:   jmp    0x00007fa89b23fb72
   1.62%  │         ││││││││││││││  0x00007fa89b23fbd6:   mov    $0x3,%r9d
   0.80%  │         ╰│││││││││││││  0x00007fa89b23fbdc:   jmp    0x00007fa89b23fb72
   1.64%  │          │││││││││││││  0x00007fa89b23fbde:   mov    $0x1,%r9d
   0.77%  │          ╰││││││││││││  0x00007fa89b23fbe4:   jmp    0x00007fa89b23fb72
   1.64%  │           ││││││││││││  0x00007fa89b23fbe6:   mov    $0x4,%r9d
   0.74%  │           ╰│││││││││││  0x00007fa89b23fbec:   jmp    0x00007fa89b23fb72
   1.68%  │            │││││││││││  0x00007fa89b23fbee:   mov    $0x5,%r9d
   0.76%  │            ╰││││││││││  0x00007fa89b23fbf4:   jmp    0x00007fa89b23fb72
   1.52%  │             ││││││││││  0x00007fa89b23fbf9:   mov    $0x6,%r9d
   0.77%  │             ││││││││││  0x00007fa89b23fbff:   nop
          │             ╰│││││││││  0x00007fa89b23fc00:   jmp    0x00007fa89b23fb72
   1.54%  │              │││││││││  0x00007fa89b23fc05:   mov    $0x7,%r9d
   0.77%  │              ╰││││││││  0x00007fa89b23fc0b:   jmp    0x00007fa89b23fb72
   1.53%  │               ││││││││  0x00007fa89b23fc10:   mov    $0x15,%r9d
   0.70%  │               ╰│││││││  0x00007fa89b23fc16:   jmp    0x00007fa89b23fb72
   1.44%  │                │││││││  0x00007fa89b23fc1b:   mov    $0x11,%r9d
   0.62%  │                ╰││││││  0x00007fa89b23fc21:   jmp    0x00007fa89b23fb72
   1.43%  │                 ││││││  0x00007fa89b23fc26:   mov    $0x13,%r9d
   0.76%  │                 ╰│││││  0x00007fa89b23fc2c:   jmp    0x00007fa89b23fb72
   1.40%  │                  │││││  0x00007fa89b23fc31:   mov    $0x14,%r9d
   0.73%  │                  ╰││││  0x00007fa89b23fc37:   jmp    0x00007fa89b23fb72
   1.56%  │                   ││││  0x00007fa89b23fc3c:   mov    $0x12,%r9d
   0.65%  │                   ╰│││  0x00007fa89b23fc42:   jmp    0x00007fa89b23fb72
   1.25%  │                    │││  0x00007fa89b23fc47:   mov    $0x16,%r9d
   0.72%  │                    ╰││  0x00007fa89b23fc4d:   jmp    0x00007fa89b23fb72
   1.33%  │                     ││  0x00007fa89b23fc52:   mov    $0x17,%r9d
   0.73%  │                     ╰│  0x00007fa89b23fc58:   jmp    0x00007fa89b23fb72
   1.37%  │                      │  0x00007fa89b23fc5d:   mov    $0x18,%r9d
   0.70%  │                      ╰  0x00007fa89b23fc63:   jmp    0x00007fa89b23fb72           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchExpressions@238 (line 213)
          │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@29 (line 115)
   0.02%  ↘                         0x00007fa89b23fc68:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@41 (line 117)
                                    0x00007fa89b23fc6b:   mov    0x10(%rsp),%rbp
   0.01%                            0x00007fa89b23fc70:   add    $0x18,%rsp
                                    0x00007fa89b23fc74:   nopl   0x0(%rax,%rax,1)
                                    0x00007fa89b23fc7c:   data16 data16 xchg %ax,%ax
                                    0x00007fa89b23fc80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                    0x00007fa89b23fc87:   ja     0x00007fa89b23fe14
   0.01%                            0x00007fa89b23fc8d:   ret    
                                    0x00007fa89b23fc8e:   mov    $0xe,%r11d
                                    0x00007fa89b23fc94:   jmp    0x00007fa89b23fa8a
                                    0x00007fa89b23fc99:   mov    $0x8,%r11d
                                    0x00007fa89b23fc9f:   nop
                                    0x00007fa89b23fca0:   jmp    0x00007fa89b23fa8a
                                    0x00007fa89b23fca5:   mov    $0xd,%r11d
                                    0x00007fa89b23fcab:   jmp    0x00007fa89b23fa8a
                                    0x00007fa89b23fcb0:   mov    $0xc,%r11d
                                    0x00007fa89b23fcb6:   jmp    0x00007fa89b23fa8a
                                    0x00007fa89b23fcbb:   mov    $0xb,%r11d
....................................................................................................
  59.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 

   0.00%     0x00007fa89b23fab3:   mov    %r11d,%r8d
             0x00007fa89b23fab6:   mov    $0x1,%r11d                   ;   {no_reloc}
             0x00007fa89b23fabc:   nopl   0x0(%rax)
             0x00007fa89b23fac0:   jmp    0x00007fa89b23fb78           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
             0x00007fa89b23fac5:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007fa89b23fad0:   data16 data16 xchg %ax,%ax
             0x00007fa89b23fad4:   nopl   0x0(%rax,%rax,1)
             0x00007fa89b23fadc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@16 (line 114)
   0.10%     0x00007fa89b23fae0:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions@13 (line 114)
  12.18%     0x00007fa89b23fae5:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fa89b23fe70
  12.12%     0x00007fa89b23faed:   mov    %r9d,%ecx
             0x00007fa89b23faf0:   cmp    $0x17,%ecx
             0x00007fa89b23faf3:   ja     0x00007fa89b23fde1
   2.51%  ╭  0x00007fa89b23faf9:   lea    0xc(%rip),%r9        # 0x00007fa89b23fb0c
          │  0x00007fa89b23fb00:   movslq (%r9,%rcx,4),%rcx
   9.69%  │  0x00007fa89b23fb04:   add    %rcx,%r9
   2.33%  │  0x00007fa89b23fb07:   jmp    *%r9
          │  0x00007fa89b23fb0a:   xchg   %ax,%ax
          ↘  0x00007fa89b23fb0c:   rolb   %cl,(%rax)
             0x00007fa89b23fb0e:   add    %al,(%rax)
             0x00007fa89b23fb10:   ret    $0x0
             0x00007fa89b23fb13:   add    %cl,%dl
             0x00007fa89b23fb15:   add    %al,(%rax)
             0x00007fa89b23fb17:   add    %bl,%dl
             0x00007fa89b23fb19:   add    %al,(%rax)
             0x00007fa89b23fb1b:   add    %ah,%dl
             0x00007fa89b23fb1d:   add    %al,(%rax)
....................................................................................................
  38.94%  <total for region 2>

....[Hottest Regions]...............................................................................
  59.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
  38.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   0.37%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 978 
   0.04%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.01%              kernel  [unknown] 
   0.95%  <...other 318 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_expressions, version 4, compile id 947 
   1.33%              kernel  [unknown] 
   0.11%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 978 
   0.02%           libjvm.so  defaultStream::write 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%           libjvm.so  fileStream::write 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_str_init_static_internal 
   0.17%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.18%      jvmci, level 4
   1.33%              kernel
   0.21%           libjvm.so
   0.13%        libc-2.31.so
   0.11%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:07:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.525 ns/op
# Warmup Iteration   2: 2.537 ns/op
# Warmup Iteration   3: 2.507 ns/op
# Warmup Iteration   4: 2.499 ns/op
# Warmup Iteration   5: 2.512 ns/op
Iteration   1: 2.517 ns/op
Iteration   2: 2.519 ns/op
Iteration   3: 2.516 ns/op
Iteration   4: 2.520 ns/op
Iteration   5: 2.520 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  2.518 ±(99.9%) 0.008 ns/op [Average]
  (min, avg, max) = (2.516, 2.518, 2.520), stdev = 0.002
  CI (99.9%): [2.511, 2.526] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 221045 total address lines.
Perf output processed (skipped 60.295 seconds):
 Column 1: cycles (50722 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 962 

            0x00007fb6a3240ab4:   mov    %r11d,%r8d
   0.01%    0x00007fb6a3240ab7:   mov    $0x1,%r11d
            0x00007fb6a3240abd:   data16 xchg %ax,%ax
            0x00007fb6a3240ac0:   jmp    0x00007fb6a3240c01           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
            0x00007fb6a3240ac5:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007fb6a3240ad0:   data16 data16 xchg %ax,%ax
            0x00007fb6a3240ad4:   nopl   0x0(%rax,%rax,1)
            0x00007fb6a3240adc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
  29.95%    0x00007fb6a3240ae0:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   0.20%    0x00007fb6a3240ae5:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fb6a3240d30
  31.36%    0x00007fb6a3240aed:   cmp    $0x0,%r9d
            0x00007fb6a3240af1:   je     0x00007fb6a3240bf5
  10.51%    0x00007fb6a3240af7:   cmp    $0x1,%r9d
   0.85%    0x00007fb6a3240afb:   nopl   0x0(%rax,%rax,1)
            0x00007fb6a3240b00:   je     0x00007fb6a3240c0f
   4.96%    0x00007fb6a3240b06:   cmp    $0x2,%r9d
            0x00007fb6a3240b0a:   je     0x00007fb6a3240c17
            0x00007fb6a3240b10:   cmp    $0x3,%r9d
            0x00007fb6a3240b14:   je     0x00007fb6a3240c9e
            0x00007fb6a3240b1a:   cmp    $0x4,%r9d
            0x00007fb6a3240b1e:   xchg   %ax,%ax
            0x00007fb6a3240b20:   je     0x00007fb6a3240c9e
            0x00007fb6a3240b26:   cmp    $0x5,%r9d
            0x00007fb6a3240b2a:   je     0x00007fb6a3240c9e
            0x00007fb6a3240b30:   cmp    $0x6,%r9d
            0x00007fb6a3240b34:   je     0x00007fb6a3240c9e           ;   {no_reloc}
....................................................................................................
  77.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 962 

               0x00007fb6a3240bd0:   cmp    $0x15,%r9d
               0x00007fb6a3240bd4:   je     0x00007fb6a3240c9e
               0x00007fb6a3240bda:   cmp    $0x16,%r9d
               0x00007fb6a3240bde:   xchg   %ax,%ax
               0x00007fb6a3240be0:   je     0x00007fb6a3240c9e
               0x00007fb6a3240be6:   cmp    $0x17,%r9d
               0x00007fb6a3240bea:   je     0x00007fb6a3240c9e
               0x00007fb6a3240bf0:   jmp    0x00007fb6a3240c9e           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   5.13%       0x00007fb6a3240bf5:   mov    $0x1,%r9d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   9.35%   ↗↗  0x00007fb6a3240bfb:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
           ││  0x00007fb6a3240bfe:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
           ││  0x00007fb6a3240c01:   cmp    %r11d,%r10d
           ││  0x00007fb6a3240c04:   jg     0x00007fb6a3240ae0
   0.11%  ╭││  0x00007fb6a3240c0a:   jmp    0x00007fb6a3240c1f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   4.22%  │││  0x00007fb6a3240c0f:   mov    $0x2,%r9d
   0.63%  │╰│  0x00007fb6a3240c15:   jmp    0x00007fb6a3240bfb
   0.02%  │ │  0x00007fb6a3240c17:   mov    $0x3,%r9d
   0.00%  │ ╰  0x00007fb6a3240c1d:   jmp    0x00007fb6a3240bfb           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.07%  ↘    0x00007fb6a3240c1f:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@41 (line 106)
   0.00%       0x00007fb6a3240c22:   mov    0x10(%rsp),%rbp
   0.11%       0x00007fb6a3240c27:   add    $0x18,%rsp
               0x00007fb6a3240c2b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               0x00007fb6a3240c32:   ja     0x00007fb6a3240cd1
   0.07%       0x00007fb6a3240c38:   ret    
               0x00007fb6a3240c39:   mov    $0x3,%r11d
               0x00007fb6a3240c3f:   nop
               0x00007fb6a3240c40:   jmp    0x00007fb6a3240a91
               0x00007fb6a3240c45:   mov    $0x2,%r11d
               0x00007fb6a3240c4b:   jmp    0x00007fb6a3240a91           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
               0x00007fb6a3240c50:   mov    $0x0,%r8d
               0x00007fb6a3240c56:   jmp    0x00007fb6a3240c1f           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@40 (line 106)
....................................................................................................
  19.72%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.82%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 962 
  19.72%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.62%              kernel  [unknown] 
   0.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 990 
   0.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 962 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.83%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 962 
   1.58%              kernel  [unknown] 
   0.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 990 
   0.12%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  HandleMark::initialize 
   0.00%  libpthread-2.31.so  __condvar_cancel_waiting 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.15%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.01%      jvmci, level 4
   1.58%              kernel
   0.14%           libjvm.so
   0.12%                    
   0.09%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:05:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.466 ns/op
# Warmup Iteration   2: 3.431 ns/op
# Warmup Iteration   3: 3.433 ns/op
# Warmup Iteration   4: 3.432 ns/op
# Warmup Iteration   5: 3.432 ns/op
Iteration   1: 3.432 ns/op
Iteration   2: 3.432 ns/op
Iteration   3: 3.437 ns/op
Iteration   4: 3.432 ns/op
Iteration   5: 3.433 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  3.433 ±(99.9%) 0.009 ns/op [Average]
  (min, avg, max) = (3.432, 3.433, 3.437), stdev = 0.002
  CI (99.9%): [3.425, 3.442] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 216555 total address lines.
Perf output processed (skipped 60.306 seconds):
 Column 1: cycles (50810 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 957 

   0.01%      0x00007f323b23c3f3:   mov    %r11d,%r8d
              0x00007f323b23c3f6:   mov    $0x1,%r11d
              0x00007f323b23c3fc:   nopl   0x0(%rax)
              0x00007f323b23c400:   jmp    0x00007f323b23c57a           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
              0x00007f323b23c405:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f323b23c410:   data16 data16 xchg %ax,%ax
              0x00007f323b23c414:   nopl   0x0(%rax,%rax,1)
              0x00007f323b23c41c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
  18.38%      0x00007f323b23c420:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                        ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
   6.50%      0x00007f323b23c425:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f323b23c6e2
  33.28%      0x00007f323b23c42d:   cmp    $0x3,%r9d
          ╭   0x00007f323b23c431:   jge    0x00007f323b23c45f           ;   {no_reloc}
   5.81%  │   0x00007f323b23c437:   cmp    $0x2,%r9d
   0.30%  │   0x00007f323b23c43b:   nopl   0x0(%rax,%rax,1)
          │   0x00007f323b23c440:   jge    0x00007f323b23c59e
   3.63%  │   0x00007f323b23c446:   cmp    $0x0,%r9d
          │   0x00007f323b23c44a:   je     0x00007f323b23c58e
   0.07%  │   0x00007f323b23c450:   cmp    $0x1,%r9d
          │   0x00007f323b23c454:   je     0x00007f323b23c596
          │   0x00007f323b23c45a:   jmp    0x00007f323b23c60f
   5.44%  ↘   0x00007f323b23c45f:   cmp    $0x5,%r9d
           ╭  0x00007f323b23c463:   jge    0x00007f323b23c478
   0.01%   │  0x00007f323b23c469:   cmp    $0x3,%r9d
           │  0x00007f323b23c46d:   je     0x00007f323b23c56e
   1.88%   │  0x00007f323b23c473:   jmp    0x00007f323b23c5a6
   3.64%   ↘  0x00007f323b23c478:   cmp    $0x5,%r9d
              0x00007f323b23c47c:   nopl   0x0(%rax)
   0.00%      0x00007f323b23c480:   jle    0x00007f323b23c5ae
              0x00007f323b23c486:   cmp    $0xf,%r9d
              0x00007f323b23c48a:   jge    0x00007f323b23c4fa
              0x00007f323b23c490:   cmp    $0xb,%r9d
              0x00007f323b23c494:   jge    0x00007f323b23c4ce
              0x00007f323b23c49a:   cmp    $0x9,%r9d
              0x00007f323b23c49e:   xchg   %ax,%ax
              0x00007f323b23c4a0:   jge    0x00007f323b23c4bf
              0x00007f323b23c4a6:   cmp    $0x8,%r9d
              0x00007f323b23c4aa:   jge    0x00007f323b23c60f
              0x00007f323b23c4b0:   cmp    $0x6,%r9d
....................................................................................................
  78.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 957 

                  0x00007f323b23c546:   cmp    $0x14,%r9d
                  0x00007f323b23c54a:   je     0x00007f323b23c60f
                  0x00007f323b23c550:   jmp    0x00007f323b23c60f
                  0x00007f323b23c555:   cmp    $0x16,%r9d
                  0x00007f323b23c559:   je     0x00007f323b23c60f
                  0x00007f323b23c55f:   cmp    $0x17,%r9d
                  0x00007f323b23c563:   je     0x00007f323b23c60f
                  0x00007f323b23c569:   jmp    0x00007f323b23c60f           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   2.01%          0x00007f323b23c56e:   mov    $0x4,%r9d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   9.01%   ↗↗↗↗↗  0x00007f323b23c574:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   0.06%   │││││  0x00007f323b23c577:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   0.01%   │││││  0x00007f323b23c57a:   nopw   0x0(%rax,%rax,1)
   3.32%   │││││  0x00007f323b23c580:   cmp    %r11d,%r10d
           │││││  0x00007f323b23c583:   jg     0x00007f323b23c420
   0.11%  ╭│││││  0x00007f323b23c589:   jmp    0x00007f323b23c5b6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.02%  ││││││  0x00007f323b23c58e:   mov    $0x1,%r9d
          │╰││││  0x00007f323b23c594:   jmp    0x00007f323b23c574
   0.07%  │ ││││  0x00007f323b23c596:   mov    $0x2,%r9d
          │ ╰│││  0x00007f323b23c59c:   jmp    0x00007f323b23c574
   1.86%  │  │││  0x00007f323b23c59e:   mov    $0x3,%r9d
          │  ╰││  0x00007f323b23c5a4:   jmp    0x00007f323b23c574
          │   ││  0x00007f323b23c5a6:   mov    $0x5,%r9d
          │   ╰│  0x00007f323b23c5ac:   jmp    0x00007f323b23c574
   1.78%  │    │  0x00007f323b23c5ae:   mov    $0x6,%r9d
          │    ╰  0x00007f323b23c5b4:   jmp    0x00007f323b23c574           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.06%  ↘       0x00007f323b23c5b6:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@41 (line 106)
   0.00%          0x00007f323b23c5b9:   mov    0x10(%rsp),%rbp
   0.08%          0x00007f323b23c5be:   add    $0x18,%rsp
                  0x00007f323b23c5c2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007f323b23c5c9:   ja     0x00007f323b23c688
   0.05%          0x00007f323b23c5cf:   ret    
                  0x00007f323b23c5d0:   mov    $0x2,%r11d
                  0x00007f323b23c5d6:   jmp    0x00007f323b23c3cb
                  0x00007f323b23c5db:   mov    $0x1,%r11d
   0.01%          0x00007f323b23c5e1:   jmp    0x00007f323b23c3cb
                  0x00007f323b23c5e6:   mov    $0x3,%r11d
                  0x00007f323b23c5ec:   jmp    0x00007f323b23c3cb
                  0x00007f323b23c5f1:   mov    $0x6,%r11d
                  0x00007f323b23c5f7:   jmp    0x00007f323b23c3cb
                  0x00007f323b23c5fc:   mov    $0x5,%r11d
                  0x00007f323b23c602:   jmp    0x00007f323b23c3cb           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                  0x00007f323b23c607:   mov    $0x0,%r8d
                  0x00007f323b23c60d:   jmp    0x00007f323b23c5b6           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  18.47%  <total for region 2>

....[Hottest Regions]...............................................................................
  78.93%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 957 
  18.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 957 
   0.75%              kernel  [unknown] 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 983 
   0.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 957 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 957 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.85%  <...other 277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 957 
   1.82%              kernel  [unknown] 
   0.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 983 
   0.08%                      <unknown> 
   0.02%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_fwrite 
   0.13%  <...other 66 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.82%      jvmci, level 4
   1.82%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.08%                    
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         interpreter
   0.00%          libjava.so
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.725 ns/op
# Warmup Iteration   2: 15.540 ns/op
# Warmup Iteration   3: 15.540 ns/op
# Warmup Iteration   4: 15.537 ns/op
# Warmup Iteration   5: 15.537 ns/op
Iteration   1: 15.537 ns/op
Iteration   2: 15.537 ns/op
Iteration   3: 15.536 ns/op
Iteration   4: 15.536 ns/op
Iteration   5: 15.536 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  15.537 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (15.536, 15.537, 15.537), stdev = 0.001
  CI (99.9%): [15.535, 15.538] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 220712 total address lines.
Perf output processed (skipped 60.249 seconds):
 Column 1: cycles (51284 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 956 

                        0x00007f026723ba4d:   add    %eax,(%rax)
                        0x00007f026723ba4f:   add    %ah,-0x5effffff(%rcx)
                        0x00007f026723ba55:   add    %eax,(%rax)
                        0x00007f026723ba57:   add    %ah,-0x5effffff(%rcx)
                        0x00007f026723ba5d:   add    %eax,(%rax)
                        0x00007f026723ba5f:   add    %ah,-0x5effffff(%rcx)
                        0x00007f026723ba65:   add    %eax,(%rax)
                        0x00007f026723ba67:   add    %ah,0x41000001(%rcx)         ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                        0x00007f026723ba6d:   mov    $0x1,%ecx                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   1.41%   ↗↗↗↗↗↗↗↗↗↗↗  0x00007f026723ba72:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   7.86%   │││││││││││  0x00007f026723ba75:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
           │││││││││││  0x00007f026723ba78:   nopl   0x0(%rax,%rax,1)
   0.00%   │││││││││││  0x00007f026723ba80:   cmp    %r11d,%r10d
           │││││││││││  0x00007f026723ba83:   jg     0x00007f026723b9e0
   0.04%  ╭│││││││││││  0x00007f026723ba89:   jmp    0x00007f026723bae6           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   2.37%  ││││││││││││  0x00007f026723ba8e:   mov    $0x2,%r9d
   1.47%  │╰││││││││││  0x00007f026723ba94:   jmp    0x00007f026723ba72
   2.43%  │ ││││││││││  0x00007f026723ba96:   mov    $0x3,%r9d
   1.44%  │ ╰│││││││││  0x00007f026723ba9c:   jmp    0x00007f026723ba72
   2.67%  │  │││││││││  0x00007f026723ba9e:   mov    $0x4,%r9d
   1.35%  │  ╰││││││││  0x00007f026723baa4:   jmp    0x00007f026723ba72
   2.90%  │   ││││││││  0x00007f026723baa6:   mov    $0x9,%r9d
   1.31%  │   ╰│││││││  0x00007f026723baac:   jmp    0x00007f026723ba72
   3.32%  │    │││││││  0x00007f026723baae:   mov    $0xa,%r9d
   1.35%  │    ╰││││││  0x00007f026723bab4:   jmp    0x00007f026723ba72           ;   {no_reloc}
   2.93%  │     ││││││  0x00007f026723bab6:   mov    $0xb,%r9d
   1.45%  │     ╰│││││  0x00007f026723babc:   jmp    0x00007f026723ba72
   3.08%  │      │││││  0x00007f026723babe:   mov    $0x8,%r9d
   1.45%  │      ╰││││  0x00007f026723bac4:   jmp    0x00007f026723ba72
   2.26%  │       ││││  0x00007f026723bac6:   mov    $0xc,%r9d
   1.38%  │       ╰│││  0x00007f026723bacc:   jmp    0x00007f026723ba72
   2.40%  │        │││  0x00007f026723bace:   mov    $0x5,%r9d
   1.38%  │        ╰││  0x00007f026723bad4:   jmp    0x00007f026723ba72
   2.93%  │         ││  0x00007f026723bad6:   mov    $0x7,%r9d
   1.43%  │         ╰│  0x00007f026723badc:   jmp    0x00007f026723ba72
   2.21%  │          │  0x00007f026723bade:   mov    $0x6,%r9d
   1.42%  │          ╰  0x00007f026723bae4:   jmp    0x00007f026723ba72           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.02%  ↘             0x00007f026723bae6:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@41 (line 106)
                        0x00007f026723bae9:   mov    0x10(%rsp),%rbp
   0.01%                0x00007f026723baee:   add    $0x18,%rsp
                        0x00007f026723baf2:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                        0x00007f026723baf9:   ja     0x00007f026723bc06
   0.01%                0x00007f026723baff:   ret    
                        0x00007f026723bb00:   mov    $0x3,%r11d
                        0x00007f026723bb06:   jmp    0x00007f026723b98a
                        0x00007f026723bb0b:   mov    $0x2,%r11d
                        0x00007f026723bb11:   jmp    0x00007f026723b98a
                        0x00007f026723bb16:   mov    $0x4,%r11d
                        0x00007f026723bb1c:   nopl   0x0(%rax)
                        0x00007f026723bb20:   jmp    0x00007f026723b98a
                        0x00007f026723bb25:   mov    $0xc,%r11d
                        0x00007f026723bb2b:   jmp    0x00007f026723b98a
                        0x00007f026723bb30:   mov    $0xb,%r11d
....................................................................................................
  57.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 956 

             0x00007f026723b9b3:   mov    %r11d,%r8d
             0x00007f026723b9b6:   mov    $0x1,%r11d                   ;   {no_reloc}
             0x00007f026723b9bc:   nopl   0x0(%rax)
             0x00007f026723b9c0:   jmp    0x00007f026723ba78           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
             0x00007f026723b9c5:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007f026723b9d0:   data16 data16 xchg %ax,%ax
             0x00007f026723b9d4:   nopl   0x0(%rax,%rax,1)
             0x00007f026723b9dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.87%     0x00007f026723b9e0:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
  11.63%     0x00007f026723b9e5:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007f026723bc60
  12.28%     0x00007f026723b9ed:   mov    %r9d,%ecx
             0x00007f026723b9f0:   cmp    $0x17,%ecx
             0x00007f026723b9f3:   ja     0x00007f026723bbad
   2.47%  ╭  0x00007f026723b9f9:   lea    0xc(%rip),%r9        # 0x00007f026723ba0c
          │  0x00007f026723ba00:   movslq (%r9,%rcx,4),%rcx
   9.49%  │  0x00007f026723ba04:   add    %rcx,%r9
   2.53%  │  0x00007f026723ba07:   jmp    *%r9
          │  0x00007f026723ba0a:   xchg   %ax,%ax
          ↘  0x00007f026723ba0c:   (bad)  
             0x00007f026723ba0d:   add    %al,(%rax)
             0x00007f026723ba0f:   add    %al,-0x76000000(%rdx)
             0x00007f026723ba15:   add    %al,(%rax)
             0x00007f026723ba17:   add    %dl,-0x3e000000(%rdx)
             0x00007f026723ba1d:   add    %al,(%rax)
             0x00007f026723ba1f:   add    %dl,%dl
             0x00007f026723ba21:   add    %al,(%rax)
             0x00007f026723ba23:   add    %cl,%dl
....................................................................................................
  39.28%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 956 
  39.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 956 
   1.56%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 982 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 956 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 956 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.94%  <...other 344 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.89%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 956 
   2.62%              kernel  [unknown] 
   0.08%                      <unknown> 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 982 
   0.03%      hsdis-amd64.so  print_insn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.17%  <...other 72 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.93%      jvmci, level 4
   2.62%              kernel
   0.17%           libjvm.so
   0.11%        libc-2.31.so
   0.08%                    
   0.04%      hsdis-amd64.so
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-community-openjdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.769 ns/op
# Warmup Iteration   2: 15.637 ns/op
# Warmup Iteration   3: 15.635 ns/op
# Warmup Iteration   4: 15.634 ns/op
# Warmup Iteration   5: 15.635 ns/op
Iteration   1: 15.635 ns/op
Iteration   2: 15.636 ns/op
Iteration   3: 15.637 ns/op
Iteration   4: 15.636 ns/op
Iteration   5: 15.635 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements":
  15.636 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (15.635, 15.636, 15.637), stdev = 0.001
  CI (99.9%): [15.633, 15.639] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 220673 total address lines.
Perf output processed (skipped 60.300 seconds):
 Column 1: cycles (50923 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 950 

                                    0x00007fad3723e65a:   add    %al,(%rax)
                                    0x00007fad3723e65c:   sbb    (%rcx),%al
                                    0x00007fad3723e65e:   add    %al,(%rax)
                                    0x00007fad3723e660:   and    $0x30000001,%eax
                                    0x00007fad3723e665:   add    %eax,(%rax)
                                    0x00007fad3723e667:   add    %cl,(%rdi)
                                    0x00007fad3723e669:   add    %eax,(%rax)
                                    0x00007fad3723e66b:   add    %al,-0x47(%rcx)              ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@6 (line 134)
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
                                    0x00007fad3723e66e:   adc    %al,(%rax)
                                    0x00007fad3723e670:   add    %al,(%rax)                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.99%   ↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗↗  0x00007fad3723e672:   add    %r9d,%r8d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@32 (line 104)
   5.80%   │││││││││││││││││││││││  0x00007fad3723e675:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@34 (line 103)
   0.05%   │││││││││││││││││││││││  0x00007fad3723e678:   nopl   0x0(%rax,%rax,1)
   0.39%   │││││││││││││││││││││││  0x00007fad3723e680:   cmp    %r11d,%r10d
           │││││││││││││││││││││││  0x00007fad3723e683:   jg     0x00007fad3723e5e0
   0.05%  ╭│││││││││││││││││││││││  0x00007fad3723e689:   jmp    0x00007fad3723e768           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   1.16%  ││││││││││││││││││││││││  0x00007fad3723e68e:   mov    $0xe,%r9d
   0.65%  │╰││││││││││││││││││││││  0x00007fad3723e694:   jmp    0x00007fad3723e672
   1.15%  │ ││││││││││││││││││││││  0x00007fad3723e696:   mov    $0xf,%r9d
   0.62%  │ ╰│││││││││││││││││││││  0x00007fad3723e69c:   jmp    0x00007fad3723e672
   1.67%  │  │││││││││││││││││││││  0x00007fad3723e69e:   mov    $0x2,%r9d
   0.71%  │  ╰││││││││││││││││││││  0x00007fad3723e6a4:   jmp    0x00007fad3723e672
   1.60%  │   ││││││││││││││││││││  0x00007fad3723e6a6:   mov    $0x3,%r9d
   0.78%  │   ╰│││││││││││││││││││  0x00007fad3723e6ac:   jmp    0x00007fad3723e672
   1.62%  │    │││││││││││││││││││  0x00007fad3723e6ae:   mov    $0x1,%r9d
   0.73%  │    ╰││││││││││││││││││  0x00007fad3723e6b4:   jmp    0x00007fad3723e672           ;   {no_reloc}
   1.55%  │     ││││││││││││││││││  0x00007fad3723e6b6:   mov    $0x4,%r9d
   0.71%  │     ╰│││││││││││││││││  0x00007fad3723e6bc:   jmp    0x00007fad3723e672
   1.47%  │      │││││││││││││││││  0x00007fad3723e6be:   mov    $0xc,%r9d
   0.63%  │      ╰││││││││││││││││  0x00007fad3723e6c4:   jmp    0x00007fad3723e672
   1.40%  │       ││││││││││││││││  0x00007fad3723e6c6:   mov    $0xd,%r9d
   0.69%  │       ╰│││││││││││││││  0x00007fad3723e6cc:   jmp    0x00007fad3723e672
   1.66%  │        │││││││││││││││  0x00007fad3723e6ce:   mov    $0x5,%r9d
   0.71%  │        ╰││││││││││││││  0x00007fad3723e6d4:   jmp    0x00007fad3723e672
   1.48%  │         ││││││││││││││  0x00007fad3723e6d6:   mov    $0x8,%r9d
   0.69%  │         ╰│││││││││││││  0x00007fad3723e6dc:   jmp    0x00007fad3723e672
   1.49%  │          │││││││││││││  0x00007fad3723e6de:   mov    $0xa,%r9d
   0.62%  │          ╰││││││││││││  0x00007fad3723e6e4:   jmp    0x00007fad3723e672
   1.16%  │           ││││││││││││  0x00007fad3723e6e6:   mov    $0xb,%r9d
   0.65%  │           ╰│││││││││││  0x00007fad3723e6ec:   jmp    0x00007fad3723e672
   1.22%  │            │││││││││││  0x00007fad3723e6ee:   mov    $0x9,%r9d
   0.73%  │            ╰││││││││││  0x00007fad3723e6f4:   jmp    0x00007fad3723e672
   1.32%  │             ││││││││││  0x00007fad3723e6f9:   mov    $0x6,%r9d
   0.70%  │             ││││││││││  0x00007fad3723e6ff:   nop
          │             ╰│││││││││  0x00007fad3723e700:   jmp    0x00007fad3723e672
   1.58%  │              │││││││││  0x00007fad3723e705:   mov    $0x7,%r9d
   0.65%  │              ╰││││││││  0x00007fad3723e70b:   jmp    0x00007fad3723e672
   1.48%  │               ││││││││  0x00007fad3723e710:   mov    $0x11,%r9d
   0.73%  │               ╰│││││││  0x00007fad3723e716:   jmp    0x00007fad3723e672
   1.62%  │                │││││││  0x00007fad3723e71b:   mov    $0x18,%r9d
   0.77%  │                ╰││││││  0x00007fad3723e721:   jmp    0x00007fad3723e672
   1.51%  │                 ││││││  0x00007fad3723e726:   mov    $0x15,%r9d
   0.77%  │                 ╰│││││  0x00007fad3723e72c:   jmp    0x00007fad3723e672
   1.49%  │                  │││││  0x00007fad3723e731:   mov    $0x16,%r9d
   0.70%  │                  ╰││││  0x00007fad3723e737:   jmp    0x00007fad3723e672
   1.58%  │                   ││││  0x00007fad3723e73c:   mov    $0x17,%r9d
   0.69%  │                   ╰│││  0x00007fad3723e742:   jmp    0x00007fad3723e672
   1.70%  │                    │││  0x00007fad3723e747:   mov    $0x13,%r9d
   0.83%  │                    ╰││  0x00007fad3723e74d:   jmp    0x00007fad3723e672
   1.32%  │                     ││  0x00007fad3723e752:   mov    $0x14,%r9d
   0.75%  │                     ╰│  0x00007fad3723e758:   jmp    0x00007fad3723e672
   1.29%  │                      │  0x00007fad3723e75d:   mov    $0x12,%r9d
   0.81%  │                      ╰  0x00007fad3723e763:   jmp    0x00007fad3723e672           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switchStatements@252 (line 209)
          │                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@29 (line 104)
   0.01%  ↘                         0x00007fad3723e768:   mov    %r8d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@41 (line 106)
                                    0x00007fad3723e76b:   mov    0x10(%rsp),%rbp
   0.01%                            0x00007fad3723e770:   add    $0x18,%rsp
                                    0x00007fad3723e774:   nopl   0x0(%rax,%rax,1)
                                    0x00007fad3723e77c:   data16 data16 xchg %ax,%ax
                                    0x00007fad3723e780:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                    0x00007fad3723e787:   ja     0x00007fad3723e914
   0.01%                            0x00007fad3723e78d:   ret    
                                    0x00007fad3723e78e:   mov    $0xe,%r11d
                                    0x00007fad3723e794:   jmp    0x00007fad3723e58a
                                    0x00007fad3723e799:   mov    $0xf,%r11d
                                    0x00007fad3723e79f:   nop
                                    0x00007fad3723e7a0:   jmp    0x00007fad3723e58a
                                    0x00007fad3723e7a5:   mov    $0x6,%r11d
                                    0x00007fad3723e7ab:   jmp    0x00007fad3723e58a
                                    0x00007fad3723e7b0:   mov    $0x2,%r11d
                                    0x00007fad3723e7b6:   jmp    0x00007fad3723e58a
                                    0x00007fad3723e7bb:   mov    $0xd,%r11d
....................................................................................................
  58.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 950 

   0.01%     0x00007fad3723e5b3:   mov    %r11d,%r8d
             0x00007fad3723e5b6:   mov    $0x1,%r11d                   ;   {no_reloc}
             0x00007fad3723e5bc:   nopl   0x0(%rax)
             0x00007fad3723e5c0:   jmp    0x00007fad3723e678           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
             0x00007fad3723e5c5:   data16 data16 nopw 0x0(%rax,%rax,1)
             0x00007fad3723e5d0:   data16 data16 xchg %ax,%ax
             0x00007fad3723e5d4:   nopl   0x0(%rax,%rax,1)
             0x00007fad3723e5dc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@16 (line 103)
   0.13%     0x00007fad3723e5e0:   mov    0x10(%rax,%r11,4),%r9d       ; ImmutableOopMap {rax=Oop rsi=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements@13 (line 103)
  12.28%     0x00007fad3723e5e5:   mov    0xc(,%r9,8),%r9d             ; implicit exception: dispatches to 0x00007fad3723e970
  12.05%     0x00007fad3723e5ed:   mov    %r9d,%ecx
             0x00007fad3723e5f0:   cmp    $0x17,%ecx
             0x00007fad3723e5f3:   ja     0x00007fad3723e8e1
   2.37%  ╭  0x00007fad3723e5f9:   lea    0xc(%rip),%r9        # 0x00007fad3723e60c
          │  0x00007fad3723e600:   movslq (%r9,%rcx,4),%rcx
   9.62%  │  0x00007fad3723e604:   add    %rcx,%r9
   2.37%  │  0x00007fad3723e607:   jmp    *%r9
          │  0x00007fad3723e60a:   xchg   %ax,%ax
          ↘  0x00007fad3723e60c:   movabs %al,0x9a00000092000000
             0x00007fad3723e615:   add    %al,(%rax)
             0x00007fad3723e617:   add    %ch,-0x3e000000(%rdx)
             0x00007fad3723e61d:   add    %al,(%rax)
             0x00007fad3723e61f:   add    %ch,%ch
             0x00007fad3723e621:   add    %al,(%rax)
             0x00007fad3723e623:   add    %bh,%cl
             0x00007fad3723e625:   add    %al,(%rax)
             0x00007fad3723e627:   add    %cl,%dl
....................................................................................................
  38.83%  <total for region 2>

....[Hottest Regions]...............................................................................
  58.66%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 950 
  38.83%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 950 
   0.57%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 977 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 950 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 950 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.99%  <...other 340 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.58%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.EnumSwitchBenchmark::switch_statements, version 4, compile id 950 
   1.93%              kernel  [unknown] 
   0.10%                      <unknown> 
   0.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.EnumSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 977 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  printf_to_env 
   0.18%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.62%      jvmci, level 4
   1.93%              kernel
   0.16%           libjvm.so
   0.12%        libc-2.31.so
   0.10%                    
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 1
   0.00%         c1, level 3
   0.00%    perf-2109099.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:22:39

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

Benchmark                                   (branches)  Mode  Cnt   Score   Error  Units
EnumSwitchBenchmark.chained_ifs                      3  avgt    5   1.959 ± 0.015  ns/op
EnumSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN            ---
EnumSwitchBenchmark.chained_ifs                      6  avgt    5   2.217 ± 0.002  ns/op
EnumSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN            ---
EnumSwitchBenchmark.chained_ifs                     12  avgt    5   3.658 ± 0.014  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
EnumSwitchBenchmark.chained_ifs                     24  avgt    5   5.981 ± 0.002  ns/op
EnumSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions               3  avgt    5   2.460 ± 0.089  ns/op
EnumSwitchBenchmark.switch_expressions:asm           3  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions               6  avgt    5   3.434 ± 0.003  ns/op
EnumSwitchBenchmark.switch_expressions:asm           6  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions              12  avgt    5   3.124 ± 0.004  ns/op
EnumSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
EnumSwitchBenchmark.switch_expressions              24  avgt    5  15.641 ± 0.004  ns/op
EnumSwitchBenchmark.switch_expressions:asm          24  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements                3  avgt    5   2.518 ± 0.008  ns/op
EnumSwitchBenchmark.switch_statements:asm            3  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements                6  avgt    5   3.433 ± 0.009  ns/op
EnumSwitchBenchmark.switch_statements:asm            6  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements               12  avgt    5  15.537 ± 0.002  ns/op
EnumSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
EnumSwitchBenchmark.switch_statements               24  avgt    5  15.636 ± 0.003  ns/op
EnumSwitchBenchmark.switch_statements:asm           24  avgt          NaN            ---
