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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.377 ns/op
# Warmup Iteration   2: 7.734 ns/op
# Warmup Iteration   3: 8.194 ns/op
# Warmup Iteration   4: 7.735 ns/op
# Warmup Iteration   5: 7.734 ns/op
Iteration   1: 7.735 ns/op
Iteration   2: 7.735 ns/op
Iteration   3: 7.732 ns/op
Iteration   4: 7.735 ns/op
Iteration   5: 7.735 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  7.734 ±(99.9%) 0.005 ns/op [Average]
  (min, avg, max) = (7.732, 7.734, 7.735), stdev = 0.001
  CI (99.9%): [7.730, 7.739] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm":
PrintAssembly processed: 129735 total address lines.
Perf output processed (skipped 56.290 seconds):
 Column 1: cycles (50666 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 568 

                # {method} {0x00007fb58447a5e8} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fb60863a400:   mov    0x8(%rsi),%r10d
                0x00007fb60863a404:   movabs $0x7fb58f000000,%r11
                0x00007fb60863a40e:   add    %r11,%r10
                0x00007fb60863a411:   cmp    %r10,%rax
                0x00007fb60863a414:   jne    0x00007fb6080c4080           ;   {runtime_call ic_miss_stub}
                0x00007fb60863a41a:   xchg   %ax,%ax
                0x00007fb60863a41c:   nopl   0x0(%rax)
              [Verified Entry Point]
   4.84%        0x00007fb60863a420:   sub    $0x18,%rsp
                0x00007fb60863a427:   mov    %rbp,0x10(%rsp)
   9.90%        0x00007fb60863a42c:   cmpl   $0x1,0x20(%r15)
   0.00%  ╭     0x00007fb60863a434:   jne    0x00007fb60863a47c           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@-1 (line 71)
   0.02%  │  ↗  0x00007fb60863a43a:   mov    0xc(%rsi),%r11d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 71)
          │  │  0x00007fb60863a43e:   mov    %r11d,%r10d
   4.74%  │  │  0x00007fb60863a441:   inc    %r10d
          │  │  0x00007fb60863a444:   imul   %r11d,%r10d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 71)
  19.76%  │  │  0x00007fb60863a448:   mov    %r10d,%eax
          │  │  0x00007fb60863a44b:   shr    $0x1f,%eax
          │  │  0x00007fb60863a44e:   add    %r10d,%eax
          │  │  0x00007fb60863a451:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 71)
   4.95%  │  │  0x00007fb60863a453:   add    $0x10,%rsp
          │  │  0x00007fb60863a457:   pop    %rbp
          │ ↗│  0x00007fb60863a458:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fb60863a45f:   ja     0x00007fb60863a466
   4.92%  ││││  0x00007fb60863a465:   ret    
          │↘╰│  0x00007fb60863a466:   movabs $0x7fb60863a458,%r10         ;   {internal_word}
          │  │  0x00007fb60863a470:   mov    %r10,0x468(%r15)
          │  │  0x00007fb60863a477:   jmp    0x00007fb6080cb000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007fb60863a47c:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007fb60863a481:   jmp    0x00007fb60863a43a
                0x00007fb60863a486:   hlt    
                0x00007fb60863a487:   hlt    
              [Exception Handler]
                0x00007fb60863a488:   jmp    0x00007fb608192580           ;   {no_reloc}
              [Deopt Handler Code]
....................................................................................................
  49.13%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 603 

             0x00007fb60863d050:   jne    0x00007fb60863d085           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
          ↗  0x00007fb60863d052:   mov    0x40(%rsp),%rsi
          │  0x00007fb60863d057:   call   0x00007fb6080c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
          │                                                            ;   {optimized virtual_call}
          │  0x00007fb60863d05c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
          │                                                            ;   {other}
   0.00%  │  0x00007fb60863d064:   mov    0x38(%rsp),%r10
  23.90%  │  0x00007fb60863d069:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 192)
  19.97%  │  0x00007fb60863d071:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
          │  0x00007fb60863d075:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
          │  0x00007fb60863d07c:   test   %eax,(%r11)                  ;   {poll}
          │  0x00007fb60863d07f:   nop
   4.92%  │  0x00007fb60863d080:   test   %r10d,%r10d
          ╰  0x00007fb60863d083:   je     0x00007fb60863d052           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
             0x00007fb60863d085:   movabs $0x7fb61edb0b90,%r10
             0x00007fb60863d08f:   call   *%r10
             0x00007fb60863d092:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@37 (line 193)
                                                                       ;   {other}
             0x00007fb60863d09a:   mov    0x30(%rsp),%r10
             0x00007fb60863d09f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 193)
