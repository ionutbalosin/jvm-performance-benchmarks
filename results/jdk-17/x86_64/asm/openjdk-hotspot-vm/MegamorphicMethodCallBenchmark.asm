# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 0.00% complete, ETA 00:26:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.025 ns/op
# Warmup Iteration   2: 2.014 ns/op
# Warmup Iteration   3: 2.014 ns/op
# Warmup Iteration   4: 2.014 ns/op
# Warmup Iteration   5: 1.928 ns/op
Iteration   1: 1.928 ns/op
Iteration   2: 1.928 ns/op
Iteration   3: 1.928 ns/op
Iteration   4: 1.928 ns/op
Iteration   5: 1.929 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  1.928 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (1.928, 1.928, 1.929), stdev = 0.001
  CI (99.9%): [1.926, 1.930] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 117623 total address lines.
Perf output processed (skipped 55.625 seconds):
 Column 1: cycles (50775 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 476 

                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.03%            0x00007f2df0f64fae:   lea    (%r12,%rbp,8),%r8            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                    0x00007f2df0f64fb2:   lea    (%r12,%r9,8),%rsi            ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
                    0x00007f2df0f64fb6:   mov    $0xfa0,%edx
                    0x00007f2df0f64fbb:   mov    $0x1,%ecx
          ╭         0x00007f2df0f64fc0:   jmp    0x00007f2df0f6506c
          │         0x00007f2df0f64fc5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.77%  │    ↗    0x00007f2df0f64fd0:   mov    %r10d,%ecx                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   2.13%  │    │↗   0x00007f2df0f64fd3:   movslq %ecx,%r10
   1.13%  │    ││   0x00007f2df0f64fd6:   movsbl 0x10(%rsi,%r10,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.00%  │    ││   0x00007f2df0f64fdc:   mov    0x10(%r8,%r10,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   0.82%  │    ││   0x00007f2df0f64fe1:   test   %r11d,%r11d
          │╭   ││   0x00007f2df0f64fe4:   jne    0x00007f2df0f65096           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   2.09%  ││   ││   0x00007f2df0f64fea:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f2df0f6511f
          ││   ││                                                             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
  17.72%  ││   ││   0x00007f2df0f64fef:   movsbl 0x11(%rsi,%r10,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.36%  ││   ││   0x00007f2df0f64ff5:   mov    0x14(%r8,%r10,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.02%  ││   ││   0x00007f2df0f64ffa:   nopw   0x0(%rax,%rax,1)
   0.77%  ││   ││   0x00007f2df0f65000:   test   %r11d,%r11d
          ││╭  ││   0x00007f2df0f65003:   jne    0x00007f2df0f6508f           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.76%  │││  ││   0x00007f2df0f65009:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f2df0f6511f
          │││  ││                                                             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
  17.30%  │││  ││   0x00007f2df0f6500e:   movsbl 0x12(%rsi,%r10,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.43%  │││  ││   0x00007f2df0f65014:   mov    0x18(%r8,%r10,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.24%  │││  ││   0x00007f2df0f65019:   test   %r11d,%r11d
   0.81%  │││  ││   0x00007f2df0f6501c:   nopl   0x0(%rax)
   1.62%  │││╭ ││   0x00007f2df0f65020:   jne    0x00007f2df0f65093           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   1.30%  ││││ ││   0x00007f2df0f65026:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f2df0f6511f
          ││││ ││                                                             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   8.16%  ││││ ││   0x00007f2df0f6502b:   movsbl 0x13(%rsi,%r10,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.57%  ││││ ││   0x00007f2df0f65031:   mov    0x1c(%r8,%r10,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   2.14%  ││││ ││   0x00007f2df0f65036:   test   %r11d,%r11d
          ││││╭││   0x00007f2df0f65039:   jne    0x00007f2df0f6508c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.77%  │││││││   0x00007f2df0f6503f:   nop
   1.88%  │││││││   0x00007f2df0f65040:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f2df0f6511f
          │││││││                                                             ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
  26.78%  │││││││   0x00007f2df0f65045:   mov    %ecx,%r10d
   1.21%  │││││││   0x00007f2df0f65048:   add    $0x4,%r10d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   0.84%  │││││││   0x00007f2df0f6504c:   cmp    %eax,%r10d
          │││││╰│   0x00007f2df0f6504f:   jl     0x00007f2df0f64fd0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.00%  │││││ │   0x00007f2df0f65055:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r8=Oop r9=NarrowOop rsi=Oop rbp=NarrowOop }
          │││││ │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││││ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.01%  │││││ │   0x00007f2df0f6505c:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │││││ │                                                             ;   {poll}
   0.20%  │││││ │   0x00007f2df0f6505f:   nop
          │││││ │   0x00007f2df0f65060:   cmp    $0x9d7d,%r10d
          │││││ │   0x00007f2df0f65067:   jge    0x00007f2df0f650b4
          │││││ │   0x00007f2df0f65069:   mov    %r10d,%ecx                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
          ↘││││ │   0x00007f2df0f6506c:   mov    $0x9d7d,%eax
   0.00%   ││││ │   0x00007f2df0f65071:   sub    %ecx,%eax
           ││││ │   0x00007f2df0f65073:   cmp    $0x9d7d,%ecx
   0.00%   ││││ │   0x00007f2df0f65079:   cmovg  %ebx,%eax
           ││││ │   0x00007f2df0f6507c:   cmp    $0xfa0,%eax
   0.01%   ││││ │   0x00007f2df0f65082:   cmova  %edx,%eax
   0.00%   ││││ │   0x00007f2df0f65085:   add    %ecx,%eax
           ││││ ╰   0x00007f2df0f65087:   jmp    0x00007f2df0f64fd3
           │││↘     0x00007f2df0f6508c:   add    $0x2,%ecx
           │↘│      0x00007f2df0f6508f:   inc    %ecx
           │ │   ╭  0x00007f2df0f65091:   jmp    0x00007f2df0f65096
           │ ↘   │  0x00007f2df0f65093:   add    $0x2,%ecx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
           ↘     ↘  0x00007f2df0f65096:   mov    $0xffffff45,%esi
                    0x00007f2df0f6509b:   mov    %ecx,(%rsp)
                    0x00007f2df0f6509e:   mov    %edi,0x4(%rsp)
                    0x00007f2df0f650a2:   mov    %r11d,0x8(%rsp)
....................................................................................................
  97.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 476 
   0.83%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 476 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 502 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 476 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 476 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.77%  <...other 266 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.93%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 476 
   1.73%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 502 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%           libjvm.so  fileStream::write 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  _int_malloc 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.97%         c2, level 4
   1.73%              kernel
   0.12%           libjvm.so
   0.09%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%        libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = BIMORPHIC)

# Run progress: 6.25% complete, ETA 00:27:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.183 ns/op
# Warmup Iteration   2: 2.153 ns/op
# Warmup Iteration   3: 2.153 ns/op
# Warmup Iteration   4: 2.154 ns/op
# Warmup Iteration   5: 2.153 ns/op
Iteration   1: 2.152 ns/op
Iteration   2: 2.153 ns/op
Iteration   3: 2.152 ns/op
Iteration   4: 2.153 ns/op
Iteration   5: 2.154 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.153 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (2.152, 2.153, 2.154), stdev = 0.001
  CI (99.9%): [2.150, 2.156] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 117750 total address lines.
Perf output processed (skipped 55.565 seconds):
 Column 1: cycles (50740 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 464 

                  0x00007f42fcf64986:   cmp    $0x9d7f,%r10d
                  0x00007f42fcf6498d:   jbe    0x00007f42fcf64a8f
                  0x00007f42fcf64993:   lea    (%r12,%rbp,8),%rdi           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                  0x00007f42fcf64997:   lea    (%r12,%r9,8),%rsi            ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 180)
                  0x00007f42fcf6499b:   mov    $0x3e8,%ecx
                  0x00007f42fcf649a0:   xor    %ebx,%ebx
          ╭       0x00007f42fcf649a2:   jmp    0x00007f42fcf649ba           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.02%  │ ↗     0x00007f42fcf649a4:   mov    0x348(%r15),%r10             ; ImmutableOopMap {r9=NarrowOop rdi=Oop rsi=Oop rbp=NarrowOop }
          │ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.02%  │ │     0x00007f42fcf649ab:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │ │                                                               ;   {poll}
   0.12%  │ │     0x00007f42fcf649ae:   cmp    $0x9d80,%ebx
          │ │     0x00007f42fcf649b4:   jge    0x00007f42fcf64a7c           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
          ↘ │     0x00007f42fcf649ba:   mov    $0x9d80,%edx
   0.00%    │     0x00007f42fcf649bf:   sub    %ebx,%edx
            │     0x00007f42fcf649c1:   cmp    $0x3e8,%edx
   0.01%    │     0x00007f42fcf649c7:   cmova  %ecx,%edx
   0.00%    │     0x00007f42fcf649ca:   add    %ebx,%edx
           ╭│     0x00007f42fcf649cc:   jmp    0x00007f42fcf649e2
           ││     0x00007f42fcf649ce:   xchg   %ax,%ax
   8.78%   ││  ↗  0x00007f42fcf649d0:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
           ││  │  0x00007f42fcf649d4:   incl   0x10(%r10)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 187)
  14.89%   ││ ↗│  0x00007f42fcf649d8:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   0.08%   ││ ││  0x00007f42fcf649da:   cmp    %edx,%ebx
   7.76%   ││ ││  0x00007f42fcf649dc:   nopl   0x0(%rax)
   1.02%   │╰ ││  0x00007f42fcf649e0:   jge    0x00007f42fcf649a4           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   8.69%   ↘  ││  0x00007f42fcf649e2:   movslq %ebx,%r10
   0.14%      ││  0x00007f42fcf649e5:   mov    0x10(%rdi,%r10,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   9.47%      ││  0x00007f42fcf649ea:   movsbl 0x10(%rsi,%r10,1),%r11d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   1.58%      ││  0x00007f42fcf649f0:   cmp    $0x1,%r11d
             ╭││  0x00007f42fcf649f4:   je     0x00007f42fcf64a22
   8.67%     │││  0x00007f42fcf649f6:   cmp    $0x1,%r11d
   0.00%     │││  0x00007f42fcf649fa:   nopw   0x0(%rax,%rax,1)
   0.08%     │││  0x00007f42fcf64a00:   ja     0x00007f42fcf64a48           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.12%     │││  0x00007f42fcf64a06:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f42fcf64aac
  14.37%     │││  0x00007f42fcf64a0b:   cmp    $0xc27428,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
             │││  0x00007f42fcf64a12:   jne    0x00007f42fcf64a64
   0.63%     │││  0x00007f42fcf64a18:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.00%     │││  0x00007f42fcf64a1c:   incl   0xc(%r10)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
             │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
  10.82%     │╰│  0x00007f42fcf64a20:   jmp    0x00007f42fcf649d8
   0.01%     ↘ │  0x00007f42fcf64a22:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f42fcf64aa0
  10.68%       │  0x00007f42fcf64a27:   cmp    $0xc27638,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
               ╰  0x00007f42fcf64a2e:   je     0x00007f42fcf649d0
                  0x00007f42fcf64a30:   mov    $0xffffffde,%esi
                  0x00007f42fcf64a35:   mov    %ebx,(%rsp)
                  0x00007f42fcf64a38:   mov    %r8d,0x4(%rsp)
                  0x00007f42fcf64a3d:   mov    %r9d,0x8(%rsp)
                  0x00007f42fcf64a42:   nop
                  0x00007f42fcf64a43:   call   0x00007f42fca01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
                                                                            ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  97.99%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 464 
   0.65%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 464 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 490 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 464 
   0.01%              kernel  [unknown] 
   0.75%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 464 
   1.57%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 5, compile id 490 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%         c2, level 4
   1.57%              kernel
   0.16%           libjvm.so
   0.11%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%      perf-22293.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 12.50% complete, ETA 00:25:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.259 ns/op
# Warmup Iteration   2: 2.230 ns/op
# Warmup Iteration   3: 2.233 ns/op
# Warmup Iteration   4: 2.236 ns/op
# Warmup Iteration   5: 2.334 ns/op
Iteration   1: 2.333 ns/op
Iteration   2: 2.333 ns/op
Iteration   3: 2.334 ns/op
Iteration   4: 2.332 ns/op
Iteration   5: 2.234 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.313 ±(99.9%) 0.171 ns/op [Average]
  (min, avg, max) = (2.234, 2.313, 2.334), stdev = 0.044
  CI (99.9%): [2.142, 2.484] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 117599 total address lines.
Perf output processed (skipped 55.576 seconds):
 Column 1: cycles (50762 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 487 

                    0x00007f6948f66506:   cmp    $0x9d7f,%r10d
                    0x00007f6948f6650d:   jbe    0x00007f6948f66687
                    0x00007f6948f66513:   lea    (%r12,%rbp,8),%rbx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                    0x00007f6948f66517:   lea    (%r12,%rcx,8),%rdx           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 180)
                    0x00007f6948f6651b:   mov    $0x3e8,%r9d
                    0x00007f6948f66521:   xor    %r11d,%r11d
          ╭         0x00007f6948f66524:   jmp    0x00007f6948f6653d           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.01%  │ ↗       0x00007f6948f66526:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rcx=NarrowOop rbx=Oop rdx=Oop rbp=NarrowOop }
          │ │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.01%  │ │       0x00007f6948f6652d:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │ │                                                                 ;   {poll}
   0.12%  │ │       0x00007f6948f66530:   cmp    $0x9d80,%r11d
          │ │       0x00007f6948f66537:   jge    0x00007f6948f66674           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
          ↘ │       0x00007f6948f6653d:   mov    $0x9d80,%edi
   0.00%    │       0x00007f6948f66542:   sub    %r11d,%edi
            │       0x00007f6948f66545:   cmp    $0x3e8,%edi
   0.01%    │       0x00007f6948f6654b:   cmova  %r9d,%edi
            │       0x00007f6948f6654f:   add    %r11d,%edi
           ╭│       0x00007f6948f66552:   jmp    0x00007f6948f66570
           ││       0x00007f6948f66554:   nopl   0x0(%rax,%rax,1)
           ││       0x00007f6948f6655c:   data16 data16 xchg %ax,%ax
   5.29%   ││    ↗  0x00007f6948f66560:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   0.00%   ││    │  0x00007f6948f66564:   incl   0x14(%r10)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 187)
   9.33%   ││ ↗ ↗│  0x00007f6948f66568:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   4.25%   ││ │ ││  0x00007f6948f6656b:   cmp    %edi,%r11d
           │╰ │ ││  0x00007f6948f6656e:   jge    0x00007f6948f66526           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   0.03%   ↘  │ ││  0x00007f6948f66570:   movslq %r11d,%r10
   6.39%      │ ││  0x00007f6948f66573:   mov    0x10(%rbx,%r10,4),%r8d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   6.54%      │ ││  0x00007f6948f66578:   movsbl 0x10(%rdx,%r10,1),%r10d      ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   4.91%      │ ││  0x00007f6948f6657e:   xchg   %ax,%ax
   0.03%      │ ││  0x00007f6948f66580:   cmp    $0x1,%r10d
             ╭│ ││  0x00007f6948f66584:   jne    0x00007f6948f665a2           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   5.36%     ││ ││  0x00007f6948f66586:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f6948f666a0
   7.95%     ││ ││  0x00007f6948f6658b:   cmp    $0xc27638,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             ││ ││  0x00007f6948f66592:   jne    0x00007f6948f66628
   0.70%     ││ ││  0x00007f6948f66598:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
             ││ ││  0x00007f6948f6659c:   incl   0x10(%r10)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
             ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
  10.14%     │╰ ││  0x00007f6948f665a0:   jmp    0x00007f6948f66568
   1.09%     ↘  ││  0x00007f6948f665a2:   cmp    $0x1,%r10d
               ╭││  0x00007f6948f665a6:   jge    0x00007f6948f665d7
   5.58%       │││  0x00007f6948f665a8:   test   %r10d,%r10d
               │││  0x00007f6948f665ab:   jne    0x00007f6948f66640           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%       │││  0x00007f6948f665b1:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f6948f666ac
   6.19%       │││  0x00007f6948f665b6:   data16 nopw 0x0(%rax,%rax,1)
               │││  0x00007f6948f665c0:   cmp    $0xc27428,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
               │││  0x00007f6948f665c7:   jne    0x00007f6948f6665c
   5.57%       │││  0x00007f6948f665cd:   lea    (%r12,%r8,8),%r10            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.01%       │││  0x00007f6948f665d1:   incl   0xc(%r10)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
               │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   7.00%       │╰│  0x00007f6948f665d5:   jmp    0x00007f6948f66568
   5.43%       ↘ │  0x00007f6948f665d7:   cmp    $0x2,%r10d
                 │  0x00007f6948f665db:   jne    0x00007f6948f6660c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                 │  0x00007f6948f665dd:   data16 xchg %ax,%ax
                 │  0x00007f6948f665e0:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f6948f66694
   5.99%         │  0x00007f6948f665e5:   cmp    $0xc27848,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
                 ╰  0x00007f6948f665ec:   je     0x00007f6948f66560
                    0x00007f6948f665f2:   mov    $0xffffffde,%esi
                    0x00007f6948f665f7:   mov    %r11d,(%rsp)
                    0x00007f6948f665fb:   mov    %r8d,0x4(%rsp)
                    0x00007f6948f66600:   mov    %ecx,0x8(%rsp)
                    0x00007f6948f66604:   data16 xchg %ax,%ax
                    0x00007f6948f66607:   call   0x00007f6948a01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                              ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
                                                                              ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  97.94%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 487 
   0.74%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 487 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 510 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 487 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.75%  <...other 275 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 487 
   1.65%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 510 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  _int_realloc 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.03%         c2, level 4
   1.65%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%          ld-2.31.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 18.75% complete, ETA 00:23:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.336 ns/op
# Warmup Iteration   2: 2.310 ns/op
# Warmup Iteration   3: 2.309 ns/op
# Warmup Iteration   4: 2.312 ns/op
# Warmup Iteration   5: 2.309 ns/op
Iteration   1: 2.363 ns/op
Iteration   2: 2.363 ns/op
Iteration   3: 2.363 ns/op
Iteration   4: 2.363 ns/op
Iteration   5: 2.312 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.353 ±(99.9%) 0.088 ns/op [Average]
  (min, avg, max) = (2.312, 2.353, 2.363), stdev = 0.023
  CI (99.9%): [2.265, 2.441] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 116865 total address lines.
Perf output processed (skipped 55.668 seconds):
 Column 1: cycles (50787 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 499 

                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
                      0x00007f9168f64518:   test   %r8d,%r8d
                      0x00007f9168f6451b:   nopl   0x0(%rax,%rax,1)
                      0x00007f9168f64520:   jbe    0x00007f9168f646e3
                      0x00007f9168f64526:   cmp    $0x9d7f,%r8d
                      0x00007f9168f6452d:   jbe    0x00007f9168f646e3
                      0x00007f9168f64533:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                      0x00007f9168f64537:   lea    (%r12,%r11,8),%rsi           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 180)
   0.00%              0x00007f9168f6453b:   mov    $0x3e8,%edi
                      0x00007f9168f64540:   xor    %ecx,%ecx
          ╭           0x00007f9168f64542:   jmp    0x00007f9168f6455a           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.01%  │ ↗         0x00007f9168f64544:   mov    0x348(%r15),%r10             ; ImmutableOopMap {r11=NarrowOop rdx=Oop rsi=Oop rbp=NarrowOop }
          │ │                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                   ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.02%  │ │         0x00007f9168f6454b:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │ │                                                                   ;   {poll}
   0.11%  │ │         0x00007f9168f6454e:   cmp    $0x9d80,%ecx
          │ │         0x00007f9168f64554:   jge    0x00007f9168f646d0           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
          ↘ │         0x00007f9168f6455a:   mov    $0x9d80,%ebx
   0.01%    │         0x00007f9168f6455f:   sub    %ecx,%ebx
            │         0x00007f9168f64561:   cmp    $0x3e8,%ebx
   0.02%    │         0x00007f9168f64567:   cmova  %edi,%ebx
   0.00%    │         0x00007f9168f6456a:   add    %ecx,%ebx
           ╭│         0x00007f9168f6456c:   jmp    0x00007f9168f64582
           ││         0x00007f9168f6456e:   xchg   %ax,%ax
   4.01%   ││      ↗  0x00007f9168f64570:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
           ││      │  0x00007f9168f64574:   incl   0x18(%r10)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││      │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 187)
  14.64%   ││ ↗  ↗↗│  0x00007f9168f64578:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
           ││ │  │││  0x00007f9168f6457a:   cmp    %ebx,%ecx
   0.01%   ││ │  │││  0x00007f9168f6457c:   nopl   0x0(%rax)
   2.25%   │╰ │  │││  0x00007f9168f64580:   jge    0x00007f9168f64544           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
  13.71%   ↘  │  │││  0x00007f9168f64582:   movslq %ecx,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
              │  │││  0x00007f9168f64585:   movsbl 0x10(%rsi,%r10,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.32%      │  │││  0x00007f9168f6458b:   mov    0x10(%rdx,%r10,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   3.02%      │  │││  0x00007f9168f64590:   cmp    $0x2,%r8d
             ╭│  │││  0x00007f9168f64594:   jne    0x00007f9168f645bc           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   3.43%     ││  │││  0x00007f9168f64596:   data16 nopw 0x0(%rax,%rax,1)
             ││  │││  0x00007f9168f645a0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f9168f64700
   2.20%     ││  │││  0x00007f9168f645a5:   cmp    $0xc27848,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
             ││  │││  0x00007f9168f645ac:   jne    0x00007f9168f6466c
   0.83%     ││  │││  0x00007f9168f645b2:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   3.24%     ││  │││  0x00007f9168f645b6:   incl   0x14(%r10)                   ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
             ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
             ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   5.32%     │╰  │││  0x00007f9168f645ba:   jmp    0x00007f9168f64578
  10.45%     ↘   │││  0x00007f9168f645bc:   nopl   0x0(%rax)
                 │││  0x00007f9168f645c0:   cmp    $0x2,%r8d
               ╭ │││  0x00007f9168f645c4:   jge    0x00007f9168f6461f
   0.01%       │ │││  0x00007f9168f645ca:   cmp    $0x1,%r8d
               │╭│││  0x00007f9168f645ce:   je     0x00007f9168f645ff
   0.06%       │││││  0x00007f9168f645d0:   test   %r8d,%r8d
               │││││  0x00007f9168f645d3:   jne    0x00007f9168f6469c           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
               │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   4.30%       │││││  0x00007f9168f645d9:   nopl   0x0(%rax)
               │││││  0x00007f9168f645e0:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007f9168f64718
   2.95%       │││││  0x00007f9168f645e5:   cmp    $0xc27428,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
               │││││  0x00007f9168f645ec:   jne    0x00007f9168f646b8
   0.30%       │││││  0x00007f9168f645f2:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   3.56%       │││││  0x00007f9168f645f6:   incl   0xc(%r10)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
               │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
               │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   2.10%       ││╰││  0x00007f9168f645fa:   jmp    0x00007f9168f64578
   4.48%       │↘ ││  0x00007f9168f645ff:   nop
               │  ││  0x00007f9168f64600:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f9168f6470c
   3.96%       │  ││  0x00007f9168f64605:   cmp    $0xc27638,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
               │  ││  0x00007f9168f6460c:   jne    0x00007f9168f64684
   0.43%       │  ││  0x00007f9168f64612:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   3.63%       │  ││  0x00007f9168f64616:   incl   0x10(%r10)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
               │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   2.48%       │  ╰│  0x00007f9168f6461a:   jmp    0x00007f9168f64578
   4.25%       ↘   │  0x00007f9168f6461f:   nop
                   │  0x00007f9168f64620:   cmp    $0x3,%r8d
                   │  0x00007f9168f64624:   jne    0x00007f9168f64650           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%           │  0x00007f9168f64626:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007f9168f646f4
   1.80%           │  0x00007f9168f6462b:   cmp    $0xc27a58,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
                   ╰  0x00007f9168f64632:   je     0x00007f9168f64570
                      0x00007f9168f64638:   mov    $0xffffffde,%esi
                      0x00007f9168f6463d:   mov    %ecx,(%rsp)
                      0x00007f9168f64640:   mov    %r10d,0x4(%rsp)
                      0x00007f9168f64645:   mov    %r11d,0x8(%rsp)
                      0x00007f9168f6464a:   nop
                      0x00007f9168f6464b:   call   0x00007f9168a01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
                                                                                ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  97.91%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 499 
   0.92%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 523 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 499 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 499 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.63%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 499 
   1.70%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 523 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  [unknown] 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  stringStream::write 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.12%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.00%         c2, level 4
   1.70%              kernel
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.03%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 25.00% complete, ETA 00:21:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.491 ns/op
# Warmup Iteration   2: 2.310 ns/op
# Warmup Iteration   3: 2.309 ns/op
# Warmup Iteration   4: 2.307 ns/op
# Warmup Iteration   5: 2.308 ns/op
Iteration   1: 2.309 ns/op
Iteration   2: 2.312 ns/op
Iteration   3: 2.310 ns/op
Iteration   4: 2.309 ns/op
Iteration   5: 2.308 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.310 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (2.308, 2.310, 2.312), stdev = 0.001
  CI (99.9%): [2.305, 2.315] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 117262 total address lines.
Perf output processed (skipped 55.617 seconds):
 Column 1: cycles (50805 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 488 

                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                        0x00007f82a4f66db7:   lea    (%r12,%r8,8),%rdx            ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 180)
                        0x00007f82a4f66dbb:   mov    $0x3e8,%r9d
                        0x00007f82a4f66dc1:   xor    %r11d,%r11d
          ╭             0x00007f82a4f66dc4:   jmp    0x00007f82a4f66ddd           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │ ↗           0x00007f82a4f66dc6:   mov    0x348(%r15),%r10             ; ImmutableOopMap {r8=NarrowOop rbx=Oop rdx=Oop rbp=NarrowOop }
          │ │                                                                     ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.01%  │ │           0x00007f82a4f66dcd:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │ │                                                                     ;   {poll}
   0.12%  │ │           0x00007f82a4f66dd0:   cmp    $0x9d80,%r11d
          │ │           0x00007f82a4f66dd7:   jge    0x00007f82a4f66f8c           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
          ↘ │           0x00007f82a4f66ddd:   mov    $0x9d80,%edi
            │           0x00007f82a4f66de2:   sub    %r11d,%edi
            │           0x00007f82a4f66de5:   cmp    $0x3e8,%edi
   0.02%    │           0x00007f82a4f66deb:   cmova  %r9d,%edi
            │           0x00007f82a4f66def:   add    %r11d,%edi
           ╭│           0x00007f82a4f66df2:   jmp    0x00007f82a4f66e10
           ││           0x00007f82a4f66df4:   nopl   0x0(%rax,%rax,1)
           ││           0x00007f82a4f66dfc:   data16 data16 xchg %ax,%ax
   3.39%   ││        ↗  0x00007f82a4f66e00:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
           ││        │  0x00007f82a4f66e04:   incl   0x1c(%r10)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 187)
   4.93%   ││ ↗ ↗  ↗↗│  0x00007f82a4f66e08:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   5.78%   ││ │ │  │││  0x00007f82a4f66e0b:   cmp    %edi,%r11d
           │╰ │ │  │││  0x00007f82a4f66e0e:   jge    0x00007f82a4f66dc6           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │  │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   6.13%   ↘  │ │  │││  0x00007f82a4f66e10:   movslq %r11d,%r10                   ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.10%      │ │  │││  0x00007f82a4f66e13:   movsbl 0x10(%rdx,%r10,1),%ecx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   3.67%      │ │  │││  0x00007f82a4f66e19:   mov    0x10(%rbx,%r10,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
              │ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   6.95%      │ │  │││  0x00007f82a4f66e1e:   xchg   %ax,%ax
   6.20%      │ │  │││  0x00007f82a4f66e20:   test   %ecx,%ecx
             ╭│ │  │││  0x00007f82a4f66e22:   jne    0x00007f82a4f66e42           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             ││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%     ││ │  │││  0x00007f82a4f66e24:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f82a4f66fbc
   4.96%     ││ │  │││  0x00007f82a4f66e29:   cmp    $0xc27428,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
             ││ │  │││  0x00007f82a4f66e2f:   jne    0x00007f82a4f66f10
   0.24%     ││ │  │││  0x00007f82a4f66e35:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             ││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.02%     ││ │  │││  0x00007f82a4f66e39:   incl   0xc(%r10)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             ││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
             ││ │  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   4.11%     ││ │  │││  0x00007f82a4f66e3d:   data16 xchg %ax,%ax
   0.01%     │╰ │  │││  0x00007f82a4f66e40:   jmp    0x00007f82a4f66e08
   1.16%     ↘  │  │││  0x00007f82a4f66e42:   cmp    $0x3,%ecx
               ╭│  │││  0x00007f82a4f66e45:   jne    0x00007f82a4f66e62           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
               ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
               ││  │││  0x00007f82a4f66e47:   mov    0x8(%r12,%r10,8),%esi        ; implicit exception: dispatches to 0x00007f82a4f66fc8
   4.65%       ││  │││  0x00007f82a4f66e4c:   cmp    $0xc27a58,%esi               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
               ││  │││  0x00007f82a4f66e52:   jne    0x00007f82a4f66f28
   0.44%       ││  │││  0x00007f82a4f66e58:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
               ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   0.00%       ││  │││  0x00007f82a4f66e5c:   incl   0x18(%r10)                   ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
               ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
               ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   5.67%       │╰  │││  0x00007f82a4f66e60:   jmp    0x00007f82a4f66e08
   9.94%       ↘   │││  0x00007f82a4f66e62:   cmp    $0x3,%ecx
                 ╭ │││  0x00007f82a4f66e65:   jge    0x00007f82a4f66ec5
   0.00%         │ │││  0x00007f82a4f66e6b:   cmp    $0x1,%ecx
                 │╭│││  0x00007f82a4f66e6e:   jne    0x00007f82a4f66e99           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%         │││││  0x00007f82a4f66e70:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f82a4f66fd4
   2.37%         │││││  0x00007f82a4f66e75:   data16 data16 nopw 0x0(%rax,%rax,1)
   3.11%         │││││  0x00007f82a4f66e80:   cmp    $0xc27638,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
                 │││││  0x00007f82a4f66e86:   jne    0x00007f82a4f66f5c
   0.24%         │││││  0x00007f82a4f66e8c:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.00%         │││││  0x00007f82a4f66e90:   incl   0x10(%r10)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                 │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   5.01%         ││╰││  0x00007f82a4f66e94:   jmp    0x00007f82a4f66e08
   3.25%         │↘ ││  0x00007f82a4f66e99:   cmp    $0x1,%ecx
   0.00%         │  ││  0x00007f82a4f66e9c:   nopl   0x0(%rax)
                 │  ││  0x00007f82a4f66ea0:   jl     0x00007f82a4f66f40           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                 │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                 │  ││  0x00007f82a4f66ea6:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f82a4f66fe0
   4.74%         │  ││  0x00007f82a4f66eab:   cmp    $0xc27848,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
                 │  ││  0x00007f82a4f66eb1:   jne    0x00007f82a4f66f74
   0.13%         │  ││  0x00007f82a4f66eb7:   shl    $0x3,%r10                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                 │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
                 │  ││  0x00007f82a4f66ebb:   incl   0x14(%r10)                   ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                 │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
                 │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   4.80%         │  ││  0x00007f82a4f66ebf:   nop
                 │  ╰│  0x00007f82a4f66ec0:   jmp    0x00007f82a4f66e08
   3.34%         ↘   │  0x00007f82a4f66ec5:   cmp    $0x4,%ecx
                     │  0x00007f82a4f66ec8:   jne    0x00007f82a4f66ef4           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                     │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                     │  0x00007f82a4f66eca:   mov    0x8(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f82a4f66fb0
   1.39%             │  0x00007f82a4f66ecf:   cmp    $0xc27c68,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                     ╰  0x00007f82a4f66ed5:   je     0x00007f82a4f66e00
                        0x00007f82a4f66edb:   mov    $0xffffffde,%esi
                        0x00007f82a4f66ee0:   mov    %r11d,(%rsp)
                        0x00007f82a4f66ee4:   mov    %r10d,0x4(%rsp)
                        0x00007f82a4f66ee9:   mov    %r8d,0x8(%rsp)
                        0x00007f82a4f66eee:   nop
                        0x00007f82a4f66eef:   call   0x00007f82a4a01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                  ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
                                                                                  ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  97.89%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 488 
   0.90%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 488 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 488 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 507 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.71%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 488 
   1.74%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 507 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%  libpthread-2.31.so  __pthread_mutex_lock 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%        libc-2.31.so  ptmalloc_init.part.0 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.96%         c2, level 4
   1.74%              kernel
   0.15%           libjvm.so
   0.05%                    
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 31.25% complete, ETA 00:19:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.504 ns/op
# Warmup Iteration   2: 2.465 ns/op
# Warmup Iteration   3: 2.462 ns/op
# Warmup Iteration   4: 2.465 ns/op
# Warmup Iteration   5: 2.464 ns/op
Iteration   1: 2.464 ns/op
Iteration   2: 2.557 ns/op
Iteration   3: 2.556 ns/op
Iteration   4: 2.555 ns/op
Iteration   5: 2.465 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.519 ±(99.9%) 0.191 ns/op [Average]
  (min, avg, max) = (2.464, 2.519, 2.557), stdev = 0.050
  CI (99.9%): [2.328, 2.711] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 118801 total address lines.
Perf output processed (skipped 55.730 seconds):
 Column 1: cycles (50591 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 494 

                        0x00007fc610f654a6:   cmp    $0x9d7f,%r11d
                        0x00007fc610f654ad:   jbe    0x00007fc610f656df
                        0x00007fc610f654b3:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                        0x00007fc610f654b7:   lea    (%r12,%r10,8),%rsi           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 180)
                        0x00007fc610f654bb:   mov    $0x3e8,%edi
                        0x00007fc610f654c0:   xor    %r11d,%r11d
          ╭             0x00007fc610f654c3:   jmp    0x00007fc610f654dc           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.01%  │ ↗           0x00007fc610f654c5:   mov    0x348(%r15),%r8              ; ImmutableOopMap {r10=NarrowOop rdx=Oop rsi=Oop rbp=NarrowOop }
          │ │                                                                     ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                     ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.06%  │ │           0x00007fc610f654cc:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │ │                                                                     ;   {poll}
   0.10%  │ │           0x00007fc610f654cf:   cmp    $0x9d80,%r11d
          │ │           0x00007fc610f654d6:   jge    0x00007fc610f656cc           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
          ↘ │           0x00007fc610f654dc:   mov    $0x9d80,%ebx
   0.00%    │           0x00007fc610f654e1:   sub    %r11d,%ebx
            │           0x00007fc610f654e4:   cmp    $0x3e8,%ebx
   0.02%    │           0x00007fc610f654ea:   cmova  %edi,%ebx
   0.00%    │           0x00007fc610f654ed:   add    %r11d,%ebx
           ╭│           0x00007fc610f654f0:   jmp    0x00007fc610f65505
   2.53%   ││        ↗  0x00007fc610f654f2:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
           ││        │  0x00007fc610f654f6:   incl   0x1c(%r8)                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││        │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 187)
   7.40%   ││  ↗ ↗↗ ↗│  0x00007fc610f654fa:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   5.58%   ││  │ ││ ││  0x00007fc610f654fd:   data16 xchg %ax,%ax
   0.49%   ││  │ ││ ││  0x00007fc610f65500:   cmp    %ebx,%r11d
           │╰  │ ││ ││  0x00007fc610f65503:   jge    0x00007fc610f654c5           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │   │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   2.58%   ↘   │ ││ ││  0x00007fc610f65505:   movslq %r11d,%r8                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   6.40%       │ ││ ││  0x00007fc610f65508:   movsbl 0x10(%rsi,%r8,1),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   5.87%       │ ││ ││  0x00007fc610f6550e:   mov    0x10(%rdx,%r8,4),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   1.51%       │ ││ ││  0x00007fc610f65513:   cmp    $0x3,%ecx
               │ ││ ││  0x00007fc610f65516:   je     0x00007fc610f655f8
   2.18%       │ ││ ││  0x00007fc610f6551c:   nopl   0x0(%rax)
   4.19%       │ ││ ││  0x00007fc610f65520:   cmp    $0x3,%ecx
             ╭ │ ││ ││  0x00007fc610f65523:   jge    0x00007fc610f6559f
   3.88%     │ │ ││ ││  0x00007fc610f65529:   cmp    $0x1,%ecx
             │╭│ ││ ││  0x00007fc610f6552c:   jne    0x00007fc610f65549           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%     │││ ││ ││  0x00007fc610f6552e:   mov    0x8(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007fc610f65720
   2.59%     │││ ││ ││  0x00007fc610f65533:   cmp    $0xc27638,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             │││ ││ ││  0x00007fc610f65539:   jne    0x00007fc610f65680
   0.19%     │││ ││ ││  0x00007fc610f6553f:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   1.69%     │││ ││ ││  0x00007fc610f65543:   incl   0x10(%r8)                    ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
             │││ ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   4.20%     ││╰ ││ ││  0x00007fc610f65547:   jmp    0x00007fc610f654fa
   0.57%     │↘  ││ ││  0x00007fc610f65549:   cmp    $0x1,%ecx
             │  ╭││ ││  0x00007fc610f6554c:   jge    0x00007fc610f6557f
   0.46%     │  │││ ││  0x00007fc610f6554e:   test   %ecx,%ecx
             │  │││ ││  0x00007fc610f65550:   jne    0x00007fc610f65698           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.00%     │  │││ ││  0x00007fc610f65556:   data16 nopw 0x0(%rax,%rax,1)
   1.96%     │  │││ ││  0x00007fc610f65560:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007fc610f6572c
   2.36%     │  │││ ││  0x00007fc610f65565:   cmp    $0xc27428,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
             │  │││ ││  0x00007fc610f6556c:   jne    0x00007fc610f656b4
   0.57%     │  │││ ││  0x00007fc610f65572:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.00%     │  │││ ││  0x00007fc610f65576:   incl   0xc(%r8)                     ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             │  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
             │  │││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   3.62%     │  │╰│ ││  0x00007fc610f6557a:   jmp    0x00007fc610f654fa
   2.75%     │  ↘ │ ││  0x00007fc610f6557f:   nop
             │    │ ││  0x00007fc610f65580:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007fc610f65708
   2.30%     │    │ ││  0x00007fc610f65585:   cmp    $0xc27848,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
             │    │ ││  0x00007fc610f6558c:   jne    0x00007fc610f65650
   0.30%     │    │ ││  0x00007fc610f65592:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   2.40%     │    │ ││  0x00007fc610f65596:   incl   0x14(%r8)                    ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
             │    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
             │    │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   1.50%     │    ╰ ││  0x00007fc610f6559a:   jmp    0x00007fc610f654fa
   1.73%     ↘      ││  0x00007fc610f6559f:   nop
   0.01%            ││  0x00007fc610f655a0:   cmp    $0x4,%ecx
                   ╭││  0x00007fc610f655a3:   je     0x00007fc610f655cc
                   │││  0x00007fc610f655a5:   cmp    $0x5,%ecx
                   │││  0x00007fc610f655a8:   jne    0x00007fc610f6561b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   2.55%           │││  0x00007fc610f655ae:   mov    0x8(%r12,%r9,8),%ecx         ; implicit exception: dispatches to 0x00007fc610f656fc
   1.69%           │││  0x00007fc610f655b3:   cmp    $0xc2c000,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
                   │││  0x00007fc610f655b9:   jne    0x00007fc610f65638
   0.17%           │││  0x00007fc610f655bf:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
                   │││  0x00007fc610f655c3:   incl   0x20(%r8)                    ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
                   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   5.65%           │╰│  0x00007fc610f655c7:   jmp    0x00007fc610f654fa
   2.53%           ↘ │  0x00007fc610f655cc:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007fc610f656f0
   2.36%             │  0x00007fc610f655d1:   cmp    $0xc27c68,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                     ╰  0x00007fc610f655d8:   je     0x00007fc610f654f2
                        0x00007fc610f655de:   mov    $0xffffffde,%esi
                        0x00007fc610f655e3:   mov    %r11d,(%rsp)
                        0x00007fc610f655e7:   mov    %r9d,0x4(%rsp)
                        0x00007fc610f655ec:   mov    %r10d,0x8(%rsp)
                        0x00007fc610f655f1:   xchg   %ax,%ax
                        0x00007fc610f655f3:   call   0x00007fc610a01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                  ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
                                                                                  ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  86.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 494 

            0x00007fc610f655d8:   je     0x00007fc610f654f2
            0x00007fc610f655de:   mov    $0xffffffde,%esi
            0x00007fc610f655e3:   mov    %r11d,(%rsp)
            0x00007fc610f655e7:   mov    %r9d,0x4(%rsp)
            0x00007fc610f655ec:   mov    %r10d,0x8(%rsp)
            0x00007fc610f655f1:   xchg   %ax,%ax
            0x00007fc610f655f3:   call   0x00007fc610a01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                      ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
                                                                      ;   {runtime_call UncommonTrapBlob}
   0.43%    0x00007fc610f655f8:   nopl   0x0(%rax,%rax,1)
   2.08%    0x00007fc610f65600:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007fc610f65714
   1.99%    0x00007fc610f65605:   cmp    $0xc27a58,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
            0x00007fc610f6560c:   jne    0x00007fc610f65668
   0.21%    0x00007fc610f6560e:   lea    (%r12,%r9,8),%r8             ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   0.43%    0x00007fc610f65612:   incl   0x18(%r8)                    ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   5.93%    0x00007fc610f65616:   jmp    0x00007fc610f654fa
            0x00007fc610f6561b:   mov    $0xffffff45,%esi
            0x00007fc610f65620:   mov    %r11d,(%rsp)
            0x00007fc610f65624:   mov    %r9d,0x4(%rsp)
            0x00007fc610f65629:   mov    %ecx,0x8(%rsp)
            0x00007fc610f6562d:   mov    %r10d,0xc(%rsp)
            0x00007fc610f65632:   nop
            0x00007fc610f65633:   call   0x00007fc610a01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [12]=NarrowOop }
                                                                      ;*tableswitch {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  11.07%  <total for region 2>

....[Hottest Regions]...............................................................................
  86.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 494 
  11.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 494 
   0.42%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 517 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 494 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 494 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.87%  <...other 292 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 494 
   1.56%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 517 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  ImplicitExceptionTable::continuation_offset 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  getifaddrs_internal 
   0.11%  <...other 54 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.16%         c2, level 4
   1.56%              kernel
   0.13%           libjvm.so
   0.06%                    
   0.06%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 37.50% complete, ETA 00:17:58
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.504 ns/op
# Warmup Iteration   2: 2.493 ns/op
# Warmup Iteration   3: 2.493 ns/op
# Warmup Iteration   4: 2.494 ns/op
# Warmup Iteration   5: 2.463 ns/op
Iteration   1: 2.465 ns/op
Iteration   2: 2.462 ns/op
Iteration   3: 2.559 ns/op
Iteration   4: 2.557 ns/op
Iteration   5: 2.562 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  2.521 ±(99.9%) 0.202 ns/op [Average]
  (min, avg, max) = (2.462, 2.521, 2.562), stdev = 0.053
  CI (99.9%): [2.319, 2.724] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 116924 total address lines.
Perf output processed (skipped 55.665 seconds):
 Column 1: cycles (50612 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 497 

                          0x00007f69fcf66da6:   cmp    $0x9d7f,%r11d
                          0x00007f69fcf66dad:   jbe    0x00007f69fcf67037
                          0x00007f69fcf66db3:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                          0x00007f69fcf66db7:   lea    (%r12,%r10,8),%rsi           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 180)
                          0x00007f69fcf66dbb:   mov    $0x3e8,%edi
                          0x00007f69fcf66dc0:   xor    %r9d,%r9d
          ╭               0x00007f69fcf66dc3:   jmp    0x00007f69fcf66ddc           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.01%  │ ↗             0x00007f69fcf66dc5:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r10=NarrowOop rdx=Oop rsi=Oop rbp=NarrowOop }
          │ │                                                                       ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.07%  │ │             0x00007f69fcf66dcc:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │ │                                                                       ;   {poll}
   0.15%  │ │             0x00007f69fcf66dcf:   cmp    $0x9d80,%r9d
          │ │             0x00007f69fcf66dd6:   jge    0x00007f69fcf67024           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   0.00%  ↘ │             0x00007f69fcf66ddc:   mov    $0x9d80,%ebx
   0.00%    │             0x00007f69fcf66de1:   sub    %r9d,%ebx
            │             0x00007f69fcf66de4:   cmp    $0x3e8,%ebx
   0.01%    │             0x00007f69fcf66dea:   cmova  %edi,%ebx
   0.00%    │             0x00007f69fcf66ded:   add    %r9d,%ebx
           ╭│             0x00007f69fcf66df0:   jmp    0x00007f69fcf66e05
   2.16%   ││          ↗  0x00007f69fcf66df2:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
           ││          │  0x00007f69fcf66df6:   incl   0x24(%r11)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 187)
   6.25%   ││  ↗ ↗↗ ↗ ↗│  0x00007f69fcf66dfa:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││  │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
   1.95%   ││  │ ││ │ ││  0x00007f69fcf66dfd:   data16 xchg %ax,%ax
   4.58%   ││  │ ││ │ ││  0x00007f69fcf66e00:   cmp    %ebx,%r9d
           │╰  │ ││ │ ││  0x00007f69fcf66e03:   jge    0x00007f69fcf66dc5           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │   │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   4.14%   ↘   │ ││ │ ││  0x00007f69fcf66e05:   movslq %r9d,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   4.01%       │ ││ │ ││  0x00007f69fcf66e08:   movsbl 0x10(%rsi,%r11,1),%r8d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   2.54%       │ ││ │ ││  0x00007f69fcf66e0e:   mov    0x10(%rdx,%r11,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   5.54%       │ ││ │ ││  0x00007f69fcf66e13:   cmp    $0x3,%r8d
               │ ││ │ ││  0x00007f69fcf66e17:   je     0x00007f69fcf66f34
   3.90%       │ ││ │ ││  0x00007f69fcf66e1d:   data16 xchg %ax,%ax
   4.33%       │ ││ │ ││  0x00007f69fcf66e20:   cmp    $0x3,%r8d
             ╭ │ ││ │ ││  0x00007f69fcf66e24:   jge    0x00007f69fcf66ea5
   0.17%     │ │ ││ │ ││  0x00007f69fcf66e2a:   cmp    $0x1,%r8d
             │╭│ ││ │ ││  0x00007f69fcf66e2e:   jne    0x00007f69fcf66e57           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.01%     │││ ││ │ ││  0x00007f69fcf66e30:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f69fcf67078
   2.95%     │││ ││ │ ││  0x00007f69fcf66e35:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.63%     │││ ││ │ ││  0x00007f69fcf66e40:   cmp    $0xc27638,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
             │││ ││ │ ││  0x00007f69fcf66e47:   jne    0x00007f69fcf66fbc
   0.25%     │││ ││ │ ││  0x00007f69fcf66e4d:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.01%     │││ ││ │ ││  0x00007f69fcf66e51:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
             │││ ││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   4.33%     ││╰ ││ │ ││  0x00007f69fcf66e55:   jmp    0x00007f69fcf66dfa
   1.54%     │↘  ││ │ ││  0x00007f69fcf66e57:   cmp    $0x1,%r8d
             │  ╭││ │ ││  0x00007f69fcf66e5b:   jge    0x00007f69fcf66e87
   0.01%     │  │││ │ ││  0x00007f69fcf66e5d:   data16 xchg %ax,%ax
   2.16%     │  │││ │ ││  0x00007f69fcf66e60:   test   %r8d,%r8d
             │  │││ │ ││  0x00007f69fcf66e63:   jne    0x00007f69fcf66fec           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
             │  │││ │ ││  0x00007f69fcf66e69:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f69fcf67090
   1.00%     │  │││ │ ││  0x00007f69fcf66e6e:   cmp    $0xc27428,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
             │  │││ │ ││  0x00007f69fcf66e74:   jne    0x00007f69fcf6700c
   0.12%     │  │││ │ ││  0x00007f69fcf66e7a:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   1.93%     │  │││ │ ││  0x00007f69fcf66e7e:   incl   0xc(%r11)                    ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
             │  │││ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
   0.83%     │  │╰│ │ ││  0x00007f69fcf66e82:   jmp    0x00007f69fcf66dfa
   2.21%     │  ↘ │ │ ││  0x00007f69fcf66e87:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f69fcf67054
   1.77%     │    │ │ ││  0x00007f69fcf66e8c:   cmp    $0xc27848,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
             │    │ │ ││  0x00007f69fcf66e92:   jne    0x00007f69fcf66f74
   0.17%     │    │ │ ││  0x00007f69fcf66e98:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
             │    │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
             │    │ │ ││  0x00007f69fcf66e9c:   incl   0x14(%r11)                   ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
             │    │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
             │    │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   3.63%     │    ╰ │ ││  0x00007f69fcf66ea0:   jmp    0x00007f69fcf66dfa
   0.01%     ↘      │ ││  0x00007f69fcf66ea5:   cmp    $0x5,%r8d
                   ╭│ ││  0x00007f69fcf66ea9:   jne    0x00007f69fcf66eca           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
   0.02%           ││ ││  0x00007f69fcf66eab:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f69fcf67060
   4.06%           ││ ││  0x00007f69fcf66eb0:   cmp    $0xc2c000,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
                   ││ ││  0x00007f69fcf66eb7:   jne    0x00007f69fcf66f8c
   0.20%           ││ ││  0x00007f69fcf66ebd:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
                   ││ ││  0x00007f69fcf66ec1:   incl   0x20(%r11)                   ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
                   ││ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   4.73%           │╰ ││  0x00007f69fcf66ec5:   jmp    0x00007f69fcf66dfa
   4.27%           ↘  ││  0x00007f69fcf66eca:   cmp    $0x5,%r8d
                     ╭││  0x00007f69fcf66ece:   jge    0x00007f69fcf66efa           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                     │││  0x00007f69fcf66ed0:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f69fcf67084
   1.77%             │││  0x00007f69fcf66ed5:   data16 data16 nopw 0x0(%rax,%rax,1)
                     │││  0x00007f69fcf66ee0:   cmp    $0xc27c68,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
                     │││  0x00007f69fcf66ee7:   jne    0x00007f69fcf66fd4
   2.08%             │││  0x00007f69fcf66eed:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
                     │││  0x00007f69fcf66ef1:   incl   0x1c(%r11)                   ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
                     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   4.29%             │╰│  0x00007f69fcf66ef5:   jmp    0x00007f69fcf66dfa
   2.21%             ↘ │  0x00007f69fcf66efa:   nopw   0x0(%rax,%rax,1)
                       │  0x00007f69fcf66f00:   cmp    $0x6,%r8d
                       │  0x00007f69fcf66f04:   jne    0x00007f69fcf66f55           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                       │  0x00007f69fcf66f0a:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f69fcf67048
   0.87%               │  0x00007f69fcf66f0f:   cmp    $0xc2c210,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
                       ╰  0x00007f69fcf66f15:   je     0x00007f69fcf66df2
                          0x00007f69fcf66f1b:   mov    $0xffffffde,%esi
                          0x00007f69fcf66f20:   mov    %r9d,(%rsp)
                          0x00007f69fcf66f24:   mov    %r11d,0x4(%rsp)
                          0x00007f69fcf66f29:   mov    %r10d,0x8(%rsp)
                          0x00007f69fcf66f2e:   nop
                          0x00007f69fcf66f2f:   call   0x00007f69fca01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [8]=NarrowOop }
                                                                                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
                                                                                    ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  88.84%  <total for region 1>

....[Hottest Regions]...............................................................................
  88.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 497 
   9.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 497 
   0.62%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 524 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 497 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 497 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.80%  <...other 290 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 4, compile id 497 
   1.64%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 524 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __strncat_ssse3 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  _nl_parse_alt_digit 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%        libc-2.31.so  tcache_init.part.0 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%        libc-2.31.so  __GI___strncasecmp_l_sse2 
   0.00%           libjvm.so  stringStream::write 
   0.12%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.10%         c2, level 4
   1.64%              kernel
   0.11%           libjvm.so
   0.07%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%      perf-22578.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 43.75% complete, ETA 00:16:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 15.619 ns/op
# Warmup Iteration   2: 15.490 ns/op
# Warmup Iteration   3: 15.478 ns/op
# Warmup Iteration   4: 15.489 ns/op
# Warmup Iteration   5: 15.475 ns/op
Iteration   1: 15.495 ns/op
Iteration   2: 15.484 ns/op
Iteration   3: 15.486 ns/op
Iteration   4: 15.485 ns/op
Iteration   5: 15.490 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic":
  15.488 ±(99.9%) 0.018 ns/op [Average]
  (min, avg, max) = (15.484, 15.488, 15.495), stdev = 0.005
  CI (99.9%): [15.470, 15.506] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm":
PrintAssembly processed: 116918 total address lines.
Perf output processed (skipped 55.591 seconds):
 Column 1: cycles (51211 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 494 

                       0x00007f94dcf65986:   cmp    $0x9d7f,%r11d
                       0x00007f94dcf6598d:   jbe    0x00007f94dcf65c03
                       0x00007f94dcf65993:   lea    (%r12,%rbp,8),%rdx           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@6 (line 181)
                       0x00007f94dcf65997:   lea    (%r12,%r10,8),%rax           ;*getfield classIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@1 (line 180)
                       0x00007f94dcf6599b:   mov    $0x3e8,%edi
                       0x00007f94dcf659a0:   xor    %r8d,%r8d
          ╭            0x00007f94dcf659a3:   jmp    0x00007f94dcf659bc           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.00%  │        ↗   0x00007f94dcf659a5:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r10=NarrowOop rdx=Oop rax=Oop rbp=NarrowOop }
          │        │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │        │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
   0.05%  │        │   0x00007f94dcf659ac:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@157 (line 182)
          │        │                                                             ;   {poll}
   0.03%  │        │   0x00007f94dcf659af:   cmp    $0x9d80,%r8d
          │        │   0x00007f94dcf659b6:   jge    0x00007f94dcf65bf0           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │        │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
          ↘        │   0x00007f94dcf659bc:   mov    $0x9d80,%esi
                   │   0x00007f94dcf659c1:   sub    %r8d,%esi
                   │   0x00007f94dcf659c4:   cmp    $0x3e8,%esi
   0.01%           │   0x00007f94dcf659ca:   cmova  %edi,%esi
                   │   0x00007f94dcf659cd:   add    %r8d,%esi
           ╭       │   0x00007f94dcf659d0:   jmp    0x00007f94dcf65ae9
   3.69%   │       │   0x00007f94dcf659d5:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f94dcf65c68
   4.10%   │       │   0x00007f94dcf659da:   nopw   0x0(%rax,%rax,1)
           │       │   0x00007f94dcf659e0:   cmp    $0xc27848,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;)}
           │       │   0x00007f94dcf659e6:   jne    0x00007f94dcf65bd8
   0.32%   │       │   0x00007f94dcf659ec:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
           │       │   0x00007f94dcf659f0:   incl   0x14(%r11)                   ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
           │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@92 (line 192)
   2.38%   │╭      │   0x00007f94dcf659f4:   jmp    0x00007f94dcf65ada
   4.68%   ││      │   0x00007f94dcf659f9:   nopl   0x0(%rax)
   1.14%   ││      │   0x00007f94dcf65a00:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f94dcf65c5c
   5.22%   ││      │   0x00007f94dcf65a05:   cmp    $0xc27638,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
           ││      │   0x00007f94dcf65a0b:   jne    0x00007f94dcf65b30
   0.28%   ││      │   0x00007f94dcf65a11:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   0.00%   ││      │   0x00007f94dcf65a15:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
           ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
           ││      │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@83 (line 189)
   2.25%   ││╭     │   0x00007f94dcf65a19:   jmp    0x00007f94dcf65ada
   3.76%   │││     │   0x00007f94dcf65a1e:   xchg   %ax,%ax
   0.25%   │││     │   0x00007f94dcf65a20:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f94dcf65c50
   3.15%   │││     │   0x00007f94dcf65a25:   cmp    $0xc27a58,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;)}
           │││     │   0x00007f94dcf65a2c:   jne    0x00007f94dcf65bc0
   0.29%   │││     │   0x00007f94dcf65a32:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   0.00%   │││     │   0x00007f94dcf65a36:   incl   0x18(%r11)                   ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
           │││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
           │││     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@101 (line 195)
   3.42%   │││╭    │   0x00007f94dcf65a3a:   jmp    0x00007f94dcf65ada
   3.54%   ││││    │   0x00007f94dcf65a3f:   nop
   1.18%   ││││    │   0x00007f94dcf65a40:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f94dcf65c44
   4.02%   ││││    │   0x00007f94dcf65a45:   cmp    $0xc27c68,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;)}
           ││││    │   0x00007f94dcf65a4b:   jne    0x00007f94dcf65ba8
   0.28%   ││││    │   0x00007f94dcf65a51:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
           ││││    │   0x00007f94dcf65a55:   incl   0x1c(%r11)                   ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
           ││││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
           ││││    │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@110 (line 198)
   1.89%   ││││╭   │   0x00007f94dcf65a59:   jmp    0x00007f94dcf65ada
   5.02%   │││││   │   0x00007f94dcf65a5e:   xchg   %ax,%ax
   0.37%   │││││   │   0x00007f94dcf65a60:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f94dcf65c38
   5.09%   │││││   │   0x00007f94dcf65a65:   cmp    $0xc2c000,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg6&apos;)}
           │││││   │   0x00007f94dcf65a6c:   jne    0x00007f94dcf65b90
   0.32%   │││││   │   0x00007f94dcf65a72:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │││││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
           │││││   │   0x00007f94dcf65a76:   incl   0x20(%r11)                   ;*putfield c6 {reexecute=0 rethrow=0 return_oop=0}
           │││││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute@8 (line 303)
           │││││   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@119 (line 201)
   2.13%   │││││╭  │   0x00007f94dcf65a7a:   jmp    0x00007f94dcf65ada
   2.85%   ││││││  │   0x00007f94dcf65a7f:   nop
   1.15%   ││││││  │   0x00007f94dcf65a80:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f94dcf65c2c
   4.31%   ││││││  │   0x00007f94dcf65a85:   cmp    $0xc2c210,%ecx               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg7&apos;)}
           ││││││  │   0x00007f94dcf65a8b:   jne    0x00007f94dcf65b78
   0.31%   ││││││  │   0x00007f94dcf65a91:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
           ││││││  │   0x00007f94dcf65a95:   incl   0x24(%r11)                   ;*putfield c7 {reexecute=0 rethrow=0 return_oop=0}
           ││││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg7::compute@8 (line 309)
           ││││││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@128 (line 204)
   2.93%   ││││││╭ │   0x00007f94dcf65a99:   jmp    0x00007f94dcf65ada
   3.47%   │││││││ │   0x00007f94dcf65a9e:   xchg   %ax,%ax
   0.31%   │││││││ │   0x00007f94dcf65aa0:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f94dcf65c20
   2.97%   │││││││ │   0x00007f94dcf65aa5:   cmp    $0xc2c420,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg8&apos;)}
           │││││││ │   0x00007f94dcf65aac:   jne    0x00007f94dcf65b60
   0.31%   │││││││ │   0x00007f94dcf65ab2:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
           │││││││ │   0x00007f94dcf65ab6:   incl   0x28(%r11)                   ;*putfield c8 {reexecute=0 rethrow=0 return_oop=0}
           │││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg8::compute@8 (line 315)
           │││││││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@137 (line 207)
   3.94%   │││││││╭│   0x00007f94dcf65aba:   jmp    0x00007f94dcf65ada
   3.37%   │││││││││   0x00007f94dcf65abc:   nopl   0x0(%rax)
   1.01%   │││││││││   0x00007f94dcf65ac0:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f94dcf65c14
   3.17%   │││││││││   0x00007f94dcf65ac5:   cmp    $0xc27428,%r9d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
           │││││││││   0x00007f94dcf65acc:   jne    0x00007f94dcf65b48
   0.31%   │││││││││   0x00007f94dcf65ad2:   shl    $0x3,%r11                    ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
           │││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@74 (line 186)
           │││││││││   0x00007f94dcf65ad6:   incl   0xc(%r11)                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@78 (line 187)
   1.83%   │↘↘↘↘↘↘↘│   0x00007f94dcf65ada:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@154 (line 182)
           │       │   0x00007f94dcf65add:   data16 xchg %ax,%ax
           │       │   0x00007f94dcf65ae0:   cmp    %esi,%r8d
           │       ╰   0x00007f94dcf65ae3:   jge    0x00007f94dcf659a5           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@18 (line 183)
   2.07%   ↘           0x00007f94dcf65ae9:   movslq %r8d,%r9
   0.29%               0x00007f94dcf65aec:   mov    0x10(%rdx,%r9,4),%r11d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@20 (line 183)
   0.35%               0x00007f94dcf65af1:   movsbl 0x10(%rax,%r9,1),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@25 (line 184)
   0.13%               0x00007f94dcf65af7:   cmp    $0x8,%ecx
                    ╭  0x00007f94dcf65afa:   jae    0x00007f94dcf65b11
   2.12%            │  0x00007f94dcf65afc:   movslq %ecx,%r9
   0.12%            │  0x00007f94dcf65aff:   shl    $0x3,%r9
   0.45%            │  0x00007f94dcf65b03:   movabs $0x7f94dcf658e0,%rbx         ;   {section_word}
                    │  0x00007f94dcf65b0d:   jmp    *(%rbx,%r9,1)                ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic@26 (line 184)
                    ↘  0x00007f94dcf65b11:   mov    $0xffffff45,%esi
                       0x00007f94dcf65b16:   mov    %r8d,(%rsp)
                       0x00007f94dcf65b1a:   mov    %r11d,0x4(%rsp)
                       0x00007f94dcf65b1f:   mov    %ecx,0x8(%rsp)
                       0x00007f94dcf65b23:   mov    %r10d,0xc(%rsp)
                       0x00007f94dcf65b28:   data16 xchg %ax,%ax
                       0x00007f94dcf65b2b:   call   0x00007f94dca01600           ; ImmutableOopMap {rbp=NarrowOop [4]=NarrowOop [12]=NarrowOop }
                                                                                 ;*tableswitch {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  96.63%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 494 
   1.72%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   1.01%  <...other 302 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::devirtualize_to_monomorphic, version 3, compile id 494 
   3.08%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  stringStream::write 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 4, compile id 538 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_devirtualize_to_monomorphic_jmhTest::devirtualize_to_monomorphic_avgt_jmhStub, version 2, compile id 526 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%        libc-2.31.so  __malloc_fork_lock_parent 
   0.00%        libc-2.31.so  __strcpy_sse2_unaligned 
   0.10%  <...other 52 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.64%         c2, level 4
   3.08%              kernel
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.05%                    
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%      perf-22636.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MONOMORPHIC)

