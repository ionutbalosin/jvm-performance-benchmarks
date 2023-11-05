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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.197 ns/op
# Warmup Iteration   2: 10.906 ns/op
# Warmup Iteration   3: 12.395 ns/op
# Warmup Iteration   4: 10.822 ns/op
# Warmup Iteration   5: 10.904 ns/op
Iteration   1: 10.835 ns/op
Iteration   2: 10.915 ns/op
Iteration   3: 10.880 ns/op
Iteration   4: 10.942 ns/op
Iteration   5: 10.899 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop":
  10.894 ±(99.9%) 0.155 ns/op [Average]
  (min, avg, max) = (10.835, 10.894, 10.942), stdev = 0.040
  CI (99.9%): [10.739, 11.049] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop:·asm":
PrintAssembly processed: 116793 total address lines.
Perf output processed (skipped 55.659 seconds):
 Column 1: cycles (50860 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 508 

              0x00007f36f8f0ac00:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007f36f8f0acb0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@25 (line 192)
              0x00007f36f8f0ac08:   mov    $0x1,%ebp
              0x00007f36f8f0ac0d:   test   %r10d,%r10d
          ╭   0x00007f36f8f0ac10:   jne    0x00007f36f8f0ac4c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 192)
          │   0x00007f36f8f0ac12:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f36f8f0ac1c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@31 (line 193)
   3.48%  │↗  0x00007f36f8f0ac20:   mov    0x30(%rsp),%rsi
          ││  0x00007f36f8f0ac25:   xchg   %ax,%ax
          ││  0x00007f36f8f0ac27:   call   0x00007f36f899f080           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual initial_loop {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@15 (line 190)
          ││                                                            ;   {optimized virtual_call}
  19.33%  ││  0x00007f36f8f0ac2c:   mov    0x28(%rsp),%r10
  16.57%  ││  0x00007f36f8f0ac31:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 192)
  13.71%  ││  0x00007f36f8f0ac39:   mov    0x348(%r15),%r11
          ││  0x00007f36f8f0ac40:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@28 (line 192)
          ││  0x00007f36f8f0ac44:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f36f8f0ac47:   test   %r10d,%r10d
          │╰  0x00007f36f8f0ac4a:   je     0x00007f36f8f0ac20           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub@31 (line 193)
          ↘   0x00007f36f8f0ac4c:   movabs $0x7f370ce80d10,%r10
              0x00007f36f8f0ac56:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  53.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 478 

             # {method} {0x00007f36c7874af8} &apos;initial_loop&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f36f8f08620:   mov    0x8(%rsi),%r10d
             0x00007f36f8f08624:   movabs $0x800000000,%r11
             0x00007f36f8f0862e:   add    %r11,%r10
             0x00007f36f8f08631:   cmp    %r10,%rax
             0x00007f36f8f08634:   jne    0x00007f36f899ed80           ;   {runtime_call ic_miss_stub}
             0x00007f36f8f0863a:   xchg   %ax,%ax
             0x00007f36f8f0863c:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.51%     0x00007f36f8f08640:   mov    %eax,-0x14000(%rsp)
   7.14%     0x00007f36f8f08647:   push   %rbp
             0x00007f36f8f08648:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@-1 (line 66)
   0.32%     0x00007f36f8f0864c:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@2 (line 66)
   3.21%     0x00007f36f8f0864f:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@6 (line 66)
             0x00007f36f8f08652:   nop
   0.29%     0x00007f36f8f08653:   call   0x00007f36f8f08020           ; ImmutableOopMap {}
                                                                       ;*invokevirtual auto_reduction {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@9 (line 66)
                                                                       ;   {optimized virtual_call}
             0x00007f36f8f08658:   add    $0x10,%rsp
   3.56%     0x00007f36f8f0865c:   pop    %rbp
   4.52%     0x00007f36f8f0865d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f36f8f08664:   ja     0x00007f36f8f08678
   0.84%  │  0x00007f36f8f0866a:   ret                                 ;*invokevirtual auto_reduction {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop@9 (line 66)
          │  0x00007f36f8f0866b:   mov    %rax,%rsi
          │  0x00007f36f8f0866e:   add    $0x10,%rsp
          │  0x00007f36f8f08672:   pop    %rbp
          │  0x00007f36f8f08673:   jmp    0x00007f36f8a50b80           ;   {runtime_call _rethrow_Java}
          ↘  0x00007f36f8f08678:   movabs $0x7f36f8f0865d,%r10         ;   {internal_word}
             0x00007f36f8f08682:   mov    %r10,0x358(%r15)
             0x00007f36f8f08689:   jmp    0x00007f36f89a5700           ;   {runtime_call SafepointBlob}
             0x00007f36f8f0868e:   hlt    
             0x00007f36f8f0868f:   hlt    
....................................................................................................
  23.39%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 476 

                 # parm1:    rcx       = int
                 #           [sp+0x20]  (sp of caller)
                 0x00007f36f8f08000:   mov    0x8(%rsi),%r10d
                 0x00007f36f8f08004:   movabs $0x800000000,%r11
                 0x00007f36f8f0800e:   add    %r11,%r10
                 0x00007f36f8f08011:   cmp    %r10,%rax
                 0x00007f36f8f08014:   jne    0x00007f36f899ed80           ;   {runtime_call ic_miss_stub}
                 0x00007f36f8f0801a:   xchg   %ax,%ax
                 0x00007f36f8f0801c:   nopl   0x0(%rax)
               [Verified Entry Point]
   3.18%         0x00007f36f8f08020:   sub    $0x18,%rsp
   0.29%         0x00007f36f8f08027:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@-1 (line 77)
   2.70%         0x00007f36f8f0802c:   test   %edx,%edx
          ╭      0x00007f36f8f0802e:   jle    0x00007f36f8f08058
   1.97%  │      0x00007f36f8f08030:   mov    $0x1,%r10d
          │      0x00007f36f8f08036:   cmp    %edx,%r10d
          │╭     0x00007f36f8f08039:   jge    0x00007f36f8f08052           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
   0.06%  ││     0x00007f36f8f0803b:   add    %ecx,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 78)
   1.39%  ││ ↗   0x00007f36f8f0803d:   mov    %edx,%eax                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 77)
   1.94%  ││ │↗  0x00007f36f8f0803f:   add    $0x10,%rsp
          ││ ││  0x00007f36f8f08043:   pop    %rbp
   9.82%  ││ ││  0x00007f36f8f08044:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ││╭││  0x00007f36f8f0804b:   ja     0x00007f36f8f0805c
          │││││  0x00007f36f8f08051:   ret    
          │↘│││  0x00007f36f8f08052:   mov    %ecx,%edx
          │ │││  0x00007f36f8f08054:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 78)
          │ │╰│  0x00007f36f8f08056:   jmp    0x00007f36f8f0803d
          ↘ │ │  0x00007f36f8f08058:   mov    %ecx,%eax
            │ ╰  0x00007f36f8f0805a:   jmp    0x00007f36f8f0803f
            ↘    0x00007f36f8f0805c:   movabs $0x7f36f8f08044,%r10         ;   {internal_word}
                 0x00007f36f8f08066:   mov    %r10,0x358(%r15)