....................................................................................................
  48.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 568 
  48.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 603 
   0.42%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.98%  <...other 298 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 568 
  48.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 603 
   1.77%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  _IO_old_init 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  stringStream::write 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.93%         c2, level 4
   1.77%              kernel
   0.14%           libjvm.so
   0.08%        libc-2.31.so
   0.04%                    
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6800.829 ns/op
# Warmup Iteration   2: 6726.943 ns/op
# Warmup Iteration   3: 6724.200 ns/op
# Warmup Iteration   4: 6724.312 ns/op
# Warmup Iteration   5: 6724.162 ns/op
Iteration   1: 6725.125 ns/op
Iteration   2: 6724.600 ns/op
Iteration   3: 6724.749 ns/op
Iteration   4: 6724.366 ns/op
Iteration   5: 6724.515 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  6724.671 ±(99.9%) 1.114 ns/op [Average]
  (min, avg, max) = (6724.366, 6724.671, 6725.125), stdev = 0.289
  CI (99.9%): [6723.557, 6725.785] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm":
PrintAssembly processed: 131163 total address lines.
Perf output processed (skipped 56.293 seconds):
 Column 1: cycles (50437 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 580 

                      # {method} {0x00007fc55347a500} &apos;scev_loop&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007fc5d4639f80:   mov    0x8(%rsi),%r10d
                      0x00007fc5d4639f84:   movabs $0x7fc557000000,%r11
                      0x00007fc5d4639f8e:   add    %r11,%r10
                      0x00007fc5d4639f91:   cmp    %r10,%rax
                      0x00007fc5d4639f94:   jne    0x00007fc5d40c4080           ;   {runtime_call ic_miss_stub}
                      0x00007fc5d4639f9a:   xchg   %ax,%ax
                      0x00007fc5d4639f9c:   nopl   0x0(%rax)
                    [Verified Entry Point]
   0.00%              0x00007fc5d4639fa0:   sub    $0x18,%rsp
                      0x00007fc5d4639fa7:   mov    %rbp,0x10(%rsp)
                      0x00007fc5d4639fac:   cmpl   $0x1,0x20(%r15)
   0.00%              0x00007fc5d4639fb4:   jne    0x00007fc5d463a0a2           ;*synchronization entry
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@-1 (line 61)
                      0x00007fc5d4639fba:   mov    0xc(%rsi),%r9d               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@6 (line 62)
                      0x00007fc5d4639fbe:   xor    %r8d,%r8d
                      0x00007fc5d4639fc1:   test   %r9d,%r9d
          ╭           0x00007fc5d4639fc4:   jle    0x00007fc5d463a084           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.01%  │           0x00007fc5d4639fca:   movslq %r9d,%r10
          │           0x00007fc5d4639fcd:   add    $0xfffffffffffffff1,%r10
          │           0x00007fc5d4639fd1:   mov    $0x1,%ebx
          │           0x00007fc5d4639fd6:   mov    $0xffffffff80000000,%r11
   0.01%  │           0x00007fc5d4639fdd:   cmp    $0xffffffff80000000,%r10
          │           0x00007fc5d4639fe4:   cmovl  %r11,%r10
          │           0x00007fc5d4639fe8:   mov    %r10d,%r10d
          │           0x00007fc5d4639feb:   cmp    $0x1,%r10d
          │╭          0x00007fc5d4639fef:   jle    0x00007fc5d463a088
   0.01%  ││          0x00007fc5d4639ff5:   mov    $0x3e80,%r11d                ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 62)
          ││          0x00007fc5d4639ffb:   xor    %eax,%eax
          ││ ↗        0x00007fc5d4639ffd:   mov    %r10d,%ecx
          ││ │        0x00007fc5d463a000:   sub    %ebx,%ecx
   0.00%  ││ │        0x00007fc5d463a002:   cmp    %ebx,%r10d
   0.00%  ││ │        0x00007fc5d463a005:   cmovl  %r8d,%ecx
          ││ │        0x00007fc5d463a009:   cmp    $0x3e80,%ecx
   0.00%  ││ │        0x00007fc5d463a00f:   cmova  %r11d,%ecx
   0.02%  ││ │        0x00007fc5d463a013:   add    %ebx,%ecx
          ││ │        0x00007fc5d463a015:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 63)
          ││↗│        0x00007fc5d463a020:   add    %ebx,%eax
   4.97%  ││││        0x00007fc5d463a022:   add    %ebx,%eax
   6.83%  ││││        0x00007fc5d463a024:   add    %ebx,%eax
   5.06%  ││││        0x00007fc5d463a026:   add    %ebx,%eax
   5.40%  ││││        0x00007fc5d463a028:   add    %ebx,%eax
   4.72%  ││││        0x00007fc5d463a02a:   add    %ebx,%eax
   5.37%  ││││        0x00007fc5d463a02c:   add    %ebx,%eax
   8.21%  ││││        0x00007fc5d463a02e:   add    %ebx,%eax
   4.94%  ││││        0x00007fc5d463a030:   lea    0x8(%rbx),%edx
   0.02%  ││││        0x00007fc5d463a033:   add    %edx,%eax
   4.68%  ││││        0x00007fc5d463a035:   add    %edx,%eax
   6.98%  ││││        0x00007fc5d463a037:   add    %edx,%eax
   7.03%  ││││        0x00007fc5d463a039:   add    %edx,%eax
   5.79%  ││││        0x00007fc5d463a03b:   add    %edx,%eax
   5.63%  ││││        0x00007fc5d463a03d:   add    %edx,%eax
   4.51%  ││││        0x00007fc5d463a03f:   add    %ebx,%eax
   4.25%  ││││        0x00007fc5d463a041:   add    %ebx,%eax
   5.74%  ││││        0x00007fc5d463a043:   add    $0x48,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
   8.21%  ││││        0x00007fc5d463a046:   add    $0x10,%ebx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   0.00%  ││││        0x00007fc5d463a049:   cmp    %ecx,%ebx
          ││╰│        0x00007fc5d463a04b:   jl     0x00007fc5d463a020           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
          ││ │        0x00007fc5d463a04d:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rsi=Oop }
          ││ │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 62)
          ││ │        0x00007fc5d463a054:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 62)
          ││ │                                                                  ;   {poll}
   0.01%  ││ │        0x00007fc5d463a056:   cmp    %r10d,%ebx
          ││ ╰        0x00007fc5d463a059:   jl     0x00007fc5d4639ffd
          ││      ↗   0x00007fc5d463a05b:   nopl   0x0(%rax,%rax,1)
          ││      │   0x00007fc5d463a060:   cmp    %r9d,%ebx
          ││  ╭   │   0x00007fc5d463a063:   jge    0x00007fc5d463a071
          ││  │   │   0x00007fc5d463a065:   data16 xchg %ax,%ax                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││  │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 63)
   0.10%  ││  │↗  │   0x00007fc5d463a068:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
   0.01%  ││  ││  │   0x00007fc5d463a06a:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   0.02%  ││  ││  │   0x00007fc5d463a06c:   cmp    %r9d,%ebx
          ││  │╰  │   0x00007fc5d463a06f:   jl     0x00007fc5d463a068           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
          ││  ↘  ↗│   0x00007fc5d463a071:   add    $0x10,%rsp
   0.00%  ││     ││   0x00007fc5d463a075:   pop    %rbp
          ││     ││↗  0x00007fc5d463a076:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││    ╭│││  0x00007fc5d463a07d:   ja     0x00007fc5d463a08c
          ││    ││││  0x00007fc5d463a083:   ret    
          ↘│    ││││  0x00007fc5d463a084:   xor    %eax,%eax
           │    │╰││  0x00007fc5d463a086:   jmp    0x00007fc5d463a071
           ↘    │ ││  0x00007fc5d463a088:   xor    %eax,%eax
                │ ╰│  0x00007fc5d463a08a:   jmp    0x00007fc5d463a05b
                ↘  ╰  0x00007fc5d463a08c:   movabs $0x7fc5d463a076,%r10         ;   {internal_word}
                      0x00007fc5d463a096:   mov    %r10,0x468(%r15)
                      0x00007fc5d463a09d:   jmp    0x00007fc5d40cb000           ;   {runtime_call SafepointBlob}
....................................................................................................
  98.54%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 580 
   0.19%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 608 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.69%  <...other 244 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 580 
   1.17%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 608 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  return entry points  
   0.01%        libc-2.31.so  __strncmp_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.11%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.56%         c2, level 4
   1.17%              kernel
   0.12%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%          ld-2.31.so
   0.00%    perf-1955114.map
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

Benchmark                                                  (size)  Mode  Cnt     Score   Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline        16384  avgt    5     7.734 ± 0.005  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop       16384  avgt    5  6724.671 ± 1.114  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm   16384  avgt            NaN            ---
