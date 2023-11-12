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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline
# Parameters: (size = 16384)

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.052 ns/op
# Warmup Iteration   2: 6.966 ns/op
# Warmup Iteration   3: 6.999 ns/op
# Warmup Iteration   4: 6.961 ns/op
# Warmup Iteration   5: 6.962 ns/op
Iteration   1: 6.961 ns/op
Iteration   2: 6.970 ns/op
Iteration   3: 6.962 ns/op
Iteration   4: 6.966 ns/op
Iteration   5: 6.961 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline":
  6.964 ±(99.9%) 0.016 ns/op [Average]
  (min, avg, max) = (6.961, 6.964, 6.970), stdev = 0.004
  CI (99.9%): [6.948, 6.980] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm":
PrintAssembly processed: 218197 total address lines.
Perf output processed (skipped 60.360 seconds):
 Column 1: cycles (50781 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 997 

              0x00007f52cf243a90:   mov    0x18(%rsp),%rsi
              0x00007f52cf243a95:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f52cf243aa0:   cmpb   $0x0,0x94(%rsi)
              0x00007f52cf243aa7:   jne    0x00007f52cf243b3a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
              0x00007f52cf243aad:   movq   $0x1,0x20(%rsp)
          ╭   0x00007f52cf243ab6:   jmp    0x00007f52cf243acf           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
          │   0x00007f52cf243abb:   nopl   0x0(%rax,%rax,1)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
   5.43%  │↗  0x00007f52cf243ac0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
          ││  0x00007f52cf243ac7:   test   %eax,(%r11)                  ;   {poll}
   0.04%  ││  0x00007f52cf243aca:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@13 (line 190)
          ↘│  0x00007f52cf243acf:   mov    0x8(%rsp),%r10
   5.37%   │  0x00007f52cf243ad4:   mov    %r10,%rsi
           │  0x00007f52cf243ad7:   call   0x00007f52cec2f380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  13.37%   │  0x00007f52cf243adc:   nopl   0x500024c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007f52cf243ae4:   mov    0x20(%rsp),%r10
   0.06%   │  0x00007f52cf243ae9:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@26 (line 191)
   5.62%   │  0x00007f52cf243aec:   mov    0x18(%rsp),%rsi
           │  0x00007f52cf243af1:   cmpb   $0x0,0x94(%rsi)
  21.88%   ╰  0x00007f52cf243af8:   je     0x00007f52cf243ac0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 192)
              0x00007f52cf243afa:   mov    %r10,0x20(%rsp)              ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 193)
              0x00007f52cf243aff:   nop
              0x00007f52cf243b00:   call   0x00007f52e6392df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007f52cf243b05:   nop
              0x00007f52cf243b06:   mov    0x10(%rsp),%rdx
              0x00007f52cf243b0b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 193)
              0x00007f52cf243b0f:   movq   $0x0,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  51.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 959 

              # {method} {0x00007f524847ce18} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/ScalarEvolutionAndLoopOptimizationBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007f52cf23bb00:   mov    0x8(%rsi),%r10d
              0x00007f52cf23bb04:   movabs $0x7f5253000000,%r12
              0x00007f52cf23bb0e:   add    %r12,%r10
              0x00007f52cf23bb11:   xor    %r12,%r12
              0x00007f52cf23bb14:   cmp    %r10,%rax
              0x00007f52cf23bb17:   jne    0x00007f52cec2f080           ;   {runtime_call ic_miss_stub}
              0x00007f52cf23bb1d:   data16 xchg %ax,%ax
            [Verified Entry Point]
   0.01%      0x00007f52cf23bb20:   mov    %eax,-0x14000(%rsp)
   5.34%      0x00007f52cf23bb27:   sub    $0x18,%rsp
   0.02%      0x00007f52cf23bb2b:   nop
              0x00007f52cf23bb2c:   cmpl   $0x1,0x20(%r15)
   5.52%  ╭   0x00007f52cf23bb34:   jne    0x00007f52cf23bb6e
   3.04%  │↗  0x00007f52cf23bb3a:   mov    0xc(%rsi),%eax               ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@1 (line 71)
   0.01%  ││  0x00007f52cf23bb3d:   mov    %eax,%r10d
          ││  0x00007f52cf23bb40:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@9 (line 71)
   2.23%  ││  0x00007f52cf23bb43:   imul   %eax,%r10d                   ;*imul {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@10 (line 71)
  24.37%  ││  0x00007f52cf23bb47:   mov    %r10d,%eax
          ││  0x00007f52cf23bb4a:   shr    $0x1f,%eax
   0.04%  ││  0x00007f52cf23bb4d:   add    %r10d,%eax
   0.04%  ││  0x00007f52cf23bb50:   sar    %eax                         ;*idiv {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline@12 (line 71)
   5.24%  ││  0x00007f52cf23bb52:   add    $0x18,%rsp
          ││  0x00007f52cf23bb56:   data16 nopw 0x0(%rax,%rax,1)
          ││  0x00007f52cf23bb60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f52cf23bb67:   ja     0x00007f52cf23bb7b
          ││  0x00007f52cf23bb6d:   ret    
          ↘│  0x00007f52cf23bb6e:   mov    %rbp,0x10(%rsp)
           │  0x00007f52cf23bb73:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           ╰  0x00007f52cf23bb78:   jmp    0x00007f52cf23bb3a
              0x00007f52cf23bb7a:   hlt    
              0x00007f52cf23bb7b:   lea    -0x22(%rip),%rcx        # 0x00007f52cf23bb60
....................................................................................................
  45.86%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 997 
  45.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 959 
   0.77%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.98%  <...other 346 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.78%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 997 
  45.86%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::baseline, version 2, compile id 959 
   2.00%               kernel  [unknown] 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%            libjvm.so  xmlStream::write_text 
   0.01%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.00%         libc-2.31.so  __GI___libc_write 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%   libpthread-2.31.so  __pthread_enable_asynccancel 
   0.16%  <...other 78 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.64%       jvmci, level 4
   2.00%               kernel
   0.14%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.01%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop
# Parameters: (size = 16384)

# Run progress: 50.00% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 814.710 ns/op
# Warmup Iteration   2: 805.501 ns/op
# Warmup Iteration   3: 803.528 ns/op
# Warmup Iteration   4: 803.378 ns/op
# Warmup Iteration   5: 803.395 ns/op
Iteration   1: 803.396 ns/op
Iteration   2: 803.729 ns/op
Iteration   3: 803.538 ns/op
Iteration   4: 803.450 ns/op
Iteration   5: 803.595 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop":
  803.542 ±(99.9%) 0.500 ns/op [Average]
  (min, avg, max) = (803.396, 803.542, 803.729), stdev = 0.130
  CI (99.9%): [803.042, 804.042] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm":
PrintAssembly processed: 218406 total address lines.
Perf output processed (skipped 60.275 seconds):
 Column 1: cycles (51060 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 962 

                     0x00007f68a723decc:   mov    $0x2,%r10d
                     0x00007f68a723ded2:   cmovl  %eax,%r10d
                     0x00007f68a723ded6:   mov    $0x0,%r8d
   0.05%             0x00007f68a723dedc:   mov    $0x1,%r11d
          ╭          0x00007f68a723dee2:   jmp    0x00007f68a723df06           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
          │          0x00007f68a723dee7:   data16 data16 nopw 0x0(%rax,%rax,1)
          │          0x00007f68a723def2:   data16 data16 xchg %ax,%ax
          │          0x00007f68a723def6:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.05%  │↗         0x00007f68a723df00:   add    %r11d,%r8d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
          ││         0x00007f68a723df03:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
          ↘│         0x00007f68a723df06:   cmp    %r11d,%r10d
           ╰         0x00007f68a723df09:   jg     0x00007f68a723df00
   0.00%             0x00007f68a723df0b:   lea    -0x10(%rax),%r10d
   0.06%             0x00007f68a723df0f:   mov    %r8d,0x4(%rsp)
                     0x00007f68a723df14:   mov    %r11d,%r8d
                     0x00007f68a723df17:   mov    0x4(%rsp),%r11d
   0.00%             0x00007f68a723df1c:   nopl   0x0(%rax)
   0.05%    ╭        0x00007f68a723df20:   jmp    0x00007f68a723df52
            │        0x00007f68a723df25:   data16 data16 nopw 0x0(%rax,%rax,1)
            │        0x00007f68a723df30:   data16 data16 xchg %ax,%ax
            │        0x00007f68a723df34:   nopl   0x0(%rax,%rax,1)
            │        0x00007f68a723df3c:   data16 data16 xchg %ax,%ax          ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.14%    │↗       0x00007f68a723df40:   lea    0x10(%r8),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   0.01%    ││       0x00007f68a723df44:   shl    $0x4,%r8d
  47.87%    ││       0x00007f68a723df48:   add    %r8d,%r11d
   0.01%    ││       0x00007f68a723df4b:   lea    0x78(%r11),%r11d
  47.86%    ││       0x00007f68a723df4f:   mov    %r9d,%r8d                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
            ↘│       0x00007f68a723df52:   cmp    %r8d,%r10d
             ╰       0x00007f68a723df55:   jg     0x00007f68a723df40
              ╭      0x00007f68a723df57:   jmp    0x00007f68a723df70
              │      0x00007f68a723df5c:   nopl   0x0(%rax)                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.30%      │↗     0x00007f68a723df60:   mov    %r8d,%r10d
              ││     0x00007f68a723df63:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@16 (line 62)
   0.30%      ││     0x00007f68a723df66:   add    %r8d,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@14 (line 63)
              ││     0x00007f68a723df69:   mov    %r10d,%r8d                   ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
              ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@4 (line 62)
   0.33%      ││     0x00007f68a723df6c:   nopl   0x0(%rax)
              ↘│     0x00007f68a723df70:   cmp    %r8d,%eax
               ╰     0x00007f68a723df73:   jg     0x00007f68a723df60           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
   0.03%         ↗   0x00007f68a723df75:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                 │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@23 (line 65)
                 │   0x00007f68a723df78:   add    $0x18,%rsp
                 │   0x00007f68a723df7c:   nopl   0x0(%rax)
                 │↗  0x00007f68a723df80:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                ╭││  0x00007f68a723df87:   ja     0x00007f68a723dfa6
   0.03%        │││  0x00007f68a723df8d:   ret                                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@9 (line 62)
                │││  0x00007f68a723df8e:   mov    $0x0,%r11d
                │╰│  0x00007f68a723df94:   jmp    0x00007f68a723df75           ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop@22 (line 65)
                │ │  0x00007f68a723df96:   mov    %rbp,0x10(%rsp)
                │ │  0x00007f68a723df9b:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                │ │  0x00007f68a723dfa0:   jmp    0x00007f68a723deba
                │ │  0x00007f68a723dfa5:   hlt    
                ↘ ╰  0x00007f68a723dfa6:   lea    -0x2d(%rip),%rcx        # 0x00007f68a723df80
                     0x00007f68a723dfad:   mov    %rcx,0x468(%r15)
....................................................................................................
  97.03%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.03%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 962 
   1.21%               kernel  [unknown] 
   0.18%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 962 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 993 
   0.10%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   0.86%  <...other 296 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.21%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ScalarEvolutionAndLoopOptimizationBenchmark::scev_loop, version 3, compile id 962 
   2.27%               kernel  [unknown] 
   0.14%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.ScalarEvolutionAndLoopOptimizationBenchmark_scev_loop_jmhTest::scev_loop_avgt_jmhStub, version 5, compile id 993 
   0.04%                       <unknown> 
   0.02%         libc-2.31.so  __vfprintf_internal 
   0.02%         libc-2.31.so  __strchr_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  stringStream::write 
   0.01%         libc-2.31.so  syscall 
   0.01%         libc-2.31.so  _IO_fwrite 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  xmlStream::write_text 
   0.00%            libjvm.so  StatSamplerTask::task 
   0.00%         libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%          interpreter  return entry points  
   0.00%         libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.20%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.35%       jvmci, level 4
   2.27%               kernel
   0.12%            libjvm.so
   0.11%         libc-2.31.so
   0.05%  libjvmcicompiler.so
   0.04%                     
   0.01%           ld-2.31.so
   0.01%       hsdis-amd64.so
   0.01%   libpthread-2.31.so
   0.01%          interpreter
   0.01%          c1, level 3
   0.00%               [vdso]
   0.00%     perf-2128265.map
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

Benchmark                                                  (size)  Mode  Cnt    Score   Error  Units
ScalarEvolutionAndLoopOptimizationBenchmark.baseline        16384  avgt    5    6.964 ± 0.016  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.baseline:asm    16384  avgt           NaN            ---
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop       16384  avgt    5  803.542 ± 0.500  ns/op
ScalarEvolutionAndLoopOptimizationBenchmark.scev_loop:asm   16384  avgt           NaN            ---