# Run progress: 50.00% complete, ETA 00:14:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.929 ns/op
# Warmup Iteration   2: 1.817 ns/op
# Warmup Iteration   3: 1.815 ns/op
# Warmup Iteration   4: 1.816 ns/op
# Warmup Iteration   5: 1.815 ns/op
Iteration   1: 1.815 ns/op
Iteration   2: 1.815 ns/op
Iteration   3: 1.815 ns/op
Iteration   4: 1.815 ns/op
Iteration   5: 1.815 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.815 ±(99.9%) 0.001 ns/op [Average]
  (min, avg, max) = (1.815, 1.815, 1.815), stdev = 0.001
  CI (99.9%): [1.815, 1.815] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 117025 total address lines.
Perf output processed (skipped 55.700 seconds):
 Column 1: cycles (51058 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 480 

                 0x00007f0d18f64187:   mov    $0x80000000,%r8d
                 0x00007f0d18f6418d:   cmp    %r10d,%r9d
                 0x00007f0d18f64190:   cmovl  %r8d,%r10d
                 0x00007f0d18f64194:   cmp    $0x1,%r10d
          ╭      0x00007f0d18f64198:   jle    0x00007f0d18f64205
          │      0x00007f0d18f6419e:   xor    %r9d,%r9d                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 169)
          │      0x00007f0d18f641a1:   mov    $0xfa0,%r8d
          │ ↗    0x00007f0d18f641a7:   mov    %r10d,%ecx
          │ │    0x00007f0d18f641aa:   sub    %r11d,%ecx
   0.00%  │ │    0x00007f0d18f641ad:   cmp    %r11d,%r10d
          │ │    0x00007f0d18f641b0:   cmovl  %r9d,%ecx
          │ │    0x00007f0d18f641b4:   cmp    $0xfa0,%ecx
          │ │    0x00007f0d18f641ba:   cmova  %r8d,%ecx
   0.01%  │ │    0x00007f0d18f641be:   add    %r11d,%ecx                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   1.18%  │↗│    0x00007f0d18f641c1:   mov    0x10(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.07%  │││    0x00007f0d18f641c6:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f0d18f64240
          │││                                                              ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  27.32%  │││    0x00007f0d18f641cb:   mov    0x14(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
          │││    0x00007f0d18f641d0:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f0d18f64240
          │││                                                              ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  23.22%  │││    0x00007f0d18f641d5:   mov    0x18(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.13%  │││    0x00007f0d18f641da:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f0d18f64240
          │││                                                              ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
  12.70%  │││    0x00007f0d18f641df:   mov    0x1c(%rbx,%r11,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   0.24%  │││    0x00007f0d18f641e4:   incl   0xc(%r12,%rdi,8)             ; implicit exception: dispatches to 0x00007f0d18f64240
          │││                                                              ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  31.93%  │││    0x00007f0d18f641e9:   add    $0x4,%r11d                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
          │││    0x00007f0d18f641ed:   cmp    %ecx,%r11d
          │╰│    0x00007f0d18f641f0:   jl     0x00007f0d18f641c1           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 169)
   0.00%  │ │    0x00007f0d18f641f2:   mov    0x348(%r15),%rcx             ; ImmutableOopMap {rbx=Oop }
          │ │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                              ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 169)
   0.01%  │ │    0x00007f0d18f641f9:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 169)
          │ │                                                              ;   {poll}
   0.18%  │ │    0x00007f0d18f641fb:   nopl   0x0(%rax,%rax,1)
          │ │    0x00007f0d18f64200:   cmp    %r10d,%r11d
          │ ╰    0x00007f0d18f64203:   jl     0x00007f0d18f641a7
          ↘      0x00007f0d18f64205:   cmp    %ebp,%r11d
             ╭   0x00007f0d18f64208:   jge    0x00007f0d18f6421e
             │   0x00007f0d18f6420a:   xchg   %ax,%ax                      ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
             │↗  0x00007f0d18f6420c:   mov    0x10(%rbx,%r11,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
             ││  0x00007f0d18f64211:   incl   0xc(%r12,%r10,8)             ; implicit exception: dispatches to 0x00007f0d18f64240
             ││                                                            ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   0.00%     ││  0x00007f0d18f64216:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
             ││  0x00007f0d18f64219:   cmp    %ebp,%r11d
             │╰  0x00007f0d18f6421c:   jl     0x00007f0d18f6420c           ;*synchronization entry
             │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@-1 (line 168)
             ↘   0x00007f0d18f6421e:   add    $0x20,%rsp
                 0x00007f0d18f64222:   pop    %rbp
   0.00%         0x00007f0d18f64223:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                 0x00007f0d18f6422a:   ja     0x00007f0d18f64258
                 0x00007f0d18f64230:   ret    
                 0x00007f0d18f64231:   mov    $0xffffff76,%esi
                 0x00007f0d18f64236:   mov    %r8d,(%rsp)
                 0x00007f0d18f6423a:   nop
                 0x00007f0d18f6423b:   call   0x00007f0d18a01600           ; ImmutableOopMap {[0]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                                                                           ;   {runtime_call UncommonTrapBlob}
                 0x00007f0d18f64240:   mov    $0xfffffff6,%esi
....................................................................................................
  97.01%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 480 
   1.40%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 505 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 480 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 480 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.94%  <...other 329 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 480 
   2.60%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 505 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  xmlTextStream::write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  jio_print 
   0.00%         interpreter  getstatic  178 getstatic  
   0.00%        libc-2.31.so  re_search_stub 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           libjvm.so  printf_to_env 
   0.00%           libjvm.so  resource_allocate_bytes 
   0.00%           libjvm.so  fileStream::write 
   0.12%  <...other 58 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.11%         c2, level 4
   2.60%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.06%                    
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%        libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = BIMORPHIC)

# Run progress: 56.25% complete, ETA 00:12:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.921 ns/op
# Warmup Iteration   2: 1.944 ns/op
# Warmup Iteration   3: 1.944 ns/op
# Warmup Iteration   4: 1.944 ns/op
# Warmup Iteration   5: 1.944 ns/op
Iteration   1: 1.944 ns/op
Iteration   2: 1.944 ns/op
Iteration   3: 1.906 ns/op
Iteration   4: 1.906 ns/op
Iteration   5: 1.944 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  1.929 ±(99.9%) 0.079 ns/op [Average]
  (min, avg, max) = (1.906, 1.929, 1.944), stdev = 0.020
  CI (99.9%): [1.850, 2.008] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 118999 total address lines.
Perf output processed (skipped 55.690 seconds):
 Column 1: cycles (51179 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 485 

                   0x00007f8a44f632a9:   cmp    $0xc27638,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
                   0x00007f8a44f632b0:   jne    0x00007f8a44f63404           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                   0x00007f8a44f632b6:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          ╭        0x00007f8a44f632ba:   jmp    0x00007f8a44f632c0           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │        0x00007f8a44f632bc:   incl   0xc(%r11)                    ;*synchronization entry
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@-1 (line 168)
   0.00%  ↘        0x00007f8a44f632c0:   lea    (%r12,%rcx,8),%rsi           ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
                   0x00007f8a44f632c4:   mov    $0x1,%eax
                   0x00007f8a44f632c9:   cmp    $0x1,%ebx
                   0x00007f8a44f632cc:   jle    0x00007f8a44f633a8
                   0x00007f8a44f632d2:   mov    $0x7d0,%r9d
           ╭       0x00007f8a44f632d8:   jmp    0x00007f8a44f632ec           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 169)
   0.01%   │ ↗     0x00007f8a44f632da:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rcx=NarrowOop rsi=Oop }
           │ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 169)
   0.01%   │ │     0x00007f8a44f632e1:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@34 (line 169)
           │ │                                                               ;   {poll}
   0.09%   │ │     0x00007f8a44f632e4:   cmp    %ebx,%eax
           │ │     0x00007f8a44f632e6:   jge    0x00007f8a44f633a8           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
           ↘ │     0x00007f8a44f632ec:   mov    %ebp,%edx
             │     0x00007f8a44f632ee:   sub    %eax,%edx
   0.00%     │     0x00007f8a44f632f0:   dec    %edx
   0.01%     │     0x00007f8a44f632f2:   cmp    %eax,%ebx
   0.00%     │     0x00007f8a44f632f4:   cmovl  %edi,%edx
             │     0x00007f8a44f632f7:   cmp    $0x7d0,%edx
   0.00%     │     0x00007f8a44f632fd:   cmova  %r9d,%edx
   0.00%     │     0x00007f8a44f63301:   add    %eax,%edx
            ╭│     0x00007f8a44f63303:   jmp    0x00007f8a44f6331b
            ││     0x00007f8a44f63305:   data16 data16 nopw 0x0(%rax,%rax,1) ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
            ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.78%    ││  ↗  0x00007f8a44f63310:   incl   0xc(%r11)                    ;*synchronization entry
            ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@-1 (line 168)
  11.77%    ││  │  0x00007f8a44f63314:   add    $0x2,%eax                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.95%    ││  │  0x00007f8a44f63317:   cmp    %edx,%eax
            │╰  │  0x00007f8a44f63319:   jge    0x00007f8a44f632da           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   2.08%    ↘   │  0x00007f8a44f6331b:   mov    0x10(%rsi,%rax,4),%r11d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   3.08%        │  0x00007f8a44f63320:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f8a44f63408
                │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  22.21%        │  0x00007f8a44f63325:   shl    $0x3,%r11                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.51%        │  0x00007f8a44f63329:   cmp    $0xc27428,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
              ╭ │  0x00007f8a44f63330:   je     0x00007f8a44f63353
   3.40%      │ │  0x00007f8a44f63332:   data16 nopw 0x0(%rax,%rax,1)
   2.49%      │ │  0x00007f8a44f6333c:   data16 data16 xchg %ax,%ax
   2.26%      │ │  0x00007f8a44f63340:   cmp    $0xc27638,%r10d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
              │ │  0x00007f8a44f63347:   jne    0x00007f8a44f63391           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
   2.98%      │ │  0x00007f8a44f6334d:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
              │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  16.61%      │╭│  0x00007f8a44f63351:   jmp    0x00007f8a44f63357           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
              │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
              ↘││  0x00007f8a44f63353:   incl   0xc(%r11)                    ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   1.98%       ↘│  0x00007f8a44f63357:   mov    0x14(%rsi,%rax,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   2.83%        │  0x00007f8a44f6335c:   nopl   0x0(%rax)
   2.19%        │  0x00007f8a44f63360:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f8a44f63408
                │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
  14.84%        │  0x00007f8a44f63365:   lea    (%r12,%r10,8),%r11           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.65%        │  0x00007f8a44f63369:   cmp    $0xc27428,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;)}
                ╰  0x00007f8a44f63370:   je     0x00007f8a44f63310
                   0x00007f8a44f63372:   data16 nopw 0x0(%rax,%rax,1)
                   0x00007f8a44f6337c:   data16 data16 xchg %ax,%ax
                   0x00007f8a44f63380:   cmp    $0xc27638,%r8d               ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;)}
                   0x00007f8a44f63387:   jne    0x00007f8a44f6338f           ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
                   0x00007f8a44f63389:   incl   0x10(%r11)                   ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
