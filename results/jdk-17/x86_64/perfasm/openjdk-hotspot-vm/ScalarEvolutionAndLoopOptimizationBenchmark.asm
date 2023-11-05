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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.550 ns/op
# Warmup Iteration   2: 6.195 ns/op
# Warmup Iteration   3: 7.361 ns/op
# Warmup Iteration   4: 6.189 ns/op
# Warmup Iteration   5: 6.188 ns/op
Iteration   1: 6.189 ns/op
Iteration   2: 6.188 ns/op
Iteration   3: 6.193 ns/op
Iteration   4: 6.190 ns/op
Iteration   5: 6.190 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.190 ±(99.9%) 0.007 ns/op [Average]
  (min, avg, max) = (6.188, 6.190, 6.193), stdev = 0.002
  CI (99.9%): [6.183, 6.197] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm":
PrintAssembly processed: 117704 total address lines.
Perf output processed (skipped 55.710 seconds):
 Column 1: cycles (51437 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 515 

              0x00007f985cf66da6:   mov    0x38(%rsp),%r10
              0x00007f985cf66dab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f985cf66e5c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 188)
              0x00007f985cf66db3:   mov    $0x1,%ebp
              0x00007f985cf66db8:   test   %r11d,%r11d
          ╭   0x00007f985cf66dbb:   jne    0x00007f985cf66dec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
          │   0x00007f985cf66dbd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 189)
   6.09%  │↗  0x00007f985cf66dc0:   mov    0x40(%rsp),%rsi
          ││  0x00007f985cf66dc5:   xchg   %ax,%ax
          ││  0x00007f985cf66dc7:   call   0x00007f985c9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 186)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007f985cf66dcc:   mov    0x38(%rsp),%r10
  18.24%  ││  0x00007f985cf66dd1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
  24.14%  ││  0x00007f985cf66dd9:   mov    0x348(%r15),%r11
          ││  0x00007f985cf66de0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 188)
          ││  0x00007f985cf66de4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007f985cf66de7:   test   %r10d,%r10d
          │╰  0x00007f985cf66dea:   je     0x00007f985cf66dc0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 189)
          ↘   0x00007f985cf66dec:   movabs $0x7f9871490d10,%r10
              0x00007f985cf66df6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  48.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 487 

             # {method} {0x00007f9823c74948} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
             #           [sp+0x20]  (sp of caller)
             0x00007f985cf63d80:   mov    0x8(%rsi),%r10d
             0x00007f985cf63d84:   movabs $0x800000000,%r11
             0x00007f985cf63d8e:   add    %r11,%r10
             0x00007f985cf63d91:   cmp    %r10,%rax
             0x00007f985cf63d94:   jne    0x00007f985c9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f985cf63d9a:   xchg   %ax,%ax
             0x00007f985cf63d9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   6.20%     0x00007f985cf63da0:   sub    $0x18,%rsp
             0x00007f985cf63da7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@-1 (line 73)
             0x00007f985cf63dac:   mov    0xc(%rsi),%r11d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 73)
   6.05%     0x00007f985cf63db0:   mov    %r11d,%r10d
             0x00007f985cf63db3:   inc    %r10d
             0x00007f985cf63db6:   imul   %r11d,%r10d                  ;*imul {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 73)
  23.94%     0x00007f985cf63dba:   mov    %r10d,%eax
             0x00007f985cf63dbd:   shr    $0x1f,%eax
             0x00007f985cf63dc0:   add    %r10d,%eax
             0x00007f985cf63dc3:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 73)
   5.97%     0x00007f985cf63dc5:   add    $0x10,%rsp
             0x00007f985cf63dc9:   pop    %rbp
             0x00007f985cf63dca:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          ╭  0x00007f985cf63dd1:   ja     0x00007f985cf63dd8
   6.11%  │  0x00007f985cf63dd7:   ret    
          ↘  0x00007f985cf63dd8:   movabs $0x7f985cf63dca,%r10         ;   {internal_word}
             0x00007f985cf63de2:   mov    %r10,0x358(%r15)
             0x00007f985cf63de9:   jmp    0x00007f985ca02700           ;   {runtime_call SafepointBlob}
             0x00007f985cf63dee:   hlt    
             0x00007f985cf63def:   hlt    
             0x00007f985cf63df0:   hlt    
             0x00007f985cf63df1:   hlt    
             0x00007f985cf63df2:   hlt    
             0x00007f985cf63df3:   hlt    
             0x00007f985cf63df4:   hlt    
