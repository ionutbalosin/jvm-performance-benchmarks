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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 25486.812 ns/op
# Warmup Iteration   2: 25395.776 ns/op
# Warmup Iteration   3: 25389.833 ns/op
# Warmup Iteration   4: 25393.826 ns/op
# Warmup Iteration   5: 25387.780 ns/op
Iteration   1: 25391.407 ns/op
Iteration   2: 25394.387 ns/op
Iteration   3: 25389.651 ns/op
Iteration   4: 25385.927 ns/op
Iteration   5: 25386.140 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop":
  25389.502 ±(99.9%) 13.829 ns/op [Average]
  (min, avg, max) = (25385.927, 25389.502, 25394.387), stdev = 3.591
  CI (99.9%): [25375.673, 25403.332] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.initial_loop:asm":
PrintAssembly processed: 216663 total address lines.
Perf output processed (skipped 60.286 seconds):
 Column 1: cycles (50903 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 941 

                   0x00007f60cb23d753:   cmovl  %edx,%eax
                   0x00007f60cb23d756:   mov    $0x1,%r10d
   0.00%           0x00007f60cb23d75c:   nopl   0x0(%rax)
          ╭        0x00007f60cb23d760:   jmp    0x00007f60cb23d785           ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@2 (line 75)
          │        0x00007f60cb23d765:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        0x00007f60cb23d770:   data16 data16 xchg %ax,%ax
          │        0x00007f60cb23d774:   nopl   0x0(%rax,%rax,1)
          │        0x00007f60cb23d77c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 75)
   0.00%  │↗       0x00007f60cb23d780:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 76)
          ││       0x00007f60cb23d782:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@10 (line 75)
          ↘│       0x00007f60cb23d785:   cmp    %r10d,%eax
           ╰       0x00007f60cb23d788:   jg     0x00007f60cb23d780
   0.00%           0x00007f60cb23d78a:   lea    -0x10(%rdx),%eax
                   0x00007f60cb23d78d:   mov    %r10d,%r11d
                   0x00007f60cb23d790:   mov    %ecx,%r10d
            ╭      0x00007f60cb23d793:   jmp    0x00007f60cb23d7a8
            │      0x00007f60cb23d798:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 75)
  97.49%    │↗     0x00007f60cb23d7a0:   lea    0x10(%r11),%r11d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@10 (line 75)
            ││     0x00007f60cb23d7a4:   lea    0x10(%r10),%r10d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 76)
            ↘│     0x00007f60cb23d7a8:   cmp    %r11d,%eax
             ╰     0x00007f60cb23d7ab:   jg     0x00007f60cb23d7a0
   0.02%      ╭    0x00007f60cb23d7ad:   jmp    0x00007f60cb23d7d0
              │    0x00007f60cb23d7b2:   data16 nopw 0x0(%rax,%rax,1)
              │    0x00007f60cb23d7bc:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 75)
   0.02%      │↗   0x00007f60cb23d7c0:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@10 (line 75)
              ││   0x00007f60cb23d7c3:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@7 (line 76)
              ││   0x00007f60cb23d7c6:   data16 nopw 0x0(%rax,%rax,1)
   0.01%      ↘│   0x00007f60cb23d7d0:   cmp    %r11d,%edx
               ╰   0x00007f60cb23d7d3:   jg     0x00007f60cb23d7c0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 75)
   0.02%        ↗  0x00007f60cb23d7d5:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@17 (line 78)
   0.00%        │  0x00007f60cb23d7d8:   add    $0x18,%rsp
   0.01%        │  0x00007f60cb23d7dc:   nopl   0x0(%rax)
                │  0x00007f60cb23d7e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                │  0x00007f60cb23d7e7:   ja     0x00007f60cb23d806
   0.01%        │  0x00007f60cb23d7ed:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@4 (line 75)
                │  0x00007f60cb23d7ee:   mov    %ecx,%r10d
                ╰  0x00007f60cb23d7f1:   jmp    0x00007f60cb23d7d5           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction@16 (line 78)
                   0x00007f60cb23d7f3:   mov    %rbp,0x10(%rsp)
                   0x00007f60cb23d7f8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                   0x00007f60cb23d7fd:   data16 xchg %ax,%ax
                   0x00007f60cb23d800:   jmp    0x00007f60cb23d73a
                   0x00007f60cb23d805:   hlt    
                   0x00007f60cb23d806:   lea    -0x2d(%rip),%rcx        # 0x00007f60cb23d7e0