....................................................................................................
  96.74%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 485 
   1.35%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 485 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 511 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 485 
   0.01%              kernel  [unknown] 
   1.18%  <...other 390 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 485 
   2.76%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 5, compile id 511 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.00%         interpreter  getstatic  178 getstatic  
   0.17%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.85%         c2, level 4
   2.76%              kernel
   0.17%           libjvm.so
   0.11%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%              [vdso]
   0.00%      perf-22752.map
   0.00%        libm-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_3)

# Run progress: 62.50% complete, ETA 00:10:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.401 ns/op
# Warmup Iteration   2: 25.282 ns/op
# Warmup Iteration   3: 25.297 ns/op
# Warmup Iteration   4: 25.289 ns/op
# Warmup Iteration   5: 25.275 ns/op
Iteration   1: 25.274 ns/op
Iteration   2: 25.246 ns/op
Iteration   3: 25.248 ns/op
Iteration   4: 25.245 ns/op
Iteration   5: 25.250 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  25.253 ±(99.9%) 0.047 ns/op [Average]
  (min, avg, max) = (25.245, 25.253, 25.274), stdev = 0.012
  CI (99.9%): [25.206, 25.299] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 116049 total address lines.
Perf output processed (skipped 55.569 seconds):
 Column 1: cycles (50758 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          </print_nmethod>
          Decoding VtableStub vtbl[5]@12
          --------------------------------------------------------------------------------
   1.51%    0x00007f4934abdfd0:   mov    0x8(%rsi),%eax
  14.16%    0x00007f4934abdfd3:   movabs $0x800000000,%r10
   0.01%    0x00007f4934abdfdd:   add    %r10,%rax
   1.45%    0x00007f4934abdfe0:   mov    0x1f8(%rax),%rbx
   7.45%    0x00007f4934abdfe7:   jmp    *0x40(%rbx)
            0x00007f4934abdfea:   .byte 0x0
          --------------------------------------------------------------------------------
          <task_queued compile_id='488' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='69074' iicount='2' level='3' stamp='5.213' comment='tiered' hot_count='2'/>
          <nmethod compile_id='488' compiler='c1' level='3' entry='0x00007f492d5080c0' size='1568' address='0x00007f492d507f10' relocation_offset='352' insts_offset='432' stub_offset='1040' scopes_data_offset='1120' scopes_pcs_offset='1264' dependencies_offset='1536' nul_chk_table_offset='1544' oops_offset='1104' metadata_offset='1112' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='3' backedge_count='80861' iicount='3' stamp='5.213'/>
          <print_nmethod compile_id='488' compiler='c1' level='3' stamp='5.213'>
          ============================= C1-compiled nmethod ==============================
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c1)    5213  488       3       com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call (38 bytes)
           total in heap  [0x00007f492d507f10,0x00007f492d508530] = 1568
           relocation     [0x00007f492d508070,0x00007f492d5080c0] = 80