....................................................................................................
  21.35%  <total for region 3>

....[Hottest Regions]...............................................................................
  53.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 508 
  23.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 478 
  21.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 476 
   0.96%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.73%  <...other 256 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 6, compile id 508 
  23.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 478 
  21.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 476 
   1.86%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  outputStream::print 
   0.00%           libjvm.so  G1ServiceThread::sleep_before_next_cycle 
   0.13%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.86%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.03%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 11.934 ns/op
# Warmup Iteration   2: 10.490 ns/op
# Warmup Iteration   3: 11.775 ns/op
# Warmup Iteration   4: 10.640 ns/op
# Warmup Iteration   5: 10.756 ns/op
Iteration   1: 10.725 ns/op
Iteration   2: 10.698 ns/op
Iteration   3: 10.787 ns/op
Iteration   4: 10.744 ns/op
Iteration   5: 10.646 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction":
  10.720 ±(99.9%) 0.202 ns/op [Average]
  (min, avg, max) = (10.646, 10.720, 10.787), stdev = 0.053
  CI (99.9%): [10.518, 10.922] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction:·asm":
PrintAssembly processed: 114886 total address lines.
Perf output processed (skipped 55.527 seconds):
 Column 1: cycles (51221 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 465 

             # {method} {0x00007fd82fc7f308} &apos;manual_loop_reduction&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007fd868f63620:   mov    0x8(%rsi),%r10d
             0x00007fd868f63624:   movabs $0x800000000,%r11
             0x00007fd868f6362e:   add    %r11,%r10
             0x00007fd868f63631:   cmp    %r10,%rax
             0x00007fd868f63634:   jne    0x00007fd8689fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fd868f6363a:   xchg   %ax,%ax
             0x00007fd868f6363c:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.43%     0x00007fd868f63640:   mov    %eax,-0x14000(%rsp)
   4.67%     0x00007fd868f63647:   push   %rbp
   0.01%     0x00007fd868f63648:   sub    $0x10,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@-1 (line 72)
   0.04%     0x00007fd868f6364c:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@2 (line 72)
   3.44%     0x00007fd868f6364f:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@6 (line 72)
   0.00%     0x00007fd868f63652:   nop
   0.04%     0x00007fd868f63653:   call   0x00007fd861503740           ; ImmutableOopMap {}
                                                                       ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 72)
                                                                       ;   {optimized virtual_call}
  38.80%     0x00007fd868f63658:   add    $0x10,%rsp
             0x00007fd868f6365c:   pop    %rbp
             0x00007fd868f6365d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007fd868f63664:   ja     0x00007fd868f63678
   3.46%  │  0x00007fd868f6366a:   ret                                 ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 72)
          │  0x00007fd868f6366b:   mov    %rax,%rsi
          │  0x00007fd868f6366e:   add    $0x10,%rsp
          │  0x00007fd868f63672:   pop    %rbp
          │  0x00007fd868f63673:   jmp    0x00007fd868aafd00           ;   {runtime_call _rethrow_Java}
          ↘  0x00007fd868f63678:   movabs $0x7fd868f6365d,%r10         ;   {internal_word}
             0x00007fd868f63682:   mov    %r10,0x358(%r15)
             0x00007fd868f63689:   jmp    0x00007fd868a02700           ;   {runtime_call SafepointBlob}
             0x00007fd868f6368e:   hlt    
             0x00007fd868f6368f:   hlt    
