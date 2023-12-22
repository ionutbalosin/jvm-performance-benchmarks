# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
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
# Warmup Iteration   1: 11.996 ns/op
# Warmup Iteration   2: 10.625 ns/op
# Warmup Iteration   3: 11.913 ns/op
# Warmup Iteration   4: 10.559 ns/op
# Warmup Iteration   5: 10.702 ns/op
Iteration   1: 10.471 ns/op
Iteration   2: 10.528 ns/op
Iteration   3: 10.989 ns/op
Iteration   4: 10.615 ns/op
Iteration   5: 10.571 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  10.635 ±(99.9%) 0.789 ns/op [Average]
  (min, avg, max) = (10.471, 10.635, 10.989), stdev = 0.205
  CI (99.9%): [9.846, 11.424] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm":
PrintAssembly processed: 131792 total address lines.
Perf output processed (skipped 72.235 seconds):
 Column 1: cycles (50441 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 678 

                # {method} {0x00007f276f47b130} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007f27f84f8080:   mov    0x8(%rsi),%r10d
                0x00007f27f84f8084:   movabs $0x7f2773000000,%r11
                0x00007f27f84f808e:   add    %r11,%r10
                0x00007f27f84f8091:   cmp    %r10,%rax
                0x00007f27f84f8094:   jne    0x00007f27f7f85080           ;   {runtime_call ic_miss_stub}
                0x00007f27f84f809a:   xchg   %ax,%ax
                0x00007f27f84f809c:   nopl   0x0(%rax)
              [Verified Entry Point]
   8.92%        0x00007f27f84f80a0:   sub    $0x18,%rsp
   1.62%        0x00007f27f84f80a7:   mov    %rbp,0x10(%rsp)
   4.79%        0x00007f27f84f80ac:   cmpl   $0x1,0x20(%r15)
   4.26%  ╭     0x00007f27f84f80b4:   jne    0x00007f27f84f80fc           ;*synchronization entry
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@-1 (line 71)
   0.02%  │  ↗  0x00007f27f84f80ba:   mov    0xc(%rsi),%r11d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 71)
   1.48%  │  │  0x00007f27f84f80be:   mov    %r11d,%r10d
   4.52%  │  │  0x00007f27f84f80c1:   inc    %r10d
   4.34%  │  │  0x00007f27f84f80c4:   imul   %r11d,%r10d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 71)
   5.18%  │  │  0x00007f27f84f80c8:   mov    %r10d,%eax
   1.45%  │  │  0x00007f27f84f80cb:   shr    $0x1f,%eax
   4.39%  │  │  0x00007f27f84f80ce:   add    %r10d,%eax
   7.59%  │  │  0x00007f27f84f80d1:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 71)
   5.16%  │  │  0x00007f27f84f80d3:   add    $0x10,%rsp
   0.53%  │  │  0x00007f27f84f80d7:   pop    %rbp
   2.32%  │ ↗│  0x00007f27f84f80d8:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007f27f84f80df:   ja     0x00007f27f84f80e6
   7.82%  ││││  0x00007f27f84f80e5:   ret    
          │↘╰│  0x00007f27f84f80e6:   movabs $0x7f27f84f80d8,%r10         ;   {internal_word}
          │  │  0x00007f27f84f80f0:   mov    %r10,0x468(%r15)
          │  │  0x00007f27f84f80f7:   jmp    0x00007f27f7f8c000           ;   {runtime_call SafepointBlob}
          ↘  │  0x00007f27f84f80fc:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
             ╰  0x00007f27f84f8101:   jmp    0x00007f27f84f80ba
                0x00007f27f84f8106:   hlt    
                0x00007f27f84f8107:   hlt    
              [Exception Handler]
                0x00007f27f84f8108:   jmp    0x00007f27f8057380           ;   {no_reloc}
              [Deopt Handler Code]