....................................................................................................
  24.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 486 

             # {method} {0x00007f49158d7e20} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f4934f65b00:   mov    0x8(%rsi),%r10d
             0x00007f4934f65b04:   movabs $0x800000000,%r11
             0x00007f4934f65b0e:   add    %r11,%r10
             0x00007f4934f65b11:   cmp    %r10,%rax
             0x00007f4934f65b14:   jne    0x00007f49349fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f4934f65b1a:   xchg   %ax,%ax
             0x00007f4934f65b1c:   nopl   0x0(%rax)
           [Verified Entry Point]
   9.76%     0x00007f4934f65b20:   sub    $0x18,%rsp
   4.08%     0x00007f4934f65b27:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@-1 (line 285)
   3.03%     0x00007f4934f65b2c:   mov    0x14(%rsi),%eax
   0.38%     0x00007f4934f65b2f:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 285)
   0.08%     0x00007f4934f65b31:   mov    %eax,0x14(%rsi)              ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
   0.13%     0x00007f4934f65b34:   add    $0x10,%rsp
   0.39%     0x00007f4934f65b38:   pop    %rbp
   1.70%     0x00007f4934f65b39:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.09%  ╭  0x00007f4934f65b40:   ja     0x00007f4934f65b47
   0.00%  │  0x00007f4934f65b46:   ret    
          ↘  0x00007f4934f65b47:   movabs $0x7f4934f65b39,%r10         ;   {internal_word}
             0x00007f4934f65b51:   mov    %r10,0x358(%r15)
             0x00007f4934f65b58:   jmp    0x00007f4934a02700           ;   {runtime_call SafepointBlob}
             0x00007f4934f65b5d:   hlt    
             0x00007f4934f65b5e:   hlt    
             0x00007f4934f65b5f:   hlt    
           [Exception Handler]
             0x00007f4934f65b60:   jmp    0x00007f4934a0fc00           ;   {no_reloc}
           [Deopt Handler Code]
             0x00007f4934f65b65:   call   0x00007f4934f65b6a