....................................................................................................
  48.27%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 515 
  48.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 487 
   2.25%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
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
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.57%  <...other 197 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 515 
  48.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 487 
   3.01%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.00%      hsdis-amd64.so  hsdis_read_memory_func 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%  libpthread-2.31.so  __libc_write 
   0.00%      hsdis-amd64.so  print_insn 
   0.08%  <...other 38 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.74%         c2, level 4
   3.01%              kernel
   0.10%           libjvm.so
   0.08%        libc-2.31.so
   0.02%                    
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6792.291 ns/op
# Warmup Iteration   2: 6724.837 ns/op
# Warmup Iteration   3: 6724.080 ns/op
# Warmup Iteration   4: 6725.659 ns/op
# Warmup Iteration   5: 6729.406 ns/op
Iteration   1: 6725.716 ns/op
Iteration   2: 6725.524 ns/op
Iteration   3: 6723.311 ns/op
Iteration   4: 6724.788 ns/op
Iteration   5: 6725.213 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  6724.910 ±(99.9%) 3.698 ns/op [Average]
  (min, avg, max) = (6723.311, 6724.910, 6725.716), stdev = 0.960
  CI (99.9%): [6721.212, 6728.608] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm":
PrintAssembly processed: 114288 total address lines.
Perf output processed (skipped 55.463 seconds):
 Column 1: cycles (50911 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 454 

                      0x00007f18e4f63d34:   jne    0x00007f18e49fbd80           ;   {runtime_call ic_miss_stub}
                      0x00007f18e4f63d3a:   xchg   %ax,%ax
                      0x00007f18e4f63d3c:   nopl   0x0(%rax)
                    [Verified Entry Point]
                      0x00007f18e4f63d40:   sub    $0x18,%rsp
                      0x00007f18e4f63d47:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@-1 (line 63)
                      0x00007f18e4f63d4c:   mov    0xc(%rsi),%r10d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@6 (line 64)
                      0x00007f18e4f63d50:   xor    %r8d,%r8d
   0.01%              0x00007f18e4f63d53:   test   %r10d,%r10d
          ╭           0x00007f18e4f63d56:   jle    0x00007f18e4f63e28           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 64)
          │           0x00007f18e4f63d5c:   mov    %r10d,%r11d
          │           0x00007f18e4f63d5f:   add    $0xfffffff1,%r11d
          │           0x00007f18e4f63d63:   mov    $0x1,%ebp
   0.00%  │           0x00007f18e4f63d68:   mov    $0x80000000,%r9d
          │           0x00007f18e4f63d6e:   cmp    %r11d,%r10d
          │           0x00007f18e4f63d71:   cmovl  %r9d,%r11d
          │           0x00007f18e4f63d75:   cmp    $0x1,%r11d
          │╭          0x00007f18e4f63d79:   jle    0x00007f18e4f63e02
   0.01%  ││          0x00007f18e4f63d7f:   mov    $0x3e80,%ecx                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 64)
          ││          0x00007f18e4f63d84:   xor    %r9d,%r9d
          ││╭         0x00007f18e4f63d87:   jmp    0x00007f18e4f63de8
          │││         0x00007f18e4f63d8c:   nopl   0x0(%rax)
   0.01%  │││↗        0x00007f18e4f63d90:   mov    %eax,%r9d                    ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 65)
          ││││ ↗      0x00007f18e4f63d93:   add    %ebp,%r9d
   7.22%  ││││ │      0x00007f18e4f63d96:   add    %ebp,%r9d
   6.06%  ││││ │      0x00007f18e4f63d99:   add    %ebp,%r9d
   5.97%  ││││ │      0x00007f18e4f63d9c:   add    %ebp,%r9d
   5.35%  ││││ │      0x00007f18e4f63d9f:   add    %ebp,%r9d
   6.44%  ││││ │      0x00007f18e4f63da2:   add    %ebp,%r9d
   5.70%  ││││ │      0x00007f18e4f63da5:   add    %ebp,%r9d
   5.37%  ││││ │      0x00007f18e4f63da8:   add    %ebp,%r9d
   6.39%  ││││ │      0x00007f18e4f63dab:   add    %ebp,%r9d
   3.98%  ││││ │      0x00007f18e4f63dae:   add    %ebp,%r9d
   4.84%  ││││ │      0x00007f18e4f63db1:   add    %ebp,%r9d
   7.14%  ││││ │      0x00007f18e4f63db4:   mov    %ebp,%edx
   0.06%  ││││ │      0x00007f18e4f63db6:   add    $0x8,%edx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 64)
          ││││ │      0x00007f18e4f63db9:   add    %edx,%r9d
   4.10%  ││││ │      0x00007f18e4f63dbc:   add    %ebp,%r9d
   7.84%  ││││ │      0x00007f18e4f63dbf:   mov    %ebp,%eax
   0.03%  ││││ │      0x00007f18e4f63dc1:   add    $0xc,%eax
          ││││ │      0x00007f18e4f63dc4:   add    %r9d,%eax
   5.83%  ││││ │      0x00007f18e4f63dc7:   add    %edx,%eax
   4.24%  ││││ │      0x00007f18e4f63dc9:   add    %edx,%eax
   5.26%  ││││ │      0x00007f18e4f63dcb:   add    $0x54,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 65)
   5.56%  ││││ │      0x00007f18e4f63dce:   add    $0x10,%ebp                   ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││││ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 64)
   0.08%  ││││ │      0x00007f18e4f63dd1:   cmp    %edi,%ebp
          │││╰ │      0x00007f18e4f63dd3:   jl     0x00007f18e4f63d90           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 64)
          │││  │      0x00007f18e4f63dd5:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rsi=Oop }
          │││  │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││  │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 64)
          │││  │      0x00007f18e4f63ddc:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@19 (line 64)
          │││  │                                                                ;   {poll}
   0.01%  │││  │      0x00007f18e4f63ddf:   nop
          │││  │      0x00007f18e4f63de0:   cmp    %r11d,%ebp
          │││ ╭│      0x00007f18e4f63de3:   jge    0x00007f18e4f63e04
          │││ ││      0x00007f18e4f63de5:   mov    %eax,%r9d
          ││↘ ││      0x00007f18e4f63de8:   mov    %r11d,%edi
   0.01%  ││  ││      0x00007f18e4f63deb:   sub    %ebp,%edi
          ││  ││      0x00007f18e4f63ded:   cmp    %ebp,%r11d
          ││  ││      0x00007f18e4f63df0:   cmovl  %r8d,%edi
          ││  ││      0x00007f18e4f63df4:   cmp    $0x3e80,%edi
   0.01%  ││  ││      0x00007f18e4f63dfa:   cmova  %ecx,%edi
          ││  ││      0x00007f18e4f63dfd:   add    %ebp,%edi
          ││  ││      0x00007f18e4f63dff:   nop
   0.01%  ││  │╰      0x00007f18e4f63e00:   jmp    0x00007f18e4f63d93
          │↘  │       0x00007f18e4f63e02:   xor    %eax,%eax
          │   ↘       0x00007f18e4f63e04:   cmp    %r10d,%ebp
          │     ╭     0x00007f18e4f63e07:   jge    0x00007f18e4f63e15
          │     │     0x00007f18e4f63e09:   data16 xchg %ax,%ax                 ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@12 (line 65)
   0.05%  │     │↗    0x00007f18e4f63e0c:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 65)
   0.00%  │     ││    0x00007f18e4f63e0e:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │     ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 64)
   0.00%  │     ││    0x00007f18e4f63e10:   cmp    %r10d,%ebp
          │     │╰    0x00007f18e4f63e13:   jl     0x00007f18e4f63e0c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │     │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 64)
          │     ↘  ↗  0x00007f18e4f63e15:   add    $0x10,%rsp
   0.00%  │        │  0x00007f18e4f63e19:   pop    %rbp
          │        │  0x00007f18e4f63e1a:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │       ╭│  0x00007f18e4f63e21:   ja     0x00007f18e4f63e2c
          │       ││  0x00007f18e4f63e27:   ret    
          ↘       ││  0x00007f18e4f63e28:   xor    %eax,%eax
                  │╰  0x00007f18e4f63e2a:   jmp    0x00007f18e4f63e15
                  ↘   0x00007f18e4f63e2c:   movabs $0x7f18e4f63e1a,%r10         ;   {internal_word}
                      0x00007f18e4f63e36:   mov    %r10,0x358(%r15)
                      0x00007f18e4f63e3d:   jmp    0x00007f18e4a02700           ;   {runtime_call SafepointBlob}
                      0x00007f18e4f63e42:   hlt    
                      0x00007f18e4f63e43:   hlt    
....................................................................................................
  97.60%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.60%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 454 
   1.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%              kernel  [unknown] 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 487 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.76%  <...other 277 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.60%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 454 
   2.08%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%        libc-2.31.so  [unknown] 
   0.03%                      <unknown> 
   0.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 487 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  os::elapsed_counter 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  fileStream::write 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%        libc-2.31.so  _int_realloc 
   0.10%  <...other 46 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.62%         c2, level 4
   2.08%              kernel
   0.15%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:36

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

Benchmark                                                   (size)  Mode  Cnt     Score   Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline         16384  avgt    5     6.190 ± 0.007  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:·asm    16384  avgt            NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop        16384  avgt    5  6724.910 ± 3.698  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:·asm   16384  avgt            NaN            ---