....................................................................................................
  64.40%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 720 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 190)
              0x00007f27f84fbf35:   mov    0x38(%rsp),%r10
              0x00007f27f84fbf3a:   nopw   0x0(%rax,%rax,1)
              0x00007f27f84fbf40:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f27f84fc014
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 192)
              0x00007f27f84fbf48:   mov    $0x1,%ebp
              0x00007f27f84fbf4d:   test   %r11d,%r11d
          ╭   0x00007f27f84fbf50:   jne    0x00007f27f84fbf85           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
   3.17%  │↗  0x00007f27f84fbf52:   mov    0x40(%rsp),%rsi
   1.70%  ││  0x00007f27f84fbf57:   call   0x00007f27f7f85380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {optimized virtual_call}
   0.61%  ││  0x00007f27f84fbf5c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
          ││                                                            ;   {other}
   2.06%  ││  0x00007f27f84fbf64:   mov    0x38(%rsp),%r10
   8.49%  ││  0x00007f27f84fbf69:   movzbl 0x94(%r10),%r10d             ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 192)
   5.33%  ││  0x00007f27f84fbf71:   add    $0x1,%rbp                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
   1.62%  ││  0x00007f27f84fbf75:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
   1.81%  ││  0x00007f27f84fbf7c:   test   %eax,(%r11)                  ;   {poll}
   4.38%  ││  0x00007f27f84fbf7f:   nop
   2.47%  ││  0x00007f27f84fbf80:   test   %r10d,%r10d
          │╰  0x00007f27f84fbf83:   je     0x00007f27f84fbf52           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
          ↘   0x00007f27f84fbf85:   movabs $0x7f280dec8b90,%r10
              0x00007f27f84fbf8f:   call   *%r10
              0x00007f27f84fbf92:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@37 (line 193)
                                                                        ;   {other}
              0x00007f27f84fbf9a:   mov    0x30(%rsp),%r10
              0x00007f27f84fbf9f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 193)
....................................................................................................
  31.64%  <total for region 2>

....[Hottest Regions]...............................................................................
  64.40%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 678 
  31.64%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 720 
   0.35%                kernel  [unknown] 
   0.25%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.20%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   1.37%  <...other 250 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.40%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 678 
  31.64%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 720 
   3.49%                kernel  [unknown] 
   0.06%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  fileStream::write 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libjvm.so  StatSamplerTask::task 
   0.01%             libjvm.so  defaultStream::has_log_file 
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%                [vdso]  [unknown] 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  WatcherThread::sleep 
   0.01%                        <unknown> 
   0.01%             libc.so.6  __GI___pthread_disable_asynccancel 
   0.24%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.04%           c2, level 4
   3.49%                kernel
   0.26%             libjvm.so
   0.13%             libc.so.6
   0.04%           interpreter
   0.02%  ld-linux-x86-64.so.2
   0.01%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%                      
   0.00%           c1, level 3
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /usr/lib/jvm/openjdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:02:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 20135.275 ns/op
# Warmup Iteration   2: 19918.277 ns/op
# Warmup Iteration   3: 19941.568 ns/op
# Warmup Iteration   4: 19986.034 ns/op
# Warmup Iteration   5: 19957.754 ns/op
Iteration   1: 19889.423 ns/op
Iteration   2: 19969.009 ns/op
Iteration   3: 19914.191 ns/op
Iteration   4: 19884.079 ns/op
Iteration   5: 19837.236 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  19898.788 ±(99.9%) 185.282 ns/op [Average]
  (min, avg, max) = (19837.236, 19898.788, 19969.009), stdev = 48.117
  CI (99.9%): [19713.506, 20084.069] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm":