....................................................................................................
  19.66%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 485 

             # {method} {0x00007f49158d7a80} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f4934f65800:   mov    0x8(%rsi),%r10d
             0x00007f4934f65804:   movabs $0x800000000,%r11
             0x00007f4934f6580e:   add    %r11,%r10
             0x00007f4934f65811:   cmp    %r10,%rax
             0x00007f4934f65814:   jne    0x00007f49349fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f4934f6581a:   xchg   %ax,%ax
             0x00007f4934f6581c:   nopl   0x0(%rax)
           [Verified Entry Point]
   9.45%     0x00007f4934f65820:   sub    $0x18,%rsp
   4.01%     0x00007f4934f65827:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@-1 (line 279)
   3.01%     0x00007f4934f6582c:   mov    0x10(%rsi),%eax
   0.38%     0x00007f4934f6582f:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 279)
   0.08%     0x00007f4934f65831:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
   0.18%     0x00007f4934f65834:   add    $0x10,%rsp
   0.42%     0x00007f4934f65838:   pop    %rbp
   1.77%     0x00007f4934f65839:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.07%  ╭  0x00007f4934f65840:   ja     0x00007f4934f65847
          │  0x00007f4934f65846:   ret    
          ↘  0x00007f4934f65847:   movabs $0x7f4934f65839,%r10         ;   {internal_word}
             0x00007f4934f65851:   mov    %r10,0x358(%r15)
             0x00007f4934f65858:   jmp    0x00007f4934a02700           ;   {runtime_call SafepointBlob}
             0x00007f4934f6585d:   hlt    
             0x00007f4934f6585e:   hlt    
             0x00007f4934f6585f:   hlt    
           [Exception Handler]
             0x00007f4934f65860:   jmp    0x00007f4934a0fc00           ;   {no_reloc}
           [Deopt Handler Code]
....................................................................................................
  19.38%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 484 

             # {method} {0x00007f49158d7660} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f4934f65500:   mov    0x8(%rsi),%r10d
             0x00007f4934f65504:   movabs $0x800000000,%r11
             0x00007f4934f6550e:   add    %r11,%r10
             0x00007f4934f65511:   cmp    %r10,%rax
             0x00007f4934f65514:   jne    0x00007f49349fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f4934f6551a:   xchg   %ax,%ax
             0x00007f4934f6551c:   nopl   0x0(%rax)
           [Verified Entry Point]
   9.52%     0x00007f4934f65520:   sub    $0x18,%rsp
   3.99%     0x00007f4934f65527:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@-1 (line 273)
   3.02%     0x00007f4934f6552c:   mov    0xc(%rsi),%eax
   0.00%     0x00007f4934f6552f:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 273)
   0.00%     0x00007f4934f65531:   mov    %eax,0xc(%rsi)               ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
   0.00%     0x00007f4934f65534:   add    $0x10,%rsp
   0.47%     0x00007f4934f65538:   pop    %rbp
   1.89%     0x00007f4934f65539:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.01%  ╭  0x00007f4934f65540:   ja     0x00007f4934f65547
   0.00%  │  0x00007f4934f65546:   ret    
          ↘  0x00007f4934f65547:   movabs $0x7f4934f65539,%r10         ;   {internal_word}
             0x00007f4934f65551:   mov    %r10,0x358(%r15)
             0x00007f4934f65558:   jmp    0x00007f4934a02700           ;   {runtime_call SafepointBlob}
             0x00007f4934f6555d:   hlt    
             0x00007f4934f6555e:   hlt    
             0x00007f4934f6555f:   hlt    
           [Exception Handler]
             0x00007f4934f65560:   jmp    0x00007f4934a0fc00           ;   {no_reloc}
           [Deopt Handler Code]
             0x00007f4934f65565:   call   0x00007f4934f6556a
