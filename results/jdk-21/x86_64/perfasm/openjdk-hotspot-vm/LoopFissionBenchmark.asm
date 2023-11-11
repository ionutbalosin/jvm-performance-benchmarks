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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop
# Parameters: (size = 262144)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 530.861 us/op
# Warmup Iteration   2: 524.891 us/op
# Warmup Iteration   3: 524.937 us/op
# Warmup Iteration   4: 524.752 us/op
# Warmup Iteration   5: 524.737 us/op
Iteration   1: 524.787 us/op
Iteration   2: 524.837 us/op
Iteration   3: 524.726 us/op
Iteration   4: 524.852 us/op
Iteration   5: 524.686 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop":
  524.778 ±(99.9%) 0.273 us/op [Average]
  (min, avg, max) = (524.686, 524.778, 524.852), stdev = 0.071
  CI (99.9%): [524.504, 525.051] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.initial_loop:asm":
PrintAssembly processed: 127865 total address lines.
Perf output processed (skipped 56.200 seconds):
 Column 1: cycles (50867 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 554 

                 0x00007f94086396b9:   mov    $0x2,%r11d
                 0x00007f94086396bf:   nop
                 0x00007f94086396c0:   cmp    $0x2,%r10d
          ╭      0x00007f94086396c4:   jle    0x00007f94086397db
          │      0x00007f94086396ca:   xor    %r9d,%r9d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
          │      0x00007f94086396cd:   mov    $0x1f40,%r8d
          │ ↗    0x00007f94086396d3:   mov    %r10d,%ebp
          │ │    0x00007f94086396d6:   sub    %r11d,%ebp
          │ │    0x00007f94086396d9:   cmp    %r11d,%r10d
   0.00%  │ │    0x00007f94086396dc:   cmovl  %r9d,%ebp
          │ │    0x00007f94086396e0:   cmp    $0x1f40,%ebp
          │ │    0x00007f94086396e6:   cmova  %r8d,%ebp
   0.00%  │ │    0x00007f94086396ea:   add    %r11d,%ebp
          │ │    0x00007f94086396ed:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@10 (line 89)
   0.00%  │↗│    0x00007f94086396f0:   mov    0x10(%rsi,%r11,4),%ebx
   2.24%  │││    0x00007f94086396f5:   add    0xc(%rdx,%r11,4),%ebx        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   2.26%  │││    0x00007f94086396fa:   mov    %ebx,0x10(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.85%  │││    0x00007f94086396ff:   add    0x10(%rsi,%r11,4),%ebx
   0.33%  │││    0x00007f9408639704:   mov    %ebx,0x10(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.27%  │││    0x00007f9408639709:   mov    0x14(%rsi,%r11,4),%ecx
   0.00%  │││    0x00007f940863970e:   add    0x10(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.57%  │││    0x00007f9408639713:   mov    %ecx,0x14(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.85%  │││    0x00007f9408639718:   add    0x14(%rsi,%r11,4),%ecx
   0.32%  │││    0x00007f940863971d:   mov    %ecx,0x14(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.38%  │││    0x00007f9408639722:   mov    0x18(%rsi,%r11,4),%ecx
   0.00%  │││    0x00007f9408639727:   add    0x14(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.72%  │││    0x00007f940863972c:   mov    %ecx,0x18(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.79%  │││    0x00007f9408639731:   add    0x18(%rsi,%r11,4),%ecx
   0.27%  │││    0x00007f9408639736:   mov    %ecx,0x18(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.42%  │││    0x00007f940863973b:   mov    0x1c(%rsi,%r11,4),%ecx
   0.00%  │││    0x00007f9408639740:   add    0x18(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.54%  │││    0x00007f9408639745:   mov    %ecx,0x1c(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.89%  │││    0x00007f940863974a:   add    0x1c(%rsi,%r11,4),%ecx
   0.52%  │││    0x00007f940863974f:   mov    %ecx,0x1c(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.34%  │││    0x00007f9408639754:   mov    0x20(%rsi,%r11,4),%ebx
   0.00%  │││    0x00007f9408639759:   add    0x1c(%rdx,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.79%  │││    0x00007f940863975e:   mov    %ebx,0x20(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.94%  │││    0x00007f9408639763:   add    0x20(%rsi,%r11,4),%ebx
   0.30%  │││    0x00007f9408639768:   mov    %ebx,0x20(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.31%  │││    0x00007f940863976d:   mov    0x24(%rsi,%r11,4),%ecx
          │││    0x00007f9408639772:   add    0x20(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.64%  │││    0x00007f9408639777:   mov    %ecx,0x24(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.68%  │││    0x00007f940863977c:   add    0x24(%rsi,%r11,4),%ecx
   0.31%  │││    0x00007f9408639781:   mov    %ecx,0x24(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.39%  │││    0x00007f9408639786:   mov    0x28(%rsi,%r11,4),%ebx
          │││    0x00007f940863978b:   add    0x24(%rdx,%r11,4),%ebx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.42%  │││    0x00007f9408639790:   mov    %ebx,0x28(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.87%  │││    0x00007f9408639795:   add    0x28(%rsi,%r11,4),%ebx
   0.32%  │││    0x00007f940863979a:   mov    %ebx,0x28(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.40%  │││    0x00007f940863979f:   mov    0x2c(%rsi,%r11,4),%ecx
   0.00%  │││    0x00007f94086397a4:   add    0x28(%rdx,%r11,4),%ecx       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
   4.58%  │││    0x00007f94086397a9:   mov    %ecx,0x2c(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   4.97%  │││    0x00007f94086397ae:   add    0x2c(%rsi,%r11,4),%ecx       ;   {no_reloc}
   0.25%  │││    0x00007f94086397b3:   mov    %ecx,0x2c(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
   2.35%  │││    0x00007f94086397b8:   add    $0x8,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
          │││    0x00007f94086397bc:   nopl   0x0(%rax)
   0.10%  │││    0x00007f94086397c0:   cmp    %ebp,%r11d
          │╰│    0x00007f94086397c3:   jl     0x00007f94086396f0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
          │ │    0x00007f94086397c9:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rdx=Oop rsi=Oop rax=Oop r13=Oop }
          │ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
          │ │    0x00007f94086397d0:   test   %eax,(%rbx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@53 (line 88)
          │ │                                                              ;   {poll}
   0.01%  │ │    0x00007f94086397d2:   cmp    %r10d,%r11d
          │ ╰    0x00007f94086397d5:   jl     0x00007f94086396d3
          ↘      0x00007f94086397db:   nopl   0x0(%rax,%rax,1)
                 0x00007f94086397e0:   cmp    %edi,%r11d
             ╭   0x00007f94086397e3:   jge    0x00007f9408639809
             │   0x00007f94086397e5:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@10 (line 89)
             │↗  0x00007f94086397e8:   mov    0x10(%rsi,%r11,4),%r8d
   0.00%     ││  0x00007f94086397ed:   add    0xc(%rdx,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@29 (line 89)
             ││  0x00007f94086397f2:   mov    %r8d,0x10(%rdx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@30 (line 89)
   0.00%     ││  0x00007f94086397f7:   add    0x10(%rsi,%r11,4),%r8d
             ││  0x00007f94086397fc:   mov    %r8d,0x10(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@49 (line 90)
             ││  0x00007f9408639801:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop@50 (line 88)
             ││  0x00007f9408639804:   cmp    %edi,%r11d
             │╰  0x00007f9408639807:   jl     0x00007f94086397e8
             ↘   0x00007f9408639809:   add    $0x20,%rsp
                 0x00007f940863980d:   pop    %rbp
                 0x00007f940863980e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  97.19%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 554 
   0.83%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.24%  <...other 367 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::initial_loop, version 3, compile id 554 
   2.46%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  HighResTimeSampler::take_sample 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.17%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.19%         c2, level 4
   2.46%              kernel
   0.15%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission
# Parameters: (size = 262144)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 232.493 us/op
# Warmup Iteration   2: 240.797 us/op
# Warmup Iteration   3: 240.731 us/op
# Warmup Iteration   4: 240.670 us/op
# Warmup Iteration   5: 240.691 us/op
Iteration   1: 240.706 us/op
Iteration   2: 240.700 us/op
Iteration   3: 240.679 us/op
Iteration   4: 240.695 us/op
Iteration   5: 230.388 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission":
  238.634 ±(99.9%) 17.750 us/op [Average]
  (min, avg, max) = (230.388, 238.634, 240.706), stdev = 4.610
  CI (99.9%): [220.884, 256.384] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark.manual_loop_fission:asm":
PrintAssembly processed: 132530 total address lines.
Perf output processed (skipped 56.416 seconds):
 Column 1: cycles (50451 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 594 

                 0x00007fa9ac63abfd:   cmp    $0xffffffff80000000,%r11
                 0x00007fa9ac63ac04:   cmovl  %rsi,%r11
                 0x00007fa9ac63ac08:   mov    %r11d,%ebp                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
                 0x00007fa9ac63ac0b:   cmp    $0x2,%ebp
                 0x00007fa9ac63ac0e:   jle    0x00007fa9ac63aef8
                 0x00007fa9ac63ac14:   mov    $0x1f40,%r10d
                 0x00007fa9ac63ac1a:   mov    $0x2,%r11d
          ╭      0x00007fa9ac63ac20:   jmp    0x00007fa9ac63ac27
          │ ↗    0x00007fa9ac63ac22:   vmovd  %xmm1,%r8d
   0.00%  ↘ │    0x00007fa9ac63ac27:   mov    %ebp,%eax
            │    0x00007fa9ac63ac29:   sub    %r11d,%eax
            │    0x00007fa9ac63ac2c:   cmp    %r11d,%ebp
            │    0x00007fa9ac63ac2f:   cmovl  %r14d,%eax
   0.01%    │    0x00007fa9ac63ac33:   cmp    $0x1f40,%eax                 ;   {no_reloc}
            │    0x00007fa9ac63ac38:   cmova  %r10d,%eax
            │    0x00007fa9ac63ac3c:   add    %r11d,%eax
   0.01%    │    0x00007fa9ac63ac3f:   vmovd  %r8d,%xmm1
            │    0x00007fa9ac63ac44:   nopl   0x0(%rax,%rax,1)
            │    0x00007fa9ac63ac4c:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@10 (line 102)
   0.08%   ↗│    0x00007fa9ac63ac50:   mov    0x10(%rbx,%r11,4),%r8d
   0.02%   ││    0x00007fa9ac63ac55:   add    0xc(%rdi,%r11,4),%r8d        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
  12.31%   ││    0x00007fa9ac63ac5a:   mov    %r8d,0x10(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
  10.67%   ││    0x00007fa9ac63ac5f:   add    0x14(%rbx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.03%   ││    0x00007fa9ac63ac64:   mov    %r8d,0x14(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.42%   ││    0x00007fa9ac63ac69:   add    0x18(%rbx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   1.58%   ││    0x00007fa9ac63ac6e:   mov    %r8d,0x18(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.58%   ││    0x00007fa9ac63ac73:   add    0x1c(%rbx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.18%   ││    0x00007fa9ac63ac78:   mov    %r8d,0x1c(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.49%   ││    0x00007fa9ac63ac7d:   add    0x20(%rbx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.00%   ││    0x00007fa9ac63ac82:   mov    %r8d,0x20(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.35%   ││    0x00007fa9ac63ac87:   add    0x24(%rbx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.02%   ││    0x00007fa9ac63ac8c:   mov    %r8d,0x24(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.22%   ││    0x00007fa9ac63ac91:   add    0x28(%rbx,%r11,4),%r8d       ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@29 (line 102)
   0.01%   ││    0x00007fa9ac63ac96:   mov    %r8d,0x28(%rdi,%r11,4)
   5.07%   ││    0x00007fa9ac63ac9b:   add    0x2c(%rbx,%r11,4),%r8d
   0.01%   ││    0x00007fa9ac63aca0:   mov    %r8d,0x2c(%rdi,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
   5.24%   ││    0x00007fa9ac63aca5:   add    $0x8,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
           ││    0x00007fa9ac63aca9:   cmp    %eax,%r11d
           ╰│    0x00007fa9ac63acac:   jl     0x00007fa9ac63ac50           ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
            │    0x00007fa9ac63acae:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rbx=Oop rdi=Oop r13=Oop }
            │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
   0.01%    │    0x00007fa9ac63acb5:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@34 (line 101)
            │                                                              ;   {poll}
   0.07%    │    0x00007fa9ac63acb8:   cmp    %ebp,%r11d
            │    0x00007fa9ac63acbb:   nopl   0x0(%rax,%rax,1)
            ╰    0x00007fa9ac63acc0:   jl     0x00007fa9ac63ac22
                 0x00007fa9ac63acc6:   vmovd  %xmm1,%r8d
                 0x00007fa9ac63accb:   cmp    %r8d,%r11d
             ╭   0x00007fa9ac63acce:   jge    0x00007fa9ac63ace7           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@10 (line 102)
             │↗  0x00007fa9ac63acd0:   mov    0x10(%rbx,%r11,4),%r10d
   0.01%     ││  0x00007fa9ac63acd5:   add    0xc(%rdi,%r11,4),%r10d
   0.00%     ││  0x00007fa9ac63acda:   mov    %r10d,0x10(%rdi,%r11,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@30 (line 102)
             ││  0x00007fa9ac63acdf:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@31 (line 101)
             ││  0x00007fa9ac63ace2:   cmp    %r8d,%r11d
             │╰  0x00007fa9ac63ace5:   jl     0x00007fa9ac63acd0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
             ↘   0x00007fa9ac63ace7:   mov    0x14(%r13),%r10d             ;*getfield B {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@48 (line 106)
                 0x00007fa9ac63aceb:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fa9ac63af05
                                                                           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.01%         0x00007fa9ac63acf0:   cmp    $0x1,%r11d
                 0x00007fa9ac63acf4:   jbe    0x00007fa9ac63af05
                 0x00007fa9ac63acfa:   movslq %r11d,%r11
                 0x00007fa9ac63acfd:   data16 xchg %ax,%ax
                 0x00007fa9ac63ad00:   cmp    %r11,%rcx
                 0x00007fa9ac63ad03:   jae    0x00007fa9ac63af05
                 0x00007fa9ac63ad09:   lea    (%r12,%r10,8),%rcx
                 0x00007fa9ac63ad0d:   mov    %ecx,%r11d
                 0x00007fa9ac63ad10:   shr    $0x2,%r11d
....................................................................................................
  62.41%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 594 

                  0x00007fa9ac63ad6c:   mov    $0xfa00,%r10d
           ↗      0x00007fa9ac63ad72:   mov    %edx,%r9d
           │      0x00007fa9ac63ad75:   sub    %r11d,%r9d
           │      0x00007fa9ac63ad78:   cmp    %r11d,%edx
           │      0x00007fa9ac63ad7b:   cmovl  %r14d,%r9d
           │      0x00007fa9ac63ad7f:   cmp    $0xfa00,%r9d
           │      0x00007fa9ac63ad86:   cmova  %r10d,%r9d
           │      0x00007fa9ac63ad8a:   add    %r11d,%r9d
           │      0x00007fa9ac63ad8d:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@47 (line 106)
   0.46%  ↗│      0x00007fa9ac63ad90:   vmovdqu 0x10(%rbx,%r11,4),%ymm0
   0.13%  ││      0x00007fa9ac63ad97:   vpaddd 0x10(%rdi,%r11,4),%ymm0,%ymm0
   0.91%  ││      0x00007fa9ac63ad9e:   vmovdqu %ymm0,0x10(%rcx,%r11,4)
   0.36%  ││      0x00007fa9ac63ada5:   vmovdqu 0x30(%rbx,%r11,4),%ymm0
   2.89%  ││      0x00007fa9ac63adac:   vpaddd 0x30(%rdi,%r11,4),%ymm0,%ymm0
   4.15%  ││      0x00007fa9ac63adb3:   vmovdqu %ymm0,0x30(%rcx,%r11,4)     ;   {no_reloc}
   0.31%  ││      0x00007fa9ac63adba:   vmovdqu 0x50(%rbx,%r11,4),%ymm0
   0.12%  ││      0x00007fa9ac63adc1:   vpaddd 0x50(%rdi,%r11,4),%ymm0,%ymm0
   1.08%  ││      0x00007fa9ac63adc8:   vmovdqu %ymm0,0x50(%rcx,%r11,4)
   0.29%  ││      0x00007fa9ac63adcf:   vmovdqu 0x70(%rbx,%r11,4),%ymm0
   2.58%  ││      0x00007fa9ac63add6:   vpaddd 0x70(%rdi,%r11,4),%ymm0,%ymm0
   3.91%  ││      0x00007fa9ac63addd:   vmovdqu %ymm0,0x70(%rcx,%r11,4)
   0.25%  ││      0x00007fa9ac63ade4:   vmovdqu 0x90(%rbx,%r11,4),%ymm0
   0.15%  ││      0x00007fa9ac63adee:   vpaddd 0x90(%rdi,%r11,4),%ymm0,%ymm0
   0.96%  ││      0x00007fa9ac63adf8:   vmovdqu %ymm0,0x90(%rcx,%r11,4)
   0.24%  ││      0x00007fa9ac63ae02:   vmovdqu 0xb0(%rbx,%r11,4),%ymm0
   2.71%  ││      0x00007fa9ac63ae0c:   vpaddd 0xb0(%rdi,%r11,4),%ymm0,%ymm0
   4.16%  ││      0x00007fa9ac63ae16:   vmovdqu %ymm0,0xb0(%rcx,%r11,4)
   0.19%  ││      0x00007fa9ac63ae20:   vmovdqu 0xd0(%rbx,%r11,4),%ymm0
   0.13%  ││      0x00007fa9ac63ae2a:   vpaddd 0xd0(%rdi,%r11,4),%ymm0,%ymm0
   1.15%  ││      0x00007fa9ac63ae34:   vmovdqu %ymm0,0xd0(%rcx,%r11,4)
   0.20%  ││      0x00007fa9ac63ae3e:   vmovdqu 0xf0(%rbx,%r11,4),%ymm0
   3.47%  ││      0x00007fa9ac63ae48:   vpaddd 0xf0(%rdi,%r11,4),%ymm0,%ymm0
   4.74%  ││      0x00007fa9ac63ae52:   vmovdqu %ymm0,0xf0(%rcx,%r11,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
   0.18%  ││      0x00007fa9ac63ae5c:   add    $0x40,%r11d                  ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
          ││      0x00007fa9ac63ae60:   cmp    %r9d,%r11d
          ╰│      0x00007fa9ac63ae63:   jl     0x00007fa9ac63ad90           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@69 (line 105)
   0.00%   │      0x00007fa9ac63ae69:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rcx=Oop rbx=Oop rdi=Oop r13=Oop }
           │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@69 (line 105)
   0.01%   │      0x00007fa9ac63ae70:   test   %eax,(%rsi)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@69 (line 105)
           │                                                                ;   {poll}
   0.05%   │      0x00007fa9ac63ae72:   cmp    %edx,%r11d
           ╰      0x00007fa9ac63ae75:   jl     0x00007fa9ac63ad72
                  0x00007fa9ac63ae7b:   nopl   0x0(%rax,%rax,1)
                  0x00007fa9ac63ae80:   cmp    %ebp,%r11d
            ╭     0x00007fa9ac63ae83:   jge    0x00007fa9ac63aea6
            │     0x00007fa9ac63ae85:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@47 (line 106)
   0.00%    │↗    0x00007fa9ac63ae88:   vmovdqu 0x10(%rbx,%r11,4),%ymm0
            ││    0x00007fa9ac63ae8f:   vpaddd 0x10(%rdi,%r11,4),%ymm0,%ymm0
   0.00%    ││    0x00007fa9ac63ae96:   vmovdqu %ymm0,0x10(%rcx,%r11,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
            ││    0x00007fa9ac63ae9d:   add    $0x8,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
            ││    0x00007fa9ac63aea1:   cmp    %ebp,%r11d
            │╰    0x00007fa9ac63aea4:   jl     0x00007fa9ac63ae88           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
            ↘     0x00007fa9ac63aea6:   cmp    %r8d,%r11d
              ╭   0x00007fa9ac63aea9:   jge    0x00007fa9ac63aec5
              │   0x00007fa9ac63aeab:   nop                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@47 (line 106)
              │↗  0x00007fa9ac63aeac:   mov    0x10(%rbx,%r11,4),%r9d
   0.00%      ││  0x00007fa9ac63aeb1:   add    0x10(%rdi,%r11,4),%r9d
   0.01%      ││  0x00007fa9ac63aeb6:   mov    %r9d,0x10(%rcx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@65 (line 106)
              ││  0x00007fa9ac63aebb:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@66 (line 105)
              ││  0x00007fa9ac63aebe:   xchg   %ax,%ax
              ││  0x00007fa9ac63aec0:   cmp    %r8d,%r11d
              │╰  0x00007fa9ac63aec3:   jl     0x00007fa9ac63aeac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@44 (line 105)
              ↘   0x00007fa9ac63aec5:   vzeroupper 
                  0x00007fa9ac63aec8:   add    $0x20,%rsp
                  0x00007fa9ac63aecc:   pop    %rbp
   0.00%          0x00007fa9ac63aecd:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  0x00007fa9ac63aed4:   ja     0x00007fa9ac63af2c
                  0x00007fa9ac63aeda:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission@7 (line 101)
                  0x00007fa9ac63aedb:   mov    $0xffffff76,%esi
                  0x00007fa9ac63aee0:   mov    %r13,%rbp
                  0x00007fa9ac63aee3:   mov    %r8d,(%rsp)
                  0x00007fa9ac63aee7:   nop
                  0x00007fa9ac63aee8:   vzeroupper 
                  0x00007fa9ac63aeeb:   call   0x00007fa9ac0c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                            ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  35.81%  <total for region 2>

....[Hottest Regions]...............................................................................
  62.41%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 594 
  35.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 594 
   0.17%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.95%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopFissionBenchmark::manual_loop_fission, version 3, compile id 594 
   1.49%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  defaultStream::write 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopFissionBenchmark_manual_loop_fission_jmhTest::manual_loop_fission_avgt_jmhStub, version 4, compile id 625 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.00%        libc-2.31.so  _IO_setb 
   0.00%         interpreter  invokevirtual  182 invokevirtual  
   0.00%           libjvm.so  GraphBuilder::iterate_bytecodes_for_block 
   0.10%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.25%         c2, level 4
   1.49%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



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

Benchmark                                     (size)  Mode  Cnt    Score    Error  Units
LoopFissionBenchmark.initial_loop             262144  avgt    5  524.778 ±  0.273  us/op
LoopFissionBenchmark.initial_loop:asm         262144  avgt           NaN             ---
LoopFissionBenchmark.manual_loop_fission      262144  avgt    5  238.634 ± 17.750  us/op
LoopFissionBenchmark.manual_loop_fission:asm  262144  avgt           NaN             ---