....................................................................................................
  53.88%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 466 

              # parm1:    rcx       = int
              #           [sp+0x30]  (sp of caller)
              0x00007fd868f639a0:   mov    0x8(%rsi),%r10d
              0x00007fd868f639a4:   movabs $0x800000000,%r11
              0x00007fd868f639ae:   add    %r11,%r10
              0x00007fd868f639b1:   cmp    %r10,%rax
              0x00007fd868f639b4:   jne    0x00007fd8689fbd80           ;   {runtime_call ic_miss_stub}
              0x00007fd868f639ba:   xchg   %ax,%ax
              0x00007fd868f639bc:   nopl   0x0(%rax)
            [Verified Entry Point]
   4.03%      0x00007fd868f639c0:   mov    %eax,-0x14000(%rsp)
  15.45%      0x00007fd868f639c7:   push   %rbp
   0.69%      0x00007fd868f639c8:   sub    $0x20,%rsp                   ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@-1 (line 85)
              0x00007fd868f639cc:   test   %edx,%edx
          ╭   0x00007fd868f639ce:   jle    0x00007fd868f639e7           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 85)
   2.90%  │   0x00007fd868f639d0:   mov    %edx,%eax
   0.55%  │   0x00007fd868f639d2:   add    %ecx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@6 (line 86)
          │   0x00007fd868f639d4:   add    $0x20,%rsp
          │   0x00007fd868f639d8:   pop    %rbp
   5.72%  │   0x00007fd868f639d9:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │╭  0x00007fd868f639e0:   ja     0x00007fd868f639f8
   0.68%  ││  0x00007fd868f639e6:   ret    
          ↘│  0x00007fd868f639e7:   mov    $0xffffff45,%esi
           │  0x00007fd868f639ec:   mov    %ecx,(%rsp)
           │  0x00007fd868f639ef:   mov    %edx,0x4(%rsp)
           │  0x00007fd868f639f3:   call   0x00007fd868a01600           ; ImmutableOopMap {}
           │                                                            ;*ifle {reexecute=1 rethrow=0 return_oop=0}
           │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 85)
           │                                                            ;   {runtime_call UncommonTrapBlob}
           ↘  0x00007fd868f639f8:   movabs $0x7fd868f639d9,%r10         ;   {internal_word}
              0x00007fd868f63a02:   mov    %r10,0x358(%r15)
              0x00007fd868f63a09:   jmp    0x00007fd868a02700           ;   {runtime_call SafepointBlob}