....................................................................................................
  18.91%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 490 

               0x00007f4934f662de:   mov    %r10d,%r11d
               0x00007f4934f662e1:   dec    %r11d
               0x00007f4934f662e4:   cmp    %r10d,%r11d
          ╭    0x00007f4934f662e7:   jae    0x00007f4934f6633f
          │    0x00007f4934f662ed:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
          │    0x00007f4934f662f1:   xor    %ebp,%ebp
          │    0x00007f4934f662f3:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f4934f662f8:   jmp    0x00007f4934f66304
          ││   0x00007f4934f662fa:   nopw   0x0(%rax,%rax,1)
   4.63%  ││↗  0x00007f4934f66300:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   0.02%  │↘│  0x00007f4934f66304:   mov    0x10(%r11,%rbp,4),%r10d
   6.78%  │ │  0x00007f4934f66309:   mov    %r11,(%rsp)
   0.00%  │ │  0x00007f4934f6630d:   mov    %r10,%rsi
   0.00%  │ │  0x00007f4934f66310:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.46%  │ │  0x00007f4934f66314:   nop
          │ │  0x00007f4934f66315:   movabs $0x800c27428,%rax
   0.01%  │ │  0x00007f4934f6631f:   call   0x00007f49349f8ae0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │                                                            ;   {virtual_call}
   1.38%  │ │  0x00007f4934f66324:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.24%  │ │  0x00007f4934f66326:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f4934f6632a:   jl     0x00007f4934f66300           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
          │    0x00007f4934f6632c:   add    $0x20,%rsp
          │    0x00007f4934f66330:   pop    %rbp
          │    0x00007f4934f66331:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │    0x00007f4934f66338:   ja     0x00007f4934f6636c
          │    0x00007f4934f6633e:   ret    
          ↘    0x00007f4934f6633f:   mov    $0xffffff76,%esi
               0x00007f4934f66344:   mov    %r10d,(%rsp)
....................................................................................................
  15.51%  <total for region 5>

....[Hottest Regions]...............................................................................
  24.57%                      <unknown> 
  19.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 486 
  19.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 485 
  18.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 484 
  15.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 490 
   0.64%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%                      <unknown> 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.80%  <...other 291 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  24.64%                      <unknown> 
  19.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 486 
  19.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 485 
  18.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 484 
  15.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 490 
   1.54%              kernel  [unknown] 
   0.05%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 2, compile id 533 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%           libjvm.so  xmlTextStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.19%  <...other 80 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.46%         c2, level 4
  24.64%                    
   1.54%              kernel
   0.18%           libjvm.so
   0.08%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         c1, level 3
   0.01%         interpreter
   0.01%              [vdso]
   0.00%      perf-22807.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_4)

# Run progress: 68.75% complete, ETA 00:08:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.331 ns/op
# Warmup Iteration   2: 25.206 ns/op
# Warmup Iteration   3: 25.202 ns/op
# Warmup Iteration   4: 25.223 ns/op
# Warmup Iteration   5: 25.209 ns/op
Iteration   1: 25.213 ns/op
Iteration   2: 25.213 ns/op
Iteration   3: 25.223 ns/op
Iteration   4: 25.203 ns/op
Iteration   5: 25.275 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  25.225 ±(99.9%) 0.110 ns/op [Average]
  (min, avg, max) = (25.203, 25.225, 25.275), stdev = 0.029
  CI (99.9%): [25.115, 25.336] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 117282 total address lines.
Perf output processed (skipped 55.632 seconds):
 Column 1: cycles (50766 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          </print_nmethod>
          Decoding VtableStub vtbl[5]@12
          --------------------------------------------------------------------------------
   1.48%    0x00007f5bd4abc0a0:   mov    0x8(%rsi),%eax
  13.67%    0x00007f5bd4abc0a3:   movabs $0x800000000,%r10
   0.01%    0x00007f5bd4abc0ad:   add    %r10,%rax
   1.47%    0x00007f5bd4abc0b0:   mov    0x1f8(%rax),%rbx
   7.53%    0x00007f5bd4abc0b7:   jmp    *0x40(%rbx)
            0x00007f5bd4abc0ba:   .byte 0x0
          --------------------------------------------------------------------------------
          <task_queued compile_id='494' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='68885' iicount='2' level='3' stamp='5.248' comment='tiered' hot_count='2'/>
          <nmethod compile_id='494' compiler='c1' level='3' entry='0x00007f5bcd50b1c0' size='1568' address='0x00007f5bcd50b010' relocation_offset='352' insts_offset='432' stub_offset='1040' scopes_data_offset='1120' scopes_pcs_offset='1264' dependencies_offset='1536' nul_chk_table_offset='1544' oops_offset='1104' metadata_offset='1112' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='79711' iicount='2' stamp='5.248'/>
          <print_nmethod compile_id='494' compiler='c1' level='3' stamp='5.248'>
          ============================= C1-compiled nmethod ==============================
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c1)    5248  494       3       com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call (38 bytes)
           total in heap  [0x00007f5bcd50b010,0x00007f5bcd50b630] = 1568
           relocation     [0x00007f5bcd50b170,0x00007f5bcd50b1c0] = 80
....................................................................................................
  24.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 496 

               0x00007f5bd4f6695e:   mov    %r10d,%r11d
               0x00007f5bd4f66961:   dec    %r11d
               0x00007f5bd4f66964:   cmp    %r10d,%r11d
          ╭    0x00007f5bd4f66967:   jae    0x00007f5bd4f669bf
          │    0x00007f5bd4f6696d:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
          │    0x00007f5bd4f66971:   xor    %ebp,%ebp
          │    0x00007f5bd4f66973:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f5bd4f66978:   jmp    0x00007f5bd4f66984
          ││   0x00007f5bd4f6697a:   nopw   0x0(%rax,%rax,1)
   4.43%  ││↗  0x00007f5bd4f66980:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   0.01%  │↘│  0x00007f5bd4f66984:   mov    0x10(%r11,%rbp,4),%r10d
   6.77%  │ │  0x00007f5bd4f66989:   mov    %r11,(%rsp)
   0.01%  │ │  0x00007f5bd4f6698d:   mov    %r10,%rsi
          │ │  0x00007f5bd4f66990:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.52%  │ │  0x00007f5bd4f66994:   nop
          │ │  0x00007f5bd4f66995:   movabs $0x800c27428,%rax
   0.01%  │ │  0x00007f5bd4f6699f:   call   0x00007f5bd49f8b60           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │                                                            ;   {virtual_call}
   1.29%  │ │  0x00007f5bd4f669a4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.33%  │ │  0x00007f5bd4f669a6:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f5bd4f669aa:   jl     0x00007f5bd4f66980           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
          │    0x00007f5bd4f669ac:   add    $0x20,%rsp
          │    0x00007f5bd4f669b0:   pop    %rbp
   0.00%  │    0x00007f5bd4f669b1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │    0x00007f5bd4f669b8:   ja     0x00007f5bd4f669ec
          │    0x00007f5bd4f669be:   ret    
          ↘    0x00007f5bd4f669bf:   mov    $0xffffff76,%esi
               0x00007f5bd4f669c4:   mov    %r10d,(%rsp)
               0x00007f5bd4f669c8:   mov    %r9d,0x4(%rsp)
               0x00007f5bd4f669cd:   xchg   %ax,%ax
               0x00007f5bd4f669cf:   call   0x00007f5bd4a01600           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  15.38%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 491 

             # {method} {0x00007f5bb54d7e20} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f5bd4f65e80:   mov    0x8(%rsi),%r10d
             0x00007f5bd4f65e84:   movabs $0x800000000,%r11
             0x00007f5bd4f65e8e:   add    %r11,%r10
             0x00007f5bd4f65e91:   cmp    %r10,%rax
             0x00007f5bd4f65e94:   jne    0x00007f5bd49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f5bd4f65e9a:   xchg   %ax,%ax
             0x00007f5bd4f65e9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   7.20%     0x00007f5bd4f65ea0:   sub    $0x18,%rsp
   3.16%     0x00007f5bd4f65ea7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@-1 (line 285)
   2.26%     0x00007f5bd4f65eac:   mov    0x14(%rsi),%eax
   0.90%     0x00007f5bd4f65eaf:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 285)
   0.21%     0x00007f5bd4f65eb1:   mov    %eax,0x14(%rsi)              ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
   0.40%     0x00007f5bd4f65eb4:   add    $0x10,%rsp
   0.18%     0x00007f5bd4f65eb8:   pop    %rbp
   0.74%     0x00007f5bd4f65eb9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.19%  ╭  0x00007f5bd4f65ec0:   ja     0x00007f5bd4f65ec7
   0.01%  │  0x00007f5bd4f65ec6:   ret    
          ↘  0x00007f5bd4f65ec7:   movabs $0x7f5bd4f65eb9,%r10         ;   {internal_word}
             0x00007f5bd4f65ed1:   mov    %r10,0x358(%r15)
             0x00007f5bd4f65ed8:   jmp    0x00007f5bd4a02700           ;   {runtime_call SafepointBlob}
             0x00007f5bd4f65edd:   hlt    
             0x00007f5bd4f65ede:   hlt    
             0x00007f5bd4f65edf:   hlt    
           [Exception Handler]
             0x00007f5bd4f65ee0:   jmp    0x00007f5bd4a0fc00           ;   {no_reloc}
           [Deopt Handler Code]
             0x00007f5bd4f65ee5:   call   0x00007f5bd4f65eea
....................................................................................................
  15.24%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 492 

             # {method} {0x00007f5bb54d21d0} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f5bd4f66180:   mov    0x8(%rsi),%r10d
             0x00007f5bd4f66184:   movabs $0x800000000,%r11
             0x00007f5bd4f6618e:   add    %r11,%r10
             0x00007f5bd4f66191:   cmp    %r10,%rax
             0x00007f5bd4f66194:   jne    0x00007f5bd49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f5bd4f6619a:   xchg   %ax,%ax
             0x00007f5bd4f6619c:   nopl   0x0(%rax)
           [Verified Entry Point]
   7.40%     0x00007f5bd4f661a0:   sub    $0x18,%rsp
   2.92%     0x00007f5bd4f661a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@-1 (line 291)
   2.26%     0x00007f5bd4f661ac:   mov    0x18(%rsi),%eax
             0x00007f5bd4f661af:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
             0x00007f5bd4f661b1:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
             0x00007f5bd4f661b4:   add    $0x10,%rsp
   0.36%     0x00007f5bd4f661b8:   pop    %rbp
   1.53%     0x00007f5bd4f661b9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f5bd4f661c0:   ja     0x00007f5bd4f661c7
          │  0x00007f5bd4f661c6:   ret    
          ↘  0x00007f5bd4f661c7:   movabs $0x7f5bd4f661b9,%r10         ;   {internal_word}
             0x00007f5bd4f661d1:   mov    %r10,0x358(%r15)
             0x00007f5bd4f661d8:   jmp    0x00007f5bd4a02700           ;   {runtime_call SafepointBlob}
             0x00007f5bd4f661dd:   hlt    
             0x00007f5bd4f661de:   hlt    
             0x00007f5bd4f661df:   hlt    
           [Exception Handler]
             0x00007f5bd4f661e0:   jmp    0x00007f5bd4a0fc00           ;   {no_reloc}
....................................................................................................
  14.48%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 490 

             # {method} {0x00007f5bb54d7a80} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f5bd4f65b80:   mov    0x8(%rsi),%r10d
             0x00007f5bd4f65b84:   movabs $0x800000000,%r11
             0x00007f5bd4f65b8e:   add    %r11,%r10
             0x00007f5bd4f65b91:   cmp    %r10,%rax
             0x00007f5bd4f65b94:   jne    0x00007f5bd49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f5bd4f65b9a:   xchg   %ax,%ax
             0x00007f5bd4f65b9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   7.27%     0x00007f5bd4f65ba0:   sub    $0x18,%rsp
   3.07%     0x00007f5bd4f65ba7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@-1 (line 279)
   2.21%     0x00007f5bd4f65bac:   mov    0x10(%rsi),%eax
             0x00007f5bd4f65baf:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 279)
   0.00%     0x00007f5bd4f65bb1:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
             0x00007f5bd4f65bb4:   add    $0x10,%rsp
   0.36%     0x00007f5bd4f65bb8:   pop    %rbp
   1.46%     0x00007f5bd4f65bb9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.00%  ╭  0x00007f5bd4f65bc0:   ja     0x00007f5bd4f65bc7
          │  0x00007f5bd4f65bc6:   ret    
          ↘  0x00007f5bd4f65bc7:   movabs $0x7f5bd4f65bb9,%r10         ;   {internal_word}
             0x00007f5bd4f65bd1:   mov    %r10,0x358(%r15)
             0x00007f5bd4f65bd8:   jmp    0x00007f5bd4a02700           ;   {runtime_call SafepointBlob}
             0x00007f5bd4f65bdd:   hlt    
             0x00007f5bd4f65bde:   hlt    
             0x00007f5bd4f65bdf:   hlt    
           [Exception Handler]
             0x00007f5bd4f65be0:   jmp    0x00007f5bd4a0fc00           ;   {no_reloc}
           [Deopt Handler Code]
....................................................................................................
  14.38%  <total for region 5>

....[Hottest Region 6]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 489 

             # {method} {0x00007f5bb54d7660} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f5bd4f65880:   mov    0x8(%rsi),%r10d
             0x00007f5bd4f65884:   movabs $0x800000000,%r11
             0x00007f5bd4f6588e:   add    %r11,%r10
             0x00007f5bd4f65891:   cmp    %r10,%rax
             0x00007f5bd4f65894:   jne    0x00007f5bd49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f5bd4f6589a:   xchg   %ax,%ax
             0x00007f5bd4f6589c:   nopl   0x0(%rax)
           [Verified Entry Point]
   7.28%     0x00007f5bd4f658a0:   sub    $0x18,%rsp
   3.06%     0x00007f5bd4f658a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@-1 (line 273)
   2.21%     0x00007f5bd4f658ac:   mov    0xc(%rsi),%eax
             0x00007f5bd4f658af:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 273)
             0x00007f5bd4f658b1:   mov    %eax,0xc(%rsi)               ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
             0x00007f5bd4f658b4:   add    $0x10,%rsp
   0.36%     0x00007f5bd4f658b8:   pop    %rbp
   1.44%     0x00007f5bd4f658b9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.00%  ╭  0x00007f5bd4f658c0:   ja     0x00007f5bd4f658c7
          │  0x00007f5bd4f658c6:   ret    
          ↘  0x00007f5bd4f658c7:   movabs $0x7f5bd4f658b9,%r10         ;   {internal_word}
             0x00007f5bd4f658d1:   mov    %r10,0x358(%r15)
             0x00007f5bd4f658d8:   jmp    0x00007f5bd4a02700           ;   {runtime_call SafepointBlob}
             0x00007f5bd4f658dd:   hlt    
             0x00007f5bd4f658de:   hlt    
             0x00007f5bd4f658df:   hlt    
           [Exception Handler]
             0x00007f5bd4f658e0:   jmp    0x00007f5bd4a0fc00           ;   {no_reloc}
           [Deopt Handler Code]
....................................................................................................
  14.35%  <total for region 6>

....[Hottest Regions]...............................................................................
  24.17%                      <unknown> 
  15.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 496 
  15.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 491 
  14.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 492 
  14.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 490 
  14.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 489 
   0.61%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.06%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%              kernel  [unknown] 
   0.87%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  24.27%                      <unknown> 
  15.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 496 
  15.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 491 
  14.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 492 
  14.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 490 
  14.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 489 
   1.52%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 2, compile id 542 
   0.01%           libjvm.so  xmlTextStream::write 
   0.01%           libjvm.so  os::PlatformMonitor::wait 
   0.01%           libjvm.so  fileStream::flush 
   0.21%  <...other 83 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  73.84%         c2, level 4
  24.27%                    
   1.52%              kernel
   0.20%           libjvm.so
   0.07%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.01%              [vdso]
   0.00%      perf-22861.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_5)

# Run progress: 75.00% complete, ETA 00:07:11
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.274 ns/op
# Warmup Iteration   2: 25.079 ns/op
# Warmup Iteration   3: 25.079 ns/op
# Warmup Iteration   4: 25.079 ns/op
# Warmup Iteration   5: 25.078 ns/op
Iteration   1: 25.079 ns/op
Iteration   2: 25.120 ns/op
Iteration   3: 25.118 ns/op
Iteration   4: 25.119 ns/op
Iteration   5: 25.119 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  25.111 ±(99.9%) 0.069 ns/op [Average]
  (min, avg, max) = (25.079, 25.111, 25.120), stdev = 0.018
  CI (99.9%): [25.042, 25.180] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 117157 total address lines.
Perf output processed (skipped 55.672 seconds):
 Column 1: cycles (50709 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          </print_nmethod>
          Decoding VtableStub vtbl[5]@12
          --------------------------------------------------------------------------------
          ============================= C2-compiled nmethod ==============================
          <nmethod compile_id='489' compiler='c2' level='4' entry='0x00007f212cf65780' size='616' address='0x00007f212cf65610' relocation_offset='352' insts_offset='368' stub_offset='464' scopes_data_offset='504' scopes_pcs_offset='528' dependencies_offset='608' oops_offset='488' metadata_offset='496' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4 compute ()I' bytes='12' count='14216' iicount='14216' stamp='5.269'/>
   1.44%    0x00007f212cabc0a0:   
          <make_not_entrant thread='22933' compile_id='484' compiler='c1' level='2' stamp='5.269'/>
          mov    
          <print_nmethod compile_id='489' compiler='c2' level='4' stamp='5.269'>
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c2)    5268  489       4       com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute (12 bytes)
           total in heap  [0x00007f212cf65610,0x00007f212cf65878] = 616
           relocation     [0x00007f212cf65770,0x00007f212cf65780] = 16
           main code      [0x00007f212cf65780,0x00007f212cf657e0] = 96
           stub code      [0x00007f212cf657e0,0x00007f212cf657f8] = 24
           oops           [0x00007f212cf657f8,0x00007f212cf65800] = 8
           metadata       [0x00007f212cf65800,0x00007f212cf65808] = 8
