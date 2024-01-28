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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.add
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 20.635 ns/op
# Warmup Iteration   2: 18.839 ns/op
# Warmup Iteration   3: 19.966 ns/op
# Warmup Iteration   4: 19.799 ns/op
# Warmup Iteration   5: 19.865 ns/op
Iteration   1: 19.632 ns/op
Iteration   2: 19.728 ns/op
Iteration   3: 19.690 ns/op
Iteration   4: 19.515 ns/op
Iteration   5: 19.727 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.add":
  19.658 ±(99.9%) 0.343 ns/op [Average]
  (min, avg, max) = (19.515, 19.658, 19.728), stdev = 0.089
  CI (99.9%): [19.316, 20.001] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.add:asm":
PrintAssembly processed: 125287 total address lines.
Perf output processed (skipped 56.138 seconds):
 Column 1: cycles (51175 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd, version 2, compile id 561

             #           [sp+0x30]  (sp of caller)
             0x00007fd710638c80:   mov    0x8(%rsi),%r10d
             0x00007fd710638c84:   movabs $0x7fd693000000,%r11
             0x00007fd710638c8e:   add    %r11,%r10
             0x00007fd710638c91:   cmp    %r10,%rax
             0x00007fd710638c94:   jne    0x00007fd7100c4080           ;   {runtime_call ic_miss_stub}
             0x00007fd710638c9a:   xchg   %ax,%ax
             0x00007fd710638c9c:   nopl   0x0(%rax)
           [Verified Entry Point]
             0x00007fd710638ca0:   mov    %eax,-0x14000(%rsp)
   2.04%     0x00007fd710638ca7:   push   %rbp
             0x00007fd710638ca8:   sub    $0x20,%rsp
             0x00007fd710638cac:   cmpl   $0x1,0x20(%r15)
   1.90%     0x00007fd710638cb4:   jne    0x00007fd710638dce           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@-1 (line 88)
             0x00007fd710638cba:   mov    0x10(%rsi),%r10              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@1 (line 88)
             0x00007fd710638cbe:   movzbl 0xc(%rsi),%r8d               ;*getfield isHeavy {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@6 (line 89)
             0x00007fd710638cc3:   test   %r8d,%r8d
          ╭  0x00007fd710638cc6:   je     0x00007fd710638d9d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@9 (line 89)
   1.89%  │  0x00007fd710638ccc:   lea    (%r10,%r10,1),%rax
          │  0x00007fd710638cd0:   add    %r10,%rax
          │  0x00007fd710638cd3:   add    %r10,%rax
          │  0x00007fd710638cd6:   add    %r10,%rax
   1.89%  │  0x00007fd710638cd9:   add    %r10,%rax
          │  0x00007fd710638cdc:   add    %r10,%rax
          │  0x00007fd710638cdf:   add    %r10,%rax
          │  0x00007fd710638ce2:   add    %r10,%rax
   1.88%  │  0x00007fd710638ce5:   add    %r10,%rax
          │  0x00007fd710638ce8:   add    %r10,%rax
          │  0x00007fd710638ceb:   add    %r10,%rax
          │  0x00007fd710638cee:   add    %r10,%rax
   1.79%  │  0x00007fd710638cf1:   add    %r10,%rax
          │  0x00007fd710638cf4:   add    %r10,%rax
          │  0x00007fd710638cf7:   add    %r10,%rax
          │  0x00007fd710638cfa:   add    %r10,%rax
   1.84%  │  0x00007fd710638cfd:   add    %r10,%rax
          │  0x00007fd710638d00:   add    %r10,%rax
          │  0x00007fd710638d03:   add    %r10,%rax
          │  0x00007fd710638d06:   add    %r10,%rax
   1.95%  │  0x00007fd710638d09:   add    %r10,%rax
          │  0x00007fd710638d0c:   add    %r10,%rax
          │  0x00007fd710638d0f:   add    %r10,%rax
          │  0x00007fd710638d12:   add    %r10,%rax
   2.13%  │  0x00007fd710638d15:   add    %r10,%rax
          │  0x00007fd710638d18:   add    %r10,%rax
          │  0x00007fd710638d1b:   add    %r10,%rax
          │  0x00007fd710638d1e:   add    %r10,%rax
   3.94%  │  0x00007fd710638d21:   add    %r10,%rax
          │  0x00007fd710638d24:   add    %r10,%rax
          │  0x00007fd710638d27:   add    %r10,%rax
          │  0x00007fd710638d2a:   add    %r10,%rax
   6.60%  │  0x00007fd710638d2d:   add    %r10,%rax
          │  0x00007fd710638d30:   add    %r10,%rax
          │  0x00007fd710638d33:   add    %r10,%rax
   0.00%  │  0x00007fd710638d36:   add    %r10,%rax
   7.61%  │  0x00007fd710638d39:   add    %r10,%rax
   0.00%  │  0x00007fd710638d3c:   add    %r10,%rax
   0.01%  │  0x00007fd710638d3f:   add    %r10,%rax
   0.02%  │  0x00007fd710638d42:   add    %r10,%rax
   7.42%  │  0x00007fd710638d45:   add    %r10,%rax
   0.03%  │  0x00007fd710638d48:   add    %r10,%rax
   0.05%  │  0x00007fd710638d4b:   add    %r10,%rax
   0.09%  │  0x00007fd710638d4e:   add    %r10,%rax
   6.97%  │  0x00007fd710638d51:   add    %r10,%rax
   0.21%  │  0x00007fd710638d54:   add    %r10,%rax
   0.32%  │  0x00007fd710638d57:   add    %r10,%rax
   0.47%  │  0x00007fd710638d5a:   add    %r10,%rax
   4.88%  │  0x00007fd710638d5d:   add    %r10,%rax
   0.99%  │  0x00007fd710638d60:   add    %r10,%rax
   1.58%  │  0x00007fd710638d63:   add    %r10,%rax
   1.70%  │  0x00007fd710638d66:   add    %r10,%rax
   3.32%  │  0x00007fd710638d69:   add    %r10,%rax
   1.18%  │  0x00007fd710638d6c:   add    %r10,%rax
   1.32%  │  0x00007fd710638d6f:   add    %r10,%rax
   1.35%  │  0x00007fd710638d72:   add    %r10,%rax
   2.83%  │  0x00007fd710638d75:   add    %r10,%rax
   2.00%  │  0x00007fd710638d78:   add    %r10,%rax
   2.16%  │  0x00007fd710638d7b:   add    %r10,%rax
   1.92%  │  0x00007fd710638d7e:   add    %r10,%rax
   2.29%  │  0x00007fd710638d81:   add    %r10,%rax
   0.42%  │  0x00007fd710638d84:   add    %r10,%rax
   0.95%  │  0x00007fd710638d87:   add    %r10,%rax                    ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@138 (line 94)
   1.39%  │  0x00007fd710638d8a:   add    $0x20,%rsp
   0.62%  │  0x00007fd710638d8e:   pop    %rbp
          │  0x00007fd710638d8f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fd710638d96:   ja     0x00007fd710638db8
   1.21%  │  0x00007fd710638d9c:   ret    
          ↘  0x00007fd710638d9d:   mov    $0xffffff45,%esi
             0x00007fd710638da2:   mov    %r10,%rbp
             0x00007fd710638da5:   mov    %r8d,(%rsp)
             0x00007fd710638da9:   xchg   %ax,%ax
             0x00007fd710638dab:   call   0x00007fd7100c9f00           ; ImmutableOopMap {}
                                                                       ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@9 (line 89)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007fd710638db0:   nopl   0x2a0(%rax,%rax,1)           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd@9 (line 89)
....................................................................................................
  83.16%  <total for region 1>

....[Hottest Regions]...............................................................................
  83.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd, version 2, compile id 561
   8.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::add, version 2, compile id 560
   5.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 600 
   0.75%              kernel  [unknown] 
   0.57%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.94%  <...other 302 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  83.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doAdd, version 2, compile id 561
   8.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::add, version 2, compile id 560
   5.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_add_jmhTest::add_avgt_jmhStub, version 6, compile id 600 
   2.53%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  defaultStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  stringStream::write 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.16%  <...other 67 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.14%         c2, level 4
   2.53%              kernel
   0.16%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%    perf-1957204.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.multiply
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 33.33% complete, ETA 00:03:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.569 ns/op
# Warmup Iteration   2: 11.413 ns/op
# Warmup Iteration   3: 12.226 ns/op
# Warmup Iteration   4: 11.446 ns/op
# Warmup Iteration   5: 11.448 ns/op
Iteration   1: 11.456 ns/op
Iteration   2: 11.447 ns/op
Iteration   3: 11.575 ns/op
Iteration   4: 11.415 ns/op
Iteration   5: 11.455 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.multiply":
  11.470 ±(99.9%) 0.236 ns/op [Average]
  (min, avg, max) = (11.415, 11.470, 11.575), stdev = 0.061
  CI (99.9%): [11.234, 11.705] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.multiply:asm":
PrintAssembly processed: 130586 total address lines.
Perf output processed (skipped 56.457 seconds):
 Column 1: cycles (50653 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply, version 2, compile id 584

              # {method} {0x00007fd3db47a9f8} &apos;multiply&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007fd45c63a720:   mov    0x8(%rsi),%r10d
              0x00007fd45c63a724:   movabs $0x7fd3df000000,%r11
              0x00007fd45c63a72e:   add    %r11,%r10
              0x00007fd45c63a731:   cmp    %r10,%rax
              0x00007fd45c63a734:   jne    0x00007fd45c0c4080           ;   {runtime_call ic_miss_stub}
              0x00007fd45c63a73a:   xchg   %ax,%ax
              0x00007fd45c63a73c:   nopl   0x0(%rax)
            [Verified Entry Point]
   3.43%      0x00007fd45c63a740:   mov    %eax,-0x14000(%rsp)
   2.08%      0x00007fd45c63a747:   push   %rbp
   0.26%      0x00007fd45c63a748:   sub    $0x10,%rsp
   1.83%      0x00007fd45c63a74c:   cmpl   $0x1,0x20(%r15)
   1.24%      0x00007fd45c63a754:   jne    0x00007fd45c63a79e           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply@-1 (line 77)
   1.29%      0x00007fd45c63a75a:   nop
   1.74%      0x00007fd45c63a75b:   call   0x00007fd454bf6240           ; ImmutableOopMap {}
                                                                        ;*invokevirtual doMultiply {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply@1 (line 77)
                                                                        ;   {optimized virtual_call}
  36.67%      0x00007fd45c63a760:   nopl   0x1d0(%rax,%rax,1)           ;   {other}
              0x00007fd45c63a768:   add    $0x10,%rsp
              0x00007fd45c63a76c:   pop    %rbp
   3.35%   ↗  0x00007fd45c63a76d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ╭│  0x00007fd45c63a774:   ja     0x00007fd45c63a788
          ││  0x00007fd45c63a77a:   ret                                 ;*invokevirtual doMultiply {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply@1 (line 77)
          ││  0x00007fd45c63a77b:   mov    %rax,%rsi
          ││  0x00007fd45c63a77e:   add    $0x10,%rsp
          ││  0x00007fd45c63a782:   pop    %rbp
          ││  0x00007fd45c63a783:   jmp    0x00007fd45c19d580           ;   {runtime_call _rethrow_Java}
          ↘╰  0x00007fd45c63a788:   movabs $0x7fd45c63a76d,%r10         ;   {internal_word}
              0x00007fd45c63a792:   mov    %r10,0x468(%r15)
              0x00007fd45c63a799:   jmp    0x00007fd45c0cb000           ;   {runtime_call SafepointBlob}
....................................................................................................
  51.89%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply, version 2, compile id 585

             # {method} {0x00007fd3db47aae0} &apos;doMultiply&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007fd45c63aa00:   mov    0x8(%rsi),%r10d
             0x00007fd45c63aa04:   movabs $0x7fd3df000000,%r11
             0x00007fd45c63aa0e:   add    %r11,%r10
             0x00007fd45c63aa11:   cmp    %r10,%rax
             0x00007fd45c63aa14:   jne    0x00007fd45c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007fd45c63aa1a:   xchg   %ax,%ax
             0x00007fd45c63aa1c:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.47%     0x00007fd45c63aa20:   mov    %eax,-0x14000(%rsp)
  12.78%     0x00007fd45c63aa27:   push   %rbp
   1.39%     0x00007fd45c63aa28:   sub    $0x20,%rsp
             0x00007fd45c63aa2c:   cmpl   $0x0,0x20(%r15)
   2.77%     0x00007fd45c63aa34:   jne    0x00007fd45c63aa8e           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@-1 (line 82)
   0.62%     0x00007fd45c63aa3a:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@1 (line 82)
             0x00007fd45c63aa3e:   movzbl 0xc(%rsi),%r11d              ;*getfield isHeavy {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@6 (line 83)
             0x00007fd45c63aa43:   test   %r11d,%r11d
          ╭  0x00007fd45c63aa46:   je     0x00007fd45c63aa5f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@9 (line 83)
   2.59%  │  0x00007fd45c63aa48:   shl    $0x6,%rax                    ;*lmul {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@16 (line 83)
   0.63%  │  0x00007fd45c63aa4c:   add    $0x20,%rsp
          │  0x00007fd45c63aa50:   pop    %rbp
          │  0x00007fd45c63aa51:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fd45c63aa58:   ja     0x00007fd45c63aa78
   3.28%  │  0x00007fd45c63aa5e:   ret    
          ↘  0x00007fd45c63aa5f:   mov    $0xffffff45,%esi
             0x00007fd45c63aa64:   mov    %rax,%rbp
             0x00007fd45c63aa67:   mov    %r11d,(%rsp)
             0x00007fd45c63aa6b:   call   0x00007fd45c0c9f00           ; ImmutableOopMap {}
                                                                       ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@9 (line 83)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007fd45c63aa70:   nopl   0x1e0(%rax,%rax,1)           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply@9 (line 83)
                                                                       ;   {other}
....................................................................................................
  24.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 624 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@20 (line 194)
              0x00007fd45c63ddb5:   mov    0x38(%rsp),%r10
              0x00007fd45c63ddba:   nopw   0x0(%rax,%rax,1)
              0x00007fd45c63ddc0:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fd45c63de98
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@30 (line 196)
              0x00007fd45c63ddc8:   mov    $0x1,%ebp
              0x00007fd45c63ddcd:   test   %r11d,%r11d
          ╭   0x00007fd45c63ddd0:   jne    0x00007fd45c63de05           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@36 (line 197)
   0.45%  │↗  0x00007fd45c63ddd2:   mov    0x40(%rsp),%rsi
          ││  0x00007fd45c63ddd7:   call   0x00007fd45c0c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual multiply {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
   0.30%  ││  0x00007fd45c63dddc:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual multiply {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   3.29%  ││  0x00007fd45c63dde4:   mov    0x38(%rsp),%r10
   1.97%  ││  0x00007fd45c63dde9:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
  12.55%  ││  0x00007fd45c63ddf1:   mov    0x458(%r15),%r10
   0.03%  ││  0x00007fd45c63ddf8:   add    $0x1,%rbp                    ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@33 (line 196)
          ││  0x00007fd45c63ddfc:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007fd45c63ddff:   nop
   3.14%  ││  0x00007fd45c63de00:   test   %r11d,%r11d
          │╰  0x00007fd45c63de03:   je     0x00007fd45c63ddd2           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@36 (line 197)
          ↘   0x00007fd45c63de05:   movabs $0x7fd471ad2b90,%r10
              0x00007fd45c63de0f:   call   *%r10
              0x00007fd45c63de12:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007fd45c63de1a:   mov    0x30(%rsp),%r10
              0x00007fd45c63de1f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub@40 (line 197)
....................................................................................................
  21.73%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply, version 2, compile id 584
  24.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply, version 2, compile id 585
  21.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 624 
   0.39%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.82%  <...other 291 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.89%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::multiply, version 2, compile id 584
  24.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doMultiply, version 2, compile id 585
  21.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_multiply_jmhTest::multiply_avgt_jmhStub, version 6, compile id 624 
   1.56%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.00%        libc-2.31.so  syscall 
   0.00%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  __strncmp_avx2 
   0.14%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.14%         c2, level 4
   1.56%              kernel
   0.13%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.shift
# Parameters: (isHeavy = true, value = 179426549)

# Run progress: 66.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.292 ns/op
# Warmup Iteration   2: 11.510 ns/op
# Warmup Iteration   3: 12.197 ns/op
# Warmup Iteration   4: 11.350 ns/op
# Warmup Iteration   5: 11.385 ns/op
Iteration   1: 11.367 ns/op
Iteration   2: 11.386 ns/op
Iteration   3: 11.301 ns/op
Iteration   4: 11.405 ns/op
Iteration   5: 11.323 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.shift":
  11.356 ±(99.9%) 0.167 ns/op [Average]
  (min, avg, max) = (11.301, 11.356, 11.405), stdev = 0.043
  CI (99.9%): [11.189, 11.524] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark.shift:asm":
PrintAssembly processed: 127117 total address lines.
Perf output processed (skipped 56.252 seconds):
 Column 1: cycles (50955 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift, version 2, compile id 557

              # {method} {0x00007fa43047a868} &apos;shift&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
              #           [sp+0x20]  (sp of caller)
              0x00007fa4b4639ba0:   mov    0x8(%rsi),%r10d
              0x00007fa4b4639ba4:   movabs $0x7fa43b000000,%r11
              0x00007fa4b4639bae:   add    %r11,%r10
              0x00007fa4b4639bb1:   cmp    %r10,%rax
              0x00007fa4b4639bb4:   jne    0x00007fa4b40c4080           ;   {runtime_call ic_miss_stub}
              0x00007fa4b4639bba:   xchg   %ax,%ax
              0x00007fa4b4639bbc:   nopl   0x0(%rax)
            [Verified Entry Point]
   3.30%      0x00007fa4b4639bc0:   mov    %eax,-0x14000(%rsp)
   3.61%      0x00007fa4b4639bc7:   push   %rbp
   0.49%      0x00007fa4b4639bc8:   sub    $0x10,%rsp
   0.71%      0x00007fa4b4639bcc:   cmpl   $0x1,0x20(%r15)
   1.94%      0x00007fa4b4639bd4:   jne    0x00007fa4b4639c1e           ;*synchronization entry
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift@-1 (line 65)
   2.06%      0x00007fa4b4639bda:   nop
   0.72%      0x00007fa4b4639bdb:   call   0x00007fa4acbea3c0           ; ImmutableOopMap {}
                                                                        ;*invokevirtual doShift {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift@1 (line 65)
                                                                        ;   {optimized virtual_call}
  35.68%      0x00007fa4b4639be0:   nopl   0x1d0(%rax,%rax,1)           ;   {other}
              0x00007fa4b4639be8:   add    $0x10,%rsp
              0x00007fa4b4639bec:   pop    %rbp
   3.22%   ↗  0x00007fa4b4639bed:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ╭│  0x00007fa4b4639bf4:   ja     0x00007fa4b4639c08
          ││  0x00007fa4b4639bfa:   ret                                 ;*invokevirtual doShift {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift@1 (line 65)
          ││  0x00007fa4b4639bfb:   mov    %rax,%rsi
          ││  0x00007fa4b4639bfe:   add    $0x10,%rsp
          ││  0x00007fa4b4639c02:   pop    %rbp
          ││  0x00007fa4b4639c03:   jmp    0x00007fa4b419d380           ;   {runtime_call _rethrow_Java}
          ↘╰  0x00007fa4b4639c08:   movabs $0x7fa4b4639bed,%r10         ;   {internal_word}
              0x00007fa4b4639c12:   mov    %r10,0x468(%r15)
              0x00007fa4b4639c19:   jmp    0x00007fa4b40cb000           ;   {runtime_call SafepointBlob}
....................................................................................................
  51.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift, version 2, compile id 558

             # {method} {0x00007fa43047ad50} &apos;doShift&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/StrengthReductionBenchmark&apos;
             #           [sp+0x30]  (sp of caller)
             0x00007fa4b4639e80:   mov    0x8(%rsi),%r10d
             0x00007fa4b4639e84:   movabs $0x7fa43b000000,%r11
             0x00007fa4b4639e8e:   add    %r11,%r10
             0x00007fa4b4639e91:   cmp    %r10,%rax
             0x00007fa4b4639e94:   jne    0x00007fa4b40c4080           ;   {runtime_call ic_miss_stub}
             0x00007fa4b4639e9a:   xchg   %ax,%ax
             0x00007fa4b4639e9c:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.16%     0x00007fa4b4639ea0:   mov    %eax,-0x14000(%rsp)
  13.11%     0x00007fa4b4639ea7:   push   %rbp
   2.16%     0x00007fa4b4639ea8:   sub    $0x20,%rsp
             0x00007fa4b4639eac:   cmpl   $0x1,0x20(%r15)
   2.18%     0x00007fa4b4639eb4:   jne    0x00007fa4b4639f0e           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@-1 (line 100)
   0.96%     0x00007fa4b4639eba:   mov    0x10(%rsi),%rax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@1 (line 100)
             0x00007fa4b4639ebe:   movzbl 0xc(%rsi),%r11d              ;*getfield isHeavy {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@6 (line 101)
             0x00007fa4b4639ec3:   test   %r11d,%r11d
          ╭  0x00007fa4b4639ec6:   je     0x00007fa4b4639edf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@9 (line 101)
   2.34%  │  0x00007fa4b4639ec8:   shl    $0x6,%rax                    ;*lshl {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@15 (line 101)
   1.07%  │  0x00007fa4b4639ecc:   add    $0x20,%rsp
          │  0x00007fa4b4639ed0:   pop    %rbp
          │  0x00007fa4b4639ed1:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fa4b4639ed8:   ja     0x00007fa4b4639ef8
   3.33%  │  0x00007fa4b4639ede:   ret    
          ↘  0x00007fa4b4639edf:   mov    $0xffffff45,%esi
             0x00007fa4b4639ee4:   mov    %rax,%rbp
             0x00007fa4b4639ee7:   mov    %r11d,(%rsp)
             0x00007fa4b4639eeb:   call   0x00007fa4b40c9f00           ; ImmutableOopMap {}
                                                                       ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@9 (line 101)
                                                                       ;   {runtime_call UncommonTrapBlob}
             0x00007fa4b4639ef0:   nopl   0x1e0(%rax,%rax,1)           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift@9 (line 101)
                                                                       ;   {other}
....................................................................................................
  26.33%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 598 

                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@20 (line 194)
              0x00007fa4b463d235:   mov    0x38(%rsp),%r10
              0x00007fa4b463d23a:   nopw   0x0(%rax,%rax,1)
              0x00007fa4b463d240:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fa4b463d318
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@30 (line 196)
              0x00007fa4b463d248:   mov    $0x1,%ebp
              0x00007fa4b463d24d:   test   %r11d,%r11d
          ╭   0x00007fa4b463d250:   jne    0x00007fa4b463d285           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@36 (line 197)
   0.61%  │↗  0x00007fa4b463d252:   mov    0x40(%rsp),%rsi
          ││  0x00007fa4b463d257:   call   0x00007fa4b40c4380           ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*invokevirtual shift {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {optimized virtual_call}
          ││  0x00007fa4b463d25c:   nopl   0x100024c(%rax,%rax,1)       ;*invokevirtual shift {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@17 (line 194)
          ││                                                            ;   {other}
   3.30%  ││  0x00007fa4b463d264:   mov    0x38(%rsp),%r10
   3.12%  ││  0x00007fa4b463d269:   movzbl 0x94(%r10),%r11d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
   9.09%  ││  0x00007fa4b463d271:   mov    0x458(%r15),%r10
   0.63%  ││  0x00007fa4b463d278:   add    $0x1,%rbp                    ; ImmutableOopMap {[0]=Oop [48]=Oop [56]=Oop [64]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@33 (line 196)
          ││  0x00007fa4b463d27c:   test   %eax,(%r10)                  ;   {poll}
          ││  0x00007fa4b463d27f:   nop
   2.74%  ││  0x00007fa4b463d280:   test   %r11d,%r11d
          │╰  0x00007fa4b463d283:   je     0x00007fa4b463d252           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@36 (line 197)
          ↘   0x00007fa4b463d285:   movabs $0x7fa4cbfafb90,%r10
              0x00007fa4b463d28f:   call   *%r10
              0x00007fa4b463d292:   nopl   0x0(%rax,%rax,1)             ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@37 (line 197)
                                                                        ;   {other}
              0x00007fa4b463d29a:   mov    0x30(%rsp),%r10
              0x00007fa4b463d29f:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub@40 (line 197)
....................................................................................................
  19.50%  <total for region 3>

....[Hottest Regions]...............................................................................
  51.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift, version 2, compile id 557
  26.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift, version 2, compile id 558
  19.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 598 
   1.13%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.73%  <...other 236 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  51.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::shift, version 2, compile id 557
  26.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.ArithmeticCanonicalizationBenchmark::doShift, version 2, compile id 558
  19.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.StrengthReductionBenchmark_shift_jmhTest::shift_avgt_jmhStub, version 6, compile id 598 
   2.14%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.00%           libjvm.so  strchr@plt 
   0.00%           libjvm.so  fileStream::write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.14%  <...other 65 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.55%         c2, level 4
   2.14%              kernel
   0.11%           libjvm.so
   0.10%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-1957338.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:27

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

Benchmark                                (isHeavy)    (value)  Mode  Cnt   Score   Error  Units
StrengthReductionBenchmark.add                true  179426549  avgt    5  19.658 ± 0.343  ns/op
StrengthReductionBenchmark.add:asm            true  179426549  avgt          NaN            ---
StrengthReductionBenchmark.multiply           true  179426549  avgt    5  11.470 ± 0.236  ns/op
StrengthReductionBenchmark.multiply:asm       true  179426549  avgt          NaN            ---
StrengthReductionBenchmark.shift              true  179426549  avgt    5  11.356 ± 0.167  ns/op
StrengthReductionBenchmark.shift:asm          true  179426549  avgt          NaN            ---