....................................................................................................
  97.59%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 941 
   0.86%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 943 
   0.02%               kernel  [unknown] 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 5, compile id 973 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.80%  <...other 285 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::auto_reduction, version 3, compile id 941 
   2.01%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::initial_loop, version 2, compile id 943 
   0.02%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_initial_loop_jmhTest::initial_loop_avgt_jmhStub, version 5, compile id 973 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%         libc-2.31.so  _IO_default_xsputn 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%         libc-2.31.so  _IO_fwrite 
   0.00%            libjvm.so  defaultStream::hold 
   0.19%  <...other 88 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.66%       jvmci, level 4
   2.01%               kernel
   0.13%            libjvm.so
   0.08%         libc-2.31.so
   0.04%                     
   0.03%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%           ld-2.31.so
   0.00%          c1, level 2
   0.00%               [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction
# Parameters: (iterations = 1048576, offset = 128)

# Run progress: 50.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.293 ns/op
# Warmup Iteration   2: 12.223 ns/op
# Warmup Iteration   3: 12.378 ns/op
# Warmup Iteration   4: 12.354 ns/op
# Warmup Iteration   5: 12.371 ns/op
Iteration   1: 12.348 ns/op
Iteration   2: 12.386 ns/op
Iteration   3: 12.373 ns/op
Iteration   4: 12.367 ns/op
Iteration   5: 12.362 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction":
  12.367 ±(99.9%) 0.053 ns/op [Average]
  (min, avg, max) = (12.348, 12.367, 12.386), stdev = 0.014
  CI (99.9%): [12.314, 12.420] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark.manual_loop_reduction:asm":
PrintAssembly processed: 213398 total address lines.
Perf output processed (skipped 60.088 seconds):
 Column 1: cycles (50795 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 977 

              0x00007ff50f240510:   mov    0x18(%rsp),%rsi
              0x00007ff50f240515:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007ff50f240520:   cmpb   $0x0,0x94(%rsi)
              0x00007ff50f240527:   jne    0x00007ff50f2405ba           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
              0x00007ff50f24052d:   movq   $0x1,0x20(%rsp)
          ╭   0x00007ff50f240536:   jmp    0x00007ff50f24054f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 194)
          │   0x00007ff50f24053b:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
   3.12%  │↗  0x00007ff50f240540:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
          ││  0x00007ff50f240547:   test   %eax,(%r11)                  ;   {poll}
   2.28%  ││  0x00007ff50f24054a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@13 (line 194)
          ↘│  0x00007ff50f24054f:   mov    0x8(%rsp),%r10
   1.13%   │  0x00007ff50f240554:   mov    %r10,%rsi
           │  0x00007ff50f240557:   call   0x00007ff50ec2f380           ; ImmutableOopMap {[8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual manual_loop_reduction {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@15 (line 194)
           │                                                            ;   {optimized virtual_call}
   5.45%   │  0x00007ff50f24055c:   nopl   0x400024c(%rax,%rax,1)       ;   {other}
   1.88%   │  0x00007ff50f240564:   mov    0x20(%rsp),%r10
  22.61%   │  0x00007ff50f240569:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@21 (line 195)
   3.10%   │  0x00007ff50f24056c:   mov    0x18(%rsp),%rsi
           │  0x00007ff50f240571:   cmpb   $0x0,0x94(%rsi)
  12.24%   ╰  0x00007ff50f240578:   je     0x00007ff50f240540           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@28 (line 196)
              0x00007ff50f24057a:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@31 (line 197)
              0x00007ff50f24057f:   nop
              0x00007ff50f240580:   call   0x00007ff5278f4df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007ff50f240585:   nop
              0x00007ff50f240586:   mov    0x10(%rsp),%rdx
              0x00007ff50f24058b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub@35 (line 197)
              0x00007ff50f24058f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  51.81%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 946 

                # {method} {0x00007ff48f47d070} &apos;manual_loop_reduction&apos; &apos;()V&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LoopReductionBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007ff50f23b8a0:   mov    0x8(%rsi),%r10d
                0x00007ff50f23b8a4:   movabs $0x7ff493000000,%r12
                0x00007ff50f23b8ae:   add    %r12,%r10
                0x00007ff50f23b8b1:   xor    %r12,%r12
                0x00007ff50f23b8b4:   cmp    %r10,%rax
                0x00007ff50f23b8b7:   jne    0x00007ff50ec2f080           ;   {runtime_call ic_miss_stub}
                0x00007ff50f23b8bd:   data16 xchg %ax,%ax
              [Verified Entry Point]
   2.00%        0x00007ff50f23b8c0:   mov    %eax,-0x14000(%rsp)
   3.62%        0x00007ff50f23b8c7:   sub    $0x18,%rsp
   1.80%        0x00007ff50f23b8cb:   nop
                0x00007ff50f23b8cc:   cmpl   $0x1,0x20(%r15)
   0.54%  ╭     0x00007ff50f23b8d4:   jne    0x00007ff50f23b90e
   1.95%  │ ↗   0x00007ff50f23b8da:   mov    %rbp,0x10(%rsp)
   0.56%  │ │   0x00007ff50f23b8df:   mov    0x10(%rsi),%ecx              ;*getfield offset {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@6 (line 70)
          │ │   0x00007ff50f23b8e2:   mov    0xc(%rsi),%edx               ;*getfield iterations {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@2 (line 70)
   0.53%  │ │   0x00007ff50f23b8e5:   xchg   %ax,%ax
   1.77%  │ │   0x00007ff50f23b8e7:   call   0x00007ff507872340           ; ImmutableOopMap {}
          │ │                                                             ;*invokevirtual manual_reduction {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction@9 (line 70)
          │ │                                                             ;   {optimized virtual_call}
  15.01%  │ │   0x00007ff50f23b8ec:   nopl   0x1dc(%rax,%rax,1)           ;   {other}
          │ │   0x00007ff50f23b8f4:   mov    0x10(%rsp),%rbp
          │ │   0x00007ff50f23b8f9:   add    $0x18,%rsp
   3.17%  │ │   0x00007ff50f23b8fd:   data16 xchg %ax,%ax
          │ │↗  0x00007ff50f23b900:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007ff50f23b907:   ja     0x00007ff50f23b91b
          ││││  0x00007ff50f23b90d:   ret    
          ↘│││  0x00007ff50f23b90e:   mov    %rbp,0x10(%rsp)
           │││  0x00007ff50f23b913:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007ff50f23b918:   jmp    0x00007ff50f23b8da
           │ │  0x00007ff50f23b91a:   hlt    
           ↘ ╰  0x00007ff50f23b91b:   lea    -0x22(%rip),%rcx        # 0x00007ff50f23b900
                0x00007ff50f23b922:   mov    %rcx,0x468(%r15)
                0x00007ff50f23b929:   jmp    0x00007ff50ec36000           ;   {runtime_call SafepointBlob}
....................................................................................................
  30.94%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 947 

             # parm1:    rcx       = int
             #           [sp+0x20]  (sp of caller)
             0x00007ff50f23bb80:   mov    0x8(%rsi),%r10d
             0x00007ff50f23bb84:   movabs $0x7ff493000000,%r12
             0x00007ff50f23bb8e:   add    %r12,%r10
             0x00007ff50f23bb91:   xor    %r12,%r12
             0x00007ff50f23bb94:   cmp    %r10,%rax
             0x00007ff50f23bb97:   jne    0x00007ff50ec2f080           ;   {runtime_call ic_miss_stub}
             0x00007ff50f23bb9d:   data16 xchg %ax,%ax
           [Verified Entry Point]
   0.60%     0x00007ff50f23bba0:   mov    %eax,-0x14000(%rsp)
   2.56%     0x00007ff50f23bba7:   sub    $0x18,%rsp
   0.53%     0x00007ff50f23bbab:   nop
             0x00007ff50f23bbac:   cmpl   $0x1,0x20(%r15)
   0.49%     0x00007ff50f23bbb4:   jne    0x00007ff50f23bc11
   1.92%     0x00007ff50f23bbba:   mov    %rbp,0x10(%rsp)
   0.98%     0x00007ff50f23bbbf:   nop
             0x00007ff50f23bbc0:   cmp    $0x1,%edx
          ╭  0x00007ff50f23bbc3:   jl     0x00007ff50f23bbee           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 83)
   0.17%  │  0x00007ff50f23bbc9:   add    %ecx,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@6 (line 84)
   1.95%  │  0x00007ff50f23bbcb:   mov    %edx,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@7 (line 84)
   0.86%  │  0x00007ff50f23bbcd:   mov    0x10(%rsp),%rbp
   4.35%  │  0x00007ff50f23bbd2:   add    $0x18,%rsp
   0.02%  │  0x00007ff50f23bbd6:   data16 nopw 0x0(%rax,%rax,1)
   0.69%  │  0x00007ff50f23bbe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007ff50f23bbe7:   ja     0x00007ff50f23bc1e
          │  0x00007ff50f23bbed:   ret    
          ↘  0x00007ff50f23bbee:   movl   $0xffffffed,0x484(%r15)      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@1 (line 83)
             0x00007ff50f23bbf9:   movq   $0x14,0x490(%r15)
             0x00007ff50f23bc04:   call   0x00007ff50ec3517a           ; ImmutableOopMap {}
                                                                       ;*iload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction@0 (line 83)
                                                                       ;   {runtime_call DeoptimizationBlob}
             0x00007ff50f23bc09:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  15.12%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 977 
  30.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 946 
  15.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 947 
   0.49%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.98%  <...other 306 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.81%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LoopReductionBenchmark_manual_loop_reduction_jmhTest::manual_loop_reduction_avgt_jmhStub, version 6, compile id 977 
  30.94%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_loop_reduction, version 2, compile id 946 
  15.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LoopReductionBenchmark::manual_reduction, version 2, compile id 947 
   1.71%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.01%            libjvm.so  defaultStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%               [vdso]  __vdso_clock_gettime 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%            libjvm.so  fileStream::write 
   0.01%         libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%         libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.20%  <...other 81 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.87%       jvmci, level 4
   1.71%               kernel
   0.17%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.04%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%               [vdso]
   0.01%           ld-2.31.so
   0.01%          interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:47

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

Benchmark                                         (iterations)  (offset)  Mode  Cnt      Score    Error  Units
LoopReductionBenchmark.initial_loop                    1048576       128  avgt    5  25389.502 ± 13.829  ns/op
LoopReductionBenchmark.initial_loop:asm                1048576       128  avgt             NaN             ---
LoopReductionBenchmark.manual_loop_reduction           1048576       128  avgt    5     12.367 ±  0.053  ns/op
LoopReductionBenchmark.manual_loop_reduction:asm       1048576       128  avgt             NaN             ---