....................................................................................................
  24.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 494 

               0x00007f212cf6625e:   mov    %r10d,%r11d
               0x00007f212cf66261:   dec    %r11d
               0x00007f212cf66264:   cmp    %r10d,%r11d
          ╭    0x00007f212cf66267:   jae    0x00007f212cf662bf
          │    0x00007f212cf6626d:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
          │    0x00007f212cf66271:   xor    %ebp,%ebp
          │    0x00007f212cf66273:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f212cf66278:   jmp    0x00007f212cf66284
          ││   0x00007f212cf6627a:   nopw   0x0(%rax,%rax,1)
   4.62%  ││↗  0x00007f212cf66280:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   0.01%  │↘│  0x00007f212cf66284:   mov    0x10(%r11,%rbp,4),%r10d
   6.93%  │ │  0x00007f212cf66289:   mov    %r11,(%rsp)
   0.01%  │ │  0x00007f212cf6628d:   mov    %r10,%rsi
          │ │  0x00007f212cf66290:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.61%  │ │  0x00007f212cf66294:   nop
          │ │  0x00007f212cf66295:   movabs $0x800c27428,%rax
   0.02%  │ │  0x00007f212cf6629f:   call   0x00007f212c9f8ca0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │                                                            ;   {virtual_call}
   1.26%  │ │  0x00007f212cf662a4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.31%  │ │  0x00007f212cf662a6:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f212cf662aa:   jl     0x00007f212cf66280           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   0.00%  │    0x00007f212cf662ac:   add    $0x20,%rsp
          │    0x00007f212cf662b0:   pop    %rbp
   0.00%  │    0x00007f212cf662b1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │    0x00007f212cf662b8:   ja     0x00007f212cf662ec
          │    0x00007f212cf662be:   ret    
          ↘    0x00007f212cf662bf:   mov    $0xffffff76,%esi
               0x00007f212cf662c4:   mov    %r10d,(%rsp)
               0x00007f212cf662c8:   mov    %r9d,0x4(%rsp)
               0x00007f212cf662cd:   xchg   %ax,%ax
               0x00007f212cf662cf:   call   0x00007f212ca01600           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  15.76%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 490 

             # {method} {0x00007f210d4d2570} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg5&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f212cf65a80:   mov    0x8(%rsi),%r10d
             0x00007f212cf65a84:   movabs $0x800000000,%r11
             0x00007f212cf65a8e:   add    %r11,%r10
             0x00007f212cf65a91:   cmp    %r10,%rax
             0x00007f212cf65a94:   jne    0x00007f212c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f212cf65a9a:   xchg   %ax,%ax
             0x00007f212cf65a9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.77%     0x00007f212cf65aa0:   sub    $0x18,%rsp
   2.44%     0x00007f212cf65aa7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@-1 (line 297)
   1.91%     0x00007f212cf65aac:   mov    0x1c(%rsi),%eax
   0.35%     0x00007f212cf65aaf:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@6 (line 297)
   0.07%     0x00007f212cf65ab1:   mov    %eax,0x1c(%rsi)              ;*putfield c5 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute@8 (line 297)
   0.15%     0x00007f212cf65ab4:   add    $0x10,%rsp
   0.24%     0x00007f212cf65ab8:   pop    %rbp
   0.92%     0x00007f212cf65ab9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.06%  ╭  0x00007f212cf65ac0:   ja     0x00007f212cf65ac7
          │  0x00007f212cf65ac6:   ret    
          ↘  0x00007f212cf65ac7:   movabs $0x7f212cf65ab9,%r10         ;   {internal_word}
             0x00007f212cf65ad1:   mov    %r10,0x358(%r15)
             0x00007f212cf65ad8:   jmp    0x00007f212ca02700           ;   {runtime_call SafepointBlob}
             0x00007f212cf65add:   hlt    
             0x00007f212cf65ade:   hlt    
             0x00007f212cf65adf:   hlt    
           [Exception Handler]
             0x00007f212cf65ae0:   jmp    0x00007f212ca10200           ;   {no_reloc}
           [Deopt Handler Code]
....................................................................................................
  11.91%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 487 

             # {method} {0x00007f210d4d7a80} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg2&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f212cf65180:   mov    0x8(%rsi),%r10d
             0x00007f212cf65184:   movabs $0x800000000,%r11
             0x00007f212cf6518e:   add    %r11,%r10
             0x00007f212cf65191:   cmp    %r10,%rax
             0x00007f212cf65194:   jne    0x00007f212c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f212cf6519a:   xchg   %ax,%ax
             0x00007f212cf6519c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.82%     0x00007f212cf651a0:   sub    $0x18,%rsp
   2.44%     0x00007f212cf651a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@-1 (line 279)
   1.77%     0x00007f212cf651ac:   mov    0x10(%rsi),%eax
   0.20%     0x00007f212cf651af:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@6 (line 279)
   0.04%     0x00007f212cf651b1:   mov    %eax,0x10(%rsi)              ;*putfield c2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute@8 (line 279)
   0.12%     0x00007f212cf651b4:   add    $0x10,%rsp
   0.31%     0x00007f212cf651b8:   pop    %rbp
   1.07%     0x00007f212cf651b9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.03%  ╭  0x00007f212cf651c0:   ja     0x00007f212cf651c7
   0.00%  │  0x00007f212cf651c6:   ret    
          ↘  0x00007f212cf651c7:   movabs $0x7f212cf651b9,%r10         ;   {internal_word}
             0x00007f212cf651d1:   mov    %r10,0x358(%r15)
             0x00007f212cf651d8:   jmp    0x00007f212ca02700           ;   {runtime_call SafepointBlob}
             0x00007f212cf651dd:   hlt    
             0x00007f212cf651de:   hlt    
             0x00007f212cf651df:   hlt    
           [Exception Handler]
             0x00007f212cf651e0:   jmp    0x00007f212ca10200           ;   {no_reloc}
           [Deopt Handler Code]
             0x00007f212cf651e5:   call   0x00007f212cf651ea
....................................................................................................
  11.79%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 489 

             # {method} {0x00007f210d4d21d0} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f212cf65780:   mov    0x8(%rsi),%r10d
             0x00007f212cf65784:   movabs $0x800000000,%r11
             0x00007f212cf6578e:   add    %r11,%r10
             0x00007f212cf65791:   cmp    %r10,%rax
             0x00007f212cf65794:   jne    0x00007f212c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f212cf6579a:   xchg   %ax,%ax
             0x00007f212cf6579c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.81%     0x00007f212cf657a0:   sub    $0x18,%rsp
   2.35%     0x00007f212cf657a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@-1 (line 291)
   1.83%     0x00007f212cf657ac:   mov    0x18(%rsi),%eax
   0.32%     0x00007f212cf657af:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
   0.06%     0x00007f212cf657b1:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
   0.14%     0x00007f212cf657b4:   add    $0x10,%rsp
   0.23%     0x00007f212cf657b8:   pop    %rbp
   0.89%     0x00007f212cf657b9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.09%  ╭  0x00007f212cf657c0:   ja     0x00007f212cf657c7
          │  0x00007f212cf657c6:   ret    
          ↘  0x00007f212cf657c7:   movabs $0x7f212cf657b9,%r10         ;   {internal_word}
             0x00007f212cf657d1:   mov    %r10,0x358(%r15)
             0x00007f212cf657d8:   jmp    0x00007f212ca02700           ;   {runtime_call SafepointBlob}
             0x00007f212cf657dd:   hlt    
             0x00007f212cf657de:   hlt    
             0x00007f212cf657df:   hlt    
           [Exception Handler]
             0x00007f212cf657e0:   jmp    0x00007f212ca10200           ;   {no_reloc}
           [Deopt Handler Code]
....................................................................................................
  11.72%  <total for region 5>

....[Hottest Region 6]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 488 

             # {method} {0x00007f210d4d7e20} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg3&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f212cf65480:   mov    0x8(%rsi),%r10d
             0x00007f212cf65484:   movabs $0x800000000,%r11
             0x00007f212cf6548e:   add    %r11,%r10
             0x00007f212cf65491:   cmp    %r10,%rax
             0x00007f212cf65494:   jne    0x00007f212c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f212cf6549a:   xchg   %ax,%ax
             0x00007f212cf6549c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.79%     0x00007f212cf654a0:   sub    $0x18,%rsp
   2.46%     0x00007f212cf654a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@-1 (line 285)
   1.73%     0x00007f212cf654ac:   mov    0x14(%rsi),%eax
   0.24%     0x00007f212cf654af:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@6 (line 285)
   0.04%     0x00007f212cf654b1:   mov    %eax,0x14(%rsi)              ;*putfield c3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute@8 (line 285)
   0.12%     0x00007f212cf654b4:   add    $0x10,%rsp
   0.25%     0x00007f212cf654b8:   pop    %rbp
   1.06%     0x00007f212cf654b9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.04%  ╭  0x00007f212cf654c0:   ja     0x00007f212cf654c7
   0.00%  │  0x00007f212cf654c6:   ret    
          ↘  0x00007f212cf654c7:   movabs $0x7f212cf654b9,%r10         ;   {internal_word}
             0x00007f212cf654d1:   mov    %r10,0x358(%r15)
             0x00007f212cf654d8:   jmp    0x00007f212ca02700           ;   {runtime_call SafepointBlob}
             0x00007f212cf654dd:   hlt    
             0x00007f212cf654de:   hlt    
             0x00007f212cf654df:   hlt    
           [Exception Handler]
             0x00007f212cf654e0:   jmp    0x00007f212ca10200           ;   {no_reloc}
           [Deopt Handler Code]
             0x00007f212cf654e5:   call   0x00007f212cf654ea
....................................................................................................
  11.71%  <total for region 6>

....[Hottest Region 7]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 486 

             # {method} {0x00007f210d4d7660} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg1&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f212cf64e80:   mov    0x8(%rsi),%r10d
             0x00007f212cf64e84:   movabs $0x800000000,%r11
             0x00007f212cf64e8e:   add    %r11,%r10
             0x00007f212cf64e91:   cmp    %r10,%rax
             0x00007f212cf64e94:   jne    0x00007f212c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f212cf64e9a:   xchg   %ax,%ax
             0x00007f212cf64e9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   5.61%     0x00007f212cf64ea0:   sub    $0x18,%rsp
   2.41%     0x00007f212cf64ea7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@-1 (line 273)
   1.75%     0x00007f212cf64eac:   mov    0xc(%rsi),%eax
   0.00%     0x00007f212cf64eaf:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@6 (line 273)
             0x00007f212cf64eb1:   mov    %eax,0xc(%rsi)               ;*putfield c1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute@8 (line 273)
             0x00007f212cf64eb4:   add    $0x10,%rsp
   0.31%     0x00007f212cf64eb8:   pop    %rbp
   1.12%     0x00007f212cf64eb9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.00%  ╭  0x00007f212cf64ec0:   ja     0x00007f212cf64ec7
          │  0x00007f212cf64ec6:   ret    
          ↘  0x00007f212cf64ec7:   movabs $0x7f212cf64eb9,%r10         ;   {internal_word}
             0x00007f212cf64ed1:   mov    %r10,0x358(%r15)
             0x00007f212cf64ed8:   jmp    0x00007f212ca02700           ;   {runtime_call SafepointBlob}
             0x00007f212cf64edd:   hlt    
             0x00007f212cf64ede:   hlt    
             0x00007f212cf64edf:   hlt    
           [Exception Handler]
             0x00007f212cf64ee0:   jmp    0x00007f212ca10200           ;   {no_reloc}
           [Deopt Handler Code]
....................................................................................................
  11.22%  <total for region 7>

....[Hottest Regions]...............................................................................
  24.01%                      <unknown> 
  15.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 494 
  11.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 490 
  11.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 487 
  11.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 489 
  11.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 488 
  11.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 486 
   0.75%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  getifaddrs_internal 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.67%  <...other 246 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  24.04%                      <unknown> 
  15.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 494 
  11.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 490 
  11.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 487 
  11.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 489 
  11.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 488 
  11.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 486 
   1.55%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  [unknown] 
   0.02%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%        libc-2.31.so  re_search_stub 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.14%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.11%         c2, level 4
  24.04%                    
   1.55%              kernel
   0.13%           libjvm.so
   0.11%        libc-2.31.so
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%          libjava.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_6)

# Run progress: 81.25% complete, ETA 00:05:23
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.964 ns/op
# Warmup Iteration   2: 24.836 ns/op
# Warmup Iteration   3: 24.830 ns/op
# Warmup Iteration   4: 24.848 ns/op
# Warmup Iteration   5: 24.887 ns/op
Iteration   1: 24.889 ns/op
Iteration   2: 24.877 ns/op
Iteration   3: 24.848 ns/op
Iteration   4: 24.843 ns/op
Iteration   5: 24.841 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  24.859 ±(99.9%) 0.084 ns/op [Average]
  (min, avg, max) = (24.841, 24.859, 24.889), stdev = 0.022
  CI (99.9%): [24.775, 24.944] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 116620 total address lines.
Perf output processed (skipped 55.682 seconds):
 Column 1: cycles (50758 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          </print_nmethod>
          <task_queued compile_id='492' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6 compute ()I' bytes='12' count='13196' iicount='13196' stamp='5.301' comment='tiered' hot_count='13196'/>
          <task_queued compile_id='493' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark virtual_call ()V' bytes='38' count='2' backedge_count='79309' iicount='2' level='3' stamp='5.301' comment='tiered' hot_count='2'/>
          Decoding VtableStub vtbl[5]@12
          --------------------------------------------------------------------------------
   1.53%    0x00007f8a10abdf50:   mov    0x8(%rsi),%eax
  12.71%    0x00007f8a10abdf53:   movabs $0x800000000,%r10
   0.01%    0x00007f8a10abdf5d:   add    %r10,%rax
   1.54%    0x00007f8a10abdf60:   mov    0x1f8(%rax),%rbx
   7.64%    0x00007f8a10abdf67:   jmp    *0x40(%rbx)
            0x00007f8a10abdf6a:   .byte 0x0
          --------------------------------------------------------------------------------
          ============================= C2-compiled nmethod ==============================
          <nmethod compile_id='491' compiler='c2' level='4' entry='0x00007f8a10f64880' size='616' address='0x00007f8a10f64710' relocation_offset='352' insts_offset='368' stub_offset='464' scopes_data_offset='504' scopes_pcs_offset='528' dependencies_offset='608' oops_offset='488' metadata_offset='496' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4 compute ()I' bytes='12' count='13453' iicount='13454' stamp='5.301'/>
          <make_not_entrant thread='22988' compile_id='484' compiler='c1' level='2' stamp='5.301'/>
          <print_nmethod compile_id='491' compiler='c2' level='4' stamp='5.301'>
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c2)    5301  491       4       com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute (12 bytes)
           total in heap  [0x00007f8a10f64710,0x00007f8a10f64978] = 616
           relocation     [0x00007f8a10f64870,0x00007f8a10f64880] = 16
....................................................................................................
  23.44%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 495 

               0x00007f8a10f6535e:   mov    %r10d,%r11d
               0x00007f8a10f65361:   dec    %r11d
               0x00007f8a10f65364:   cmp    %r10d,%r11d
          ╭    0x00007f8a10f65367:   jae    0x00007f8a10f653bf
          │    0x00007f8a10f6536d:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
          │    0x00007f8a10f65371:   xor    %ebp,%ebp
          │    0x00007f8a10f65373:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f8a10f65378:   jmp    0x00007f8a10f65384
          ││   0x00007f8a10f6537a:   nopw   0x0(%rax,%rax,1)
   4.55%  ││↗  0x00007f8a10f65380:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   0.02%  │↘│  0x00007f8a10f65384:   mov    0x10(%r11,%rbp,4),%r10d
   6.74%  │ │  0x00007f8a10f65389:   mov    %r11,(%rsp)
   0.03%  │ │  0x00007f8a10f6538d:   mov    %r10,%rsi
          │ │  0x00007f8a10f65390:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.51%  │ │  0x00007f8a10f65394:   nop
          │ │  0x00007f8a10f65395:   movabs $0x800c27428,%rax
   0.02%  │ │  0x00007f8a10f6539f:   call   0x00007f8a109f8be0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │                                                            ;   {virtual_call}
   1.16%  │ │  0x00007f8a10f653a4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.18%  │ │  0x00007f8a10f653a6:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f8a10f653aa:   jl     0x00007f8a10f65380           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
          │    0x00007f8a10f653ac:   add    $0x20,%rsp
          │    0x00007f8a10f653b0:   pop    %rbp
          │    0x00007f8a10f653b1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │    0x00007f8a10f653b8:   ja     0x00007f8a10f653ec
          │    0x00007f8a10f653be:   ret    
          ↘    0x00007f8a10f653bf:   mov    $0xffffff76,%esi
               0x00007f8a10f653c4:   mov    %r10d,(%rsp)