....................................................................................................
  30.03%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 500 

              0x00007fd868f66700:   movzbl 0x94(%r10),%r10d             ; implicit exception: dispatches to 0x00007fd868f667b0
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@25 (line 192)
              0x00007fd868f66708:   mov    $0x1,%ebp
              0x00007fd868f6670d:   test   %r10d,%r10d
          ╭   0x00007fd868f66710:   jne    0x00007fd868f6674c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
          │   0x00007fd868f66712:   data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fd868f6671c:   data16 data16 xchg %ax,%ax          ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@31 (line 193)
   3.08%  │↗  0x00007fd868f66720:   mov    0x30(%rsp),%rsi
          ││  0x00007fd868f66725:   xchg   %ax,%ax
          ││  0x00007fd868f66727:   call   0x00007fd8689fc080           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*invokevirtual manual_loop_reduction {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@15 (line 190)
          ││                                                            ;   {optimized virtual_call}
   0.03%  ││  0x00007fd868f6672c:   mov    0x28(%rsp),%r10
   3.51%  ││  0x00007fd868f66731:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
   6.11%  ││  0x00007fd868f66739:   mov    0x348(%r15),%r11
          ││  0x00007fd868f66740:   add    $0x1,%rbp                    ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 192)
          ││  0x00007fd868f66744:   test   %eax,(%r11)                  ;   {poll}
   0.53%  ││  0x00007fd868f66747:   test   %r10d,%r10d
          │╰  0x00007fd868f6674a:   je     0x00007fd868f66720           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@31 (line 193)
          ↘   0x00007fd868f6674c:   movabs $0x7fd87d7d7d10,%r10
              0x00007fd868f66756:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@32 (line 193)
              0x00007fd868f66759:   mov    0x20(%rsp),%r10
              0x00007fd868f6675e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@35 (line 193)
              0x00007fd868f66762:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@41 (line 194)
....................................................................................................
  13.26%  <total for region 3>

....[Hottest Regions]...............................................................................
  53.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 465 
  30.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 466 
  13.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 500 
   1.73%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.67%  <...other 235 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.88%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 465 
  30.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 466 
  13.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 500 
   2.59%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  [unknown] 
   0.02%                      <unknown> 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  outputStream::print 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%        libc-2.31.so  _int_realloc 
   0.00%           libjvm.so  Method::invocation_count 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.10%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.17%         c2, level 4
   2.59%              kernel
   0.12%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%         interpreter
   0.00%      perf-20644.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:37

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

Benchmark                                          (iterations)  (offset)  Mode  Cnt   Score   Error  Units
LoopReductionBenchmark.initial_loop                     1048576       128  avgt    5  10.894 ± 0.155  ns/op
LoopReductionBenchmark.initial_loop:·asm                1048576       128  avgt          NaN            ---
LoopReductionBenchmark.manual_loop_reduction            1048576       128  avgt    5  10.720 ± 0.202  ns/op
LoopReductionBenchmark.manual_loop_reduction:·asm       1048576       128  avgt          NaN            ---
