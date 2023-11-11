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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 3)

# Run progress: 0.00% complete, ETA 00:20:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.381 ns/op
# Warmup Iteration   2: 2.347 ns/op
# Warmup Iteration   3: 2.344 ns/op
# Warmup Iteration   4: 2.345 ns/op
# Warmup Iteration   5: 2.344 ns/op
Iteration   1: 2.345 ns/op
Iteration   2: 2.344 ns/op
Iteration   3: 2.344 ns/op
Iteration   4: 2.346 ns/op
Iteration   5: 2.344 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  2.345 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (2.344, 2.345, 2.346), stdev = 0.001
  CI (99.9%): [2.342, 2.347] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 125021 total address lines.
Perf output processed (skipped 55.984 seconds):
 Column 1: cycles (50869 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 

   0.04%      0x00007f1a9863b218:   mov    0x458(%r15),%r9
   0.17%      0x00007f1a9863b21f:   movabs $0x7ff0351e0,%rcx            ;   {oop([B{0x00000007ff0351e0})}
              0x00007f1a9863b229:   movabs $0x7ff0351b0,%rbx            ;   {oop([B{0x00000007ff0351b0})}
              0x00007f1a9863b233:   movabs $0x7ff035180,%rdi            ; ImmutableOopMap {rcx=Oop xmm1=Derived_oop_rcx rbx=Oop xmm2=Derived_oop_rbx rdi=Oop xmm3=Derived_oop_rdi rbp=NarrowOop r14=Oop xmm0=Oop }
                                                                        ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@37 (line 126)
                                                                        ;   {oop([B{0x00000007ff035180})}
              0x00007f1a9863b23d:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@37 (line 126)
                                                                        ;   {poll}
   0.08%      0x00007f1a9863b240:   cmp    %r10d,%edx
              0x00007f1a9863b243:   jge    0x00007f1a9863b58a           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
              0x00007f1a9863b249:   mov    %r10d,%r9d
   0.02%      0x00007f1a9863b24c:   sub    %edx,%r9d
              0x00007f1a9863b24f:   cmp    %edx,%r10d
   0.01%      0x00007f1a9863b252:   cmovl  %r8d,%r9d
              0x00007f1a9863b256:   cmp    $0x3e8,%r9d
   0.02%      0x00007f1a9863b25d:   cmova  %r11d,%r9d
   0.02%      0x00007f1a9863b261:   add    %edx,%r9d
          ╭   0x00007f1a9863b264:   jmp    0x00007f1a9863b285
          │   0x00007f1a9863b266:   vmovd  %xmm5,%ebp
   5.33%  │↗  0x00007f1a9863b26a:   mov    $0x1,%ecx                    ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
  10.81%  ││  0x00007f1a9863b26f:   vmovd  %xmm6,%r13d
          ││  0x00007f1a9863b274:   add    %ecx,%r13d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   0.03%  ││  0x00007f1a9863b277:   vmovd  %r13d,%xmm6
   5.50%  ││  0x00007f1a9863b27c:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
  10.83%  ││  0x00007f1a9863b27e:   xchg   %ax,%ax
          ││  0x00007f1a9863b280:   cmp    %r9d,%edx
          ││  0x00007f1a9863b283:   jge    0x00007f1a9863b218           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   0.01%  ↘│  0x00007f1a9863b285:   mov    0x10(%r14,%rdx,4),%r13d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   6.05%   │  0x00007f1a9863b28a:   cmp    $0xffe06a2d,%r13d            ;   {oop(&quot;MOPED&quot;{0x00000007ff035168})}
           ╰  0x00007f1a9863b291:   je     0x00007f1a9863b26a           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@2 (line 1858)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   5.12%      0x00007f1a9863b293:   movsbl 0x10(%r12,%r13,8),%ebx       ; implicit exception: dispatches to 0x00007f1a9863b63c
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   0.26%      0x00007f1a9863b299:   test   %ebx,%ebx
   0.45%      0x00007f1a9863b29b:   nopl   0x0(%rax,%rax,1)
   5.07%      0x00007f1a9863b2a0:   jne    0x00007f1a9863b5a3           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   6.02%      0x00007f1a9863b2a6:   vmovd  %ebp,%xmm5
              0x00007f1a9863b2aa:   mov    0x14(%r12,%r13,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
              0x00007f1a9863b2af:   mov    0xc(%r12,%rbx,8),%ebp        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
  12.79%      0x00007f1a9863b2b4:   lea    (%r12,%rbx,8),%rcx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   2.96%      0x00007f1a9863b2b8:   lea    0x10(%r12,%rbx,8),%rcx
              0x00007f1a9863b2bd:   vmovq  %rcx,%xmm4
   6.43%      0x00007f1a9863b2c2:   cmp    $0x5,%ebp
              0x00007f1a9863b2c5:   jne    0x00007f1a9863b399
              0x00007f1a9863b2cb:   vmovq  %xmm3,%rdi
              0x00007f1a9863b2d0:   mov    %rcx,%rsi
              0x00007f1a9863b2d3:   mov    $0x5,%ecx
              0x00007f1a9863b2d8:   test   %ecx,%ecx
              0x00007f1a9863b2da:   je     0x00007f1a9863b37f
              0x00007f1a9863b2e0:   mov    %ecx,%eax
              0x00007f1a9863b2e2:   and    $0x1f,%eax
              0x00007f1a9863b2e5:   and    $0xffffffe0,%ecx
              0x00007f1a9863b2e8:   je     0x00007f1a9863b33b
....................................................................................................
  77.81%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 

            0x00007f1a9863b55b:   xor    %eax,%eax
            0x00007f1a9863b55d:   vpxor  %ymm7,%ymm7,%ymm7
            0x00007f1a9863b561:   vpxor  %ymm8,%ymm8,%ymm8            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@27 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
            0x00007f1a9863b566:   test   %eax,%eax
            0x00007f1a9863b568:   je     0x00007f1a9863b5d8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@30 (line 250)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   5.58%    0x00007f1a9863b56e:   mov    $0x3,%ecx
            0x00007f1a9863b573:   vmovd  %xmm5,%ebp
   0.00%    0x00007f1a9863b577:   jmp    0x00007f1a9863b26f
   5.24%    0x00007f1a9863b57c:   mov    $0x2,%ecx
   0.01%    0x00007f1a9863b581:   vmovd  %xmm5,%ebp
            0x00007f1a9863b585:   jmp    0x00007f1a9863b26f           ;   {no_reloc}
            0x00007f1a9863b58a:   mov    %r13d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
            0x00007f1a9863b58d:   vzeroupper 
   0.01%    0x00007f1a9863b590:   add    $0x30,%rsp
            0x00007f1a9863b594:   pop    %rbp
   0.05%    0x00007f1a9863b595:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            0x00007f1a9863b59c:   ja     0x00007f1a9863b684
   0.00%    0x00007f1a9863b5a2:   ret    
            0x00007f1a9863b5a3:   mov    $0xffffff45,%esi
            0x00007f1a9863b5a8:   vmovsd %xmm0,(%rsp)
            0x00007f1a9863b5ad:   mov    %r10d,0x8(%rsp)
            0x00007f1a9863b5b2:   mov    %edx,0xc(%rsp)
            0x00007f1a9863b5b6:   vmovss %xmm6,0x10(%rsp)
            0x00007f1a9863b5bc:   mov    %r13d,0x14(%rsp)
            0x00007f1a9863b5c1:   mov    %ebx,0x18(%rsp)
            0x00007f1a9863b5c5:   data16 xchg %ax,%ax
            0x00007f1a9863b5c8:   vzeroupper 
            0x00007f1a9863b5cb:   call   0x00007f1a980c9f00           ; ImmutableOopMap {rbp=NarrowOop [0]=Oop [20]=NarrowOop }
....................................................................................................
  10.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  77.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 
  10.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 
   5.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 
   2.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 
   0.89%              kernel  [unknown] 
   0.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 
   0.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 592 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   1.10%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 565 
   2.35%              kernel  [unknown] 
   0.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 592 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%           libjvm.so  os::current_thread_id 
   0.11%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.41%         c2, level 4
   2.35%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 6)

# Run progress: 8.33% complete, ETA 00:20:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5.591 ns/op
# Warmup Iteration   2: 5.581 ns/op
# Warmup Iteration   3: 5.605 ns/op
# Warmup Iteration   4: 5.594 ns/op
# Warmup Iteration   5: 5.596 ns/op
Iteration   1: 5.583 ns/op
Iteration   2: 5.619 ns/op
Iteration   3: 5.642 ns/op
Iteration   4: 5.585 ns/op
Iteration   5: 5.561 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  5.598 ±(99.9%) 0.124 ns/op [Average]
  (min, avg, max) = (5.561, 5.598, 5.642), stdev = 0.032
  CI (99.9%): [5.474, 5.722] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 128194 total address lines.
Perf output processed (skipped 56.165 seconds):
 Column 1: cycles (50864 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 

   0.01%       0x00007f74a463a9c6:   mov    %r9d,(%rsp)
               0x00007f74a463a9ca:   mov    %rsi,0x10(%rsp)
               0x00007f74a463a9cf:   lea    (%r12,%rbp,8),%r10           ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
               0x00007f74a463a9d3:   mov    %r10,0x8(%rsp)
   0.01%       0x00007f74a463a9d8:   mov    %ebp,0x18(%rsp)
               0x00007f74a463a9dc:   movabs $0x7ff135250,%r10            ;   {oop([B{0x00000007ff135250})}
               0x00007f74a463a9e6:   movabs $0x7ff135250,%r11            ;   {oop([B{0x00000007ff135250})}
               0x00007f74a463a9f0:   add    $0x10,%r11
               0x00007f74a463a9f4:   mov    %r11,0x20(%rsp)
   0.00%       0x00007f74a463a9f9:   movabs $0x7ff135218,%r10            ;   {oop([B{0x00000007ff135218})}
               0x00007f74a463aa03:   movabs $0x7ff135218,%r11            ;   {oop([B{0x00000007ff135218})}
               0x00007f74a463aa0d:   add    $0x10,%r11
   0.01%       0x00007f74a463aa11:   mov    %r11,0x28(%rsp)
               0x00007f74a463aa16:   movabs $0x7ff1351e0,%r10            ;   {oop([B{0x00000007ff1351e0})}
               0x00007f74a463aa20:   movabs $0x7ff1351e0,%r11            ;   {oop([B{0x00000007ff1351e0})}
               0x00007f74a463aa2a:   add    $0x10,%r11
   0.01%       0x00007f74a463aa2e:   mov    %r11,0x30(%rsp)
               0x00007f74a463aa33:   movabs $0x7ff1351b0,%r10            ;   {oop([B{0x00000007ff1351b0})}
               0x00007f74a463aa3d:   movabs $0x7ff1351b0,%r11            ;   {oop([B{0x00000007ff1351b0})}
               0x00007f74a463aa47:   add    $0x10,%r11
   0.00%       0x00007f74a463aa4b:   mov    %r11,0x38(%rsp)
               0x00007f74a463aa50:   movabs $0x7ff135180,%r10            ;   {oop([B{0x00000007ff135180})}
               0x00007f74a463aa5a:   movabs $0x7ff135180,%r11            ;   {oop([B{0x00000007ff135180})}
               0x00007f74a463aa64:   add    $0x10,%r11
   0.01%       0x00007f74a463aa68:   mov    %r11,0x40(%rsp)
   0.00%       0x00007f74a463aa6d:   xor    %r10d,%r10d
               0x00007f74a463aa70:   xor    %ebp,%ebp
               0x00007f74a463aa72:   mov    %ebp,0x1c(%rsp)
   0.01%  ╭    0x00007f74a463aa76:   jmp    0x00007f74a463aaad
          │ ↗  0x00007f74a463aa78:   mov    $0x1,%r8d
   0.06%  │ │  0x00007f74a463aa7e:   mov    %r10d,0x4(%rsp)
   1.19%  │╭│  0x00007f74a463aa83:   jmp    0x00007f74a463aa90
   1.13%  │││  0x00007f74a463aa85:   mov    $0x2,%r8d
          │││  0x00007f74a463aa8b:   mov    %r10d,0x4(%rsp)              ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   2.57%  │↘│  0x00007f74a463aa90:   mov    0x1c(%rsp),%ebp
   1.40%  │ │  0x00007f74a463aa94:   add    %r8d,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   1.71%  │ │  0x00007f74a463aa97:   mov    %ebp,0x1c(%rsp)
   4.46%  │ │  0x00007f74a463aa9b:   mov    0x4(%rsp),%ebp
   2.21%  │ │  0x00007f74a463aa9f:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
   1.23%  │ │  0x00007f74a463aaa1:   cmp    (%rsp),%ebp
          │ │  0x00007f74a463aaa4:   jge    0x00007f74a463b017           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   1.91%  │ │  0x00007f74a463aaaa:   mov    %ebp,%r10d                   ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   2.35%  ↘ │  0x00007f74a463aaad:   mov    0x8(%rsp),%r11
   2.14%    │  0x00007f74a463aab2:   mov    0x10(%r11,%r10,4),%ebp       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   4.63%    │  0x00007f74a463aab7:   mov    %ebp,0x48(%rsp)
   5.22%    │  0x00007f74a463aabb:   nopl   0x0(%rax,%rax,1)
   1.20%    │  0x00007f74a463aac0:   cmp    $0xffe26a2d,%ebp             ;   {oop(&quot;MOPED&quot;{0x00000007ff135168})}
            ╰  0x00007f74a463aac6:   je     0x00007f74a463aa78           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@2 (line 1858)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   2.27%       0x00007f74a463aac8:   movsbl 0x10(%r12,%rbp,8),%r11d      ; implicit exception: dispatches to 0x00007f74a463b0ac
                                                                         ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@30 (line 1861)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   3.87%       0x00007f74a463aace:   test   %r11d,%r11d
               0x00007f74a463aad1:   jne    0x00007f74a463b038           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@33 (line 1861)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   2.42%       0x00007f74a463aad7:   mov    0x14(%r12,%rbp,8),%r11d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@41 (line 1861)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
   1.14%       0x00007f74a463aadc:   mov    0xc(%r12,%r11,8),%r8d        ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@44 (line 1863)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
  12.30%       0x00007f74a463aae1:   lea    (%r12,%r11,8),%r9            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::equals@41 (line 1861)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
               0x00007f74a463aae5:   lea    0x10(%r12,%r11,8),%r11
   0.01%       0x00007f74a463aaea:   cmp    $0x5,%r8d
               0x00007f74a463aaee:   jne    0x00007f74a463abbf
               0x00007f74a463aaf4:   mov    0x40(%rsp),%rdi
               0x00007f74a463aaf9:   mov    %r11,%rsi
               0x00007f74a463aafc:   mov    $0x5,%ecx
               0x00007f74a463ab01:   test   %ecx,%ecx
               0x00007f74a463ab03:   je     0x00007f74a463aba6
               0x00007f74a463ab09:   mov    %ecx,%eax
               0x00007f74a463ab0b:   and    $0x1f,%eax
               0x00007f74a463ab0e:   and    $0xffffffe0,%ecx
               0x00007f74a463ab11:   je     0x00007f74a463ab62
....................................................................................................
  55.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  55.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   7.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   7.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   6.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   5.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   3.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   3.25%         c2, level 4  java.lang.String::equals, version 2, compile id 292 
   2.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   2.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   2.21%         c2, level 4  java.lang.String::equals, version 2, compile id 292 
   1.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   0.66%              kernel  [unknown] 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 597 
   0.10%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   0.06%              kernel  [unknown] 
   1.47%  <...other 361 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 568 
   5.46%         c2, level 4  java.lang.String::equals, version 2, compile id 292 
   2.18%              kernel  [unknown] 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 597 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%        libc-2.31.so  __stpcpy_avx2 
   0.19%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.43%         c2, level 4
   2.18%              kernel
   0.17%           libjvm.so
   0.10%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.02%         interpreter
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%      libz.so.1.2.11
   0.00%    perf-1957941.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 12)

# Run progress: 16.67% complete, ETA 00:18:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 19.633 ns/op
# Warmup Iteration   2: 19.423 ns/op
# Warmup Iteration   3: 19.409 ns/op
# Warmup Iteration   4: 19.402 ns/op
# Warmup Iteration   5: 19.417 ns/op
Iteration   1: 19.418 ns/op
Iteration   2: 19.430 ns/op
Iteration   3: 19.411 ns/op
Iteration   4: 19.395 ns/op
Iteration   5: 19.413 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  19.413 ±(99.9%) 0.048 ns/op [Average]
  (min, avg, max) = (19.395, 19.413, 19.430), stdev = 0.012
  CI (99.9%): [19.365, 19.462] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 131274 total address lines.
Perf output processed (skipped 56.317 seconds):
 Column 1: cycles (50488 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 

              # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007f1ed8639000:   mov    0x8(%rsi),%r10d
              0x00007f1ed8639004:   movabs $0x7f1e5f000000,%r11
              0x00007f1ed863900e:   add    %r11,%r10
              0x00007f1ed8639011:   cmp    %r10,%rax
              0x00007f1ed8639014:   jne    0x00007f1ed80c4080           ;   {runtime_call ic_miss_stub}
              0x00007f1ed863901a:   xchg   %ax,%ax
              0x00007f1ed863901c:   nopl   0x0(%rax)
            [Verified Entry Point]
   1.95%      0x00007f1ed8639020:   mov    %eax,-0x14000(%rsp)
   1.17%      0x00007f1ed8639027:   push   %rbp
   0.33%      0x00007f1ed8639028:   sub    $0x20,%rsp
   1.24%      0x00007f1ed863902c:   cmpl   $0x1,0x20(%r15)
   0.55%      0x00007f1ed8639034:   jne    0x00007f1ed8639b9c           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@-1 (line 244)
   0.54%      0x00007f1ed863903a:   mov    %rdx,(%rsp)
   0.94%      0x00007f1ed863903e:   movabs $0x7ff035168,%r10            ;   {oop(&quot;MOPED&quot;{0x00000007ff035168})}
   0.00%      0x00007f1ed8639048:   cmp    %r10,%rdx
          ╭   0x00007f1ed863904b:   jne    0x00007f1ed863906f
   0.03%  │   0x00007f1ed863904d:   mov    $0x1,%eax
   0.05%  │╭  0x00007f1ed8639052:   jmp    0x00007f1ed8639059
   0.18%  ││  0x00007f1ed8639054:   mov    $0x2,%eax                    ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.String::equals@8 (line 1863)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.09%  │↘  0x00007f1ed8639059:   vzeroupper 
   2.32%  │   0x00007f1ed863905c:   add    $0x20,%rsp
   0.15%  │   0x00007f1ed8639060:   pop    %rbp
   1.63%  │   0x00007f1ed8639061:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   0x00007f1ed8639068:   ja     0x00007f1ed8639b86
   1.58%  │   0x00007f1ed863906e:   ret    
   0.51%  ↘   0x00007f1ed863906f:   movsbl 0x10(%rdx),%ebp              ; implicit exception: dispatches to 0x00007f1ed8639b54
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   2.42%      0x00007f1ed8639073:   test   %ebp,%ebp
              0x00007f1ed8639075:   jne    0x00007f1ed8639a65           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.50%      0x00007f1ed863907b:   mov    0x14(%rdx),%r9d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
              0x00007f1ed863907f:   mov    0xc(%r12,%r9,8),%r11d
   8.25%      0x00007f1ed8639084:   cmp    $0x5,%r11d
              0x00007f1ed8639088:   jne    0x00007f1ed8639168           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.15%      0x00007f1ed863908e:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
              0x00007f1ed8639092:   lea    0x10(%r12,%r9,8),%rsi
              0x00007f1ed8639097:   movabs $0x7ff035180,%rdi            ;   {oop([B{0x00000007ff035180})}
              0x00007f1ed86390a1:   add    $0x10,%rdi
   0.16%      0x00007f1ed86390a5:   mov    $0x5,%ecx
              0x00007f1ed86390aa:   test   %ecx,%ecx
              0x00007f1ed86390ac:   je     0x00007f1ed863914f
              0x00007f1ed86390b2:   mov    %ecx,%eax
              0x00007f1ed86390b4:   and    $0x1f,%eax
   0.19%      0x00007f1ed86390b7:   and    $0xffffffe0,%ecx
              0x00007f1ed86390ba:   je     0x00007f1ed863910b
              0x00007f1ed86390c0:   lea    (%rdi,%rcx,1),%rdi
              0x00007f1ed86390c4:   lea    (%rsi,%rcx,1),%rsi
              0x00007f1ed86390c8:   neg    %rcx
              0x00007f1ed86390cb:   vmovdqu (%rdi,%rcx,1),%ymm0
              0x00007f1ed86390d0:   vmovdqu (%rsi,%rcx,1),%ymm1
              0x00007f1ed86390d5:   vpxor  %ymm1,%ymm0,%ymm0
              0x00007f1ed86390d9:   vptest %ymm0,%ymm0
              0x00007f1ed86390de:   jne    0x00007f1ed8639156
              0x00007f1ed86390e4:   add    $0x20,%rcx
....................................................................................................
  26.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 563 

                 #           [sp+0x40]  (sp of caller)
                 0x00007f1ed863ac20:   mov    0x8(%rsi),%r10d
                 0x00007f1ed863ac24:   movabs $0x7f1e5f000000,%r11
                 0x00007f1ed863ac2e:   add    %r11,%r10
                 0x00007f1ed863ac31:   cmp    %r10,%rax
                 0x00007f1ed863ac34:   jne    0x00007f1ed80c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f1ed863ac3a:   xchg   %ax,%ax
                 0x00007f1ed863ac3c:   nopl   0x0(%rax)
               [Verified Entry Point]
                 0x00007f1ed863ac40:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007f1ed863ac47:   push   %rbp
   0.00%         0x00007f1ed863ac48:   sub    $0x30,%rsp
                 0x00007f1ed863ac4c:   cmpl   $0x1,0x20(%r15)
   0.00%         0x00007f1ed863ac54:   jne    0x00007f1ed863ad4a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@-1 (line 125)
                 0x00007f1ed863ac5a:   mov    %rsi,%r10
                 0x00007f1ed863ac5d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
                 0x00007f1ed863ac61:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f1ed863ad21
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
                 0x00007f1ed863ac66:   test   %ebx,%ebx
          ╭      0x00007f1ed863ac68:   jbe    0x00007f1ed863acf2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
   0.00%  │      0x00007f1ed863ac6e:   mov    %ebx,%r11d
          │      0x00007f1ed863ac71:   dec    %r11d
          │      0x00007f1ed863ac74:   cmp    %ebx,%r11d
          │╭     0x00007f1ed863ac77:   jae    0x00007f1ed863acf6
   0.00%  ││     0x00007f1ed863ac7d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
          ││     0x00007f1ed863ac81:   xor    %ebp,%ebp
          ││     0x00007f1ed863ac83:   xor    %r11d,%r11d
          ││     0x00007f1ed863ac86:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007f1ed863ac8b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f1ed863ac8f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f1ed863ac94:   jmp    0x00007f1ed863aca9
          │││    0x00007f1ed863ac96:   data16 nopw 0x0(%rax,%rax,1)
   0.24%  │││↗   0x00007f1ed863aca0:   mov    (%rsp),%r8
   0.33%  ││││   0x00007f1ed863aca4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   6.23%  ││↘│   0x00007f1ed863aca9:   mov    0x10(%r8,%rbp,4),%r11d
   2.70%  ││ │   0x00007f1ed863acae:   mov    %r8,(%rsp)
   0.07%  ││ │   0x00007f1ed863acb2:   mov    %r11,%rdx
          ││ │   0x00007f1ed863acb5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.86%  ││ │   0x00007f1ed863acb9:   mov    0x8(%rsp),%rsi
          ││ │   0x00007f1ed863acbe:   nop
   0.08%  ││ │   0x00007f1ed863acbf:   call   0x00007f1ed8639020           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {optimized virtual_call}
   2.89%  ││ │   0x00007f1ed863acc4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {other}
   0.18%  ││ │   0x00007f1ed863accc:   mov    0x14(%rsp),%r10d
   6.53%  ││ │   0x00007f1ed863acd1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   1.67%  ││ │   0x00007f1ed863acd4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
          ││ │   0x00007f1ed863acd6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f1ed863acda:   jl     0x00007f1ed863aca0
   0.03%  ││     0x00007f1ed863acdc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          ││  ↗  0x00007f1ed863acdf:   add    $0x30,%rsp
   0.01%  ││  │  0x00007f1ed863ace3:   pop    %rbp
   0.01%  ││  │  0x00007f1ed863ace4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f1ed863aceb:   ja     0x00007f1ed863ad34
          ││  │  0x00007f1ed863acf1:   ret    
          ↘│  │  0x00007f1ed863acf2:   xor    %eax,%eax
           │  ╰  0x00007f1ed863acf4:   jmp    0x00007f1ed863acdf
           ↘     0x00007f1ed863acf6:   mov    $0xffffff76,%esi
                 0x00007f1ed863acfb:   mov    %r10,%rbp
                 0x00007f1ed863acfe:   mov    %ebx,0x4(%rsp)
                 0x00007f1ed863ad02:   mov    %r9d,0x8(%rsp)
                 0x00007f1ed863ad07:   call   0x00007f1ed80c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  22.85%  <total for region 2>

....[Hottest Regions]...............................................................................
  26.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
  22.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 563 
   9.87%         c2, level 4  java.lang.String::equals, version 2, compile id 310 
   8.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   3.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   3.77%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   3.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   3.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   3.11%         c2, level 4  java.lang.String::equals, version 2, compile id 310 
   3.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   2.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   1.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   1.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   1.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   0.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   0.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   0.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   0.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   0.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
   0.22%              kernel  [unknown] 
   1.34%  <...other 276 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 557 
  22.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 563 
  12.97%         c2, level 4  java.lang.String::equals, version 2, compile id 310 
   1.23%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 592 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%      hsdis-amd64.so  print_insn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.00%      hsdis-amd64.so  putop 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.13%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.47%         c2, level 4
   1.23%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.05%                    
   0.03%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs
# Parameters: (branches = 24)

# Run progress: 25.00% complete, ETA 00:16:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 31.050 ns/op
# Warmup Iteration   2: 30.623 ns/op
# Warmup Iteration   3: 30.550 ns/op
# Warmup Iteration   4: 30.756 ns/op
# Warmup Iteration   5: 30.632 ns/op
Iteration   1: 30.451 ns/op
Iteration   2: 30.528 ns/op
Iteration   3: 30.690 ns/op
Iteration   4: 30.649 ns/op
Iteration   5: 30.580 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs":
  30.580 ±(99.9%) 0.366 ns/op [Average]
  (min, avg, max) = (30.451, 30.580, 30.690), stdev = 0.095
  CI (99.9%): [30.213, 30.946] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.chained_ifs:asm":
PrintAssembly processed: 126954 total address lines.
Perf output processed (skipped 56.104 seconds):
 Column 1: cycles (50667 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 

              # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
              #           [sp+0x30]  (sp of caller)
              0x00007f3664638900:   mov    0x8(%rsi),%r10d
              0x00007f3664638904:   movabs $0x7f35eb000000,%r11
              0x00007f366463890e:   add    %r11,%r10
              0x00007f3664638911:   cmp    %r10,%rax
              0x00007f3664638914:   jne    0x00007f36640c4080           ;   {runtime_call ic_miss_stub}
              0x00007f366463891a:   xchg   %ax,%ax
              0x00007f366463891c:   nopl   0x0(%rax)
            [Verified Entry Point]
   1.15%      0x00007f3664638920:   mov    %eax,-0x14000(%rsp)
   0.72%      0x00007f3664638927:   push   %rbp
   0.46%      0x00007f3664638928:   sub    $0x20,%rsp
   0.62%      0x00007f366463892c:   cmpl   $0x1,0x20(%r15)
   0.37%      0x00007f3664638934:   jne    0x00007f3664639fa3           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@-1 (line 244)
   0.35%      0x00007f366463893a:   mov    %rdx,(%rsp)
   0.52%      0x00007f366463893e:   movabs $0x7ff035168,%r10            ;   {oop(&quot;MOPED&quot;{0x00000007ff035168})}
              0x00007f3664638948:   cmp    %r10,%rdx
          ╭   0x00007f366463894b:   jne    0x00007f366463896f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.String::equals@2 (line 1858)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.01%  │   0x00007f366463894d:   mov    $0x1,%eax
   0.01%  │╭  0x00007f3664638952:   jmp    0x00007f3664638959
   0.05%  ││  0x00007f3664638954:   mov    $0x2,%eax                    ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.String::equals@2 (line 1858)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@72 (line 258)
   0.64%  │↘  0x00007f3664638959:   vzeroupper 
   1.93%  │   0x00007f366463895c:   add    $0x20,%rsp
   0.32%  │   0x00007f3664638960:   pop    %rbp
   2.95%  │   0x00007f3664638961:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   0x00007f3664638968:   ja     0x00007f3664639f8d
   0.58%  │   0x00007f366463896e:   ret    
   0.33%  ↘   0x00007f366463896f:   movsbl 0x10(%rdx),%ebp              ; implicit exception: dispatches to 0x00007f3664639f4c
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.39%      0x00007f3664638973:   test   %ebp,%ebp
              0x00007f3664638975:   jne    0x00007f3664639d85           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   1.10%      0x00007f366463897b:   mov    0x14(%rdx),%r9d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.00%      0x00007f366463897f:   mov    0xc(%r12,%r9,8),%r10d
   5.02%      0x00007f3664638984:   cmp    $0x5,%r10d
              0x00007f3664638988:   jne    0x00007f3664638a68           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
   0.09%      0x00007f366463898e:   lea    (%r12,%r9,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs@5 (line 246)
              0x00007f3664638992:   lea    0x10(%r12,%r9,8),%rsi
              0x00007f3664638997:   movabs $0x7ff035180,%rdi            ;   {oop([B{0x00000007ff035180})}
              0x00007f36646389a1:   add    $0x10,%rdi
   0.11%      0x00007f36646389a5:   mov    $0x5,%ecx
              0x00007f36646389aa:   test   %ecx,%ecx
              0x00007f36646389ac:   je     0x00007f3664638a4f
              0x00007f36646389b2:   mov    %ecx,%eax
              0x00007f36646389b4:   and    $0x1f,%eax
   0.13%      0x00007f36646389b7:   and    $0xffffffe0,%ecx
              0x00007f36646389ba:   je     0x00007f3664638a0b
              0x00007f36646389c0:   lea    (%rdi,%rcx,1),%rdi
              0x00007f36646389c4:   lea    (%rsi,%rcx,1),%rsi
              0x00007f36646389c8:   neg    %rcx
              0x00007f36646389cb:   vmovdqu (%rdi,%rcx,1),%ymm0
              0x00007f36646389d0:   vmovdqu (%rsi,%rcx,1),%ymm1
              0x00007f36646389d5:   vpxor  %ymm1,%ymm0,%ymm0
              0x00007f36646389d9:   vptest %ymm0,%ymm0
              0x00007f36646389de:   jne    0x00007f3664638a56
              0x00007f36646389e4:   add    $0x20,%rcx
....................................................................................................
  18.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 570 

                 0x00007f366463b7e1:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f366463b8a1
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@8 (line 126)
                 0x00007f366463b7e6:   test   %ebx,%ebx
          ╭      0x00007f366463b7e8:   jbe    0x00007f366463b872           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          │      0x00007f366463b7ee:   mov    %ebx,%r11d
          │      0x00007f366463b7f1:   dec    %r11d
          │      0x00007f366463b7f4:   cmp    %ebx,%r11d
          │╭     0x00007f366463b7f7:   jae    0x00007f366463b876
   0.01%  ││     0x00007f366463b7fd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@3 (line 126)
          ││     0x00007f366463b801:   xor    %ebp,%ebp
          ││     0x00007f366463b803:   xor    %r11d,%r11d
          ││     0x00007f366463b806:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007f366463b80b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f366463b80f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f366463b814:   jmp    0x00007f366463b829
          │││    0x00007f366463b816:   data16 nopw 0x0(%rax,%rax,1)
   0.09%  │││↗   0x00007f366463b820:   mov    (%rsp),%r8
   0.18%  ││││   0x00007f366463b824:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@19 (line 126)
   3.76%  ││↘│   0x00007f366463b829:   mov    0x10(%r8,%rbp,4),%r11d
   2.26%  ││ │   0x00007f366463b82e:   mov    %r8,(%rsp)
   0.08%  ││ │   0x00007f366463b832:   mov    %r11,%rdx
          ││ │   0x00007f366463b835:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@22 (line 126)
   1.24%  ││ │   0x00007f366463b839:   mov    0x8(%rsp),%rsi
   0.00%  ││ │   0x00007f366463b83e:   nop
   0.09%  ││ │   0x00007f366463b83f:   call   0x00007f3664638920           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {optimized virtual_call}
   2.09%  ││ │   0x00007f366463b844:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual chainedIfs {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@29 (line 127)
          ││ │                                                             ;   {other}
   0.04%  ││ │   0x00007f366463b84c:   mov    0x14(%rsp),%r10d
   6.47%  ││ │   0x00007f366463b851:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@32 (line 127)
   1.22%  ││ │   0x00007f366463b854:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@34 (line 126)
          ││ │   0x00007f366463b856:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f366463b85a:   jl     0x00007f366463b820
   0.02%  ││     0x00007f366463b85c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
          ││  ↗  0x00007f366463b85f:   add    $0x30,%rsp
   0.00%  ││  │  0x00007f366463b863:   pop    %rbp
   0.01%  ││  │  0x00007f366463b864:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f366463b86b:   ja     0x00007f366463b8b4
   0.00%  ││  │  0x00007f366463b871:   ret    
          ↘│  │  0x00007f366463b872:   xor    %eax,%eax
           │  ╰  0x00007f366463b874:   jmp    0x00007f366463b85f
           ↘     0x00007f366463b876:   mov    $0xffffff76,%esi
                 0x00007f366463b87b:   mov    %r10,%rbp
                 0x00007f366463b87e:   mov    %ebx,0x4(%rsp)
                 0x00007f366463b882:   mov    %r9d,0x8(%rsp)
                 0x00007f366463b887:   call   0x00007f36640c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs@16 (line 126)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  17.55%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 296 

             # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f36646211a0:   mov    0x8(%rsi),%r10d
             0x00007f36646211a4:   movabs $0x7f35eb000000,%r11
             0x00007f36646211ae:   add    %r11,%r10
             0x00007f36646211b1:   cmp    %r10,%rax
             0x00007f36646211b4:   jne    0x00007f36640c4080           ;   {runtime_call ic_miss_stub}
             0x00007f36646211ba:   xchg   %ax,%ax
             0x00007f36646211bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.86%     0x00007f36646211c0:   mov    %eax,-0x14000(%rsp)
   5.18%     0x00007f36646211c7:   push   %rbp
   0.50%     0x00007f36646211c8:   sub    $0x20,%rsp
   0.10%     0x00007f36646211cc:   cmpl   $0x1,0x20(%r15)
   0.83%     0x00007f36646211d4:   jne    0x00007f3664621386           ;*synchronization entry
                                                                       ; - java.lang.String::equals@-1 (line 1858)
   0.13%     0x00007f36646211da:   nopw   0x0(%rax,%rax,1)
             0x00007f36646211e0:   cmp    %rdx,%rsi
          ╭  0x00007f36646211e3:   jne    0x00007f36646211ef           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::equals@2 (line 1858)
   0.01%  │  0x00007f36646211e5:   mov    $0x1,%eax
   0.20%  │  0x00007f36646211ea:   jmp    0x00007f3664621302
   0.07%  ↘  0x00007f36646211ef:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f3664621358
   0.57%     0x00007f36646211f3:   nopw   0x0(%rax,%rax,1)
   0.07%     0x00007f36646211fc:   data16 data16 xchg %ax,%ax
             0x00007f3664621200:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
             0x00007f3664621207:   jne    0x00007f3664621338           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@8 (line 1863)
   0.09%     0x00007f366462120d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@26 (line 1861)
   0.61%     0x00007f3664621212:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@30 (line 1861)
   0.07%     0x00007f3664621216:   cmp    %ebp,%r10d
             0x00007f3664621219:   jne    0x00007f366462131c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@33 (line 1861)
             0x00007f366462121f:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@41 (line 1861)
   0.08%     0x00007f3664621223:   mov    0x14(%rsi),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@37 (line 1861)
   0.61%     0x00007f3664621227:   mov    0xc(%r12,%r11,8),%r9d
   0.10%     0x00007f366462122c:   mov    0xc(%r12,%r10,8),%ecx
   0.04%     0x00007f3664621231:   cmp    %r9d,%ecx
             0x00007f3664621234:   jne    0x00007f3664621318           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@44 (line 1863)
             0x00007f366462123a:   lea    (%r12,%r11,8),%r8            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@41 (line 1861)
             0x00007f366462123e:   lea    0x10(%r12,%r11,8),%rsi
             0x00007f3664621243:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@37 (line 1861)
             0x00007f3664621247:   lea    0x10(%r12,%r10,8),%rdi
             0x00007f366462124c:   test   %ecx,%ecx
             0x00007f366462124e:   je     0x00007f36646212f1
....................................................................................................
  11.11%  <total for region 3>

....[Hottest Regions]...............................................................................
  18.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
  17.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 570 
  11.11%         c2, level 4  java.lang.String::equals, version 2, compile id 296 
   8.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   3.48%         c2, level 4  java.lang.String::equals, version 2, compile id 296 
   2.60%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   2.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   2.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   2.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   2.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   2.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   2.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   2.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   1.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   1.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   1.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   1.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   1.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   1.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   1.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
   9.47%  <...other 347 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chainedIfs, version 2, compile id 565 
  17.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::chained_ifs, version 4, compile id 570 
  14.59%         c2, level 4  java.lang.String::equals, version 2, compile id 296 
   1.90%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_chained_ifs_jmhTest::chained_ifs_avgt_jmhStub, version 5, compile id 596 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.13%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.90%              kernel
   0.11%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.00%      hsdis-amd64.so
   0.00%        libjimage.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 3)

# Run progress: 33.33% complete, ETA 00:14:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.526 ns/op
# Warmup Iteration   2: 10.394 ns/op
# Warmup Iteration   3: 10.483 ns/op
# Warmup Iteration   4: 10.434 ns/op
# Warmup Iteration   5: 10.511 ns/op
Iteration   1: 10.478 ns/op
Iteration   2: 10.499 ns/op
Iteration   3: 10.396 ns/op
Iteration   4: 10.485 ns/op
Iteration   5: 10.388 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  10.449 ±(99.9%) 0.203 ns/op [Average]
  (min, avg, max) = (10.388, 10.449, 10.499), stdev = 0.053
  CI (99.9%): [10.246, 10.652] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 128185 total address lines.
Perf output processed (skipped 56.188 seconds):
 Column 1: cycles (50736 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 564 

                 # {method} {0x00007fd45c47b3e8} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007fd4e063a720:   mov    0x8(%rsi),%r10d
                 0x00007fd4e063a724:   movabs $0x7fd467000000,%r11
                 0x00007fd4e063a72e:   add    %r11,%r10
                 0x00007fd4e063a731:   cmp    %r10,%rax
                 0x00007fd4e063a734:   jne    0x00007fd4e00c4080           ;   {runtime_call ic_miss_stub}
                 0x00007fd4e063a73a:   xchg   %ax,%ax
                 0x00007fd4e063a73c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.01%         0x00007fd4e063a740:   mov    %eax,-0x14000(%rsp)
   0.02%         0x00007fd4e063a747:   push   %rbp
   0.00%         0x00007fd4e063a748:   sub    $0x30,%rsp
                 0x00007fd4e063a74c:   cmpl   $0x1,0x20(%r15)
   0.00%         0x00007fd4e063a754:   jne    0x00007fd4e063a84a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@-1 (line 114)
                 0x00007fd4e063a75a:   mov    %rsi,%r10
                 0x00007fd4e063a75d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                 0x00007fd4e063a761:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007fd4e063a821
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
   0.00%         0x00007fd4e063a766:   test   %ebx,%ebx
          ╭      0x00007fd4e063a768:   jbe    0x00007fd4e063a7f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          │      0x00007fd4e063a76e:   mov    %ebx,%r11d
   0.00%  │      0x00007fd4e063a771:   dec    %r11d
          │      0x00007fd4e063a774:   cmp    %ebx,%r11d
          │╭     0x00007fd4e063a777:   jae    0x00007fd4e063a7f6
   0.00%  ││     0x00007fd4e063a77d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          ││     0x00007fd4e063a781:   xor    %ebp,%ebp
          ││     0x00007fd4e063a783:   xor    %r11d,%r11d
          ││     0x00007fd4e063a786:   mov    %rsi,0x8(%rsp)
   0.01%  ││     0x00007fd4e063a78b:   mov    %ebx,0x10(%rsp)
          ││     0x00007fd4e063a78f:   mov    %r11d,0x14(%rsp)
   0.00%  ││╭    0x00007fd4e063a794:   jmp    0x00007fd4e063a7a9
          │││    0x00007fd4e063a796:   data16 nopw 0x0(%rax,%rax,1)
   0.02%  │││↗   0x00007fd4e063a7a0:   mov    (%rsp),%r8
   0.62%  ││││   0x00007fd4e063a7a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
  10.79%  ││↘│   0x00007fd4e063a7a9:   mov    0x10(%r8,%rbp,4),%r11d
   6.32%  ││ │   0x00007fd4e063a7ae:   mov    %r8,(%rsp)
   0.00%  ││ │   0x00007fd4e063a7b2:   mov    %r11,%rdx
   0.03%  ││ │   0x00007fd4e063a7b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   3.60%  ││ │   0x00007fd4e063a7b9:   mov    0x8(%rsp),%rsi
   0.01%  ││ │   0x00007fd4e063a7be:   nop
   0.01%  ││ │   0x00007fd4e063a7bf:   call   0x00007fd4e0639380           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {optimized virtual_call}
   8.39%  ││ │   0x00007fd4e063a7c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {other}
   0.00%  ││ │   0x00007fd4e063a7cc:   mov    0x14(%rsp),%r10d
   8.30%  ││ │   0x00007fd4e063a7d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   3.46%  ││ │   0x00007fd4e063a7d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
   0.00%  ││ │   0x00007fd4e063a7d6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007fd4e063a7da:   jl     0x00007fd4e063a7a0
   0.05%  ││     0x00007fd4e063a7dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  ││  ↗  0x00007fd4e063a7df:   add    $0x30,%rsp
   0.04%  ││  │  0x00007fd4e063a7e3:   pop    %rbp
   0.02%  ││  │  0x00007fd4e063a7e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007fd4e063a7eb:   ja     0x00007fd4e063a834
   0.01%  ││  │  0x00007fd4e063a7f1:   ret    
          ↘│  │  0x00007fd4e063a7f2:   xor    %eax,%eax
           │  ╰  0x00007fd4e063a7f4:   jmp    0x00007fd4e063a7df
           ↘     0x00007fd4e063a7f6:   mov    $0xffffff76,%esi
                 0x00007fd4e063a7fb:   mov    %r10,%rbp
                 0x00007fd4e063a7fe:   mov    %ebx,0x4(%rsp)
                 0x00007fd4e063a802:   mov    %r9d,0x8(%rsp)
                 0x00007fd4e063a807:   call   0x00007fd4e00c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  41.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 

            # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
            #           [sp+0x30]  (sp of caller)
            0x00007fd4e0639360:   mov    0x8(%rsi),%r10d
            0x00007fd4e0639364:   movabs $0x7fd467000000,%r11
            0x00007fd4e063936e:   add    %r11,%r10
            0x00007fd4e0639371:   cmp    %r10,%rax
            0x00007fd4e0639374:   jne    0x00007fd4e00c4080           ;   {runtime_call ic_miss_stub}
            0x00007fd4e063937a:   xchg   %ax,%ax
            0x00007fd4e063937c:   nopl   0x0(%rax)
          [Verified Entry Point]
   3.64%    0x00007fd4e0639380:   mov    %eax,-0x14000(%rsp)
   1.07%    0x00007fd4e0639387:   push   %rbp
   0.82%    0x00007fd4e0639388:   sub    $0x20,%rsp
   2.71%    0x00007fd4e063938c:   cmpl   $0x1,0x20(%r15)
   0.50%    0x00007fd4e0639394:   jne    0x00007fd4e063990a           ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@-1 (line 214)
   2.67%    0x00007fd4e063939a:   mov    %rdx,(%rsp)
   0.38%    0x00007fd4e063939e:   xchg   %ax,%ax
   0.00%    0x00007fd4e06393a0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007fd4e06398dc
                                                                      ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@1 (line 2363)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
  14.90%    0x00007fd4e06393a3:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   0.01%    0x00007fd4e06393a7:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   2.36%    0x00007fd4e06393ab:   test   %eax,%eax
            0x00007fd4e06393ad:   je     0x00007fd4e0639630           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   1.32%    0x00007fd4e06393b3:   cmp    $0x462300d,%eax
            0x00007fd4e06393b8:   je     0x00007fd4e063968b           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
   2.13%    0x00007fd4e06393be:   xchg   %ax,%ax
            0x00007fd4e06393c0:   cmp    $0x9ef434af,%eax
            0x00007fd4e06393c5:   jne    0x00007fd4e06394e5           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   1.25%    0x00007fd4e06393cb:   movabs $0x7ff0351c8,%r10            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff0351c8})}
   0.05%    0x00007fd4e06393d5:   mov    (%rsp),%r8
            0x00007fd4e06393d9:   cmp    %r10,%r8
            0x00007fd4e06393dc:   nopl   0x0(%rax)
   1.06%    0x00007fd4e06393e0:   je     0x00007fd4e06394d7           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@2 (line 1858)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
            0x00007fd4e06393e6:   test   %ebp,%ebp
            0x00007fd4e06393e8:   jne    0x00007fd4e06398b4           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@33 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
            0x00007fd4e06393ee:   mov    0xc(%r12,%r11,8),%r10d
            0x00007fd4e06393f3:   cmp    $0x10,%r10d
            0x00007fd4e06393f7:   jne    0x00007fd4e0639848           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
....................................................................................................
  34.87%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 

             0x00007fd4e063977e:   mov    $0x1,%eax
          ╭  0x00007fd4e0639783:   jmp    0x00007fd4e0639787
          │  0x00007fd4e0639785:   xor    %eax,%eax
          ↘  0x00007fd4e0639787:   vpxor  %ymm1,%ymm1,%ymm1
             0x00007fd4e063978b:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@44 (line 1863)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
             0x00007fd4e063978f:   test   %eax,%eax
             0x00007fd4e0639791:   je     0x00007fd4e0639815           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
   1.12%     0x00007fd4e0639797:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@681 (line 216)
   2.39%     0x00007fd4e063979c:   vzeroupper 
   3.62%     0x00007fd4e063979f:   add    $0x20,%rsp
             0x00007fd4e06397a3:   pop    %rbp
   0.10%     0x00007fd4e06397a4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007fd4e06397ab:   ja     0x00007fd4e06398f4
   3.59%     0x00007fd4e06397b1:   ret    
             0x00007fd4e06397b2:   xor    %eax,%eax
             0x00007fd4e06397b4:   jmp    0x00007fd4e06393be           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
             0x00007fd4e06397b9:   mov    $0xffffff45,%esi
             0x00007fd4e06397be:   mov    (%rsp),%rbp
             0x00007fd4e06397c2:   mov    %eax,(%rsp)
             0x00007fd4e06397c5:   data16 xchg %ax,%ax
             0x00007fd4e06397c8:   vzeroupper 
             0x00007fd4e06397cb:   call   0x00007fd4e00c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                       ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  10.82%  <total for region 3>

....[Hottest Regions]...............................................................................
  41.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 564 
  34.87%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 
  10.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 
   4.55%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 
   3.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 
   2.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 
   0.61%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 594 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.85%  <...other 258 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.17%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 559 
  41.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 564 
   1.71%              kernel  [unknown] 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 594 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  os::vsnprintf 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  resource_allocate_bytes 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  LinearScan::allocate_registers 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.98%         c2, level 4
   1.71%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 6)

# Run progress: 41.67% complete, ETA 00:12:42
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.181 ns/op
# Warmup Iteration   2: 16.910 ns/op
# Warmup Iteration   3: 17.087 ns/op
# Warmup Iteration   4: 17.079 ns/op
# Warmup Iteration   5: 17.099 ns/op
Iteration   1: 17.129 ns/op
Iteration   2: 17.031 ns/op
Iteration   3: 17.047 ns/op
Iteration   4: 17.120 ns/op
Iteration   5: 17.131 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  17.092 ±(99.9%) 0.186 ns/op [Average]
  (min, avg, max) = (17.031, 17.092, 17.131), stdev = 0.048
  CI (99.9%): [16.906, 17.277] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 129300 total address lines.
Perf output processed (skipped 56.352 seconds):
 Column 1: cycles (51071 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 545 

                                                                                         ; - java.lang.String::hashCode@27 (line 2365)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                                         ;   {other}
                               0x00007f7618637824:   test   %eax,%eax
                               0x00007f7618637826:   je     0x00007f7618637ad0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - java.lang.String::hashCode@42 (line 2367)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                               0x00007f761863782c:   mov    %eax,0xc(%rbp)               ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - java.lang.String::hashCode@58 (line 2373)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   2.05%                       0x00007f761863782f:   cmp    $0x462300d,%eax
          ╭                    0x00007f7618637834:   je     0x00007f7618637a09
   3.36%  │                    0x00007f761863783a:   nopw   0x0(%rax,%rax,1)
          │                    0x00007f7618637840:   cmp    $0x462300d,%eax
          │╭                   0x00007f7618637845:   jge    0x00007f7618637905
   0.69%  ││                   0x00007f761863784b:   cmp    $0x103b4,%eax
          ││╭                  0x00007f7618637850:   jne    0x00007f7618637885           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.02%  │││                  0x00007f7618637852:   movabs $0x7ff035238,%rdx            ;   {oop(&quot;CAR&quot;{0x00000007ff035238})}
   0.30%  │││                  0x00007f761863785c:   mov    (%rsp),%rsi
   0.00%  │││                  0x00007f7618637860:   data16 xchg %ax,%ax
   0.01%  │││                  0x00007f7618637863:   call   0x00007f7618621240           ; ImmutableOopMap {}
          │││                                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
          │││                                                                            ;   {optimized virtual_call}
   2.37%  │││                  0x00007f7618637868:   nopl   0x10002d8(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
          │││                                                                            ;   {other}
          │││                  0x00007f7618637870:   test   %eax,%eax
          │││                  0x00007f7618637872:   je     0x00007f7618637b54           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
          │││                  0x00007f7618637878:   mov    $0x4,%r10d
          │││                  0x00007f761863787e:   xchg   %ax,%ax
   0.33%  │││╭                 0x00007f7618637880:   jmp    0x00007f7618637982
   0.00%  ││↘│                 0x00007f7618637885:   cmp    $0x103b4,%eax
          ││ │╭                0x00007f761863788a:   jge    0x00007f76186378c7
   0.35%  ││ ││                0x00007f761863788c:   cmp    $0x9ef434af,%eax
          ││ ││                0x00007f7618637891:   jne    0x00007f7618637b10           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.31%  ││ ││                0x00007f7618637897:   movabs $0x7ff0351c8,%rdx            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff0351c8})}
   0.03%  ││ ││                0x00007f76186378a1:   mov    (%rsp),%rsi
          ││ ││                0x00007f76186378a5:   xchg   %ax,%ax
          ││ ││                0x00007f76186378a7:   call   0x00007f7618621240           ; ImmutableOopMap {}
          ││ ││                                                                          ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          ││ ││                                                                          ;   {optimized virtual_call}
   0.43%  ││ ││                0x00007f76186378ac:   nopl   0x200031c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@243 (line 214)
          ││ ││                                                                          ;   {other}
          ││ ││                0x00007f76186378b4:   test   %eax,%eax
          ││ ││                0x00007f76186378b6:   je     0x00007f7618637b68           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@246 (line 214)
          ││ ││                0x00007f76186378bc:   mov    $0x2,%r10d
   0.23%  ││ ││╭               0x00007f76186378c2:   jmp    0x00007f7618637982
   0.32%  ││ │↘│               0x00007f76186378c7:   cmp    $0x14234,%eax
          ││ │ │               0x00007f76186378cc:   jne    0x00007f7618637a88           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.23%  ││ │ │               0x00007f76186378d2:   movabs $0x7ff035268,%rdx            ;   {oop(&quot;SUV&quot;{0x00000007ff035268})}
          ││ │ │               0x00007f76186378dc:   mov    (%rsp),%rsi
          ││ │ │               0x00007f76186378e0:   data16 xchg %ax,%ax
   0.21%  ││ │ │               0x00007f76186378e3:   call   0x00007f7618621240           ; ImmutableOopMap {}
          ││ │ │                                                                         ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
          ││ │ │                                                                         ;   {optimized virtual_call}
   2.27%  ││ │ │               0x00007f76186378e8:   nopl   0x3000358(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@285 (line 214)
          ││ │ │                                                                         ;   {other}
          ││ │ │               0x00007f76186378f0:   test   %eax,%eax
          ││ │ │               0x00007f76186378f2:   je     0x00007f7618637b2c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@288 (line 214)
   0.00%  ││ │ │               0x00007f76186378f8:   mov    $0x5,%r10d
          ││ │ │               0x00007f76186378fe:   xchg   %ax,%ax
   0.39%  ││ │ │╭              0x00007f7618637900:   jmp    0x00007f7618637982
   0.40%  │↘ │ ││              0x00007f7618637905:   cmp    $0x23c6acdf,%eax
          │  │ ││╭             0x00007f761863790a:   je     0x00007f7618637958
   0.03%  │  │ │││             0x00007f7618637910:   cmp    $0x23c6acdf,%eax
          │  │ │││             0x00007f7618637915:   jl     0x00007f7618637a50
   0.35%  │  │ │││             0x00007f761863791b:   nopl   0x0(%rax,%rax,1)
          │  │ │││             0x00007f7618637920:   cmp    $0x33eb4d91,%eax
          │  │ │││             0x00007f7618637925:   jne    0x00007f7618637a6c           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.33%  │  │ │││             0x00007f761863792b:   movabs $0x7ff035200,%rdx            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff035200})}
   0.00%  │  │ │││             0x00007f7618637935:   mov    (%rsp),%rsi
   0.06%  │  │ │││             0x00007f7618637939:   xchg   %ax,%ax
          │  │ │││             0x00007f761863793b:   call   0x00007f7618621240           ; ImmutableOopMap {}
          │  │ │││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
          │  │ │││                                                                       ;   {optimized virtual_call}
   2.24%  │  │ │││             0x00007f7618637940:   nopl   0x40003b0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@257 (line 214)
          │  │ │││                                                                       ;   {other}
          │  │ │││             0x00007f7618637948:   test   %eax,%eax
          │  │ │││             0x00007f761863794a:   je     0x00007f7618637afc           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@260 (line 214)
          │  │ │││             0x00007f7618637950:   mov    $0x3,%r10d
          │  │ │││╭            0x00007f7618637956:   jmp    0x00007f7618637982           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.33%  │  │ ││↘│            0x00007f7618637958:   movabs $0x7ff035198,%rdx            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff035198})}
          │  │ ││ │            0x00007f7618637962:   mov    (%rsp),%rsi
          │  │ ││ │            0x00007f7618637966:   nop
          │  │ ││ │            0x00007f7618637967:   call   0x00007f7618621240           ; ImmutableOopMap {}
          │  │ ││ │                                                                      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          │  │ ││ │                                                                      ;   {optimized virtual_call}
   2.27%  │  │ ││ │            0x00007f761863796c:   nopl   0x50003dc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@229 (line 214)
          │  │ ││ │                                                                      ;   {other}
          │  │ ││ │            0x00007f7618637974:   test   %eax,%eax
          │  │ ││ │            0x00007f7618637976:   je     0x00007f7618637ae8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@232 (line 214)
          │  │ ││ │            0x00007f761863797c:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@237 (line 214)
   0.85%  │  ↘ ↘↘ ↘            0x00007f7618637982:   cmp    $0x2,%r10d
          │        ╭           0x00007f7618637986:   je     0x00007f7618637a02
   0.36%  │        │           0x00007f761863798c:   cmp    $0x2,%r10d
          │        │╭          0x00007f7618637990:   jge    0x00007f76186379ba
          │        ││          0x00007f7618637992:   cmp    $0x1,%r10d
          │        ││╭         0x00007f7618637996:   je     0x00007f76186379b0
          │        │││         0x00007f7618637998:   test   %r10d,%r10d
   0.39%  │        │││         0x00007f761863799b:   nopl   0x0(%rax,%rax,1)
          │        │││         0x00007f76186379a0:   jne    0x00007f7618637aa4
          │        │││         0x00007f76186379a6:   mov    $0x1,%eax
          │        │││╭        0x00007f76186379ab:   jmp    0x00007f76186379ef
          │        ││↘│        0x00007f76186379b0:   mov    $0x2,%eax
          │        ││ │╭       0x00007f76186379b5:   jmp    0x00007f76186379ef
   1.07%  │        │↘ ││       0x00007f76186379ba:   nopw   0x0(%rax,%rax,1)
          │        │  ││       0x00007f76186379c0:   cmp    $0x4,%r10d
          │        │  ││╭      0x00007f76186379c4:   jne    0x00007f76186379cd
          │        │  │││      0x00007f76186379c6:   mov    $0x5,%eax
          │        │  │││╭     0x00007f76186379cb:   jmp    0x00007f76186379ef
   0.80%  │        │  ││↘│     0x00007f76186379cd:   cmp    $0x4,%r10d
          │        │  ││ │╭    0x00007f76186379d1:   jge    0x00007f76186379da
          │        │  ││ ││    0x00007f76186379d3:   mov    $0x4,%eax
          │        │  ││ ││╭   0x00007f76186379d8:   jmp    0x00007f76186379ef
   0.36%  │        │  ││ │↘│   0x00007f76186379da:   nopw   0x0(%rax,%rax,1)
          │        │  ││ │ │   0x00007f76186379e0:   cmp    $0x5,%r10d
          │        │  ││ │ │   0x00007f76186379e4:   jne    0x00007f7618637a3b           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │        │  ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@564 (line 214)
          │        │  ││ │ │   0x00007f76186379ea:   mov    $0x6,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        │  ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@693 (line 219)
   2.94%  │        │  ↘↘ ↘ ↘↗  0x00007f76186379ef:   add    $0x20,%rsp
   0.48%  │        │        │  0x00007f76186379f3:   pop    %rbp
   2.67%  │        │        │  0x00007f76186379f4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │        │        │  0x00007f76186379fb:   ja     0x00007f7618637bbe
   1.42%  │        │        │  0x00007f7618637a01:   ret    
   0.38%  │        ↘        │  0x00007f7618637a02:   mov    $0x3,%eax
          │                 ╰  0x00007f7618637a07:   jmp    0x00007f76186379ef           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@8 (line 214)
   0.36%  ↘                    0x00007f7618637a09:   movabs $0x7ff035168,%rdx            ;   {oop(&quot;MOPED&quot;{0x00000007ff035168})}
                               0x00007f7618637a13:   mov    (%rsp),%rsi
   0.11%                       0x00007f7618637a17:   call   0x00007f7618621240           ; ImmutableOopMap {}
                                                                                         ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                                                                                         ;   {optimized virtual_call}
   2.56%                       0x00007f7618637a1c:   nopl   0x600048c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@215 (line 214)
                                                                                         ;   {other}
                               0x00007f7618637a24:   test   %eax,%eax
                               0x00007f7618637a26:   je     0x00007f7618637b40           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@218 (line 214)
                               0x00007f7618637a2c:   xor    %r10d,%r10d
                               0x00007f7618637a2f:   jmp    0x00007f7618637982
....................................................................................................
  34.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 550 

                 # {method} {0x00007f759447b3e8} &apos;switch_expressions&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StringSwitchBenchmark&apos;
                 #           [sp+0x40]  (sp of caller)
                 0x00007f7618638b20:   mov    0x8(%rsi),%r10d
                 0x00007f7618638b24:   movabs $0x7f759f000000,%r11
                 0x00007f7618638b2e:   add    %r11,%r10
                 0x00007f7618638b31:   cmp    %r10,%rax
                 0x00007f7618638b34:   jne    0x00007f76180c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f7618638b3a:   xchg   %ax,%ax
                 0x00007f7618638b3c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.01%         0x00007f7618638b40:   mov    %eax,-0x14000(%rsp)
   0.00%         0x00007f7618638b47:   push   %rbp
   0.00%         0x00007f7618638b48:   sub    $0x30,%rsp
                 0x00007f7618638b4c:   cmpl   $0x1,0x20(%r15)
                 0x00007f7618638b54:   jne    0x00007f7618638c4a           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@-1 (line 114)
                 0x00007f7618638b5a:   mov    %rsi,%r10
                 0x00007f7618638b5d:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
                 0x00007f7618638b61:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f7618638c21
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@8 (line 115)
   0.01%         0x00007f7618638b66:   test   %ebx,%ebx
          ╭      0x00007f7618638b68:   jbe    0x00007f7618638bf2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
          │      0x00007f7618638b6e:   mov    %ebx,%r11d
          │      0x00007f7618638b71:   dec    %r11d
          │      0x00007f7618638b74:   cmp    %ebx,%r11d
          │╭     0x00007f7618638b77:   jae    0x00007f7618638bf6
   0.00%  ││     0x00007f7618638b7d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          ││     0x00007f7618638b81:   xor    %ebp,%ebp
          ││     0x00007f7618638b83:   xor    %r11d,%r11d
          ││     0x00007f7618638b86:   mov    %rsi,0x8(%rsp)
   0.01%  ││     0x00007f7618638b8b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f7618638b8f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f7618638b94:   jmp    0x00007f7618638ba9
          │││    0x00007f7618638b96:   data16 nopw 0x0(%rax,%rax,1)
   0.03%  │││↗   0x00007f7618638ba0:   mov    (%rsp),%r8
   0.23%  ││││   0x00007f7618638ba4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
   8.16%  ││↘│   0x00007f7618638ba9:   mov    0x10(%r8,%rbp,4),%r11d
   2.91%  ││ │   0x00007f7618638bae:   mov    %r8,(%rsp)
   0.00%  ││ │   0x00007f7618638bb2:   mov    %r11,%rdx
          ││ │   0x00007f7618638bb5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   2.15%  ││ │   0x00007f7618638bb9:   mov    0x8(%rsp),%rsi
          ││ │   0x00007f7618638bbe:   nop
   0.00%  ││ │   0x00007f7618638bbf:   call   0x00007f76186377c0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {optimized virtual_call}
   2.62%  ││ │   0x00007f7618638bc4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          ││ │                                                             ;   {other}
          ││ │   0x00007f7618638bcc:   mov    0x14(%rsp),%r10d
  13.28%  ││ │   0x00007f7618638bd1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   2.14%  ││ │   0x00007f7618638bd4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
          ││ │   0x00007f7618638bd6:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f7618638bda:   jl     0x00007f7618638ba0
   0.03%  ││     0x00007f7618638bdc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  ││  ↗  0x00007f7618638bdf:   add    $0x30,%rsp
   0.02%  ││  │  0x00007f7618638be3:   pop    %rbp
   0.01%  ││  │  0x00007f7618638be4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f7618638beb:   ja     0x00007f7618638c34
          ││  │  0x00007f7618638bf1:   ret    
          ↘│  │  0x00007f7618638bf2:   xor    %eax,%eax
           │  ╰  0x00007f7618638bf4:   jmp    0x00007f7618638bdf
           ↘     0x00007f7618638bf6:   mov    $0xffffff76,%esi
                 0x00007f7618638bfb:   mov    %r10,%rbp
                 0x00007f7618638bfe:   mov    %ebx,0x4(%rsp)
                 0x00007f7618638c02:   mov    %r9d,0x8(%rsp)
                 0x00007f7618638c07:   call   0x00007f76180c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  31.61%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 545 

            # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
            #           [sp+0x30]  (sp of caller)
            0x00007f76186377a0:   mov    0x8(%rsi),%r10d
            0x00007f76186377a4:   movabs $0x7f759f000000,%r11
            0x00007f76186377ae:   add    %r11,%r10
            0x00007f76186377b1:   cmp    %r10,%rax
            0x00007f76186377b4:   jne    0x00007f76180c4080           ;   {runtime_call ic_miss_stub}
            0x00007f76186377ba:   xchg   %ax,%ax
            0x00007f76186377bc:   nopl   0x0(%rax)
          [Verified Entry Point]
   2.17%    0x00007f76186377c0:   mov    %eax,-0x14000(%rsp)
   0.60%    0x00007f76186377c7:   push   %rbp
   0.13%    0x00007f76186377c8:   sub    $0x20,%rsp
   1.98%    0x00007f76186377cc:   cmpl   $0x1,0x20(%r15)
   0.30%    0x00007f76186377d4:   jne    0x00007f7618637bd4           ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@-1 (line 214)
   0.36%    0x00007f76186377da:   mov    %rdx,(%rsp)
   1.66%    0x00007f76186377de:   xchg   %ax,%ax
            0x00007f76186377e0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f7618637b7c
                                                                      ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@1 (line 2363)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
   6.61%    0x00007f76186377e3:   test   %eax,%eax
            0x00007f76186377e5:   jne    0x00007f761863782f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
            0x00007f76186377e7:   movzbl 0x11(%rdx),%r11d
            0x00007f76186377ec:   test   %r11d,%r11d
            0x00007f76186377ef:   jne    0x00007f7618637a34           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@13 (line 2364)
....................................................................................................
  13.79%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 291 

             # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f7618621220:   mov    0x8(%rsi),%r10d
             0x00007f7618621224:   movabs $0x7f759f000000,%r11
             0x00007f761862122e:   add    %r11,%r10
             0x00007f7618621231:   cmp    %r10,%rax
             0x00007f7618621234:   jne    0x00007f76180c4080           ;   {runtime_call ic_miss_stub}
             0x00007f761862123a:   xchg   %ax,%ax
             0x00007f761862123c:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.91%     0x00007f7618621240:   mov    %eax,-0x14000(%rsp)
   5.33%     0x00007f7618621247:   push   %rbp
   1.17%     0x00007f7618621248:   sub    $0x20,%rsp
   0.06%     0x00007f761862124c:   cmpl   $0x1,0x20(%r15)
   1.56%     0x00007f7618621254:   jne    0x00007f7618621406           ;*synchronization entry
                                                                       ; - java.lang.String::equals@-1 (line 1858)
   0.57%     0x00007f761862125a:   nopw   0x0(%rax,%rax,1)
   0.04%     0x00007f7618621260:   cmp    %rdx,%rsi
          ╭  0x00007f7618621263:   jne    0x00007f761862126f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::equals@2 (line 1858)
          │  0x00007f7618621265:   mov    $0x1,%eax
   1.42%  │  0x00007f761862126a:   jmp    0x00007f7618621382
          ↘  0x00007f761862126f:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f76186213d8
             0x00007f7618621273:   nopw   0x0(%rax,%rax,1)
             0x00007f761862127c:   data16 data16 xchg %ax,%ax
             0x00007f7618621280:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
             0x00007f7618621287:   jne    0x00007f76186213b8           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@8 (line 1863)
             0x00007f761862128d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@26 (line 1861)
             0x00007f7618621292:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@30 (line 1861)
....................................................................................................
  12.08%  <total for region 4>

....[Hottest Regions]...............................................................................
  34.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 545 
  31.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 550 
  13.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 545 
  12.08%         c2, level 4  java.lang.String::equals, version 2, compile id 291 
   5.14%         c2, level 4  java.lang.String::equals, version 2, compile id 291 
   1.05%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 584 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.09%  <...other 326 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 545 
  31.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 550 
  17.21%         c2, level 4  java.lang.String::equals, version 2, compile id 291 
   2.31%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 584 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  PlatformMonitor::wait 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  WatcherThread::sleep 
   0.17%  <...other 71 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.29%         c2, level 4
   2.31%              kernel
   0.17%           libjvm.so
   0.06%                    
   0.06%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 12)

# Run progress: 50.00% complete, ETA 00:10:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.106 ns/op
# Warmup Iteration   2: 27.707 ns/op
# Warmup Iteration   3: 27.881 ns/op
# Warmup Iteration   4: 28.038 ns/op
# Warmup Iteration   5: 27.926 ns/op
Iteration   1: 27.951 ns/op
Iteration   2: 27.805 ns/op
Iteration   3: 27.997 ns/op
Iteration   4: 27.844 ns/op
Iteration   5: 27.993 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  27.918 ±(99.9%) 0.340 ns/op [Average]
  (min, avg, max) = (27.805, 27.918, 27.997), stdev = 0.088
  CI (99.9%): [27.578, 28.257] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 125292 total address lines.
Perf output processed (skipped 56.022 seconds):
 Column 1: cycles (50722 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 

                                                                                 ;   {other}
                       0x00007f0a28637ae0:   mov    $0xffffff45,%esi
                       0x00007f0a28637ae5:   mov    %eax,%ebp
                       0x00007f0a28637ae7:   call   0x00007f0a280c9f00           ; ImmutableOopMap {}
                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
                                                                                 ;   {runtime_call UncommonTrapBlob}
                       0x00007f0a28637aec:   nopl   0x220008dc(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@274 (line 214)
                                                                                 ;   {other}
   1.11%               0x00007f0a28637af4:   mov    $0x7,%r10d
   1.08%  ╭            0x00007f0a28637afa:   jmp    0x00007f0a28637b69
   1.55%  │            0x00007f0a28637aff:   mov    $0x6,%r10d
   0.99%  │╭           0x00007f0a28637b05:   jmp    0x00007f0a28637b69
   1.16%  ││           0x00007f0a28637b0a:   mov    $0x5,%r10d
   0.97%  ││╭          0x00007f0a28637b10:   jmp    0x00007f0a28637b69
   1.34%  │││          0x00007f0a28637b15:   mov    $0xb,%r10d
   0.70%  │││          0x00007f0a28637b1b:   nopl   0x0(%rax,%rax,1)
          │││╭         0x00007f0a28637b20:   jmp    0x00007f0a28637b69
   1.40%  ││││         0x00007f0a28637b25:   mov    $0xa,%r10d
   1.09%  ││││╭        0x00007f0a28637b2b:   jmp    0x00007f0a28637b69
   1.33%  │││││        0x00007f0a28637b30:   mov    $0x9,%r10d
   1.04%  │││││╭       0x00007f0a28637b36:   jmp    0x00007f0a28637b69
   1.42%  ││││││       0x00007f0a28637b3b:   mov    $0x8,%r10d
   1.01%  ││││││╭      0x00007f0a28637b41:   jmp    0x00007f0a28637b69
   1.35%  │││││││      0x00007f0a28637b43:   mov    $0xc,%r10d
   1.06%  │││││││╭     0x00007f0a28637b49:   jmp    0x00007f0a28637b69
   1.57%  ││││││││     0x00007f0a28637b4b:   mov    $0x4,%r10d
   1.16%  ││││││││╭    0x00007f0a28637b51:   jmp    0x00007f0a28637b69
   1.34%  │││││││││    0x00007f0a28637b53:   mov    $0x3,%r10d
   1.14%  │││││││││╭   0x00007f0a28637b59:   jmp    0x00007f0a28637b69
   1.57%  ││││││││││   0x00007f0a28637b5b:   mov    $0x2,%r10d
   1.05%  ││││││││││╭  0x00007f0a28637b61:   jmp    0x00007f0a28637b69
   1.58%  │││││││││││  0x00007f0a28637b63:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@723 (line 225)
   2.56%  ↘↘↘↘↘↘↘↘↘↘↘  0x00007f0a28637b69:   mov    %r10d,%eax
                       0x00007f0a28637b6c:   add    $0x20,%rsp
   3.12%               0x00007f0a28637b70:   pop    %rbp
   6.64%               0x00007f0a28637b71:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                       0x00007f0a28637b78:   ja     0x00007f0a28637bf4
                       0x00007f0a28637b7e:   ret    
                       0x00007f0a28637b7f:   mov    $0xfffffff6,%esi
                       0x00007f0a28637b84:   data16 xchg %ax,%ax
                       0x00007f0a28637b87:   call   0x00007f0a280c9f00           ; ImmutableOopMap {}
                                                                                 ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                                 ;   {runtime_call UncommonTrapBlob}
                       0x00007f0a28637b8c:   nopl   0x2300097c(%rax,%rax,1)      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@271 (line 214)
....................................................................................................
  40.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 553 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
                0x00007f0a28638fee:   mov    %ebx,%r11d
                0x00007f0a28638ff1:   dec    %r11d
                0x00007f0a28638ff4:   cmp    %ebx,%r11d
          ╭     0x00007f0a28638ff7:   jae    0x00007f0a28639076
          │     0x00007f0a28638ffd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
          │     0x00007f0a28639001:   xor    %ebp,%ebp
          │     0x00007f0a28639003:   xor    %r11d,%r11d
          │     0x00007f0a28639006:   mov    %rsi,0x8(%rsp)
   0.00%  │     0x00007f0a2863900b:   mov    %ebx,0x10(%rsp)
          │     0x00007f0a2863900f:   mov    %r11d,0x14(%rsp)
          │╭    0x00007f0a28639014:   jmp    0x00007f0a28639029
          ││    0x00007f0a28639016:   data16 nopw 0x0(%rax,%rax,1)
          ││↗   0x00007f0a28639020:   mov    (%rsp),%r8
   0.08%  │││   0x00007f0a28639024:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
   5.63%  │↘│   0x00007f0a28639029:   mov    0x10(%r8,%rbp,4),%r11d
   1.15%  │ │   0x00007f0a2863902e:   mov    %r8,(%rsp)
          │ │   0x00007f0a28639032:   mov    %r11,%rdx
          │ │   0x00007f0a28639035:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   1.40%  │ │   0x00007f0a28639039:   mov    0x8(%rsp),%rsi
          │ │   0x00007f0a2863903e:   nop
          │ │   0x00007f0a2863903f:   call   0x00007f0a28637520           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          │ │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ │                                                             ;   {optimized virtual_call}
   2.68%  │ │   0x00007f0a28639044:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
          │ │                                                             ;   {other}
          │ │   0x00007f0a2863904c:   mov    0x14(%rsp),%r10d
   8.82%  │ │   0x00007f0a28639051:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   1.32%  │ │   0x00007f0a28639054:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
          │ │   0x00007f0a28639056:   cmp    0x10(%rsp),%ebp
          │ ╰   0x00007f0a2863905a:   jl     0x00007f0a28639020
   0.02%  │     0x00007f0a2863905c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
   0.00%  │  ↗  0x00007f0a2863905f:   add    $0x30,%rsp
   0.01%  │  │  0x00007f0a28639063:   pop    %rbp
   0.01%  │  │  0x00007f0a28639064:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007f0a2863906b:   ja     0x00007f0a286390b4
   0.00%  │  │  0x00007f0a28639071:   ret    
          │  │  0x00007f0a28639072:   xor    %eax,%eax
          │  ╰  0x00007f0a28639074:   jmp    0x00007f0a2863905f
          ↘     0x00007f0a28639076:   mov    $0xffffff76,%esi
                0x00007f0a2863907b:   mov    %r10,%rbp
                0x00007f0a2863907e:   mov    %ebx,0x4(%rsp)
                0x00007f0a28639082:   mov    %r9d,0x8(%rsp)
                0x00007f0a28639087:   call   0x00007f0a280c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  21.13%  <total for region 2>

....[Hottest Regions]...............................................................................
  40.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 
  21.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 553 
   8.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 
   7.52%         c2, level 4  java.lang.String::equals, version 2, compile id 291 
   7.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 
   4.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 
   3.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 
   3.11%         c2, level 4  java.lang.String::equals, version 2, compile id 291 
   0.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 
   0.70%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   1.14%  <...other 312 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 548 
  21.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 553 
  10.63%         c2, level 4  java.lang.String::equals, version 2, compile id 291 
   1.91%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  fileStream::write 
   0.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 583 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  outputStream::print 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.16%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.76%         c2, level 4
   1.91%              kernel
   0.17%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-1958261.map
   0.00%          ld-2.31.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions
# Parameters: (branches = 24)

# Run progress: 58.33% complete, ETA 00:09:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.855 ns/op
# Warmup Iteration   2: 28.411 ns/op
# Warmup Iteration   3: 28.287 ns/op
# Warmup Iteration   4: 28.341 ns/op
# Warmup Iteration   5: 28.286 ns/op
Iteration   1: 28.324 ns/op
Iteration   2: 28.313 ns/op
Iteration   3: 28.331 ns/op
Iteration   4: 28.292 ns/op
Iteration   5: 28.370 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions":
  28.326 ±(99.9%) 0.110 ns/op [Average]
  (min, avg, max) = (28.292, 28.326, 28.370), stdev = 0.029
  CI (99.9%): [28.216, 28.436] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_expressions:asm":
PrintAssembly processed: 129509 total address lines.
Perf output processed (skipped 56.260 seconds):
 Column 1: cycles (50705 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 

                                                                                             ;   {other}
                                   0x00007f4ec4639850:   mov    $0xffffff45,%esi
                                   0x00007f4ec4639855:   mov    %eax,%ebp
                                   0x00007f4ec4639857:   call   0x00007f4ec40c9f00           ; ImmutableOopMap {}
                                                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@557 (line 214)
                                                                                             ;   {runtime_call UncommonTrapBlob}
                                   0x00007f4ec463985c:   nopl   0x42000f4c(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@557 (line 214)
                                                                                             ;   {other}
   0.74%                           0x00007f4ec4639864:   mov    $0x14,%r11d
   0.39%  ╭                        0x00007f4ec463986a:   jmp    0x00007f4ec4639958
   0.68%  │                        0x00007f4ec463986f:   mov    $0x15,%r11d
   0.42%  │╭                       0x00007f4ec4639875:   jmp    0x00007f4ec4639958
   0.55%  ││                       0x00007f4ec463987a:   mov    $0x16,%r11d
   0.38%  ││╭                      0x00007f4ec4639880:   jmp    0x00007f4ec4639958
   0.54%  │││                      0x00007f4ec4639885:   mov    $0x17,%r11d
   0.52%  │││╭                     0x00007f4ec463988b:   jmp    0x00007f4ec4639958
   0.42%  ││││                     0x00007f4ec4639890:   mov    $0x18,%r11d
   0.50%  ││││╭                    0x00007f4ec4639896:   jmp    0x00007f4ec4639958
   0.55%  │││││                    0x00007f4ec463989b:   mov    $0x11,%r11d
   0.46%  │││││╭                   0x00007f4ec46398a1:   jmp    0x00007f4ec4639958
   0.46%  ││││││                   0x00007f4ec46398a6:   mov    $0x12,%r11d
   0.54%  ││││││╭                  0x00007f4ec46398ac:   jmp    0x00007f4ec4639958
   0.44%  │││││││                  0x00007f4ec46398b1:   mov    $0x13,%r11d
   0.46%  │││││││╭                 0x00007f4ec46398b7:   jmp    0x00007f4ec4639958
   0.90%  ││││││││                 0x00007f4ec46398bc:   mov    $0x1,%r11d
   0.50%  ││││││││╭                0x00007f4ec46398c2:   jmp    0x00007f4ec4639958
   0.49%  │││││││││                0x00007f4ec46398c7:   mov    $0x2,%r11d
   0.47%  │││││││││╭               0x00007f4ec46398cd:   jmp    0x00007f4ec4639958
   0.59%  ││││││││││               0x00007f4ec46398d2:   mov    $0x3,%r11d
   0.48%  ││││││││││╭              0x00007f4ec46398d8:   jmp    0x00007f4ec4639958
   0.50%  │││││││││││              0x00007f4ec46398dd:   mov    $0x4,%r11d
   0.39%  │││││││││││╭             0x00007f4ec46398e3:   jmp    0x00007f4ec4639958
   0.74%  ││││││││││││             0x00007f4ec46398e8:   mov    $0x5,%r11d
   0.53%  ││││││││││││╭            0x00007f4ec46398ee:   jmp    0x00007f4ec4639958
   0.53%  │││││││││││││            0x00007f4ec46398f3:   mov    $0x6,%r11d
   0.49%  │││││││││││││╭           0x00007f4ec46398f9:   jmp    0x00007f4ec4639958
   0.78%  ││││││││││││││           0x00007f4ec46398fe:   mov    $0x7,%r11d
   0.46%  ││││││││││││││╭          0x00007f4ec4639904:   jmp    0x00007f4ec4639958
   0.75%  │││││││││││││││          0x00007f4ec4639909:   mov    $0x8,%r11d
   0.52%  │││││││││││││││╭         0x00007f4ec463990f:   jmp    0x00007f4ec4639958
   0.80%  ││││││││││││││││         0x00007f4ec4639914:   mov    $0x9,%r11d
   0.52%  ││││││││││││││││╭        0x00007f4ec463991a:   jmp    0x00007f4ec4639958
   0.74%  │││││││││││││││││        0x00007f4ec463991f:   mov    $0xa,%r11d
   0.43%  │││││││││││││││││╭       0x00007f4ec4639925:   jmp    0x00007f4ec4639958
   0.75%  ││││││││││││││││││       0x00007f4ec463992a:   mov    $0xb,%r11d
   0.49%  ││││││││││││││││││╭      0x00007f4ec4639930:   jmp    0x00007f4ec4639958
   0.78%  │││││││││││││││││││      0x00007f4ec4639932:   mov    $0xc,%r11d
   0.39%  │││││││││││││││││││╭     0x00007f4ec4639938:   jmp    0x00007f4ec4639958
   0.56%  ││││││││││││││││││││     0x00007f4ec463993a:   mov    $0xd,%r11d
   0.36%  ││││││││││││││││││││╭    0x00007f4ec4639940:   jmp    0x00007f4ec4639958
   0.69%  │││││││││││││││││││││    0x00007f4ec4639942:   mov    $0xe,%r11d
   0.50%  │││││││││││││││││││││╭   0x00007f4ec4639948:   jmp    0x00007f4ec4639958
   0.81%  ││││││││││││││││││││││   0x00007f4ec463994a:   mov    $0xf,%r11d
   0.55%  ││││││││││││││││││││││╭  0x00007f4ec4639950:   jmp    0x00007f4ec4639958
   0.83%  │││││││││││││││││││││││  0x00007f4ec4639952:   mov    $0x10,%r11d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@783 (line 237)
   1.24%  ↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘  0x00007f4ec4639958:   mov    %r11d,%eax
   0.01%                           0x00007f4ec463995b:   add    $0x20,%rsp                   ;   {no_reloc}
   2.45%                           0x00007f4ec463995f:   pop    %rbp
   6.60%                           0x00007f4ec4639960:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                   0x00007f4ec4639967:   ja     0x00007f4ec4639a43
                                   0x00007f4ec463996d:   ret    
                                   0x00007f4ec463996e:   mov    $0xfffffff6,%esi
                                   0x00007f4ec4639973:   call   0x00007f4ec40c9f00           ; ImmutableOopMap {}
                                                                                             ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@5 (line 214)
                                                                                             ;   {runtime_call UncommonTrapBlob}
                                   0x00007f4ec4639978:   nopl   0x43001068(%rax,%rax,1)      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions@554 (line 214)
                                                                                             ;   {other}
....................................................................................................
  36.66%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 580 

               0x00007f4ec463b6fd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@3 (line 115)
               0x00007f4ec463b701:   xor    %ebp,%ebp
               0x00007f4ec463b703:   xor    %r11d,%r11d
               0x00007f4ec463b706:   mov    %rsi,0x8(%rsp)
               0x00007f4ec463b70b:   mov    %ebx,0x10(%rsp)
               0x00007f4ec463b70f:   mov    %r11d,0x14(%rsp)
          ╭    0x00007f4ec463b714:   jmp    0x00007f4ec463b729
          │    0x00007f4ec463b716:   data16 nopw 0x0(%rax,%rax,1)
          │↗   0x00007f4ec463b720:   mov    (%rsp),%r8
   0.09%  ││   0x00007f4ec463b724:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@19 (line 115)
   5.63%  ↘│   0x00007f4ec463b729:   mov    0x10(%r8,%rbp,4),%r11d
   1.23%   │   0x00007f4ec463b72e:   mov    %r8,(%rsp)
           │   0x00007f4ec463b732:   mov    %r11,%rdx
           │   0x00007f4ec463b735:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@22 (line 115)
   1.26%   │   0x00007f4ec463b739:   mov    0x8(%rsp),%rsi
   0.00%   │   0x00007f4ec463b73e:   nop
           │   0x00007f4ec463b73f:   call   0x00007f4ec4638d80           ; ImmutableOopMap {[0]=Oop [8]=Oop }
           │                                                             ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │                                                             ;   {optimized virtual_call}
   2.69%   │   0x00007f4ec463b744:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchExpressions {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@29 (line 116)
           │                                                             ;   {other}
           │   0x00007f4ec463b74c:   mov    0x14(%rsp),%r10d
  10.73%   │   0x00007f4ec463b751:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@32 (line 116)
   1.27%   │   0x00007f4ec463b754:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@34 (line 115)
           │   0x00007f4ec463b756:   cmp    0x10(%rsp),%ebp
           ╰   0x00007f4ec463b75a:   jl     0x00007f4ec463b720
   0.02%       0x00007f4ec463b75c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
            ↗  0x00007f4ec463b75f:   add    $0x30,%rsp
   0.01%    │  0x00007f4ec463b763:   pop    %rbp
   0.01%    │  0x00007f4ec463b764:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f4ec463b76b:   ja     0x00007f4ec463b7b4
   0.00%    │  0x00007f4ec463b771:   ret    
            │  0x00007f4ec463b772:   xor    %eax,%eax
            ╰  0x00007f4ec463b774:   jmp    0x00007f4ec463b75f
               0x00007f4ec463b776:   mov    $0xffffff76,%esi
               0x00007f4ec463b77b:   mov    %r10,%rbp
               0x00007f4ec463b77e:   mov    %ebx,0x4(%rsp)
               0x00007f4ec463b782:   mov    %r9d,0x8(%rsp)
               0x00007f4ec463b787:   call   0x00007f4ec40c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions@16 (line 115)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  22.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  36.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
  22.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 580 
   7.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   7.17%         c2, level 4  java.lang.String::equals, version 2, compile id 306 
   5.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   3.26%         c2, level 4  java.lang.String::equals, version 2, compile id 306 
   2.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   2.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   2.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   1.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   1.01%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   0.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   0.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   0.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   0.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   0.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
   0.62%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.17%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchExpressions, version 2, compile id 575 
  22.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_expressions, version 4, compile id 580 
  10.43%         c2, level 4  java.lang.String::equals, version 2, compile id 306 
   1.68%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_expressions_jmhTest::switch_expressions_avgt_jmhStub, version 5, compile id 611 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  invokestatic  184 invokestatic  
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.12%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.04%         c2, level 4
   1.68%              kernel
   0.10%        libc-2.31.so
   0.09%           libjvm.so
   0.03%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 3)

# Run progress: 66.67% complete, ETA 00:07:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.254 ns/op
# Warmup Iteration   2: 10.221 ns/op
# Warmup Iteration   3: 10.043 ns/op
# Warmup Iteration   4: 10.103 ns/op
# Warmup Iteration   5: 10.027 ns/op
Iteration   1: 9.975 ns/op
Iteration   2: 9.948 ns/op
Iteration   3: 10.095 ns/op
Iteration   4: 9.917 ns/op
Iteration   5: 9.987 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  9.984 ±(99.9%) 0.259 ns/op [Average]
  (min, avg, max) = (9.917, 9.984, 10.095), stdev = 0.067
  CI (99.9%): [9.725, 10.243] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 125658 total address lines.
Perf output processed (skipped 56.078 seconds):
 Column 1: cycles (50657 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 563 

               0x00007f72106392f7:   jae    0x00007f7210639376
   0.00%       0x00007f72106392fd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
               0x00007f7210639301:   xor    %ebp,%ebp
               0x00007f7210639303:   xor    %r11d,%r11d
               0x00007f7210639306:   mov    %rsi,0x8(%rsp)
               0x00007f721063930b:   mov    %ebx,0x10(%rsp)
               0x00007f721063930f:   mov    %r11d,0x14(%rsp)
          ╭    0x00007f7210639314:   jmp    0x00007f7210639329
          │    0x00007f7210639316:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  │↗   0x00007f7210639320:   mov    (%rsp),%r8
   0.74%  ││   0x00007f7210639324:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
  10.30%  ↘│   0x00007f7210639329:   mov    0x10(%r8,%rbp,4),%r11d
   6.50%   │   0x00007f721063932e:   mov    %r8,(%rsp)
   0.00%   │   0x00007f7210639332:   mov    %r11,%rdx
   0.07%   │   0x00007f7210639335:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   3.69%   │   0x00007f7210639339:   mov    0x8(%rsp),%rsi
   0.00%   │   0x00007f721063933e:   nop
   0.00%   │   0x00007f721063933f:   call   0x00007f7210637e80           ; ImmutableOopMap {[0]=Oop [8]=Oop }
           │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │                                                             ;   {optimized virtual_call}
   9.37%   │   0x00007f7210639344:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │                                                             ;   {other}
   0.01%   │   0x00007f721063934c:   mov    0x14(%rsp),%r10d
   5.74%   │   0x00007f7210639351:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   3.38%   │   0x00007f7210639354:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
   0.00%   │   0x00007f7210639356:   cmp    0x10(%rsp),%ebp
           ╰   0x00007f721063935a:   jl     0x00007f7210639320
   0.05%       0x00007f721063935c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.01%    ↗  0x00007f721063935f:   add    $0x30,%rsp
   0.04%    │  0x00007f7210639363:   pop    %rbp
   0.02%    │  0x00007f7210639364:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f721063936b:   ja     0x00007f72106393b4
   0.00%    │  0x00007f7210639371:   ret    
            │  0x00007f7210639372:   xor    %eax,%eax
            ╰  0x00007f7210639374:   jmp    0x00007f721063935f
               0x00007f7210639376:   mov    $0xffffff76,%esi
               0x00007f721063937b:   mov    %r10,%rbp
               0x00007f721063937e:   mov    %ebx,0x4(%rsp)
               0x00007f7210639382:   mov    %r9d,0x8(%rsp)
               0x00007f7210639387:   call   0x00007f72100c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  39.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 

            # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
            #           [sp+0x30]  (sp of caller)
            0x00007f7210637e60:   mov    0x8(%rsi),%r10d
            0x00007f7210637e64:   movabs $0x7f7193000000,%r11
            0x00007f7210637e6e:   add    %r11,%r10
            0x00007f7210637e71:   cmp    %r10,%rax
            0x00007f7210637e74:   jne    0x00007f72100c4080           ;   {runtime_call ic_miss_stub}
            0x00007f7210637e7a:   xchg   %ax,%ax
            0x00007f7210637e7c:   nopl   0x0(%rax)
          [Verified Entry Point]
   3.80%    0x00007f7210637e80:   mov    %eax,-0x14000(%rsp)
   1.59%    0x00007f7210637e87:   push   %rbp
   0.57%    0x00007f7210637e88:   sub    $0x20,%rsp
   2.60%    0x00007f7210637e8c:   cmpl   $0x1,0x20(%r15)
   0.77%    0x00007f7210637e94:   jne    0x00007f721063840a           ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@-1 (line 133)
   1.99%    0x00007f7210637e9a:   mov    %rdx,(%rsp)
   0.94%    0x00007f7210637e9e:   xchg   %ax,%ax
   0.00%    0x00007f7210637ea0:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f72106383dc
                                                                      ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@1 (line 2363)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
  14.89%    0x00007f7210637ea3:   mov    0x14(%rdx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@24 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   0.07%    0x00007f7210637ea7:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@7 (line 4817)
                                                                      ; - java.lang.String::hashCode@17 (line 2365)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   2.50%    0x00007f7210637eab:   test   %eax,%eax
            0x00007f7210637ead:   je     0x00007f7210638130           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   1.69%    0x00007f7210637eb3:   cmp    $0x462300d,%eax
            0x00007f7210637eb8:   je     0x00007f721063818b           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
   2.31%    0x00007f7210637ebe:   xchg   %ax,%ax
            0x00007f7210637ec0:   cmp    $0x9ef434af,%eax
            0x00007f7210637ec5:   jne    0x00007f7210637fe5           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   1.32%    0x00007f7210637ecb:   movabs $0x7ff0351c8,%r10            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff0351c8})}
   0.10%    0x00007f7210637ed5:   mov    (%rsp),%r8
   0.00%    0x00007f7210637ed9:   cmp    %r10,%r8
            0x00007f7210637edc:   nopl   0x0(%rax)
   1.14%    0x00007f7210637ee0:   je     0x00007f7210637fd7           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@2 (line 1858)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
            0x00007f7210637ee6:   test   %ebp,%ebp
            0x00007f7210637ee8:   jne    0x00007f72106383b4           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@33 (line 1861)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
            0x00007f7210637eee:   mov    0xc(%r12,%r11,8),%r10d
            0x00007f7210637ef3:   cmp    $0x10,%r10d
            0x00007f7210637ef7:   jne    0x00007f7210638348           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
....................................................................................................
  36.29%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 

             0x00007f721063827e:   mov    $0x1,%eax
          ╭  0x00007f7210638283:   jmp    0x00007f7210638287
          │  0x00007f7210638285:   xor    %eax,%eax
          ↘  0x00007f7210638287:   vpxor  %ymm1,%ymm1,%ymm1
             0x00007f721063828b:   vpxor  %ymm0,%ymm0,%ymm0            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@44 (line 1863)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
             0x00007f721063828f:   test   %eax,%eax
             0x00007f7210638291:   je     0x00007f7210638315           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
   1.17%     0x00007f7210638297:   mov    $0x1,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@707 (line 141)
   2.38%     0x00007f721063829c:   vzeroupper 
   3.85%     0x00007f721063829f:   add    $0x20,%rsp
   0.00%     0x00007f72106382a3:   pop    %rbp
   0.13%     0x00007f72106382a4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007f72106382ab:   ja     0x00007f72106383f4
   3.68%     0x00007f72106382b1:   ret    
             0x00007f72106382b2:   xor    %eax,%eax
             0x00007f72106382b4:   jmp    0x00007f7210637ebe           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
             0x00007f72106382b9:   mov    $0xffffff45,%esi
             0x00007f72106382be:   mov    (%rsp),%rbp
             0x00007f72106382c2:   mov    %eax,(%rsp)
             0x00007f72106382c5:   data16 xchg %ax,%ax
             0x00007f72106382c8:   vzeroupper 
             0x00007f72106382cb:   call   0x00007f72100c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                       ;*lookupswitch {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  11.20%  <total for region 3>

....[Hottest Regions]...............................................................................
  39.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 563 
  36.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 
  11.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 
   3.91%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 
   3.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 
   2.60%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 
   0.65%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 594 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 563 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.06%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  57.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 558 
  39.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 563 
   1.92%              kernel  [unknown] 
   0.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 594 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _dl_addr 
   0.10%  <...other 50 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.81%         c2, level 4
   1.92%              kernel
   0.12%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 6)

# Run progress: 75.00% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 17.440 ns/op
# Warmup Iteration   2: 17.197 ns/op
# Warmup Iteration   3: 17.325 ns/op
# Warmup Iteration   4: 17.181 ns/op
# Warmup Iteration   5: 17.201 ns/op
Iteration   1: 17.093 ns/op
Iteration   2: 17.162 ns/op
Iteration   3: 17.187 ns/op
Iteration   4: 17.096 ns/op
Iteration   5: 17.162 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  17.140 ±(99.9%) 0.165 ns/op [Average]
  (min, avg, max) = (17.093, 17.140, 17.187), stdev = 0.043
  CI (99.9%): [16.975, 17.305] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 128938 total address lines.
Perf output processed (skipped 56.123 seconds):
 Column 1: cycles (50496 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 555 

                 #           [sp+0x40]  (sp of caller)
                 0x00007f484c639ea0:   mov    0x8(%rsi),%r10d
                 0x00007f484c639ea4:   movabs $0x7f47d3000000,%r11
                 0x00007f484c639eae:   add    %r11,%r10
                 0x00007f484c639eb1:   cmp    %r10,%rax
                 0x00007f484c639eb4:   jne    0x00007f484c0c4080           ;   {runtime_call ic_miss_stub}
                 0x00007f484c639eba:   xchg   %ax,%ax
                 0x00007f484c639ebc:   nopl   0x0(%rax)
               [Verified Entry Point]
                 0x00007f484c639ec0:   mov    %eax,-0x14000(%rsp)
   0.01%         0x00007f484c639ec7:   push   %rbp
                 0x00007f484c639ec8:   sub    $0x30,%rsp
                 0x00007f484c639ecc:   cmpl   $0x1,0x20(%r15)
   0.00%         0x00007f484c639ed4:   jne    0x00007f484c639fca           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@-1 (line 103)
                 0x00007f484c639eda:   mov    %rsi,%r10
                 0x00007f484c639edd:   mov    0x18(%rsi),%r9d              ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
                 0x00007f484c639ee1:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f484c639fa1
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@8 (line 104)
   0.00%         0x00007f484c639ee6:   test   %ebx,%ebx
          ╭      0x00007f484c639ee8:   jbe    0x00007f484c639f72           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.00%  │      0x00007f484c639eee:   mov    %ebx,%r11d
          │      0x00007f484c639ef1:   dec    %r11d
          │      0x00007f484c639ef4:   cmp    %ebx,%r11d
          │╭     0x00007f484c639ef7:   jae    0x00007f484c639f76
   0.00%  ││     0x00007f484c639efd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
          ││     0x00007f484c639f01:   xor    %ebp,%ebp
          ││     0x00007f484c639f03:   xor    %r11d,%r11d
          ││     0x00007f484c639f06:   mov    %rsi,0x8(%rsp)
   0.00%  ││     0x00007f484c639f0b:   mov    %ebx,0x10(%rsp)
          ││     0x00007f484c639f0f:   mov    %r11d,0x14(%rsp)
          ││╭    0x00007f484c639f14:   jmp    0x00007f484c639f29
          │││    0x00007f484c639f16:   data16 nopw 0x0(%rax,%rax,1)
   0.00%  │││↗   0x00007f484c639f20:   mov    (%rsp),%r8
   0.23%  ││││   0x00007f484c639f24:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
   7.20%  ││↘│   0x00007f484c639f29:   mov    0x10(%r8,%rbp,4),%r11d
   4.31%  ││ │   0x00007f484c639f2e:   mov    %r8,(%rsp)
   0.03%  ││ │   0x00007f484c639f32:   mov    %r11,%rdx
          ││ │   0x00007f484c639f35:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   2.26%  ││ │   0x00007f484c639f39:   mov    0x8(%rsp),%rsi
   0.00%  ││ │   0x00007f484c639f3e:   nop
   0.02%  ││ │   0x00007f484c639f3f:   call   0x00007f484c638b40           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          ││ │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {optimized virtual_call}
   3.17%  ││ │   0x00007f484c639f44:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          ││ │                                                             ;   {other}
          ││ │   0x00007f484c639f4c:   mov    0x14(%rsp),%r10d
  15.25%  ││ │   0x00007f484c639f51:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   2.11%  ││ │   0x00007f484c639f54:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
          ││ │   0x00007f484c639f56:   cmp    0x10(%rsp),%ebp
          ││ ╰   0x00007f484c639f5a:   jl     0x00007f484c639f20
   0.03%  ││     0x00007f484c639f5c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
   0.00%  ││  ↗  0x00007f484c639f5f:   add    $0x30,%rsp
   0.01%  ││  │  0x00007f484c639f63:   pop    %rbp
   0.02%  ││  │  0x00007f484c639f64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  │  0x00007f484c639f6b:   ja     0x00007f484c639fb4
   0.00%  ││  │  0x00007f484c639f71:   ret    
          ↘│  │  0x00007f484c639f72:   xor    %eax,%eax
           │  ╰  0x00007f484c639f74:   jmp    0x00007f484c639f5f
           ↘     0x00007f484c639f76:   mov    $0xffffff76,%esi
                 0x00007f484c639f7b:   mov    %r10,%rbp
                 0x00007f484c639f7e:   mov    %ebx,0x4(%rsp)
                 0x00007f484c639f82:   mov    %r9d,0x8(%rsp)
                 0x00007f484c639f87:   call   0x00007f484c0c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                           ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                           ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  34.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 550 

                                                                                         ; - java.lang.String::hashCode@27 (line 2365)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                                         ;   {other}
                               0x00007f484c638ba4:   test   %eax,%eax
                               0x00007f484c638ba6:   je     0x00007f484c638e50           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - java.lang.String::hashCode@42 (line 2367)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                               0x00007f484c638bac:   mov    %eax,0xc(%rbp)               ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - java.lang.String::hashCode@58 (line 2373)
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   2.27%                       0x00007f484c638baf:   cmp    $0x462300d,%eax
          ╭                    0x00007f484c638bb4:   je     0x00007f484c638d89
   3.25%  │                    0x00007f484c638bba:   nopw   0x0(%rax,%rax,1)
          │                    0x00007f484c638bc0:   cmp    $0x462300d,%eax
          │╭                   0x00007f484c638bc5:   jge    0x00007f484c638c85
   0.75%  ││                   0x00007f484c638bcb:   cmp    $0x103b4,%eax
          ││╭                  0x00007f484c638bd0:   jne    0x00007f484c638c05           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.10%  │││                  0x00007f484c638bd2:   movabs $0x7ff135238,%rdx            ;   {oop(&quot;CAR&quot;{0x00000007ff135238})}
   0.25%  │││                  0x00007f484c638bdc:   mov    (%rsp),%rsi
   0.01%  │││                  0x00007f484c638be0:   data16 xchg %ax,%ax
   0.02%  │││                  0x00007f484c638be3:   call   0x00007f484c6217c0           ; ImmutableOopMap {}
          │││                                                                            ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
          │││                                                                            ;   {optimized virtual_call}
   1.83%  │││                  0x00007f484c638be8:   nopl   0x10002d8(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
          │││                                                                            ;   {other}
          │││                  0x00007f484c638bf0:   test   %eax,%eax
          │││                  0x00007f484c638bf2:   je     0x00007f484c638ed4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
          │││                  0x00007f484c638bf8:   mov    $0x4,%r10d
          │││                  0x00007f484c638bfe:   xchg   %ax,%ax
   0.42%  │││╭                 0x00007f484c638c00:   jmp    0x00007f484c638d02
   0.01%  ││↘│                 0x00007f484c638c05:   cmp    $0x103b4,%eax
          ││ │╭                0x00007f484c638c0a:   jge    0x00007f484c638c47
   0.37%  ││ ││                0x00007f484c638c0c:   cmp    $0x9ef434af,%eax
          ││ ││                0x00007f484c638c11:   jne    0x00007f484c638e90           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.36%  ││ ││                0x00007f484c638c17:   movabs $0x7ff1351c8,%rdx            ;   {oop(&quot;ELECTRIC_SCOOTER&quot;{0x00000007ff1351c8})}
   0.02%  ││ ││                0x00007f484c638c21:   mov    (%rsp),%rsi
          ││ ││                0x00007f484c638c25:   xchg   %ax,%ax
   0.00%  ││ ││                0x00007f484c638c27:   call   0x00007f484c6217c0           ; ImmutableOopMap {}
          ││ ││                                                                          ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          ││ ││                                                                          ;   {optimized virtual_call}
   0.09%  ││ ││                0x00007f484c638c2c:   nopl   0x200031c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@245 (line 135)
          ││ ││                                                                          ;   {other}
          ││ ││                0x00007f484c638c34:   test   %eax,%eax
          ││ ││                0x00007f484c638c36:   je     0x00007f484c638ee8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ ││                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@248 (line 135)
          ││ ││                0x00007f484c638c3c:   mov    $0x2,%r10d
   0.34%  ││ ││╭               0x00007f484c638c42:   jmp    0x00007f484c638d02
   0.34%  ││ │↘│               0x00007f484c638c47:   cmp    $0x14234,%eax
          ││ │ │               0x00007f484c638c4c:   jne    0x00007f484c638e08           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.23%  ││ │ │               0x00007f484c638c52:   movabs $0x7ff135268,%rdx            ;   {oop(&quot;SUV&quot;{0x00000007ff135268})}
          ││ │ │               0x00007f484c638c5c:   mov    (%rsp),%rsi
          ││ │ │               0x00007f484c638c60:   data16 xchg %ax,%ax
   0.15%  ││ │ │               0x00007f484c638c63:   call   0x00007f484c6217c0           ; ImmutableOopMap {}
          ││ │ │                                                                         ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
          ││ │ │                                                                         ;   {optimized virtual_call}
   1.78%  ││ │ │               0x00007f484c638c68:   nopl   0x3000358(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@290 (line 135)
          ││ │ │                                                                         ;   {other}
          ││ │ │               0x00007f484c638c70:   test   %eax,%eax
          ││ │ │               0x00007f484c638c72:   je     0x00007f484c638eac           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@293 (line 135)
          ││ │ │               0x00007f484c638c78:   mov    $0x5,%r10d
          ││ │ │               0x00007f484c638c7e:   xchg   %ax,%ax
   0.39%  ││ │ │╭              0x00007f484c638c80:   jmp    0x00007f484c638d02
   0.51%  │↘ │ ││              0x00007f484c638c85:   cmp    $0x23c6acdf,%eax
          │  │ ││╭             0x00007f484c638c8a:   je     0x00007f484c638cd8
   0.04%  │  │ │││             0x00007f484c638c90:   cmp    $0x23c6acdf,%eax
          │  │ │││             0x00007f484c638c95:   jl     0x00007f484c638dd0
   0.37%  │  │ │││             0x00007f484c638c9b:   nopl   0x0(%rax,%rax,1)
          │  │ │││             0x00007f484c638ca0:   cmp    $0x33eb4d91,%eax
          │  │ │││             0x00007f484c638ca5:   jne    0x00007f484c638dec           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.34%  │  │ │││             0x00007f484c638cab:   movabs $0x7ff135200,%rdx            ;   {oop(&quot;MOTORCYCLE&quot;{0x00000007ff135200})}
   0.01%  │  │ │││             0x00007f484c638cb5:   mov    (%rsp),%rsi
   0.03%  │  │ │││             0x00007f484c638cb9:   xchg   %ax,%ax
          │  │ │││             0x00007f484c638cbb:   call   0x00007f484c6217c0           ; ImmutableOopMap {}
          │  │ │││                                                                       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
          │  │ │││                                                                       ;   {optimized virtual_call}
   1.93%  │  │ │││             0x00007f484c638cc0:   nopl   0x40003b0(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@260 (line 135)
          │  │ │││                                                                       ;   {other}
          │  │ │││             0x00007f484c638cc8:   test   %eax,%eax
          │  │ │││             0x00007f484c638cca:   je     0x00007f484c638e7c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ │││                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@263 (line 135)
          │  │ │││             0x00007f484c638cd0:   mov    $0x3,%r10d
   0.00%  │  │ │││╭            0x00007f484c638cd6:   jmp    0x00007f484c638d02           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.41%  │  │ ││↘│            0x00007f484c638cd8:   movabs $0x7ff135198,%rdx            ;   {oop(&quot;BICYCLE&quot;{0x00000007ff135198})}
          │  │ ││ │            0x00007f484c638ce2:   mov    (%rsp),%rsi
          │  │ ││ │            0x00007f484c638ce6:   nop
          │  │ ││ │            0x00007f484c638ce7:   call   0x00007f484c6217c0           ; ImmutableOopMap {}
          │  │ ││ │                                                                      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          │  │ ││ │                                                                      ;   {optimized virtual_call}
   1.97%  │  │ ││ │            0x00007f484c638cec:   nopl   0x50003dc(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@230 (line 135)
          │  │ ││ │                                                                      ;   {other}
          │  │ ││ │            0x00007f484c638cf4:   test   %eax,%eax
          │  │ ││ │            0x00007f484c638cf6:   je     0x00007f484c638e68           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@233 (line 135)
          │  │ ││ │            0x00007f484c638cfc:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││ │                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@239 (line 135)
   0.73%  │  ↘ ↘↘ ↘            0x00007f484c638d02:   cmp    $0x2,%r10d
          │        ╭           0x00007f484c638d06:   je     0x00007f484c638d82
   0.35%  │        │           0x00007f484c638d0c:   cmp    $0x2,%r10d
          │        │╭          0x00007f484c638d10:   jge    0x00007f484c638d3a
          │        ││          0x00007f484c638d12:   cmp    $0x1,%r10d
          │        ││╭         0x00007f484c638d16:   je     0x00007f484c638d30
          │        │││         0x00007f484c638d18:   test   %r10d,%r10d
   0.36%  │        │││         0x00007f484c638d1b:   nopl   0x0(%rax,%rax,1)
          │        │││         0x00007f484c638d20:   jne    0x00007f484c638e24
          │        │││         0x00007f484c638d26:   mov    $0x1,%eax
          │        │││╭        0x00007f484c638d2b:   jmp    0x00007f484c638d6f
          │        ││↘│        0x00007f484c638d30:   mov    $0x2,%eax
          │        ││ │╭       0x00007f484c638d35:   jmp    0x00007f484c638d6f
   1.10%  │        │↘ ││       0x00007f484c638d3a:   nopw   0x0(%rax,%rax,1)
          │        │  ││       0x00007f484c638d40:   cmp    $0x4,%r10d
          │        │  ││╭      0x00007f484c638d44:   jne    0x00007f484c638d4d
          │        │  │││      0x00007f484c638d46:   mov    $0x5,%eax
          │        │  │││╭     0x00007f484c638d4b:   jmp    0x00007f484c638d6f
   0.74%  │        │  ││↘│     0x00007f484c638d4d:   cmp    $0x4,%r10d
          │        │  ││ │╭    0x00007f484c638d51:   jge    0x00007f484c638d5a
          │        │  ││ ││    0x00007f484c638d53:   mov    $0x4,%eax
          │        │  ││ ││╭   0x00007f484c638d58:   jmp    0x00007f484c638d6f
   0.36%  │        │  ││ │↘│   0x00007f484c638d5a:   nopw   0x0(%rax,%rax,1)
          │        │  ││ │ │   0x00007f484c638d60:   cmp    $0x5,%r10d
          │        │  ││ │ │   0x00007f484c638d64:   jne    0x00007f484c638dbb           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
          │        │  ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@589 (line 135)
          │        │  ││ │ │   0x00007f484c638d6a:   mov    $0x6,%eax                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │        │  ││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@722 (line 150)
   3.09%  │        │  ↘↘ ↘ ↘↗  0x00007f484c638d6f:   add    $0x20,%rsp
   0.51%  │        │        │  0x00007f484c638d73:   pop    %rbp
   2.45%  │        │        │  0x00007f484c638d74:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │        │        │  0x00007f484c638d7b:   ja     0x00007f484c638f3e
   1.52%  │        │        │  0x00007f484c638d81:   ret    
   0.36%  │        ↘        │  0x00007f484c638d82:   mov    $0x3,%eax
          │                 ╰  0x00007f484c638d87:   jmp    0x00007f484c638d6f           ;*lookupswitch {reexecute=0 rethrow=0 return_oop=0}
          │                                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@11 (line 135)
   0.38%  ↘                    0x00007f484c638d89:   movabs $0x7ff135168,%rdx            ;   {oop(&quot;MOPED&quot;{0x00000007ff135168})}
                               0x00007f484c638d93:   mov    (%rsp),%rsi
   0.02%                       0x00007f484c638d97:   call   0x00007f484c6217c0           ; ImmutableOopMap {}
                                                                                         ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                                                                                         ;   {optimized virtual_call}
   2.69%                       0x00007f484c638d9c:   nopl   0x600048c(%rax,%rax,1)       ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@215 (line 135)
                                                                                         ;   {other}
                               0x00007f484c638da4:   test   %eax,%eax
                               0x00007f484c638da6:   je     0x00007f484c638ec0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@218 (line 135)
                               0x00007f484c638dac:   xor    %r10d,%r10d
                               0x00007f484c638daf:   jmp    0x00007f484c638d02
....................................................................................................
  33.24%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 550 

            # parm0:    rdx:rdx   = &apos;java/lang/String&apos;
            #           [sp+0x30]  (sp of caller)
            0x00007f484c638b20:   mov    0x8(%rsi),%r10d
            0x00007f484c638b24:   movabs $0x7f47d3000000,%r11
            0x00007f484c638b2e:   add    %r11,%r10
            0x00007f484c638b31:   cmp    %r10,%rax
            0x00007f484c638b34:   jne    0x00007f484c0c4080           ;   {runtime_call ic_miss_stub}
            0x00007f484c638b3a:   xchg   %ax,%ax
            0x00007f484c638b3c:   nopl   0x0(%rax)
          [Verified Entry Point]
   2.19%    0x00007f484c638b40:   mov    %eax,-0x14000(%rsp)
   0.53%    0x00007f484c638b47:   push   %rbp
   1.27%    0x00007f484c638b48:   sub    $0x20,%rsp
   1.20%    0x00007f484c638b4c:   cmpl   $0x1,0x20(%r15)
   0.31%    0x00007f484c638b54:   jne    0x00007f484c638f54           ;*synchronization entry
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@-1 (line 133)
   0.77%    0x00007f484c638b5a:   mov    %rdx,(%rsp)
   1.11%    0x00007f484c638b5e:   xchg   %ax,%ax
            0x00007f484c638b60:   mov    0xc(%rdx),%eax               ; implicit exception: dispatches to 0x00007f484c638efc
                                                                      ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@1 (line 2363)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
   6.08%    0x00007f484c638b63:   test   %eax,%eax
            0x00007f484c638b65:   jne    0x00007f484c638baf           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@6 (line 2364)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
            0x00007f484c638b67:   movzbl 0x11(%rdx),%r11d
            0x00007f484c638b6c:   test   %r11d,%r11d
            0x00007f484c638b6f:   jne    0x00007f484c638db4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::hashCode@13 (line 2364)
....................................................................................................
  13.45%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, java.lang.String::equals, version 2, compile id 296 

             # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007f484c6217a0:   mov    0x8(%rsi),%r10d
             0x00007f484c6217a4:   movabs $0x7f47d3000000,%r11
             0x00007f484c6217ae:   add    %r11,%r10
             0x00007f484c6217b1:   cmp    %r10,%rax
             0x00007f484c6217b4:   jne    0x00007f484c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f484c6217ba:   xchg   %ax,%ax
             0x00007f484c6217bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.96%     0x00007f484c6217c0:   mov    %eax,-0x14000(%rsp)
   5.84%     0x00007f484c6217c7:   push   %rbp
   0.53%     0x00007f484c6217c8:   sub    $0x20,%rsp
   0.06%     0x00007f484c6217cc:   cmpl   $0x1,0x20(%r15)
   1.68%     0x00007f484c6217d4:   jne    0x00007f484c621986           ;*synchronization entry
                                                                       ; - java.lang.String::equals@-1 (line 1858)
   0.43%     0x00007f484c6217da:   nopw   0x0(%rax,%rax,1)
   0.03%     0x00007f484c6217e0:   cmp    %rdx,%rsi
          ╭  0x00007f484c6217e3:   jne    0x00007f484c6217ef           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::equals@2 (line 1858)
   0.00%  │  0x00007f484c6217e5:   mov    $0x1,%eax
   1.75%  │  0x00007f484c6217ea:   jmp    0x00007f484c621902
          ↘  0x00007f484c6217ef:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f484c621958
             0x00007f484c6217f3:   nopw   0x0(%rax,%rax,1)
             0x00007f484c6217fc:   data16 data16 xchg %ax,%ax
             0x00007f484c621800:   cmp    $0xe8d8,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
             0x00007f484c621807:   jne    0x00007f484c621938           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@8 (line 1863)
             0x00007f484c62180d:   movsbl 0x10(%rsi),%r10d             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@26 (line 1861)
             0x00007f484c621812:   movsbl 0x10(%rdx),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::equals@30 (line 1861)
....................................................................................................
  12.27%  <total for region 4>

....[Hottest Regions]...............................................................................
  34.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 555 
  33.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 550 
  13.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 550 
  12.27%         c2, level 4  java.lang.String::equals, version 2, compile id 296 
   4.76%         c2, level 4  java.lang.String::equals, version 2, compile id 296 
   0.18%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 585 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.83%  <...other 246 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  46.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 550 
  34.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 555 
  17.04%         c2, level 4  java.lang.String::equals, version 2, compile id 296 
   1.26%              kernel  [unknown] 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 585 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%                      <unknown> 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%           libjvm.so  decode_env::print_hook_comments 
   0.13%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.44%         c2, level 4
   1.26%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-1958452.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 12)

# Run progress: 83.33% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.276 ns/op
# Warmup Iteration   2: 27.689 ns/op
# Warmup Iteration   3: 27.646 ns/op
# Warmup Iteration   4: 27.606 ns/op
# Warmup Iteration   5: 27.476 ns/op
Iteration   1: 27.557 ns/op
Iteration   2: 27.635 ns/op
Iteration   3: 27.646 ns/op
Iteration   4: 27.600 ns/op
Iteration   5: 27.605 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  27.609 ±(99.9%) 0.135 ns/op [Average]
  (min, avg, max) = (27.557, 27.609, 27.646), stdev = 0.035
  CI (99.9%): [27.474, 27.743] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 132254 total address lines.
Perf output processed (skipped 56.338 seconds):
 Column 1: cycles (50939 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 

                                                                                 ;   {other}
                       0x00007f5068638fe0:   mov    $0xffffff45,%esi
                       0x00007f5068638fe5:   mov    %eax,%ebp
                       0x00007f5068638fe7:   call   0x00007f50680c9f00           ; ImmutableOopMap {}
                                                                                 ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
                                                                                 ;   {runtime_call UncommonTrapBlob}
                       0x00007f5068638fec:   nopl   0x220008dc(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@278 (line 135)
                                                                                 ;   {other}
   1.13%               0x00007f5068638ff4:   mov    $0x7,%r10d
   1.15%  ╭            0x00007f5068638ffa:   jmp    0x00007f5068639069
   1.44%  │            0x00007f5068638fff:   mov    $0x6,%r10d
   1.13%  │╭           0x00007f5068639005:   jmp    0x00007f5068639069
   1.30%  ││           0x00007f506863900a:   mov    $0x5,%r10d
   1.15%  ││╭          0x00007f5068639010:   jmp    0x00007f5068639069
   1.17%  │││          0x00007f5068639015:   mov    $0xc,%r10d
   0.67%  │││          0x00007f506863901b:   nopl   0x0(%rax,%rax,1)
          │││╭         0x00007f5068639020:   jmp    0x00007f5068639069
   1.22%  ││││         0x00007f5068639025:   mov    $0xb,%r10d
   1.06%  ││││╭        0x00007f506863902b:   jmp    0x00007f5068639069
   1.43%  │││││        0x00007f5068639030:   mov    $0xa,%r10d
   1.21%  │││││╭       0x00007f5068639036:   jmp    0x00007f5068639069
   1.36%  ││││││       0x00007f506863903b:   mov    $0x9,%r10d
   1.21%  ││││││╭      0x00007f5068639041:   jmp    0x00007f5068639069
   1.49%  │││││││      0x00007f5068639043:   mov    $0x8,%r10d
   1.23%  │││││││╭     0x00007f5068639049:   jmp    0x00007f5068639069
   1.43%  ││││││││     0x00007f506863904b:   mov    $0x4,%r10d
   1.08%  ││││││││╭    0x00007f5068639051:   jmp    0x00007f5068639069
   1.32%  │││││││││    0x00007f5068639053:   mov    $0x3,%r10d
   1.21%  │││││││││╭   0x00007f5068639059:   jmp    0x00007f5068639069
   1.60%  ││││││││││   0x00007f506863905b:   mov    $0x2,%r10d
   1.19%  ││││││││││╭  0x00007f5068639061:   jmp    0x00007f5068639069
   1.52%  │││││││││││  0x00007f5068639063:   mov    $0x1,%r10d                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@758 (line 168)
   1.78%  ↘↘↘↘↘↘↘↘↘↘↘  0x00007f5068639069:   mov    %r10d,%eax
                       0x00007f506863906c:   add    $0x20,%rsp
   3.22%               0x00007f5068639070:   pop    %rbp
   7.01%               0x00007f5068639071:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                       0x00007f5068639078:   ja     0x00007f50686390f4
                       0x00007f506863907e:   ret    
                       0x00007f506863907f:   mov    $0xfffffff6,%esi
                       0x00007f5068639084:   data16 xchg %ax,%ax
                       0x00007f5068639087:   call   0x00007f50680c9f00           ; ImmutableOopMap {}
                                                                                 ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                                 ;   {runtime_call UncommonTrapBlob}
                       0x00007f506863908c:   nopl   0x2300097c(%rax,%rax,1)      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@275 (line 135)
....................................................................................................
  40.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 572 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                0x00007f5068639eee:   mov    %ebx,%r11d
                0x00007f5068639ef1:   dec    %r11d
                0x00007f5068639ef4:   cmp    %ebx,%r11d
          ╭     0x00007f5068639ef7:   jae    0x00007f5068639f76
          │     0x00007f5068639efd:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
          │     0x00007f5068639f01:   xor    %ebp,%ebp
          │     0x00007f5068639f03:   xor    %r11d,%r11d
          │     0x00007f5068639f06:   mov    %rsi,0x8(%rsp)
   0.00%  │     0x00007f5068639f0b:   mov    %ebx,0x10(%rsp)
          │     0x00007f5068639f0f:   mov    %r11d,0x14(%rsp)
          │╭    0x00007f5068639f14:   jmp    0x00007f5068639f29
          ││    0x00007f5068639f16:   data16 nopw 0x0(%rax,%rax,1)
          ││↗   0x00007f5068639f20:   mov    (%rsp),%r8
   0.08%  │││   0x00007f5068639f24:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
   5.26%  │↘│   0x00007f5068639f29:   mov    0x10(%r8,%rbp,4),%r11d
   1.46%  │ │   0x00007f5068639f2e:   mov    %r8,(%rsp)
          │ │   0x00007f5068639f32:   mov    %r11,%rdx
          │ │   0x00007f5068639f35:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   1.34%  │ │   0x00007f5068639f39:   mov    0x8(%rsp),%rsi
          │ │   0x00007f5068639f3e:   nop
   0.00%  │ │   0x00007f5068639f3f:   call   0x00007f5068638a20           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          │ │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ │                                                             ;   {optimized virtual_call}
   2.79%  │ │   0x00007f5068639f44:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
          │ │                                                             ;   {other}
          │ │   0x00007f5068639f4c:   mov    0x14(%rsp),%r10d
   8.33%  │ │   0x00007f5068639f51:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   1.38%  │ │   0x00007f5068639f54:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
          │ │   0x00007f5068639f56:   cmp    0x10(%rsp),%ebp
          │ ╰   0x00007f5068639f5a:   jl     0x00007f5068639f20
   0.02%  │     0x00007f5068639f5c:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
          │  ↗  0x00007f5068639f5f:   add    $0x30,%rsp
   0.01%  │  │  0x00007f5068639f63:   pop    %rbp
   0.01%  │  │  0x00007f5068639f64:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007f5068639f6b:   ja     0x00007f5068639fb4
   0.01%  │  │  0x00007f5068639f71:   ret    
          │  │  0x00007f5068639f72:   xor    %eax,%eax
          │  ╰  0x00007f5068639f74:   jmp    0x00007f5068639f5f
          ↘     0x00007f5068639f76:   mov    $0xffffff76,%esi
                0x00007f5068639f7b:   mov    %r10,%rbp
                0x00007f5068639f7e:   mov    %ebx,0x4(%rsp)
                0x00007f5068639f82:   mov    %r9d,0x8(%rsp)
                0x00007f5068639f87:   call   0x00007f50680c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                          ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                          ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  20.68%  <total for region 2>

....[Hottest Regions]...............................................................................
  40.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
  20.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 572 
   7.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   6.80%         c2, level 4  java.lang.String::equals, version 2, compile id 303 
   5.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   5.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   3.01%         c2, level 4  java.lang.String::equals, version 2, compile id 303 
   2.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   2.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   1.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   1.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   0.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
   0.57%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   1.39%  <...other 324 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 571 
  20.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 572 
   9.80%         c2, level 4  java.lang.String::equals, version 2, compile id 303 
   1.99%              kernel  [unknown] 
   0.04%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.04%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 599 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  VMError::is_error_reported 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.18%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.59%         c2, level 4
   1.99%              kernel
   0.17%           libjvm.so
   0.09%        libc-2.31.so
   0.07%  libpthread-2.31.so
   0.04%                    
   0.02%              [vdso]
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements
# Parameters: (branches = 24)

# Run progress: 91.67% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.643 ns/op
# Warmup Iteration   2: 28.278 ns/op
# Warmup Iteration   3: 28.236 ns/op
# Warmup Iteration   4: 28.253 ns/op
# Warmup Iteration   5: 28.230 ns/op
Iteration   1: 28.253 ns/op
Iteration   2: 28.219 ns/op
Iteration   3: 28.231 ns/op
Iteration   4: 28.207 ns/op
Iteration   5: 28.496 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements":
  28.281 ±(99.9%) 0.467 ns/op [Average]
  (min, avg, max) = (28.207, 28.281, 28.496), stdev = 0.121
  CI (99.9%): [27.815, 28.748] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark.switch_statements:asm":
PrintAssembly processed: 131015 total address lines.
Perf output processed (skipped 56.330 seconds):
 Column 1: cycles (50613 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 

                                                                                             ;   {other}
                                   0x00007f025c6394d0:   mov    $0xffffff45,%esi
                                   0x00007f025c6394d5:   mov    %eax,%ebp
                                   0x00007f025c6394d7:   call   0x00007f025c0c9f00           ; ImmutableOopMap {}
                                                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@580 (line 135)
                                                                                             ;   {runtime_call UncommonTrapBlob}
                                   0x00007f025c6394dc:   nopl   0x42000f4c(%rax,%rax,1)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@580 (line 135)
                                                                                             ;   {other}
   0.80%                           0x00007f025c6394e4:   mov    $0x16,%r11d
   0.40%  ╭                        0x00007f025c6394ea:   jmp    0x00007f025c6395d8
   0.52%  │                        0x00007f025c6394ef:   mov    $0x17,%r11d
   0.42%  │╭                       0x00007f025c6394f5:   jmp    0x00007f025c6395d8
   0.43%  ││                       0x00007f025c6394fa:   mov    $0x18,%r11d
   0.36%  ││╭                      0x00007f025c639500:   jmp    0x00007f025c6395d8
   0.56%  │││                      0x00007f025c639505:   mov    $0x11,%r11d
   0.54%  │││╭                     0x00007f025c63950b:   jmp    0x00007f025c6395d8
   0.44%  ││││                     0x00007f025c639510:   mov    $0x12,%r11d
   0.46%  ││││╭                    0x00007f025c639516:   jmp    0x00007f025c6395d8
   0.42%  │││││                    0x00007f025c63951b:   mov    $0x13,%r11d
   0.41%  │││││╭                   0x00007f025c639521:   jmp    0x00007f025c6395d8
   0.63%  ││││││                   0x00007f025c639526:   mov    $0x14,%r11d
   0.50%  ││││││╭                  0x00007f025c63952c:   jmp    0x00007f025c6395d8
   0.64%  │││││││                  0x00007f025c639531:   mov    $0x15,%r11d
   0.47%  │││││││╭                 0x00007f025c639537:   jmp    0x00007f025c6395d8
   0.96%  ││││││││                 0x00007f025c63953c:   mov    $0x1,%r11d
   0.52%  ││││││││╭                0x00007f025c639542:   jmp    0x00007f025c6395d8
   0.57%  │││││││││                0x00007f025c639547:   mov    $0x2,%r11d
   0.46%  │││││││││╭               0x00007f025c63954d:   jmp    0x00007f025c6395d8
   0.56%  ││││││││││               0x00007f025c639552:   mov    $0x3,%r11d
   0.48%  ││││││││││╭              0x00007f025c639558:   jmp    0x00007f025c6395d8
   0.58%  │││││││││││              0x00007f025c63955d:   mov    $0x4,%r11d
   0.41%  │││││││││││╭             0x00007f025c639563:   jmp    0x00007f025c6395d8
   0.62%  ││││││││││││             0x00007f025c639568:   mov    $0x5,%r11d
   0.53%  ││││││││││││╭            0x00007f025c63956e:   jmp    0x00007f025c6395d8
   0.54%  │││││││││││││            0x00007f025c639573:   mov    $0x6,%r11d
   0.49%  │││││││││││││╭           0x00007f025c639579:   jmp    0x00007f025c6395d8
   0.73%  ││││││││││││││           0x00007f025c63957e:   mov    $0x7,%r11d
   0.50%  ││││││││││││││╭          0x00007f025c639584:   jmp    0x00007f025c6395d8
   0.80%  │││││││││││││││          0x00007f025c639589:   mov    $0x8,%r11d
   0.50%  │││││││││││││││╭         0x00007f025c63958f:   jmp    0x00007f025c6395d8
   0.79%  ││││││││││││││││         0x00007f025c639594:   mov    $0x9,%r11d
   0.49%  ││││││││││││││││╭        0x00007f025c63959a:   jmp    0x00007f025c6395d8
   0.68%  │││││││││││││││││        0x00007f025c63959f:   mov    $0xa,%r11d
   0.47%  │││││││││││││││││╭       0x00007f025c6395a5:   jmp    0x00007f025c6395d8
   0.71%  ││││││││││││││││││       0x00007f025c6395aa:   mov    $0xb,%r11d
   0.52%  ││││││││││││││││││╭      0x00007f025c6395b0:   jmp    0x00007f025c6395d8
   0.86%  │││││││││││││││││││      0x00007f025c6395b2:   mov    $0xc,%r11d
   0.43%  │││││││││││││││││││╭     0x00007f025c6395b8:   jmp    0x00007f025c6395d8
   0.47%  ││││││││││││││││││││     0x00007f025c6395ba:   mov    $0xd,%r11d
   0.38%  ││││││││││││││││││││╭    0x00007f025c6395c0:   jmp    0x00007f025c6395d8
   0.64%  │││││││││││││││││││││    0x00007f025c6395c2:   mov    $0xe,%r11d
   0.44%  │││││││││││││││││││││╭   0x00007f025c6395c8:   jmp    0x00007f025c6395d8
   0.80%  ││││││││││││││││││││││   0x00007f025c6395ca:   mov    $0xf,%r11d
   0.51%  ││││││││││││││││││││││╭  0x00007f025c6395d0:   jmp    0x00007f025c6395d8
   0.83%  │││││││││││││││││││││││  0x00007f025c6395d2:   mov    $0x10,%r11d                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@830 (line 204)
   1.28%  ↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘↘  0x00007f025c6395d8:   mov    %r11d,%eax
   0.00%                           0x00007f025c6395db:   add    $0x20,%rsp                   ;   {no_reloc}
   2.35%                           0x00007f025c6395df:   pop    %rbp
   6.59%                           0x00007f025c6395e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                                   0x00007f025c6395e7:   ja     0x00007f025c6396c3
                                   0x00007f025c6395ed:   ret    
                                   0x00007f025c6395ee:   mov    $0xfffffff6,%esi
                                   0x00007f025c6395f3:   call   0x00007f025c0c9f00           ; ImmutableOopMap {}
                                                                                             ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@8 (line 135)
                                                                                             ;   {runtime_call UncommonTrapBlob}
                                   0x00007f025c6395f8:   nopl   0x43001068(%rax,%rax,1)      ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements@577 (line 135)
                                                                                             ;   {other}
....................................................................................................
  36.52%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 569 

               0x00007f025c63b37d:   lea    (%r12,%r9,8),%r8             ;*getfield vehicles {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@3 (line 104)
               0x00007f025c63b381:   xor    %ebp,%ebp
               0x00007f025c63b383:   xor    %r11d,%r11d
               0x00007f025c63b386:   mov    %rsi,0x8(%rsp)
               0x00007f025c63b38b:   mov    %ebx,0x10(%rsp)
               0x00007f025c63b38f:   mov    %r11d,0x14(%rsp)
          ╭    0x00007f025c63b394:   jmp    0x00007f025c63b3a9
          │    0x00007f025c63b396:   data16 nopw 0x0(%rax,%rax,1)
          │↗   0x00007f025c63b3a0:   mov    (%rsp),%r8
   0.07%  ││   0x00007f025c63b3a4:   mov    %r10d,0x14(%rsp)             ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@19 (line 104)
   4.91%  ↘│   0x00007f025c63b3a9:   mov    0x10(%r8,%rbp,4),%r11d
   1.58%   │   0x00007f025c63b3ae:   mov    %r8,(%rsp)
   0.00%   │   0x00007f025c63b3b2:   mov    %r11,%rdx
           │   0x00007f025c63b3b5:   shl    $0x3,%rdx                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@22 (line 104)
   1.31%   │   0x00007f025c63b3b9:   mov    0x8(%rsp),%rsi
   0.00%   │   0x00007f025c63b3be:   nop
           │   0x00007f025c63b3bf:   call   0x00007f025c638a00           ; ImmutableOopMap {[0]=Oop [8]=Oop }
           │                                                             ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │                                                             ;   {optimized virtual_call}
   2.77%   │   0x00007f025c63b3c4:   nopl   0x234(%rax,%rax,1)           ;*invokevirtual switchStatements {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@29 (line 105)
           │                                                             ;   {other}
           │   0x00007f025c63b3cc:   mov    0x14(%rsp),%r10d
  10.88%   │   0x00007f025c63b3d1:   add    %eax,%r10d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@32 (line 105)
   1.39%   │   0x00007f025c63b3d4:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@34 (line 104)
           │   0x00007f025c63b3d6:   cmp    0x10(%rsp),%ebp
           ╰   0x00007f025c63b3da:   jl     0x00007f025c63b3a0
   0.00%       0x00007f025c63b3dc:   mov    %r10d,%eax                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
            ↗  0x00007f025c63b3df:   add    $0x30,%rsp
   0.01%    │  0x00007f025c63b3e3:   pop    %rbp
   0.01%    │  0x00007f025c63b3e4:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │  0x00007f025c63b3eb:   ja     0x00007f025c63b434
   0.01%    │  0x00007f025c63b3f1:   ret    
            │  0x00007f025c63b3f2:   xor    %eax,%eax
            ╰  0x00007f025c63b3f4:   jmp    0x00007f025c63b3df
               0x00007f025c63b3f6:   mov    $0xffffff76,%esi
               0x00007f025c63b3fb:   mov    %r10,%rbp
               0x00007f025c63b3fe:   mov    %ebx,0x4(%rsp)
               0x00007f025c63b402:   mov    %r9d,0x8(%rsp)
               0x00007f025c63b407:   call   0x00007f025c0c9f00           ; ImmutableOopMap {rbp=Oop [8]=NarrowOop }
                                                                         ;*if_icmpge {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements@16 (line 104)
                                                                         ;   {runtime_call UncommonTrapBlob}
....................................................................................................
  22.95%  <total for region 2>

....[Hottest Regions]...............................................................................
  36.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
  22.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 569 
   7.08%         c2, level 4  java.lang.String::equals, version 2, compile id 304 
   7.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   5.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   3.19%         c2, level 4  java.lang.String::equals, version 2, compile id 304 
   3.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   2.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   2.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   1.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   1.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   1.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   0.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   0.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   0.75%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   0.71%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
   0.41%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   1.32%  <...other 312 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switchStatements, version 2, compile id 564 
  22.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.StringSwitchBenchmark::switch_statements, version 4, compile id 569 
  10.28%         c2, level 4  java.lang.String::equals, version 2, compile id 304 
   1.54%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StringSwitchBenchmark_switch_statements_jmhTest::switch_statements_avgt_jmhStub, version 5, compile id 599 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ObjectSynchronizer::is_async_deflation_needed 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  defaultStream::write 
   0.19%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%         c2, level 4
   1.54%              kernel
   0.16%           libjvm.so
   0.13%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-1958580.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:21:44

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

Benchmark                                     (branches)  Mode  Cnt   Score   Error  Units
StringSwitchBenchmark.chained_ifs                      3  avgt    5   2.345 ± 0.002  ns/op
StringSwitchBenchmark.chained_ifs:asm                  3  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                      6  avgt    5   5.598 ± 0.124  ns/op
StringSwitchBenchmark.chained_ifs:asm                  6  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     12  avgt    5  19.413 ± 0.048  ns/op
StringSwitchBenchmark.chained_ifs:asm                 12  avgt          NaN            ---
StringSwitchBenchmark.chained_ifs                     24  avgt    5  30.580 ± 0.366  ns/op
StringSwitchBenchmark.chained_ifs:asm                 24  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               3  avgt    5  10.449 ± 0.203  ns/op
StringSwitchBenchmark.switch_expressions:asm           3  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions               6  avgt    5  17.092 ± 0.186  ns/op
StringSwitchBenchmark.switch_expressions:asm           6  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              12  avgt    5  27.918 ± 0.340  ns/op
StringSwitchBenchmark.switch_expressions:asm          12  avgt          NaN            ---
StringSwitchBenchmark.switch_expressions              24  avgt    5  28.326 ± 0.110  ns/op
StringSwitchBenchmark.switch_expressions:asm          24  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                3  avgt    5   9.984 ± 0.259  ns/op
StringSwitchBenchmark.switch_statements:asm            3  avgt          NaN            ---
StringSwitchBenchmark.switch_statements                6  avgt    5  17.140 ± 0.165  ns/op
StringSwitchBenchmark.switch_statements:asm            6  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               12  avgt    5  27.609 ± 0.135  ns/op
StringSwitchBenchmark.switch_statements:asm           12  avgt          NaN            ---
StringSwitchBenchmark.switch_statements               24  avgt    5  28.281 ± 0.467  ns/op
StringSwitchBenchmark.switch_statements:asm           24  avgt          NaN            ---