....................................................................................................
  15.20%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 491 

             # {method} {0x00007f89f18d21d0} &apos;compute&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/micro/compiler/MegamorphicMethodCallBenchmark$Alg4&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f8a10f64880:   mov    0x8(%rsi),%r10d
             0x00007f8a10f64884:   movabs $0x800000000,%r11
             0x00007f8a10f6488e:   add    %r11,%r10
             0x00007f8a10f64891:   cmp    %r10,%rax
             0x00007f8a10f64894:   jne    0x00007f8a109fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f8a10f6489a:   xchg   %ax,%ax
             0x00007f8a10f6489c:   nopl   0x0(%rax)
           [Verified Entry Point]
   4.88%     0x00007f8a10f648a0:   sub    $0x18,%rsp
   2.00%     0x00007f8a10f648a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@-1 (line 291)
   1.55%     0x00007f8a10f648ac:   mov    0x18(%rsi),%eax
   0.57%     0x00007f8a10f648af:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@6 (line 291)
   0.12%     0x00007f8a10f648b1:   mov    %eax,0x18(%rsi)              ;*putfield c4 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute@8 (line 291)
   0.26%     0x00007f8a10f648b4:   add    $0x10,%rsp
   0.10%     0x00007f8a10f648b8:   pop    %rbp
   0.52%     0x00007f8a10f648b9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
   0.14%  ╭  0x00007f8a10f648c0:   ja     0x00007f8a10f648c7
   0.00%  │  0x00007f8a10f648c6:   ret    
          ↘  0x00007f8a10f648c7:   movabs $0x7f8a10f648b9,%r10         ;   {internal_word}
             0x00007f8a10f648d1:   mov    %r10,0x358(%r15)
             0x00007f8a10f648d8:   jmp    0x00007f8a10a02700           ;   {runtime_call SafepointBlob}
             0x00007f8a10f648dd:   hlt    
             0x00007f8a10f648de:   hlt    
             0x00007f8a10f648df:   hlt    
           [Exception Handler]
             0x00007f8a10f648e0:   jmp    0x00007f8a10a10800           ;   {no_reloc}
           [Deopt Handler Code]
             0x00007f8a10f648e5:   call   0x00007f8a10f648ea
....................................................................................................
  10.16%  <total for region 3>

....[Hottest Regions]...............................................................................
  23.44%                      <unknown> 
  15.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 495 
  10.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 491 
   9.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 492 
   9.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 488 
   9.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 487 
   9.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 489 
   9.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 486 
   0.83%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.16%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.47%                      <unknown> 
  15.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 495 
  10.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 491 
   9.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 492 
   9.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 488 
   9.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 487 
   9.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 489 
   9.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 486 
   2.19%              kernel  [unknown] 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  tcache_init.part.0 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 2, compile id 537 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%        libc-2.31.so  _int_memalign 
   0.16%  <...other 68 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.04%         c2, level 4
  23.47%                    
   2.19%              kernel
   0.12%           libjvm.so
   0.10%        libc-2.31.so
   0.03%         interpreter
   0.01%         c1, level 3
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%    Unknown, level 0
   0.00%      perf-22969.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_7)

# Run progress: 87.50% complete, ETA 00:03:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25.095 ns/op
# Warmup Iteration   2: 24.913 ns/op
# Warmup Iteration   3: 24.904 ns/op
# Warmup Iteration   4: 24.906 ns/op
# Warmup Iteration   5: 24.902 ns/op
Iteration   1: 24.894 ns/op
Iteration   2: 24.889 ns/op
Iteration   3: 24.880 ns/op
Iteration   4: 24.879 ns/op
Iteration   5: 24.925 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  24.894 ±(99.9%) 0.072 ns/op [Average]
  (min, avg, max) = (24.879, 24.894, 24.925), stdev = 0.019
  CI (99.9%): [24.821, 24.966] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 118685 total address lines.
Perf output processed (skipped 55.744 seconds):
 Column 1: cycles (50705 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          </print_nmethod>
          Decoding VtableStub vtbl[5]@12
          --------------------------------------------------------------------------------
   1.53%    0x00007f71d8abdb20:   mov    0x8(%rsi),%eax
  12.66%    0x00007f71d8abdb23:   
          ============================= C2-compiled nmethod ==============================
          <nmethod compile_id='497' compiler='c2' level='4' entry='0x00007f71d8f64b80' size='616' address='0x00007f71d8f64a10' relocation_offset='352' insts_offset='368' stub_offset='464' scopes_data_offset='504' scopes_pcs_offset='528' dependencies_offset='608' oops_offset='488' metadata_offset='496' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4 compute ()I' bytes='12' count='15825' iicount='15825' stamp='5.326'/>
          <make_not_entrant thread='23044' compile_id='489' compiler='c1' level='2' stamp='5.326'/>
          movabs $0x800000000,
          <print_nmethod compile_id='497' compiler='c2' level='4' stamp='5.326'>
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c2)    5326  497       4       com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute (12 bytes)
           total in heap  [0x00007f71d8f64a10,0x00007f71d8f64c78] = 616
           relocation     [0x00007f71d8f64b70,0x00007f71d8f64b80] = 16
           main code      [0x00007f71d8f64b80,0x00007f71d8f64be0] = 96
           stub code      [0x00007f71d8f64be0,0x00007f71d8f64bf8] = 24
....................................................................................................
  23.17%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 503 

               0x00007f71d8f65c5e:   mov    %r10d,%r11d
               0x00007f71d8f65c61:   dec    %r11d
               0x00007f71d8f65c64:   cmp    %r10d,%r11d
          ╭    0x00007f71d8f65c67:   jae    0x00007f71d8f65cbf
          │    0x00007f71d8f65c6d:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
          │    0x00007f71d8f65c71:   xor    %ebp,%ebp
          │    0x00007f71d8f65c73:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f71d8f65c78:   jmp    0x00007f71d8f65c84
          ││   0x00007f71d8f65c7a:   nopw   0x0(%rax,%rax,1)
   4.54%  ││↗  0x00007f71d8f65c80:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   0.01%  │↘│  0x00007f71d8f65c84:   mov    0x10(%r11,%rbp,4),%r10d
   6.68%  │ │  0x00007f71d8f65c89:   mov    %r11,(%rsp)
   0.02%  │ │  0x00007f71d8f65c8d:   mov    %r10,%rsi
   0.00%  │ │  0x00007f71d8f65c90:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.57%  │ │  0x00007f71d8f65c94:   nop
          │ │  0x00007f71d8f65c95:   movabs $0x800c27428,%rax
   0.02%  │ │  0x00007f71d8f65c9f:   call   0x00007f71d89f8da0           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │                                                            ;   {virtual_call}
   1.14%  │ │  0x00007f71d8f65ca4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.19%  │ │  0x00007f71d8f65ca6:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f71d8f65caa:   jl     0x00007f71d8f65c80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
   0.00%  │    0x00007f71d8f65cac:   add    $0x20,%rsp
          │    0x00007f71d8f65cb0:   pop    %rbp
          │    0x00007f71d8f65cb1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │    0x00007f71d8f65cb8:   ja     0x00007f71d8f65cec
          │    0x00007f71d8f65cbe:   ret    
          ↘    0x00007f71d8f65cbf:   mov    $0xffffff76,%esi
               0x00007f71d8f65cc4:   mov    %r10d,(%rsp)
               0x00007f71d8f65cc8:   mov    %r9d,0x4(%rsp)
               0x00007f71d8f65ccd:   xchg   %ax,%ax
               0x00007f71d8f65ccf:   call   0x00007f71d8a01600           ; ImmutableOopMap {[4]=NarrowOop }
....................................................................................................
  15.16%  <total for region 2>

....[Hottest Regions]...............................................................................
  23.17%                      <unknown> 
  15.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 503 
   8.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 501 
   8.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 500 
   8.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 495 
   8.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 498 
   8.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 497 
   8.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 494 
   8.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 493 
   0.61%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.10%  <...other 352 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  23.20%                      <unknown> 
  15.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 503 
   8.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 501 
   8.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 500 
   8.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 495 
   8.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 498 
   8.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 497 
   8.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 494 
   8.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 493 
   1.80%              kernel  [unknown] 
   0.03%        libc-2.31.so  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         c1, level 3  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.jmh_generated.MegamorphicMethodCallBenchmark_virtual_call_jmhTest::virtual_call_avgt_jmhStub, version 2, compile id 552 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.18%  <...other 74 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.70%         c2, level 4
  23.20%                    
   1.80%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.00%      perf-23025.map
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call
# Parameters: (targetType = MEGAMORPHIC_8)

# Run progress: 93.75% complete, ETA 00:01:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 24.918 ns/op
# Warmup Iteration   2: 24.656 ns/op
# Warmup Iteration   3: 24.669 ns/op
# Warmup Iteration   4: 24.669 ns/op
# Warmup Iteration   5: 24.656 ns/op
Iteration   1: 24.655 ns/op
Iteration   2: 24.687 ns/op
Iteration   3: 24.646 ns/op
Iteration   4: 24.653 ns/op
Iteration   5: 24.666 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call":
  24.661 ±(99.9%) 0.061 ns/op [Average]
  (min, avg, max) = (24.646, 24.661, 24.687), stdev = 0.016
  CI (99.9%): [24.601, 24.722] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark.virtual_call:·asm":
PrintAssembly processed: 115885 total address lines.
Perf output processed (skipped 55.654 seconds):
 Column 1: cycles (50841 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
, <unknown> 

          --------------------------------------------------------------------------------
          </print_nmethod>
          Decoding VtableStub vtbl[5]@12
          --------------------------------------------------------------------------------
   1.56%    0x00007f65acabdda0:   mov    0x8(%rsi),
          ============================= C2-compiled nmethod ==============================
          %eax
          <nmethod compile_id='487' compiler='c2' level='4' entry='0x00007f65acf65500' size='616' address='0x00007f65acf65390' relocation_offset='352' insts_offset='368' stub_offset='464' scopes_data_offset='504' scopes_pcs_offset='528' dependencies_offset='608' oops_offset='488' metadata_offset='496' method='com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6 compute ()I' bytes='12' count='15581' iicount='15581' stamp='5.207'/>
          <make_not_entrant thread='23102' compile_id='478' compiler='c1' level='2' stamp='5.207'/>
  11.49%   0x00007f65acabdda3:   
          <print_nmethod compile_id='487' compiler='c2' level='4' stamp='5.207'>
          ----------------------------------- Assembly -----------------------------------
          Compiled method (c2)    5206  487       4       com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute (12 bytes)
           total in heap  [0x00007f65acf65390,0x00007f65acf655f8] = 616
           relocation     [0x00007f65acf654f0,0x00007f65acf65500] = 16
           main code      [0x00007f65acf65500,0x00007f65acf65560] = 96
           stub code      [0x00007f65acf65560,0x00007f65acf65578] = 24
           oops           [0x00007f65acf65578,0x00007f65acf65580] = 8
           metadata       [0x00007f65acf65580,0x00007f65acf65588] = 8
           scopes data    [0x00007f65acf65588,0x00007f65acf655a0] = 24
           scopes pcs     [0x00007f65acf655a0,0x00007f65acf655f0] = 80
....................................................................................................
  22.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 492 

               0x00007f65acf662de:   mov    %r10d,%r11d
               0x00007f65acf662e1:   dec    %r11d
               0x00007f65acf662e4:   cmp    %r10d,%r11d
          ╭    0x00007f65acf662e7:   jae    0x00007f65acf6633f
          │    0x00007f65acf662ed:   lea    (%r12,%r9,8),%r11            ;*getfield instances {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@1 (line 168)
          │    0x00007f65acf662f1:   xor    %ebp,%ebp
          │    0x00007f65acf662f3:   mov    %r10d,0x8(%rsp)
          │╭   0x00007f65acf662f8:   jmp    0x00007f65acf66304
          ││   0x00007f65acf662fa:   nopw   0x0(%rax,%rax,1)
   4.55%  ││↗  0x00007f65acf66300:   mov    (%rsp),%r11                  ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@19 (line 169)
   0.03%  │↘│  0x00007f65acf66304:   mov    0x10(%r11,%rbp,4),%r10d
   6.89%  │ │  0x00007f65acf66309:   mov    %r11,(%rsp)
   0.02%  │ │  0x00007f65acf6630d:   mov    %r10,%rsi
   0.00%  │ │  0x00007f65acf66310:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@22 (line 169)
   1.46%  │ │  0x00007f65acf66314:   nop
          │ │  0x00007f65acf66315:   movabs $0xffffffffffffffff,%rax
   0.01%  │ │  0x00007f65acf6631f:   call   0x00007f65ac9fc380           ; ImmutableOopMap {[0]=Oop }
          │ │                                                            ;*invokevirtual compute {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@27 (line 170)
          │ │                                                            ;   {virtual_call}
   1.11%  │ │  0x00007f65acf66324:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@31 (line 169)
   1.05%  │ │  0x00007f65acf66326:   cmp    0x8(%rsp),%ebp
          │ ╰  0x00007f65acf6632a:   jl     0x00007f65acf66300           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
          │    0x00007f65acf6632c:   add    $0x20,%rsp
          │    0x00007f65acf66330:   pop    %rbp
   0.00%  │    0x00007f65acf66331:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │    0x00007f65acf66338:   ja     0x00007f65acf6636c
          │    0x00007f65acf6633e:   ret    
          ↘    0x00007f65acf6633f:   mov    $0xffffff76,%esi
               0x00007f65acf66344:   mov    %r10d,(%rsp)
               0x00007f65acf66348:   mov    %r9d,0x4(%rsp)
               0x00007f65acf6634d:   xchg   %ax,%ax
               0x00007f65acf6634f:   call   0x00007f65aca01600           ; ImmutableOopMap {[4]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call@16 (line 169)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  15.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  22.32%                      <unknown> 
  15.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 492 
   8.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 490 
   7.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 484 
   7.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 485 
   7.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 488 
   7.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 487 
   7.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 483 
   7.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 482 
   7.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 481 
   0.96%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.96%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  22.35%                      <unknown> 
  15.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark::virtual_call, version 4, compile id 492 
   8.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg8::compute, version 2, compile id 490 
   7.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg3::compute, version 2, compile id 484 
   7.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg4::compute, version 2, compile id 485 
   7.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg7::compute, version 2, compile id 488 
   7.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg6::compute, version 2, compile id 487 
   7.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg1::compute, version 2, compile id 483 
   7.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg5::compute, version 2, compile id 482 
   7.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.MegamorphicMethodCallBenchmark$Alg2::compute, version 2, compile id 481 
   2.00%              kernel  [unknown] 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  [unknown] 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.17%  <...other 70 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.35%         c2, level 4
  22.35%                    
   2.00%              kernel
   0.14%           libjvm.so
   0.09%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%         c1, level 1
   0.00%              [vdso]
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:28:48

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

Benchmark                                                         (targetType)  Mode  Cnt   Score    Error  Units
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic         MONOMORPHIC  avgt    5   1.928 ±  0.002  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm    MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic           BIMORPHIC  avgt    5   2.153 ±  0.003  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm      BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_3  avgt    5   2.313 ±  0.171  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_4  avgt    5   2.353 ±  0.088  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_5  avgt    5   2.310 ±  0.005  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_6  avgt    5   2.519 ±  0.191  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_7  avgt    5   2.521 ±  0.202  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic       MEGAMORPHIC_8  avgt    5  15.488 ±  0.018  ns/op
MegamorphicMethodCallBenchmark.devirtualize_to_monomorphic:·asm  MEGAMORPHIC_8  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                        MONOMORPHIC  avgt    5   1.815 ±  0.001  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                   MONOMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                          BIMORPHIC  avgt    5   1.929 ±  0.079  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                     BIMORPHIC  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_3  avgt    5  25.253 ±  0.047  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_3  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_4  avgt    5  25.225 ±  0.110  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_4  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_5  avgt    5  25.111 ±  0.069  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_5  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_6  avgt    5  24.859 ±  0.084  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_6  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_7  avgt    5  24.894 ±  0.072  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_7  avgt          NaN             ---
MegamorphicMethodCallBenchmark.virtual_call                      MEGAMORPHIC_8  avgt    5  24.661 ±  0.061  ns/op
MegamorphicMethodCallBenchmark.virtual_call:·asm                 MEGAMORPHIC_8  avgt          NaN             ---