PrintAssembly processed: 130368 total address lines.
Perf output processed (skipped 70.722 seconds):
 Column 1: cycles (50604 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 660 

                      # {method} {0x00007f9c3f47b048} &apos;scev_loop&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
                      #           [sp+0x20]  (sp of caller)
                      0x00007f9ccc4f8d80:   mov    0x8(%rsi),%r10d
                      0x00007f9ccc4f8d84:   movabs $0x7f9c43000000,%r11
                      0x00007f9ccc4f8d8e:   add    %r11,%r10
                      0x00007f9ccc4f8d91:   cmp    %r10,%rax
                      0x00007f9ccc4f8d94:   jne    0x00007f9ccbf85080           ;   {runtime_call ic_miss_stub}
                      0x00007f9ccc4f8d9a:   xchg   %ax,%ax
                      0x00007f9ccc4f8d9c:   nopl   0x0(%rax)
                    [Verified Entry Point]
   0.01%              0x00007f9ccc4f8da0:   sub    $0x18,%rsp
                      0x00007f9ccc4f8da7:   mov    %rbp,0x10(%rsp)
   0.00%              0x00007f9ccc4f8dac:   cmpl   $0x1,0x20(%r15)
   0.01%              0x00007f9ccc4f8db4:   jne    0x00007f9ccc4f8ea2           ;*synchronization entry
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@-1 (line 61)
                      0x00007f9ccc4f8dba:   mov    0xc(%rsi),%r9d               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@6 (line 62)
   0.00%              0x00007f9ccc4f8dbe:   xor    %r8d,%r8d
                      0x00007f9ccc4f8dc1:   test   %r9d,%r9d
          ╭           0x00007f9ccc4f8dc4:   jle    0x00007f9ccc4f8e84           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.00%  │           0x00007f9ccc4f8dca:   movslq %r9d,%r10
          │           0x00007f9ccc4f8dcd:   add    $0xfffffffffffffff1,%r10
          │           0x00007f9ccc4f8dd1:   mov    $0x1,%ebx
          │           0x00007f9ccc4f8dd6:   mov    $0xffffffff80000000,%r11
   0.01%  │           0x00007f9ccc4f8ddd:   cmp    $0xffffffff80000000,%r10
          │           0x00007f9ccc4f8de4:   cmovl  %r11,%r10
          │           0x00007f9ccc4f8de8:   mov    %r10d,%r10d
          │           0x00007f9ccc4f8deb:   cmp    $0x1,%r10d
          │╭          0x00007f9ccc4f8def:   jle    0x00007f9ccc4f8e88
   0.00%  ││          0x00007f9ccc4f8df5:   mov    $0x3e80,%r11d                ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 62)
          ││          0x00007f9ccc4f8dfb:   xor    %eax,%eax
   0.00%  ││ ↗        0x00007f9ccc4f8dfd:   mov    %r10d,%ecx
          ││ │        0x00007f9ccc4f8e00:   sub    %ebx,%ecx
   0.01%  ││ │        0x00007f9ccc4f8e02:   cmp    %ebx,%r10d
   0.00%  ││ │        0x00007f9ccc4f8e05:   cmovl  %r8d,%ecx
          ││ │        0x00007f9ccc4f8e09:   cmp    $0x3e80,%ecx
          ││ │        0x00007f9ccc4f8e0f:   cmova  %r11d,%ecx
   0.02%  ││ │        0x00007f9ccc4f8e13:   add    %ebx,%ecx
          ││ │        0x00007f9ccc4f8e15:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 63)
          ││↗│        0x00007f9ccc4f8e20:   add    %ebx,%eax
   5.56%  ││││        0x00007f9ccc4f8e22:   add    %ebx,%eax
   5.83%  ││││        0x00007f9ccc4f8e24:   add    %ebx,%eax
   6.63%  ││││        0x00007f9ccc4f8e26:   add    %ebx,%eax
   4.72%  ││││        0x00007f9ccc4f8e28:   add    %ebx,%eax
   6.00%  ││││        0x00007f9ccc4f8e2a:   add    %ebx,%eax
   3.58%  ││││        0x00007f9ccc4f8e2c:   add    %ebx,%eax
   7.24%  ││││        0x00007f9ccc4f8e2e:   add    %ebx,%eax
   4.75%  ││││        0x00007f9ccc4f8e30:   lea    0x8(%rbx),%edx
   0.08%  ││││        0x00007f9ccc4f8e33:   add    %edx,%eax
   6.07%  ││││        0x00007f9ccc4f8e35:   add    %edx,%eax
   5.88%  ││││        0x00007f9ccc4f8e37:   add    %edx,%eax
   6.10%  ││││        0x00007f9ccc4f8e39:   add    %edx,%eax
   4.79%  ││││        0x00007f9ccc4f8e3b:   add    %edx,%eax
   6.69%  ││││        0x00007f9ccc4f8e3d:   add    %edx,%eax
   6.88%  ││││        0x00007f9ccc4f8e3f:   add    %ebx,%eax
   3.20%  ││││        0x00007f9ccc4f8e41:   add    %ebx,%eax
   4.89%  ││││        0x00007f9ccc4f8e43:   add    $0x48,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
   7.34%  ││││        0x00007f9ccc4f8e46:   add    $0x10,%ebx                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   0.05%  ││││        0x00007f9ccc4f8e49:   cmp    %ecx,%ebx
          ││╰│        0x00007f9ccc4f8e4b:   jl     0x00007f9ccc4f8e20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
          ││ │        0x00007f9ccc4f8e4d:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rsi=Oop }
          ││ │                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │                                                                  ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 62)
   0.00%  ││ │        0x00007f9ccc4f8e54:   test   %eax,(%rcx)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 62)
          ││ │                                                                  ;   {poll}
   0.01%  ││ │        0x00007f9ccc4f8e56:   cmp    %r10d,%ebx
          ││ ╰        0x00007f9ccc4f8e59:   jl     0x00007f9ccc4f8dfd
          ││      ↗   0x00007f9ccc4f8e5b:   nopl   0x0(%rax,%rax,1)
          ││      │   0x00007f9ccc4f8e60:   cmp    %r9d,%ebx
          ││  ╭   │   0x00007f9ccc4f8e63:   jge    0x00007f9ccc4f8e71
          ││  │   │   0x00007f9ccc4f8e65:   data16 xchg %ax,%ax                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││  │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 63)
   0.07%  ││  │↗  │   0x00007f9ccc4f8e68:   add    %ebx,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
   0.02%  ││  ││  │   0x00007f9ccc4f8e6a:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  ││  │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   0.01%  ││  ││  │   0x00007f9ccc4f8e6c:   cmp    %r9d,%ebx
          ││  │╰  │   0x00007f9ccc4f8e6f:   jl     0x00007f9ccc4f8e68           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  │   │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
          ││  ↘  ↗│   0x00007f9ccc4f8e71:   add    $0x10,%rsp
          ││     ││   0x00007f9ccc4f8e75:   pop    %rbp
   0.00%  ││     ││↗  0x00007f9ccc4f8e76:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││    ╭│││  0x00007f9ccc4f8e7d:   ja     0x00007f9ccc4f8e8c
          ││    ││││  0x00007f9ccc4f8e83:   ret    
          ↘│    ││││  0x00007f9ccc4f8e84:   xor    %eax,%eax
           │    │╰││  0x00007f9ccc4f8e86:   jmp    0x00007f9ccc4f8e71
           ↘    │ ││  0x00007f9ccc4f8e88:   xor    %eax,%eax
                │ ╰│  0x00007f9ccc4f8e8a:   jmp    0x00007f9ccc4f8e5b
                ↘  ╰  0x00007f9ccc4f8e8c:   movabs $0x7f9ccc4f8e76,%r10         ;   {internal_word}
                      0x00007f9ccc4f8e96:   mov    %r10,0x468(%r15)
                      0x00007f9ccc4f8e9d:   jmp    0x00007f9ccbf8c000           ;   {runtime_call SafepointBlob}
                      0x00007f9ccc4f8ea2:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
....................................................................................................
  96.45%  <total for region 1>

....[Hottest Regions]...............................................................................
  96.45%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 660 
   0.36%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.44%  <...other 267 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.45%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 660 
   2.99%                kernel  [unknown] 
   0.09%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  xmlStream::write 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%           c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 693 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  _IO_str_init_static_internal 
   0.01%             libc.so.6  clock_gettime@@GLIBC_2.17 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           interpreter  invokevirtual  182 invokevirtual  
   0.01%             libc.so.6  __GI___futex_abstimed_wait_cancelable64 
   0.01%             libjvm.so  outputStream::print 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.23%  <...other 94 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.47%           c2, level 4
   2.99%                kernel
   0.28%             libjvm.so
   0.17%             libc.so.6
   0.03%           interpreter
   0.03%        hsdis-amd64.so
   0.01%           c1, level 3
   0.01%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%                      
   0.00%           c1, level 1
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:16

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

Benchmark                                                  (size)  Mode  Cnt      Score     Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline        16384  avgt    5     10.635 ±   0.789  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm    16384  avgt             NaN              ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop       16384  avgt    5  19898.788 ± 185.282  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm   16384  avgt             NaN              ---
