# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2225.122 ns/op
# Warmup Iteration   2: 2217.253 ns/op
# Warmup Iteration   3: 2013.195 ns/op
# Warmup Iteration   4: 2013.028 ns/op
# Warmup Iteration   5: 2013.220 ns/op
Iteration   1: 2013.245 ns/op
Iteration   2: 2012.747 ns/op
Iteration   3: 2013.173 ns/op
Iteration   4: 2013.079 ns/op
Iteration   5: 2013.266 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline":
  2013.102 ±(99.9%) 0.815 ns/op [Average]
  (min, avg, max) = (2012.747, 2013.102, 2013.266), stdev = 0.212
  CI (99.9%): [2012.287, 2013.917] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.baseline:asm":
PrintAssembly processed: 222986 total address lines.
Perf output processed (skipped 60.496 seconds):
 Column 1: cycles (50694 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 5, compile id 965 

                # parm0:    rdx:rdx   = long
                #           [sp+0x20]  (sp of caller)
                0x00007fe57ad7da80:   mov    0x8(%rsi),%r10d
                0x00007fe57ad7da84:   movabs $0x7fe4ff000000,%r12
                0x00007fe57ad7da8e:   add    %r12,%r10
                0x00007fe57ad7da91:   xor    %r12,%r12
                0x00007fe57ad7da94:   cmp    %r10,%rax
                0x00007fe57ad7da97:   jne    0x00007fe57a764080           ;   {runtime_call ic_miss_stub}
                0x00007fe57ad7da9d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.01%        0x00007fe57ad7daa0:   mov    %eax,-0x14000(%rsp)
   0.01%        0x00007fe57ad7daa7:   sub    $0x18,%rsp
   0.01%        0x00007fe57ad7daab:   nop
                0x00007fe57ad7daac:   cmpl   $0x1,0x20(%r15)
          ╭     0x00007fe57ad7dab4:   jne    0x00007fe57ad7db51
   0.00%  │     0x00007fe57ad7daba:   mov    %rbp,0x10(%rsp)
   0.01%  │     0x00007fe57ad7dabf:   nop
   0.00%  │     0x00007fe57ad7dac0:   cmp    $0x1,%rdx
          │╭    0x00007fe57ad7dac4:   jl     0x00007fe57ad7db2e
          ││    0x00007fe57ad7daca:   mov    $0x0,%rax
   0.00%  ││╭   0x00007fe57ad7dad1:   jmp    0x00007fe57ad7db0d
          │││   0x00007fe57ad7dad6:   data16 nopw 0x0(%rax,%rax,1)        ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@5 (line 90)
  17.87%  │││↗  0x00007fe57ad7dae0:   mov    %rdx,%r10
   2.07%  ││││  0x00007fe57ad7dae3:   sub    %rax,%r10
   0.88%  ││││  0x00007fe57ad7dae6:   cmp    $0x1000,%r10
  16.40%  ││││  0x00007fe57ad7daed:   mov    $0x1000,%r11
   0.58%  ││││  0x00007fe57ad7daf4:   cmovb  %r10,%r11
  30.02%  ││││  0x00007fe57ad7daf8:   mov    %r11d,%r10d
   0.07%  ││││  0x00007fe57ad7dafb:   mov    %r10d,%r10d
   9.62%  ││││  0x00007fe57ad7dafe:   add    %rax,%r10
  17.20%  ││││  0x00007fe57ad7db01:   mov    0x458(%r15),%rax             ; ImmutableOopMap {}
          ││││                                                            ;*lload_3 {reexecute=1 rethrow=0 return_oop=0}
          ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@15 (line 91)
   2.03%  ││││  0x00007fe57ad7db08:   test   %eax,(%rax)                  ;   {poll}
   0.01%  ││││  0x00007fe57ad7db0a:   mov    %r10,%rax                    ;*lload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@2 (line 90)
   0.00%  ││↘│  0x00007fe57ad7db0d:   cmp    %rdx,%rax
          ││ ╰  0x00007fe57ad7db10:   jne    0x00007fe57ad7dae0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@5 (line 90)
   0.31%  ││    0x00007fe57ad7db12:   mov    %rdx,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@16 (line 91)
   0.09%  ││    0x00007fe57ad7db15:   mov    0x10(%rsp),%rbp
   0.14%  ││    0x00007fe57ad7db1a:   add    $0x18,%rsp
          ││    0x00007fe57ad7db1e:   xchg   %ax,%ax
          ││    0x00007fe57ad7db20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││    0x00007fe57ad7db27:   ja     0x00007fe57ad7db61
   0.02%  ││    0x00007fe57ad7db2d:   ret    
          │↘    0x00007fe57ad7db2e:   movl   $0xffffff6c,0x484(%r15)
          │     0x00007fe57ad7db39:   movq   $0x14,0x490(%r15)
          │     0x00007fe57ad7db44:   call   0x00007fe57a76a17a           ; ImmutableOopMap {}
          │                                                               ;*lconst_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline@0 (line 90)
          │                                                               ;   {runtime_call DeoptimizationBlob}
          │     0x00007fe57ad7db49:   nopl   0x0(%rax,%rax,1)
          ↘     0x00007fe57ad7db51:   mov    %rbp,0x10(%rsp)
                0x00007fe57ad7db56:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
                0x00007fe57ad7db5b:   jmp    0x00007fe57ad7daba
....................................................................................................
  97.37%  <total for region 1>

....[Hottest Regions]...............................................................................
  97.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 5, compile id 965 
   0.48%              kernel  [unknown] 
   0.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 997 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 2, compile id 969 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.89%  <...other 300 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.37%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 5, compile id 965 
   1.55%              kernel  [unknown] 
   0.40%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 5, compile id 997 
   0.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::baseline, version 2, compile id 969 
   0.09%                      <unknown> 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  __strlen_avx2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.15%  <...other 62 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%      jvmci, level 4
   1.55%              kernel
   0.12%           libjvm.so
   0.11%        libc-2.31.so
   0.09%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize

# Run progress: 33.33% complete, ETA 00:03:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3259512.787 ns/op
# Warmup Iteration   2: 3244591.241 ns/op
# Warmup Iteration   3: 3244474.319 ns/op
# Warmup Iteration   4: 3244809.421 ns/op
# Warmup Iteration   5: 3244676.544 ns/op
Iteration   1: 3244582.474 ns/op
Iteration   2: 3244544.145 ns/op
Iteration   3: 3244495.340 ns/op
Iteration   4: 3244495.801 ns/op
Iteration   5: 3244539.192 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize":
  3244531.390 ±(99.9%) 141.472 ns/op [Average]
  (min, avg, max) = (3244495.340, 3244531.390, 3244582.474), stdev = 36.740
  CI (99.9%): [3244389.918, 3244672.863] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.canonicalize:asm":
PrintAssembly processed: 226924 total address lines.
Perf output processed (skipped 60.836 seconds):
 Column 1: cycles (50712 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 994 

              0x00007fbe5ad7f63f:   movabs $0x101004000000,%rax         ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@1 (line 65)
              0x00007fbe5ad7f649:   mov    $0x2000,%r11
              0x00007fbe5ad7f650:   mov    $0x0,%r10
          ╭   0x00007fbe5ad7f657:   jmp    0x00007fbe5ad7f670           ;*lload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@7 (line 82)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
          │   0x00007fbe5ad7f65c:   nopl   0x0(%rax)                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@14 (line 82)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
   0.64%  │↗  0x00007fbe5ad7f660:   mov    0x458(%r15),%r8              ; ImmutableOopMap {}
          ││                                                            ;*lload {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@7 (line 82)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
   0.61%  ││  0x00007fbe5ad7f667:   test   %eax,(%r8)                   ;   {poll}
  48.18%  ││  0x00007fbe5ad7f66a:   inc    %r11                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@24 (line 82)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
   0.61%  ││  0x00007fbe5ad7f66d:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@19 (line 83)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
   0.60%  ↘│  0x00007fbe5ad7f670:   mov    %r11,%r8
   0.58%   │  0x00007fbe5ad7f673:   imul   %r11,%r8                     ;*lmul {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@11 (line 82)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
  46.83%   │  0x00007fbe5ad7f677:   cmp    %r8,%rax
           ╰  0x00007fbe5ad7f67a:   jg     0x00007fbe5ad7f660           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::auto_canonicalize@14 (line 82)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@4 (line 65)
              0x00007fbe5ad7f67c:   mov    %r10,%rax                    ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize@7 (line 65)
              0x00007fbe5ad7f67f:   mov    0x10(%rsp),%rbp
              0x00007fbe5ad7f684:   add    $0x18,%rsp
              0x00007fbe5ad7f688:   cmp    0x450(%r15),%rsp             ;   {poll_return}
....................................................................................................
  98.05%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 994 
   0.30%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.94%  <...other 324 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.05%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::canonicalize, version 2, compile id 994 
   1.58%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  fileStream::flush 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  __vsnprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchrnul_avx2 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  defaultStream::write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%        libc-2.31.so  _IO_file_xsputn@@GLIBC_2.2.5 
   0.16%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%      jvmci, level 4
   1.58%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%    perf-2125666.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize

# Run progress: 66.67% complete, ETA 00:01:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.005 ns/op
# Warmup Iteration   2: 6.604 ns/op
# Warmup Iteration   3: 6.605 ns/op
# Warmup Iteration   4: 6.580 ns/op
# Warmup Iteration   5: 6.587 ns/op
Iteration   1: 6.574 ns/op
Iteration   2: 6.575 ns/op
Iteration   3: 6.608 ns/op
Iteration   4: 6.577 ns/op
Iteration   5: 6.579 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize":
  6.583 ±(99.9%) 0.055 ns/op [Average]
  (min, avg, max) = (6.574, 6.583, 6.608), stdev = 0.014
  CI (99.9%): [6.527, 6.638] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark.manual_canonicalize:asm":
PrintAssembly processed: 218743 total address lines.
Perf output processed (skipped 60.368 seconds):
 Column 1: cycles (50462 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 973 

              0x00007fbabad7a0f3:   mov    0x10(%rsp),%rdx
              0x00007fbabad7a0f8:   mov    %rax,0x28(%rdx)              ;*putfield startTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@10 (line 188)
              0x00007fbabad7a0fc:   movq   $0x0,0x20(%rsp)
          ╭   0x00007fbabad7a105:   jmp    0x00007fbabad7a12f           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@13 (line 190)
          │   0x00007fbabad7a10a:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007fbabad7a115:   data16 data16 xchg %ax,%ax
          │   0x00007fbabad7a119:   nopl   0x0(%rax)                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
   5.76%  │↗  0x00007fbabad7a120:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
          ││  0x00007fbabad7a127:   test   %eax,(%r11)                  ;   {poll}
   0.02%  ││  0x00007fbabad7a12a:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@13 (line 190)
          ↘│  0x00007fbabad7a12f:   mov    0x8(%rsp),%r10
   5.85%   │  0x00007fbabad7a134:   mov    %r10,%rsi
           │  0x00007fbabad7a137:   call   0x00007fbaba764380           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop }
           │                                                            ;*invokevirtual manual_canonicalize {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@17 (line 190)
           │                                                            ;   {optimized virtual_call}
  31.98%   │  0x00007fbabad7a13c:   nopl   0x400022c(%rax,%rax,1)       ;* unwind (locked if synchronized)
           │                                                            ; - org.openjdk.jmh.infra.Blackhole::consume@-3
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@20 (line 190)
           │                                                            ;   {other}
           │  0x00007fbabad7a144:   mov    0x20(%rsp),%r10
   1.85%   │  0x00007fbabad7a149:   inc    %r10                         ;*ladd {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@26 (line 191)
   4.64%   │  0x00007fbabad7a14c:   mov    0x18(%rsp),%rsi
           │  0x00007fbabad7a151:   cmpb   $0x0,0x94(%rsi)
  30.82%   ╰  0x00007fbabad7a158:   je     0x00007fbabad7a120           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@33 (line 192)
              0x00007fbabad7a15a:   mov    %r10,0x20(%rsp)
              0x00007fbabad7a15f:   nop
              0x00007fbabad7a160:   call   0x00007fbad3eb2df0           ;   {runtime_call os::javaTimeNanos()}
              0x00007fbabad7a165:   nop
              0x00007fbabad7a166:   mov    0x10(%rsp),%rdx
              0x00007fbabad7a16b:   mov    %rax,0x30(%rdx)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@40 (line 193)
              0x00007fbabad7a16f:   mov    %r12,0x20(%rdx)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub@46 (line 194)
....................................................................................................
  80.91%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 944 

                # {method} {0x00007fba3b47bbc0} &apos;manual_canonicalize&apos; &apos;()J&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/CanonicalizeInductionVariableBenchmark&apos;
                #           [sp+0x20]  (sp of caller)
                0x00007fbabad76a80:   mov    0x8(%rsi),%r10d
                0x00007fbabad76a84:   movabs $0x7fba3f000000,%r12
                0x00007fbabad76a8e:   add    %r12,%r10
                0x00007fbabad76a91:   xor    %r12,%r12
                0x00007fbabad76a94:   cmp    %r10,%rax
                0x00007fbabad76a97:   jne    0x00007fbaba764080           ;   {runtime_call ic_miss_stub}
                0x00007fbabad76a9d:   data16 xchg %ax,%ax
              [Verified Entry Point]
   0.01%        0x00007fbabad76aa0:   mov    %eax,-0x14000(%rsp)
   5.86%        0x00007fbabad76aa7:   sub    $0x18,%rsp
   0.02%        0x00007fbabad76aab:   nop
                0x00007fbabad76aac:   cmpl   $0x0,0x20(%r15)
   5.69%  ╭     0x00007fbabad76ab4:   jne    0x00007fbabad76ad3
   2.22%  │ ↗   0x00007fbabad76aba:   mov    $0x400000,%rax               ;*lreturn {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize@11 (line 77)
   0.01%  │ │   0x00007fbabad76ac1:   add    $0x18,%rsp
          │ │↗  0x00007fbabad76ac5:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │╭││  0x00007fbabad76acc:   ja     0x00007fbabad76ae0
   3.55%  ││││  0x00007fbabad76ad2:   ret    
          ↘│││  0x00007fbabad76ad3:   mov    %rbp,0x10(%rsp)
           │││  0x00007fbabad76ad8:   call   Stub::nmethod_entry_barrier  ;   {runtime_call StubRoutines (final stubs)}
           │╰│  0x00007fbabad76add:   jmp    0x00007fbabad76aba
           │ │  0x00007fbabad76adf:   hlt    
           ↘ ╰  0x00007fbabad76ae0:   lea    -0x22(%rip),%rcx        # 0x00007fbabad76ac5
                0x00007fbabad76ae7:   mov    %rcx,0x468(%r15)
                0x00007fbabad76aee:   jmp    0x00007fbaba76b000           ;   {runtime_call SafepointBlob}
                0x00007fbabad76af3:   hlt    
              [Exception Handler]
                0x00007fbabad76af4:   call   0x00007fbaba8e8900           ;   {runtime_call Stub&lt;ExceptionHandlerStub.exceptionHandler&gt;}
....................................................................................................
  17.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  80.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 973 
  17.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 944 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.05%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.04%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.03%               kernel  [unknown] 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.02%               kernel  [unknown] 
   0.01%               kernel  [unknown] 
   1.03%  <...other 319 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.91%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.CanonicalizeInductionVariableBenchmark_manual_canonicalize_jmhTest::manual_canonicalize_avgt_jmhStub, version 6, compile id 973 
  17.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.CanonicalizeInductionVariableBenchmark::manual_canonicalize, version 2, compile id 944 
   1.38%               kernel  [unknown] 
   0.03%                       <unknown> 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  defaultStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  _IO_default_xsputn 
   0.01%            libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%         libc-2.31.so  __vfprintf_internal 
   0.01%         libc-2.31.so  _IO_str_init_static_internal 
   0.01%         libc-2.31.so  __strlen_avx2 
   0.01%           ld-2.31.so  __tls_get_addr 
   0.01%         libc-2.31.so  __strchrnul_avx2 
   0.01%         libc-2.31.so  __vsnprintf_internal 
   0.01%            libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         libc-2.31.so  __strchr_avx2 
   0.01%   libpthread-2.31.so  __libc_write 
   0.01%            libjvm.so  fileStream::write 
   0.15%  <...other 69 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.27%       jvmci, level 4
   1.38%               kernel
   0.14%            libjvm.so
   0.08%         libc-2.31.so
   0.04%  libjvmcicompiler.so
   0.03%                     
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%          interpreter
   0.00%     perf-2125729.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:41

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

Benchmark                                                       Mode  Cnt        Score     Error  Units
CanonicalizeInductionVariableBenchmark.baseline                 avgt    5     2013.102 ±   0.815  ns/op
CanonicalizeInductionVariableBenchmark.baseline:asm             avgt               NaN              ---
CanonicalizeInductionVariableBenchmark.canonicalize             avgt    5  3244531.390 ± 141.472  ns/op
CanonicalizeInductionVariableBenchmark.canonicalize:asm         avgt               NaN              ---
CanonicalizeInductionVariableBenchmark.manual_canonicalize      avgt    5        6.583 ±   0.055  ns/op
CanonicalizeInductionVariableBenchmark.manual_canonicalize:asm  avgt               NaN              ---
