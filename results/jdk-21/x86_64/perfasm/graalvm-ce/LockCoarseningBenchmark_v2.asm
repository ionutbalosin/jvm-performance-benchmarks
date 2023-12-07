# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 75.393 ns/op
# Warmup Iteration   2: 70.409 ns/op
# Warmup Iteration   3: 84.478 ns/op
# Warmup Iteration   4: 67.976 ns/op
# Warmup Iteration   5: 54.987 ns/op
Iteration   1: 54.669 ns/op
Iteration   2: 54.574 ns/op
Iteration   3: 54.634 ns/op
Iteration   4: 54.895 ns/op
Iteration   5: 54.958 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  54.746 ±(99.9%) 0.655 ns/op [Average]
  (min, avg, max) = (54.574, 54.746, 54.958), stdev = 0.170
  CI (99.9%): [54.092, 55.401] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:asm":
PrintAssembly processed: 209520 total address lines.
Perf output processed (skipped 81.397 seconds):
 Column 1: cycles (50588 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 1025 

               # {method} {0x00007f7bac47a3f0} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f7c3b18f300:   mov    0x8(%rsi),%r10d
               0x00007f7c3b18f304:   movabs $0x7f7bb7000000,%r12
               0x00007f7c3b18f30e:   add    %r12,%r10
               0x00007f7c3b18f311:   xor    %r12,%r12
               0x00007f7c3b18f314:   cmp    %r10,%rax
               0x00007f7c3b18f317:   jne    0x00007f7c3aaf9080           ;   {runtime_call ic_miss_stub}
               0x00007f7c3b18f31d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.55%       0x00007f7c3b18f320:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007f7c3b18f327:   sub    $0x18,%rsp
               0x00007f7c3b18f32b:   nop
   1.54%       0x00007f7c3b18f32c:   cmpl   $0x1,0x20(%r15)
               0x00007f7c3b18f334:   jne    0x00007f7c3b18f567
   0.00%       0x00007f7c3b18f33a:   mov    %rbp,0x10(%rsp)
               0x00007f7c3b18f33f:   mov    %rsi,%r11
   1.46%       0x00007f7c3b18f342:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   4.55%       0x00007f7c3b18f345:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@1 (line 208)
   0.00%       0x00007f7c3b18f349:   lea    (%rsp),%r8                   ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
               0x00007f7c3b18f34d:   mov    %eax,%r9d
               0x00007f7c3b18f350:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 208)
   1.54%       0x00007f7c3b18f353:   test   $0x2,%r10
          ╭    0x00007f7c3b18f35a:   jne    0x00007f7c3b18f3fa
          │    0x00007f7c3b18f360:   or     $0x1,%r10
          │    0x00007f7c3b18f364:   mov    %r10,(%r8)
   2.99%  │    0x00007f7c3b18f367:   mov    %r10,%rax
          │    0x00007f7c3b18f36a:   lock cmpxchg %r8,(%r11)
  26.93%  │    0x00007f7c3b18f36f:   cmp    %r10,%rax
          │    0x00007f7c3b18f372:   jne    0x00007f7c3b18f432
   0.01%  │    0x00007f7c3b18f378:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.53%  │    0x00007f7c3b18f37f:   lea    (%rsp),%r10
          │    0x00007f7c3b18f383:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.40%  │    0x00007f7c3b18f386:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@13 (line 211)
   0.00%  │    0x00007f7c3b18f38a:   test   %rsi,%rsi
          │╭   0x00007f7c3b18f38d:   je     0x00007f7c3b18f3f1
          ││   0x00007f7c3b18f393:   mov    (%r11),%rcx
  16.86%  ││   0x00007f7c3b18f396:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  ││   0x00007f7c3b18f3a0:   test   $0x2,%rcx
          ││   0x00007f7c3b18f3a7:   jne    0x00007f7c3b18f460
   1.51%  ││   0x00007f7c3b18f3ad:   mov    %r10,%rax
          ││   0x00007f7c3b18f3b0:   lock cmpxchg %rsi,(%r11)
  23.83%  ││   0x00007f7c3b18f3b5:   jne    0x00007f7c3b18f4cd
   0.01%  ││   0x00007f7c3b18f3bb:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
   1.47%  ││↗  0x00007f7c3b18f3c2:   shl    $0x3,%r8d
   0.00%  │││  0x00007f7c3b18f3c6:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 218)
   1.50%  │││  0x00007f7c3b18f3c9:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@78 (line 221)
          │││  0x00007f7c3b18f3cc:   mov    0x10(%rsp),%rbp
          │││  0x00007f7c3b18f3d1:   add    $0x18,%rsp
          │││  0x00007f7c3b18f3d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.47%  │││  0x00007f7c3b18f3e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f7c3b18f3e7:   ja     0x00007f7c3b18f577
          │││  0x00007f7c3b18f3ed:   vzeroupper 
   1.54%  │││  0x00007f7c3b18f3f0:   ret    
          │↘│  0x00007f7c3b18f3f1:   decq   0x550(%r15)
          │ ╰  0x00007f7c3b18f3f8:   jmp    0x00007f7c3b18f3c2           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
          ↘    0x00007f7c3b18f3fa:   movq   $0x3,(%r8)
               0x00007f7c3b18f401:   mov    0x3e(%r10),%rsi
               0x00007f7c3b18f405:   test   %rsi,%rsi
               0x00007f7c3b18f408:   jne    0x00007f7c3b18f4b5
               0x00007f7c3b18f40e:   mov    $0x0,%rax
               0x00007f7c3b18f415:   lock cmpxchg %r15,0x3e(%r10)
               0x00007f7c3b18f41b:   nopl   0x0(%rax,%rax,1)
....................................................................................................
  91.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  91.72%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 1025 
   4.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1057 
   0.36%                kernel  [unknown] 
   0.23%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%             libjvm.so  fileStream::write 
   1.77%  <...other 416 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  91.72%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 1025 
   4.43%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 1057 
   2.97%                kernel  [unknown] 
   0.40%                        <unknown> 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  xmlStream::write_text 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  _IO_fflush 
   0.01%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%                [vdso]  [unknown] 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        hsdis-amd64.so  MOVSXD_Fixup 
   0.24%  <...other 89 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.15%        jvmci, level 4
   2.97%                kernel
   0.40%                      
   0.27%             libjvm.so
   0.16%             libc.so.6
   0.02%           interpreter
   0.01%        hsdis-amd64.so
   0.01%                [vdso]
   0.01%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%         perf-7301.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:11:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 56.759 ns/op
# Warmup Iteration   2: 55.015 ns/op
# Warmup Iteration   3: 55.058 ns/op
# Warmup Iteration   4: 54.740 ns/op
# Warmup Iteration   5: 54.649 ns/op
Iteration   1: 54.722 ns/op
Iteration   2: 54.775 ns/op
Iteration   3: 54.831 ns/op
Iteration   4: 54.739 ns/op
Iteration   5: 55.087 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  54.831 ±(99.9%) 0.575 ns/op [Average]
  (min, avg, max) = (54.722, 54.831, 55.087), stdev = 0.149
  CI (99.9%): [54.256, 55.406] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:asm":
PrintAssembly processed: 217317 total address lines.
Perf output processed (skipped 78.340 seconds):
 Column 1: cycles (50728 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 1057 

               # {method} {0x00007fe4f3479fe8} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fe57b190e80:   mov    0x8(%rsi),%r10d
               0x00007fe57b190e84:   movabs $0x7fe4f7000000,%r12
               0x00007fe57b190e8e:   add    %r12,%r10
               0x00007fe57b190e91:   xor    %r12,%r12
               0x00007fe57b190e94:   cmp    %r10,%rax
               0x00007fe57b190e97:   jne    0x00007fe57aaf9080           ;   {runtime_call ic_miss_stub}
               0x00007fe57b190e9d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   1.56%       0x00007fe57b190ea0:   mov    %eax,-0x14000(%rsp)
   0.00%       0x00007fe57b190ea7:   sub    $0x18,%rsp
               0x00007fe57b190eab:   nop
   1.49%       0x00007fe57b190eac:   cmpl   $0x1,0x20(%r15)
   0.00%       0x00007fe57b190eb4:   jne    0x00007fe57b1910e7
   0.00%       0x00007fe57b190eba:   mov    %rbp,0x10(%rsp)
               0x00007fe57b190ebf:   mov    %rsi,%r11
   1.54%       0x00007fe57b190ec2:   mov    (%r11),%r10                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   4.55%       0x00007fe57b190ec5:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@1 (line 123)
   0.00%       0x00007fe57b190ec9:   lea    (%rsp),%r8                   ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
               0x00007fe57b190ecd:   mov    %eax,%r9d
               0x00007fe57b190ed0:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 123)
   1.51%       0x00007fe57b190ed3:   test   $0x2,%r10
          ╭    0x00007fe57b190eda:   jne    0x00007fe57b190f7a
   0.00%  │    0x00007fe57b190ee0:   or     $0x1,%r10
          │    0x00007fe57b190ee4:   mov    %r10,(%r8)
   2.98%  │    0x00007fe57b190ee7:   mov    %r10,%rax
          │    0x00007fe57b190eea:   lock cmpxchg %r8,(%r11)
  27.07%  │    0x00007fe57b190eef:   cmp    %r10,%rax
          │    0x00007fe57b190ef2:   jne    0x00007fe57b190fb2
   0.03%  │    0x00007fe57b190ef8:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.54%  │    0x00007fe57b190eff:   lea    (%rsp),%r10
   0.00%  │    0x00007fe57b190f03:   mov    (%r10),%rsi                  ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.59%  │    0x00007fe57b190f06:   mov    0x14(%r11),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
          │    0x00007fe57b190f0a:   test   %rsi,%rsi
          │╭   0x00007fe57b190f0d:   je     0x00007fe57b190f71
          ││   0x00007fe57b190f13:   mov    (%r11),%rcx
  16.75%  ││   0x00007fe57b190f16:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  ││   0x00007fe57b190f20:   test   $0x2,%rcx
          ││   0x00007fe57b190f27:   jne    0x00007fe57b190fe0
   1.50%  ││   0x00007fe57b190f2d:   mov    %r10,%rax
   0.00%  ││   0x00007fe57b190f30:   lock cmpxchg %rsi,(%r11)
  23.96%  ││   0x00007fe57b190f35:   jne    0x00007fe57b19104d
   0.02%  ││   0x00007fe57b190f3b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.52%  ││↗  0x00007fe57b190f42:   shl    $0x3,%r8d
          │││  0x00007fe57b190f46:   add    %r8d,%r9d                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.63%  │││  0x00007fe57b190f49:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@56 (line 134)
   0.00%  │││  0x00007fe57b190f4c:   mov    0x10(%rsp),%rbp
          │││  0x00007fe57b190f51:   add    $0x18,%rsp
          │││  0x00007fe57b190f55:   data16 data16 nopw 0x0(%rax,%rax,1)
   1.53%  │││  0x00007fe57b190f60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fe57b190f67:   ja     0x00007fe57b1910f7
   0.01%  │││  0x00007fe57b190f6d:   vzeroupper 
   1.51%  │││  0x00007fe57b190f70:   ret    
          │↘│  0x00007fe57b190f71:   decq   0x550(%r15)
          │ ╰  0x00007fe57b190f78:   jmp    0x00007fe57b190f42           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
          ↘    0x00007fe57b190f7a:   movq   $0x3,(%r8)
               0x00007fe57b190f81:   mov    0x3e(%r10),%rsi
               0x00007fe57b190f85:   test   %rsi,%rsi
               0x00007fe57b190f88:   jne    0x00007fe57b191035
               0x00007fe57b190f8e:   mov    $0x0,%rax
               0x00007fe57b190f95:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  92.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  92.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 1057 
   4.58%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1087 
   0.37%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.27%  <...other 316 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  92.30%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 1057 
   4.58%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 1087 
   2.52%                kernel  [unknown] 
   0.19%                        <unknown> 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  fileStream::write 
   0.02%             libjvm.so  defaultStream::hold 
   0.01%             libjvm.so  xmlStream::write_text 
   0.01%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%           interpreter  method entry point (kind = zerolocals)  
   0.01%             libjvm.so  os::current_thread_id 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%             libc.so.6  __vsnprintf_internal 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%             libc.so.6  syscall 
   0.20%  <...other 77 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.88%        jvmci, level 4
   2.52%                kernel
   0.22%             libjvm.so
   0.19%                      
   0.12%             libc.so.6
   0.02%        hsdis-amd64.so
   0.02%           interpreter
   0.01%           c1, level 3
   0.00%  ld-linux-x86-64.so.2
   0.00%         perf-7380.map
   0.00%           c1, level 1
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:09:10
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 57.716 ns/op
# Warmup Iteration   2: 56.553 ns/op
# Warmup Iteration   3: 55.693 ns/op
# Warmup Iteration   4: 59.109 ns/op
# Warmup Iteration   5: 55.609 ns/op
Iteration   1: 55.652 ns/op
Iteration   2: 55.716 ns/op
Iteration   3: 55.442 ns/op
Iteration   4: 55.446 ns/op
Iteration   5: 56.396 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  55.731 ±(99.9%) 1.508 ns/op [Average]
  (min, avg, max) = (55.442, 55.731, 56.396), stdev = 0.392
  CI (99.9%): [54.223, 57.238] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 221789 total address lines.
Perf output processed (skipped 78.491 seconds):
 Column 1: cycles (51057 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 1037 

               # {method} {0x00007f81c8484078} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007f8257194300:   mov    0x8(%rsi),%r10d
               0x00007f8257194304:   movabs $0x7f81d3000000,%r12
               0x00007f825719430e:   add    %r12,%r10
               0x00007f8257194311:   xor    %r12,%r12
               0x00007f8257194314:   cmp    %r10,%rax
               0x00007f8257194317:   jne    0x00007f8256af9080           ;   {runtime_call ic_miss_stub}
               0x00007f825719431d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.00%       0x00007f8257194320:   mov    %eax,-0x14000(%rsp)
   1.48%       0x00007f8257194327:   sub    $0x18,%rsp
   0.00%       0x00007f825719432b:   nop
               0x00007f825719432c:   cmpl   $0x1,0x20(%r15)
   0.01%       0x00007f8257194334:   jne    0x00007f8257194646
   1.50%       0x00007f825719433a:   mov    %rbp,0x10(%rsp)
               0x00007f825719433f:   mov    %rsi,%r11
   0.00%       0x00007f8257194342:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@1 (line 140)
               0x00007f8257194346:   mov    %eax,%r8d
   1.49%       0x00007f8257194349:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 140)
               0x00007f825719434c:   cmp    $0x21,%r8d
               0x00007f8257194350:   jl     0x00007f8257194611           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 143)
               0x00007f8257194356:   mov    (%r11),%r10
   4.31%       0x00007f8257194359:   lea    (%rsp),%r9
   0.01%       0x00007f825719435d:   data16 xchg %ax,%ax
               0x00007f8257194360:   test   $0x2,%r10
          ╭    0x00007f8257194367:   jne    0x00007f825719446b
   1.41%  │    0x00007f825719436d:   or     $0x1,%r10
          │    0x00007f8257194371:   mov    %r10,(%r9)
   3.01%  │    0x00007f8257194374:   mov    %r10,%rax
   0.00%  │    0x00007f8257194377:   lock cmpxchg %r9,(%r11)
  26.59%  │    0x00007f825719437c:   nopl   0x0(%rax)
   0.02%  │    0x00007f8257194380:   cmp    %r10,%rax
          │    0x00007f8257194383:   jne    0x00007f825719449e
   1.46%  │    0x00007f8257194389:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   0.01%  │    0x00007f8257194390:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
   1.50%  │    0x00007f8257194394:   mov    %r8d,%eax
          │    0x00007f8257194397:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 144)
          │    0x00007f825719439a:   nopw   0x0(%rax,%rax,1)
   0.00%  │    0x00007f82571943a0:   cmp    $0x21,%eax
          │    0x00007f82571943a3:   jl     0x00007f825719463d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 146)
   1.56%  │    0x00007f82571943a9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
   0.00%  │    0x00007f82571943ac:   cmp    $0x21,%eax
          │    0x00007f82571943af:   jl     0x00007f8257194634           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 149)
          │    0x00007f82571943b5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
          │    0x00007f82571943b8:   nopl   0x0(%rax,%rax,1)
   1.51%  │    0x00007f82571943c0:   cmp    $0x21,%eax
          │    0x00007f82571943c3:   jl     0x00007f82571945ff           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 152)
          │    0x00007f82571943c9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
          │    0x00007f82571943cc:   cmp    $0x21,%eax
          │    0x00007f82571943cf:   jl     0x00007f82571945c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 155)
          │    0x00007f82571943d5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
   1.44%  │    0x00007f82571943d8:   nopl   0x0(%rax,%rax,1)
          │    0x00007f82571943e0:   cmp    $0x21,%eax
          │    0x00007f82571943e3:   jl     0x00007f8257194608           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 158)
          │    0x00007f82571943e9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 159)
          │    0x00007f82571943ec:   cmp    $0x21,%eax
          │    0x00007f82571943ef:   jl     0x00007f82571945f6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 161)
   1.40%  │    0x00007f82571943f5:   mov    %eax,%r9d
   0.00%  │    0x00007f82571943f8:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 162)
          │    0x00007f82571943fb:   nopl   0x0(%rax,%rax,1)
          │    0x00007f8257194400:   cmp    $0x21,%r9d
          │    0x00007f8257194404:   jl     0x00007f82571945ed           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 164)
   1.47%  │    0x00007f825719440a:   lea    (%rsp),%r8
   0.00%  │    0x00007f825719440e:   mov    (%r8),%rsi
   0.00%  │    0x00007f8257194411:   test   %rsi,%rsi
          │╭   0x00007f8257194414:   je     0x00007f8257194462           ;   {no_reloc}
          ││   0x00007f825719441a:   mov    (%r11),%rcx
   8.74%  ││   0x00007f825719441d:   data16 xchg %ax,%ax
   0.01%  ││   0x00007f8257194420:   test   $0x2,%rcx
          ││   0x00007f8257194427:   jne    0x00007f82571944c5
   1.49%  ││   0x00007f825719442d:   mov    %r8,%rax
   0.00%  ││   0x00007f8257194430:   lock cmpxchg %rsi,(%r11)
  25.39%  ││   0x00007f8257194435:   jne    0x00007f8257194530
   0.04%  ││   0x00007f825719443b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
   1.45%  ││↗  0x00007f8257194442:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
          │││  0x00007f8257194445:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@104 (line 168)
   1.46%  │││  0x00007f8257194448:   mov    0x10(%rsp),%rbp
   0.00%  │││  0x00007f825719444d:   add    $0x18,%rsp
          │││  0x00007f8257194451:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f8257194458:   ja     0x00007f8257194656
          │││  0x00007f825719445e:   vzeroupper 
   1.56%  │││  0x00007f8257194461:   ret    
          │↘│  0x00007f8257194462:   decq   0x550(%r15)
          │ ╰  0x00007f8257194469:   jmp    0x00007f8257194442           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 165)
          ↘    0x00007f825719446b:   movq   $0x3,(%r9)
               0x00007f8257194472:   mov    0x3e(%r10),%rsi
               0x00007f8257194476:   test   %rsi,%rsi
               0x00007f8257194479:   jne    0x00007f8257194518
               0x00007f825719447f:   mov    $0x0,%rax
               0x00007f8257194486:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  90.35%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.35%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 1037 
   5.85%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 5, compile id 1065 
   0.50%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.74%  <...other 355 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.35%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 1037 
   5.85%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 5, compile id 1065 
   3.05%                kernel  [unknown] 
   0.20%                        <unknown> 
   0.03%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%             libjvm.so  defaultStream::hold 
   0.03%             libjvm.so  xmlStream::write_text 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libjvm.so  fileStream::write 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  syscall 
   0.01%             libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.25%  <...other 93 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.20%        jvmci, level 4
   3.05%                kernel
   0.28%             libjvm.so
   0.20%                      
   0.18%             libc.so.6
   0.04%        hsdis-amd64.so
   0.01%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%         perf-7450.map
   0.01%                [vdso]
   0.00%           c1, level 3
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:06:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 57.006 ns/op
# Warmup Iteration   2: 55.834 ns/op
# Warmup Iteration   3: 56.127 ns/op
# Warmup Iteration   4: 55.601 ns/op
# Warmup Iteration   5: 55.491 ns/op
Iteration   1: 55.490 ns/op
Iteration   2: 55.113 ns/op
Iteration   3: 55.468 ns/op
Iteration   4: 55.426 ns/op
Iteration   5: 55.861 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  55.472 ±(99.9%) 1.023 ns/op [Average]
  (min, avg, max) = (55.113, 55.472, 55.861), stdev = 0.266
  CI (99.9%): [54.449, 56.494] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 214305 total address lines.
Perf output processed (skipped 77.923 seconds):
 Column 1: cycles (50795 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 1043 

               # {method} {0x00007fd524484218} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
               #           [sp+0x20]  (sp of caller)
               0x00007fd5b3195600:   mov    0x8(%rsi),%r10d
               0x00007fd5b3195604:   movabs $0x7fd52f000000,%r12
               0x00007fd5b319560e:   add    %r12,%r10
               0x00007fd5b3195611:   xor    %r12,%r12
               0x00007fd5b3195614:   cmp    %r10,%rax
               0x00007fd5b3195617:   jne    0x00007fd5b2af9080           ;   {runtime_call ic_miss_stub}
               0x00007fd5b319561d:   data16 xchg %ax,%ax
             [Verified Entry Point]
   0.00%       0x00007fd5b3195620:   mov    %eax,-0x14000(%rsp)
   1.41%       0x00007fd5b3195627:   sub    $0x18,%rsp
               0x00007fd5b319562b:   nop
               0x00007fd5b319562c:   cmpl   $0x1,0x20(%r15)
               0x00007fd5b3195634:   jne    0x00007fd5b3195910
   1.40%       0x00007fd5b319563a:   mov    %rbp,0x10(%rsp)
               0x00007fd5b319563f:   mov    %rsi,%r11
               0x00007fd5b3195642:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@1 (line 174)
   0.00%       0x00007fd5b3195646:   mov    %eax,%r8d
   1.46%       0x00007fd5b3195649:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 174)
   0.00%       0x00007fd5b319564c:   cmp    $0x21,%r8d
               0x00007fd5b3195650:   jl     0x00007fd5b31958ed           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 177)
   0.00%       0x00007fd5b3195656:   mov    (%r11),%r10
   4.45%       0x00007fd5b3195659:   lea    (%rsp),%r9
   0.00%       0x00007fd5b319565d:   data16 xchg %ax,%ax
   0.00%       0x00007fd5b3195660:   test   $0x2,%r10
          ╭    0x00007fd5b3195667:   jne    0x00007fd5b319576b
   1.54%  │    0x00007fd5b319566d:   or     $0x1,%r10
          │    0x00007fd5b3195671:   mov    %r10,(%r9)
   2.99%  │    0x00007fd5b3195674:   mov    %r10,%rax
   0.00%  │    0x00007fd5b3195677:   lock cmpxchg %r9,(%r11)
  26.60%  │    0x00007fd5b319567c:   nopl   0x0(%rax)
   0.01%  │    0x00007fd5b3195680:   cmp    %r10,%rax
          │    0x00007fd5b3195683:   jne    0x00007fd5b319579e
   1.41%  │    0x00007fd5b3195689:   incq   0x550(%r15)                  ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@0 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   0.00%  │    0x00007fd5b3195690:   mov    0x14(%r11),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@2 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
   1.51%  │    0x00007fd5b3195694:   mov    %r8d,%eax
   0.00%  │    0x00007fd5b3195697:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 178)
          │    0x00007fd5b319569a:   nopw   0x0(%rax,%rax,1)
          │    0x00007fd5b31956a0:   cmp    $0x21,%eax
          │    0x00007fd5b31956a3:   jl     0x00007fd5b31958c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 179)
   1.48%  │    0x00007fd5b31956a9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
          │    0x00007fd5b31956ac:   cmp    $0x21,%eax
          │    0x00007fd5b31956af:   jl     0x00007fd5b31958c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 181)
          │    0x00007fd5b31956b5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
          │    0x00007fd5b31956b8:   nopl   0x0(%rax,%rax,1)
   1.50%  │    0x00007fd5b31956c0:   cmp    $0x21,%eax
          │    0x00007fd5b31956c3:   jl     0x00007fd5b31958c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 183)
   0.00%  │    0x00007fd5b31956c9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
          │    0x00007fd5b31956cc:   cmp    $0x21,%eax
          │    0x00007fd5b31956cf:   jl     0x00007fd5b31958c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 185)
   0.00%  │    0x00007fd5b31956d5:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
   1.55%  │    0x00007fd5b31956d8:   nopl   0x0(%rax,%rax,1)
          │    0x00007fd5b31956e0:   cmp    $0x21,%eax
          │    0x00007fd5b31956e3:   jl     0x00007fd5b31958c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 187)
          │    0x00007fd5b31956e9:   add    %r10d,%eax                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 188)
          │    0x00007fd5b31956ec:   cmp    $0x21,%eax
          │    0x00007fd5b31956ef:   jl     0x00007fd5b31958c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 189)
   1.52%  │    0x00007fd5b31956f5:   mov    %eax,%r9d
          │    0x00007fd5b31956f8:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 190)
          │    0x00007fd5b31956fb:   nopl   0x0(%rax,%rax,1)
   0.00%  │    0x00007fd5b3195700:   cmp    $0x21,%r9d
          │    0x00007fd5b3195704:   jl     0x00007fd5b31958c7           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 191)
   1.37%  │    0x00007fd5b319570a:   lea    (%rsp),%r8
          │    0x00007fd5b319570e:   mov    (%r8),%rsi
   0.00%  │    0x00007fd5b3195711:   test   %rsi,%rsi
          │╭   0x00007fd5b3195714:   je     0x00007fd5b3195762           ;   {no_reloc}
          ││   0x00007fd5b319571a:   mov    (%r11),%rcx
   9.19%  ││   0x00007fd5b319571d:   data16 xchg %ax,%ax
   0.00%  ││   0x00007fd5b3195720:   test   $0x2,%rcx
          ││   0x00007fd5b3195727:   jne    0x00007fd5b31957c5
   1.50%  ││   0x00007fd5b319572d:   mov    %r8,%rax
          ││   0x00007fd5b3195730:   lock cmpxchg %rsi,(%r11)
  25.40%  ││   0x00007fd5b3195735:   jne    0x00007fd5b3195830
   0.02%  ││   0x00007fd5b319573b:   decq   0x550(%r15)                  ;*synchronization entry
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
   1.45%  ││↗  0x00007fd5b3195742:   add    %r10d,%r9d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
   0.00%  │││  0x00007fd5b3195745:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@104 (line 202)
   1.50%  │││  0x00007fd5b3195748:   mov    0x10(%rsp),%rbp
          │││  0x00007fd5b319574d:   add    $0x18,%rsp
          │││  0x00007fd5b3195751:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007fd5b3195758:   ja     0x00007fd5b3195920
          │││  0x00007fd5b319575e:   vzeroupper 
   1.60%  │││  0x00007fd5b3195761:   ret    
          │↘│  0x00007fd5b3195762:   decq   0x550(%r15)
          │ ╰  0x00007fd5b3195769:   jmp    0x00007fd5b3195742           ;*synchronization entry
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 192)
          ↘    0x00007fd5b319576b:   movq   $0x3,(%r9)
               0x00007fd5b3195772:   mov    0x3e(%r10),%rsi
               0x00007fd5b3195776:   test   %rsi,%rsi
               0x00007fd5b3195779:   jne    0x00007fd5b3195818
               0x00007fd5b319577f:   mov    $0x0,%rax
               0x00007fd5b3195786:   lock cmpxchg %r15,0x3e(%r10)
....................................................................................................
  90.91%  <total for region 1>

....[Hottest Regions]...............................................................................
  90.91%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 1043 
   5.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1071 
   0.59%                kernel  [unknown] 
   0.28%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.16%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   0.03%                kernel  [unknown] 
   1.08%  <...other 240 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.91%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 1043 
   5.89%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 1071 
   2.77%                kernel  [unknown] 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%             libjvm.so  fileStream::flush 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%        hsdis-amd64.so  print_insn 
   0.01%             libc.so.6  __vfprintf_internal 
   0.01%             libjvm.so  defaultStream::hold 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%             libc.so.6  __strchr_avx2 
   0.01%             libc.so.6  _IO_file_xsputn@@GLIBC_2.2.5 
   0.01%             libc.so.6  _IO_default_xsputn 
   0.01%             libc.so.6  syscall 
   0.01%             libc.so.6  _IO_fwrite 
   0.01%             libc.so.6  __memmove_avx_unaligned_erms 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%   libjvmcicompiler.so  com.oracle.svm.core.util.Utf8::utf8ToString 
   0.01%   libjvmcicompiler.so  jdk.vm.ci.meta.MetaUtil::replacePackageAndHiddenSeparators 
   0.23%  <...other 99 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.79%        jvmci, level 4
   2.77%                kernel
   0.19%             libjvm.so
   0.10%             libc.so.6
   0.09%   libjvmcicompiler.so
   0.02%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.00%                [vdso]
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:04:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 269.163 ns/op
# Warmup Iteration   2: 263.850 ns/op
# Warmup Iteration   3: 261.365 ns/op
# Warmup Iteration   4: 262.153 ns/op
# Warmup Iteration   5: 262.816 ns/op
Iteration   1: 261.154 ns/op
Iteration   2: 262.021 ns/op
Iteration   3: 261.989 ns/op
Iteration   4: 262.088 ns/op
Iteration   5: 265.070 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  262.464 ±(99.9%) 5.798 ns/op [Average]
  (min, avg, max) = (261.154, 262.464, 265.070), stdev = 1.506
  CI (99.9%): [256.666, 268.263] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:asm":
PrintAssembly processed: 217203 total address lines.
Perf output processed (skipped 78.705 seconds):
 Column 1: cycles (50896 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 1020 

                                                             # {method} {0x00007f8373479d80} &apos;nested_synchronized&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
                                                             #           [sp+0x60]  (sp of caller)
                                                             0x00007f83fb19a440:   mov    0x8(%rsi),%r10d
                                                             0x00007f83fb19a444:   movabs $0x7f8377000000,%r12
                                                             0x00007f83fb19a44e:   add    %r12,%r10
                                                             0x00007f83fb19a451:   xor    %r12,%r12
                                                             0x00007f83fb19a454:   cmp    %r10,%rax
                                                             0x00007f83fb19a457:   jne    0x00007f83faaf9080           ;   {runtime_call ic_miss_stub}
                                                             0x00007f83fb19a45d:   data16 xchg %ax,%ax
                                                           [Verified Entry Point]
   0.25%                                                     0x00007f83fb19a460:   mov    %eax,-0x14000(%rsp)
                                                             0x00007f83fb19a467:   sub    $0x58,%rsp
   0.30%                                                     0x00007f83fb19a46b:   nop
   0.00%                                                     0x00007f83fb19a46c:   cmpl   $0x1,0x20(%r15)
                                                             0x00007f83fb19a474:   jne    0x00007f83fb19b435
                                                             0x00007f83fb19a47a:   mov    %rbp,0x50(%rsp)
   0.28%                                                     0x00007f83fb19a47f:   mov    %rsi,%r11
                                                             0x00007f83fb19a482:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   1.22%                                                     0x00007f83fb19a485:   mov    0x10(%r11),%eax              ;*getfield defaultValue {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@1 (line 82)
                                                             0x00007f83fb19a489:   lea    0x40(%rsp),%r8               ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
                                                             0x00007f83fb19a48e:   mov    %eax,%r9d
                                                             0x00007f83fb19a491:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@5 (line 82)
   0.31%                                                     0x00007f83fb19a494:   nopl   0x0(%rax,%rax,1)
                                                             0x00007f83fb19a49c:   data16 data16 xchg %ax,%ax
                                                             0x00007f83fb19a4a0:   test   $0x2,%r10
          ╭                                                  0x00007f83fb19a4a7:   jne    0x00007f83fb19a9d2
   0.00%  │                                                  0x00007f83fb19a4ad:   or     $0x1,%r10
   0.29%  │                                                  0x00007f83fb19a4b1:   mov    %r10,(%r8)
   0.28%  │                                                  0x00007f83fb19a4b4:   mov    %r10,%rax
          │                                                  0x00007f83fb19a4b7:   lock cmpxchg %r8,(%r11)
   5.52%  │                                                  0x00007f83fb19a4bc:   nopl   0x0(%rax)
   0.01%  │                                                  0x00007f83fb19a4c0:   cmp    %r10,%rax
          │╭                                                 0x00007f83fb19a4c3:   jne    0x00007f83fb19ab11
   0.32%  ││                                                 0x00007f83fb19a4c9:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   0.00%  ││                                   ↗      ↗      0x00007f83fb19a4d0:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││                                   │      │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 86)
   3.55%  ││                                   │      │      0x00007f83fb19a4d3:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││                                   │      │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@13 (line 85)
          ││                                   │      │      0x00007f83fb19a4d7:   lea    0x8(%rsp),%r8
          ││                                   │      │      0x00007f83fb19a4dc:   nopl   0x0(%rax)
          ││                                   │      │      0x00007f83fb19a4e0:   test   $0x2,%r10
          ││╭                                  │      │      0x00007f83fb19a4e7:   jne    0x00007f83fb19a968
   0.30%  │││                                  │      │      0x00007f83fb19a4ed:   or     $0x1,%r10
          │││                                  │      │      0x00007f83fb19a4f1:   mov    %r10,(%r8)
   0.58%  │││                                  │      │      0x00007f83fb19a4f4:   mov    %r10,%rax
   0.00%  │││                                  │      │      0x00007f83fb19a4f7:   lock cmpxchg %r8,(%r11)
   5.41%  │││                                  │      │      0x00007f83fb19a4fc:   nopl   0x0(%rax)
   0.01%  │││                                  │      │      0x00007f83fb19a500:   cmp    %r10,%rax
          │││╭                                 │      │      0x00007f83fb19a503:   jne    0x00007f83fb19ab65
          ││││                                 │      │      0x00007f83fb19a509:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││                                 │      │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 86)
          ││││                               ↗ │      │ ↗    0x00007f83fb19a510:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││                               │ │      │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 88)
   3.58%  ││││                               │ │      │ │    0x00007f83fb19a513:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││                               │ │      │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@24 (line 87)
   0.00%  ││││                               │ │      │ │    0x00007f83fb19a517:   lea    0x10(%rsp),%r8
          ││││                               │ │      │ │    0x00007f83fb19a51c:   nopl   0x0(%rax)
          ││││                               │ │      │ │    0x00007f83fb19a520:   test   $0x2,%r10
          ││││╭                              │ │      │ │    0x00007f83fb19a527:   jne    0x00007f83fb19aa3b
   0.26%  │││││                              │ │      │ │    0x00007f83fb19a52d:   or     $0x1,%r10
          │││││                              │ │      │ │    0x00007f83fb19a531:   mov    %r10,(%r8)
   0.58%  │││││                              │ │      │ │    0x00007f83fb19a534:   mov    %r10,%rax
          │││││                              │ │      │ │    0x00007f83fb19a537:   lock cmpxchg %r8,(%r11)
   5.30%  │││││                              │ │      │ │    0x00007f83fb19a53c:   nopl   0x0(%rax)
   0.01%  │││││                              │ │      │ │    0x00007f83fb19a540:   cmp    %r10,%rax
          │││││╭                             │ │      │ │    0x00007f83fb19a543:   jne    0x00007f83fb19aacb
          ││││││                             │ │      │ │    0x00007f83fb19a549:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││                             │ │      │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 88)
          ││││││                             │ │ ↗  ↗ │ │    0x00007f83fb19a550:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││                             │ │ │  │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 90)
   3.40%  ││││││                             │ │ │  │ │ │    0x00007f83fb19a553:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││                             │ │ │  │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@36 (line 89)
          ││││││                             │ │ │  │ │ │                                                              ;   {no_reloc}
   0.01%  ││││││                             │ │ │  │ │ │    0x00007f83fb19a557:   lea    0x18(%rsp),%r8
          ││││││                             │ │ │  │ │ │    0x00007f83fb19a55c:   nopl   0x0(%rax)
          ││││││                             │ │ │  │ │ │    0x00007f83fb19a560:   test   $0x2,%r10
          ││││││╭                            │ │ │  │ │ │    0x00007f83fb19a567:   jne    0x00007f83fb19a932
   0.31%  │││││││                            │ │ │  │ │ │    0x00007f83fb19a56d:   or     $0x1,%r10
          │││││││                            │ │ │  │ │ │    0x00007f83fb19a571:   mov    %r10,(%r8)
   0.66%  │││││││                            │ │ │  │ │ │    0x00007f83fb19a574:   mov    %r10,%rax
          │││││││                            │ │ │  │ │ │    0x00007f83fb19a577:   lock cmpxchg %r8,(%r11)
   5.43%  │││││││                            │ │ │  │ │ │    0x00007f83fb19a57c:   nopl   0x0(%rax)
   0.01%  │││││││                            │ │ │  │ │ │    0x00007f83fb19a580:   cmp    %r10,%rax
          │││││││╭                           │ │ │  │ │ │    0x00007f83fb19a583:   jne    0x00007f83fb19ab88
          ││││││││                           │ │ │  │ │ │    0x00007f83fb19a589:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                           │ │ │  │ │ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 90)
          ││││││││                          ↗│ │ │  │ │ │↗   0x00007f83fb19a590:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                          ││ │ │  │ │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 92)
   3.51%  ││││││││                          ││ │ │  │ │ ││   0x00007f83fb19a593:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││││                          ││ │ │  │ │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@48 (line 91)
          ││││││││                          ││ │ │  │ │ ││   0x00007f83fb19a597:   lea    0x20(%rsp),%r8
          ││││││││                          ││ │ │  │ │ ││   0x00007f83fb19a59c:   nopl   0x0(%rax)
          ││││││││                          ││ │ │  │ │ ││   0x00007f83fb19a5a0:   test   $0x2,%r10
          ││││││││╭                         ││ │ │  │ │ ││   0x00007f83fb19a5a7:   jne    0x00007f83fb19aa72
   0.29%  │││││││││                         ││ │ │  │ │ ││   0x00007f83fb19a5ad:   or     $0x1,%r10
          │││││││││                         ││ │ │  │ │ ││   0x00007f83fb19a5b1:   mov    %r10,(%r8)
   0.60%  │││││││││                         ││ │ │  │ │ ││   0x00007f83fb19a5b4:   mov    %r10,%rax
          │││││││││                         ││ │ │  │ │ ││   0x00007f83fb19a5b7:   lock cmpxchg %r8,(%r11)
   5.35%  │││││││││                         ││ │ │  │ │ ││   0x00007f83fb19a5bc:   nopl   0x0(%rax)
   0.01%  │││││││││                         ││ │ │  │ │ ││   0x00007f83fb19a5c0:   cmp    %r10,%rax
          │││││││││╭                        ││ │ │  │ │ ││   0x00007f83fb19a5c3:   jne    0x00007f83fb19ab40
          ││││││││││                        ││ │ │  │ │ ││   0x00007f83fb19a5c9:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                        ││ │ │  │ │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 92)
   0.29%  ││││││││││                        ││ │ │↗ │ │↗││   0x00007f83fb19a5d0:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                        ││ │ ││ │ ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 94)
   3.27%  ││││││││││                        ││ │ ││ │ ││││   0x00007f83fb19a5d3:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││                        ││ │ ││ │ ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@60 (line 93)
   0.00%  ││││││││││                        ││ │ ││ │ ││││   0x00007f83fb19a5d7:   lea    0x28(%rsp),%r8
          ││││││││││                        ││ │ ││ │ ││││   0x00007f83fb19a5dc:   nopl   0x0(%rax)
          ││││││││││                        ││ │ ││ │ ││││   0x00007f83fb19a5e0:   test   $0x2,%r10
          ││││││││││╭                       ││ │ ││ │ ││││   0x00007f83fb19a5e7:   jne    0x00007f83fb19aa08
   0.26%  │││││││││││                       ││ │ ││ │ ││││   0x00007f83fb19a5ed:   or     $0x1,%r10
          │││││││││││                       ││ │ ││ │ ││││   0x00007f83fb19a5f1:   mov    %r10,(%r8)
   0.69%  │││││││││││                       ││ │ ││ │ ││││   0x00007f83fb19a5f4:   mov    %r10,%rax
   0.00%  │││││││││││                       ││ │ ││ │ ││││   0x00007f83fb19a5f7:   lock cmpxchg %r8,(%r11)
   5.51%  │││││││││││                       ││ │ ││ │ ││││   0x00007f83fb19a5fc:   nopl   0x0(%rax)
   0.01%  │││││││││││                       ││ │ ││ │ ││││   0x00007f83fb19a600:   cmp    %r10,%rax
          │││││││││││╭                      ││ │ ││ │ ││││   0x00007f83fb19a603:   jne    0x00007f83fb19aaee
          ││││││││││││                      ││ │ ││ │ ││││   0x00007f83fb19a609:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││                      ││ │ ││ │ ││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 94)
          ││││││││││││                      ││ │↗││ │↗││││   0x00007f83fb19a610:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││                      ││ ││││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 96)
   3.50%  ││││││││││││                      ││ ││││ ││││││   0x00007f83fb19a613:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││                      ││ ││││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@72 (line 95)
   0.00%  ││││││││││││                      ││ ││││ ││││││   0x00007f83fb19a617:   lea    0x30(%rsp),%r8
          ││││││││││││                      ││ ││││ ││││││   0x00007f83fb19a61c:   nopl   0x0(%rax)
          ││││││││││││                      ││ ││││ ││││││   0x00007f83fb19a620:   test   $0x2,%r10
          ││││││││││││╭                     ││ ││││ ││││││   0x00007f83fb19a627:   jne    0x00007f83fb19a99b
   0.35%  │││││││││││││                     ││ ││││ ││││││   0x00007f83fb19a62d:   or     $0x1,%r10
          │││││││││││││                     ││ ││││ ││││││   0x00007f83fb19a631:   mov    %r10,(%r8)
   0.68%  │││││││││││││                     ││ ││││ ││││││   0x00007f83fb19a634:   mov    %r10,%rax
          │││││││││││││                     ││ ││││ ││││││   0x00007f83fb19a637:   lock cmpxchg %r8,(%r11)
   5.19%  │││││││││││││                     ││ ││││ ││││││   0x00007f83fb19a63c:   nopl   0x0(%rax)
   0.01%  │││││││││││││                     ││ ││││ ││││││   0x00007f83fb19a640:   cmp    %r10,%rax
          │││││││││││││╭                    ││ ││││ ││││││   0x00007f83fb19a643:   jne    0x00007f83fb19aaa8
          ││││││││││││││                    ││ ││││ ││││││   0x00007f83fb19a649:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││                    ││ ││││ ││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 96)
          ││││││││││││││                    ││↗││││↗││││││   0x00007f83fb19a650:   mov    (%r11),%r10                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││                    ││││││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 98)
   3.47%  ││││││││││││││                    ││││││││││││││   0x00007f83fb19a653:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││                    ││││││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@84 (line 97)
          ││││││││││││││                    ││││││││││││││                                                             ;   {no_reloc}
          ││││││││││││││                    ││││││││││││││   0x00007f83fb19a657:   lea    0x38(%rsp),%r8
          ││││││││││││││                    ││││││││││││││   0x00007f83fb19a65c:   nopl   0x0(%rax)
          ││││││││││││││                    ││││││││││││││   0x00007f83fb19a660:   test   $0x2,%r10
          ││││││││││││││╭                   ││││││││││││││   0x00007f83fb19a667:   jne    0x00007f83fb19a8fe
   0.32%  │││││││││││││││                   ││││││││││││││   0x00007f83fb19a66d:   or     $0x1,%r10
          │││││││││││││││                   ││││││││││││││   0x00007f83fb19a671:   mov    %r10,(%r8)
   0.65%  │││││││││││││││                   ││││││││││││││   0x00007f83fb19a674:   mov    %r10,%rax
          │││││││││││││││                   ││││││││││││││   0x00007f83fb19a677:   lock cmpxchg %r8,(%r11)
   5.32%  │││││││││││││││                   ││││││││││││││   0x00007f83fb19a67c:   nopl   0x0(%rax)
          │││││││││││││││                   ││││││││││││││   0x00007f83fb19a680:   cmp    %r10,%rax
          │││││││││││││││╭                  ││││││││││││││   0x00007f83fb19a683:   jne    0x00007f83fb19abab
          ││││││││││││││││                  ││││││││││││││   0x00007f83fb19a689:   incq   0x550(%r15)                  ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││                  ││││││││││││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 98)
          ││││││││││││││││                 ↗││││││││││││││↗  0x00007f83fb19a690:   lea    0x38(%rsp),%r10
   0.35%  ││││││││││││││││                 ││││││││││││││││  0x00007f83fb19a695:   mov    (%r10),%rsi                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││                 ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@103 (line 100)
          ││││││││││││││││                 ││││││││││││││││  0x00007f83fb19a698:   add    0x14(%r11),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││                 ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@96 (line 99)
          ││││││││││││││││                 ││││││││││││││││  0x00007f83fb19a69c:   nopl   0x0(%rax)
          ││││││││││││││││                 ││││││││││││││││  0x00007f83fb19a6a0:   test   %rsi,%rsi
          ││││││││││││││││╭                ││││││││││││││││  0x00007f83fb19a6a3:   je     0x00007f83fb19a89f
          │││││││││││││││││                ││││││││││││││││  0x00007f83fb19a6a9:   mov    (%r11),%r8
          │││││││││││││││││                ││││││││││││││││  0x00007f83fb19a6ac:   test   $0x2,%r8
          │││││││││││││││││                ││││││││││││││││  0x00007f83fb19a6b3:   jne    0x00007f83fb19ad7d
          │││││││││││││││││                ││││││││││││││││  0x00007f83fb19a6b9:   mov    %r10,%rax
          │││││││││││││││││                ││││││││││││││││  0x00007f83fb19a6bc:   lock cmpxchg %rsi,(%r11)
          │││││││││││││││││                ││││││││││││││││  0x00007f83fb19a6c1:   jne    0x00007f83fb19afd1
          │││││││││││││││││                ││││││││││││││││  0x00007f83fb19a6c7:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││                ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@103 (line 100)
   0.37%  │││││││││││││││││        ↗       ││││││││││││││││  0x00007f83fb19a6ce:   lea    0x30(%rsp),%r10
          │││││││││││││││││        │       ││││││││││││││││  0x00007f83fb19a6d3:   mov    (%r10),%rsi
          │││││││││││││││││        │       ││││││││││││││││  0x00007f83fb19a6d6:   test   %rsi,%rsi
          │││││││││││││││││╭       │       ││││││││││││││││  0x00007f83fb19a6d9:   je     0x00007f83fb19a8c5
          ││││││││││││││││││       │       ││││││││││││││││  0x00007f83fb19a6df:   mov    (%r11),%r8
          ││││││││││││││││││       │       ││││││││││││││││  0x00007f83fb19a6e2:   test   $0x2,%r8
          ││││││││││││││││││       │       ││││││││││││││││  0x00007f83fb19a6e9:   jne    0x00007f83fb19ad3d
          ││││││││││││││││││       │       ││││││││││││││││  0x00007f83fb19a6ef:   mov    %r10,%rax
          ││││││││││││││││││       │       ││││││││││││││││  0x00007f83fb19a6f2:   lock cmpxchg %rsi,(%r11)
          ││││││││││││││││││       │       ││││││││││││││││  0x00007f83fb19a6f7:   jne    0x00007f83fb19afe5
          ││││││││││││││││││       │       ││││││││││││││││  0x00007f83fb19a6fd:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││       │       ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@117 (line 101)
   0.35%  ││││││││││││││││││       │  ↗    ││││││││││││││││  0x00007f83fb19a704:   lea    0x28(%rsp),%r10
          ││││││││││││││││││       │  │    ││││││││││││││││  0x00007f83fb19a709:   mov    (%r10),%rsi
          ││││││││││││││││││       │  │    ││││││││││││││││  0x00007f83fb19a70c:   test   %rsi,%rsi
          ││││││││││││││││││╭      │  │    ││││││││││││││││  0x00007f83fb19a70f:   je     0x00007f83fb19a8d1
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a715:   mov    (%r11),%r8
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a718:   nopl   0x0(%rax,%rax,1)
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a720:   test   $0x2,%r8
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a727:   jne    0x00007f83fb19acfd
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a72d:   mov    %r10,%rax
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a730:   lock cmpxchg %rsi,(%r11)
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a735:   jne    0x00007f83fb19afc0
          │││││││││││││││││││      │  │    ││││││││││││││││  0x00007f83fb19a73b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││      │  │    ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@131 (line 102)
   0.34%  │││││││││││││││││││      │  │↗   ││││││││││││││││  0x00007f83fb19a742:   lea    0x20(%rsp),%r10
          │││││││││││││││││││      │  ││   ││││││││││││││││  0x00007f83fb19a747:   mov    (%r10),%rsi
          │││││││││││││││││││      │  ││   ││││││││││││││││  0x00007f83fb19a74a:   test   %rsi,%rsi
          │││││││││││││││││││╭     │  ││   ││││││││││││││││  0x00007f83fb19a74d:   je     0x00007f83fb19a8ab
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a753:   mov    (%r11),%r8                   ;   {no_reloc}
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a756:   data16 nopw 0x0(%rax,%rax,1)
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a760:   test   $0x2,%r8
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a767:   jne    0x00007f83fb19ac80
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a76d:   mov    %r10,%rax
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a770:   lock cmpxchg %rsi,(%r11)
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a775:   jne    0x00007f83fb19af9e
          ││││││││││││││││││││     │  ││   ││││││││││││││││  0x00007f83fb19a77b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││     │  ││   ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@145 (line 103)
   0.30%  ││││││││││││││││││││     │↗ ││   ││││││││││││││││  0x00007f83fb19a782:   lea    0x18(%rsp),%r10
          ││││││││││││││││││││     ││ ││   ││││││││││││││││  0x00007f83fb19a787:   mov    (%r10),%rsi
          ││││││││││││││││││││     ││ ││   ││││││││││││││││  0x00007f83fb19a78a:   test   %rsi,%rsi
          ││││││││││││││││││││╭    ││ ││   ││││││││││││││││  0x00007f83fb19a78d:   je     0x00007f83fb19a8b7
          │││││││││││││││││││││    ││ ││   ││││││││││││││││  0x00007f83fb19a793:   mov    (%r11),%r8
          │││││││││││││││││││││    ││ ││   ││││││││││││││││  0x00007f83fb19a796:   data16 nopw 0x0(%rax,%rax,1)
          │││││││││││││││││││││    ││ ││   ││││││││││││││││  0x00007f83fb19a7a0:   test   $0x2,%r8
          │││││││││││││││││││││╭   ││ ││   ││││││││││││││││  0x00007f83fb19a7a7:   jne    0x00007f83fb19abce
          ││││││││││││││││││││││   ││ ││   ││││││││││││││││  0x00007f83fb19a7ad:   mov    %r10,%rax
          ││││││││││││││││││││││   ││ ││   ││││││││││││││││  0x00007f83fb19a7b0:   lock cmpxchg %rsi,(%r11)
          ││││││││││││││││││││││   ││ ││   ││││││││││││││││  0x00007f83fb19a7b5:   jne    0x00007f83fb19af7c
          ││││││││││││││││││││││   ││ ││   ││││││││││││││││  0x00007f83fb19a7bb:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││   ││ ││   ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@159 (line 104)
          ││││││││││││││││││││││   ││↗││   ││││││││││││││││  0x00007f83fb19a7c2:   lea    0x10(%rsp),%r10
          ││││││││││││││││││││││   │││││   ││││││││││││││││  0x00007f83fb19a7c7:   mov    (%r10),%rsi
          ││││││││││││││││││││││   │││││   ││││││││││││││││  0x00007f83fb19a7ca:   test   %rsi,%rsi
          ││││││││││││││││││││││╭  │││││   ││││││││││││││││  0x00007f83fb19a7cd:   je     0x00007f83fb19a8dd
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7d3:   mov    (%r11),%r8
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7d6:   data16 nopw 0x0(%rax,%rax,1)
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7e0:   test   $0x2,%r8
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7e7:   jne    0x00007f83fb19ac45
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7ed:   mov    %r10,%rax
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7f0:   lock cmpxchg %rsi,(%r11)
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7f5:   jne    0x00007f83fb19afaf
          │││││││││││││││││││││││  │││││   ││││││││││││││││  0x00007f83fb19a7fb:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││││││  │││││   ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@173 (line 105)
   0.32%  │││││││││││││││││││││││  │││││↗  ││││││││││││││││  0x00007f83fb19a802:   lea    0x8(%rsp),%r10
   0.00%  │││││││││││││││││││││││  ││││││  ││││││││││││││││  0x00007f83fb19a807:   mov    (%r10),%rsi
          │││││││││││││││││││││││  ││││││  ││││││││││││││││  0x00007f83fb19a80a:   test   %rsi,%rsi
          │││││││││││││││││││││││╭ ││││││  ││││││││││││││││  0x00007f83fb19a80d:   je     0x00007f83fb19a8f2
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a813:   mov    (%r11),%r8
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a816:   data16 nopw 0x0(%rax,%rax,1)
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a820:   test   $0x2,%r8
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a827:   jne    0x00007f83fb19acbd
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a82d:   mov    %r10,%rax
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a830:   lock cmpxchg %rsi,(%r11)
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a835:   jne    0x00007f83fb19aff6
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││  0x00007f83fb19a83b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││││││││ ││││││  ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@186 (line 106)
   0.28%  ││││││││││││││││││││││││ ││││││ ↗││││││││││││││││  0x00007f83fb19a842:   lea    0x40(%rsp),%r10
          ││││││││││││││││││││││││ ││││││ │││││││││││││││││  0x00007f83fb19a847:   mov    (%r10),%rsi
          ││││││││││││││││││││││││ ││││││ │││││││││││││││││  0x00007f83fb19a84a:   test   %rsi,%rsi
          ││││││││││││││││││││││││╭││││││ │││││││││││││││││  0x00007f83fb19a84d:   je     0x00007f83fb19a8e9
          │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a853:   mov    (%r11),%r8                   ;   {no_reloc}
   0.29%  │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a856:   data16 nopw 0x0(%rax,%rax,1)
          │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a860:   test   $0x2,%r8
          │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a867:   jne    0x00007f83fb19ac09
          │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a86d:   mov    %r10,%rax
          │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a870:   lock cmpxchg %rsi,(%r11)
   7.32%  │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a875:   jne    0x00007f83fb19af8d
   0.01%  │││││││││││││││││││││││││││││││ │││││││││││││││││  0x00007f83fb19a87b:   decq   0x550(%r15)                  ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││││││││││││││ │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   0.32%  │││││││││││││││││││││││││││││││↗│││││││││││││││││  0x00007f83fb19a882:   mov    %r9d,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││││││││││││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@210 (line 109)
          │││││││││││││││││││││││││││││││││││││││││││││││││  0x00007f83fb19a885:   mov    0x50(%rsp),%rbp
   0.33%  │││││││││││││││││││││││││││││││││││││││││││││││││  0x00007f83fb19a88a:   add    $0x58,%rsp
          │││││││││││││││││││││││││││││││││││││││││││││││││  0x00007f83fb19a88e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││││││││││││││││││││││││││││││││││││││││││││││││  0x00007f83fb19a895:   ja     0x00007f83fb19b446
          │││││││││││││││││││││││││││││││││││││││││││││││││  0x00007f83fb19a89b:   vzeroupper 
   0.27%  │││││││││││││││││││││││││││││││││││││││││││││││││  0x00007f83fb19a89e:   ret    
   0.30%  ││││││││││││││││↘││││││││││││││││││││││││││││││││  0x00007f83fb19a89f:   decq   0x550(%r15)
   0.00%  ││││││││││││││││ ││││││││╰│││││││││││││││││││││││  0x00007f83fb19a8a6:   jmp    0x00007f83fb19a6ce           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││ ││││││││ │││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@103 (line 100)
   0.29%  ││││││││││││││││ ││↘│││││ │││││││││││││││││││││││  0x00007f83fb19a8ab:   decq   0x550(%r15)
          ││││││││││││││││ ││ │││││ ╰││││││││││││││││││││││  0x00007f83fb19a8b2:   jmp    0x00007f83fb19a782           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││ ││ │││││  ││││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@145 (line 103)
   0.27%  ││││││││││││││││ ││ ↘││││  ││││││││││││││││││││││  0x00007f83fb19a8b7:   decq   0x550(%r15)
          ││││││││││││││││ ││  ││││  ││││││││││││││││││││││  0x00007f83fb19a8be:   xchg   %ax,%ax
   0.33%  ││││││││││││││││ ││  ││││  ╰│││││││││││││││││││││  0x00007f83fb19a8c0:   jmp    0x00007f83fb19a7c2           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││ ││  ││││   │││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@159 (line 104)
   0.36%  ││││││││││││││││ ↘│  ││││   │││││││││││││││││││││  0x00007f83fb19a8c5:   decq   0x550(%r15)
          ││││││││││││││││  │  ││││   ╰││││││││││││││││││││  0x00007f83fb19a8cc:   jmp    0x00007f83fb19a704           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││  │  ││││    ││││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@117 (line 101)
   0.34%  ││││││││││││││││  ↘  ││││    ││││││││││││││││││││  0x00007f83fb19a8d1:   decq   0x550(%r15)
   0.00%  ││││││││││││││││     ││││    ╰│││││││││││││││││││  0x00007f83fb19a8d8:   jmp    0x00007f83fb19a742           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││     ││││     │││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@131 (line 102)
   0.31%  ││││││││││││││││     │↘││     │││││││││││││││││││  0x00007f83fb19a8dd:   decq   0x550(%r15)
          ││││││││││││││││     │ ││     ╰││││││││││││││││││  0x00007f83fb19a8e4:   jmp    0x00007f83fb19a802           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││     │ ││      ││││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@173 (line 105)
          ││││││││││││││││     │ │↘      ││││││││││││││││││  0x00007f83fb19a8e9:   decq   0x550(%r15)
          ││││││││││││││││     │ │       ╰│││││││││││││││││  0x00007f83fb19a8f0:   jmp    0x00007f83fb19a882           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││     │ │        │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@198 (line 107)
   0.31%  ││││││││││││││││     │ ↘        │││││││││││││││││  0x00007f83fb19a8f2:   decq   0x550(%r15)
          ││││││││││││││││     │          ╰││││││││││││││││  0x00007f83fb19a8f9:   jmp    0x00007f83fb19a842           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││     │           ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@186 (line 106)
          ││││││││││││││↘│     │           ││││││││││││││││  0x00007f83fb19a8fe:   movq   $0x3,(%r8)
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a905:   mov    0x3e(%r10),%rsi
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a909:   test   %rsi,%rsi
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a90c:   jne    0x00007f83fb19ae7d
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a912:   mov    $0x0,%rax
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a919:   lock cmpxchg %r15,0x3e(%r10)
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a91f:   nop
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a920:   jne    0x00007f83fb19add5
          ││││││││││││││ │     │           ││││││││││││││││  0x00007f83fb19a926:   incq   0x550(%r15)
          ││││││││││││││ │     │           ╰│││││││││││││││  0x00007f83fb19a92d:   jmp    0x00007f83fb19a690           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││ │     │            │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 98)
          ││││││↘│││││││ │     │            │││││││││││││││  0x00007f83fb19a932:   movq   $0x3,(%r8)
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a939:   mov    0x3e(%r10),%rsi
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a93d:   data16 xchg %ax,%ax
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a940:   test   %rsi,%rsi
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a943:   jne    0x00007f83fb19af5c
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a949:   mov    $0x0,%rax
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a950:   lock cmpxchg %r15,0x3e(%r10)
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a956:   jne    0x00007f83fb19adbd
          ││││││ │││││││ │     │            │││││││││││││││  0x00007f83fb19a95c:   incq   0x550(%r15)
          ││││││ │││││││ │     │            ╰││││││││││││││  0x00007f83fb19a963:   jmp    0x00007f83fb19a590           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││││││ │││││││ │     │             ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 90)
          ││↘│││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a968:   movq   $0x3,(%r8)
          ││ │││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a96f:   mov    0x3e(%r10),%rsi
          ││ │││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a973:   test   %rsi,%rsi
          ││ │││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a976:   jne    0x00007f83fb19aedc
          ││ │││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a97c:   mov    $0x0,%rax
          ││ │││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a983:   lock cmpxchg %r15,0x3e(%r10)
          ││ │││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a989:   jne    0x00007f83fb19ae05           ;   {no_reloc}
          ││ │││ │││││││ │     │             ││││││││││││││  0x00007f83fb19a98f:   incq   0x550(%r15)
          ││ │││ │││││││ │     │             ╰│││││││││││││  0x00007f83fb19a996:   jmp    0x00007f83fb19a510           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │││││││ │     │              │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 86)
          ││ │││ │││││↘│ │     │              │││││││││││││  0x00007f83fb19a99b:   movq   $0x3,(%r8)
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9a2:   mov    0x3e(%r10),%rsi
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9a6:   test   %rsi,%rsi
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9a9:   jne    0x00007f83fb19af3c
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9af:   mov    $0x0,%rax
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9b6:   lock cmpxchg %r15,0x3e(%r10)
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9bc:   nopl   0x0(%rax)
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9c0:   jne    0x00007f83fb19ae65
          ││ │││ │││││ │ │     │              │││││││││││││  0x00007f83fb19a9c6:   incq   0x550(%r15)
          ││ │││ │││││ │ │     │              ╰││││││││││││  0x00007f83fb19a9cd:   jmp    0x00007f83fb19a650           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          ││ │││ │││││ │ │     │               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 96)
          ↘│ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9d2:   movq   $0x3,(%r8)
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9d9:   mov    0x3e(%r10),%rsi
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9dd:   data16 xchg %ax,%ax
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9e0:   test   %rsi,%rsi
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9e3:   jne    0x00007f83fb19af1c
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9e9:   mov    $0x0,%rax
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9f0:   lock cmpxchg %r15,0x3e(%r10)
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9f6:   jne    0x00007f83fb19ae4d
           │ │││ │││││ │ │     │               ││││││││││││  0x00007f83fb19a9fc:   incq   0x550(%r15)
           │ │││ │││││ │ │     │               ╰│││││││││││  0x00007f83fb19aa03:   jmp    0x00007f83fb19a4d0           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
           │ │││ │││││ │ │     │                │││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
           │ │││ │││↘│ │ │     │                │││││││││││  0x00007f83fb19aa08:   movq   $0x3,(%r8)
           │ │││ │││ │ │ │     │                │││││││││││  0x00007f83fb19aa0f:   mov    0x3e(%r10),%rsi
           │ │││ │││ │ │ │     │                │││││││││││  0x00007f83fb19aa13:   test   %rsi,%rsi
           │ │││ │││ │ │ │     │                │││││││││││  0x00007f83fb19aa16:   jne    0x00007f83fb19aebc
           │ │││ │││ │ │ │     │                │││││││││││  0x00007f83fb19aa1c:   mov    $0x0,%rax
           │ │││ │││ │ │ │     │                │││││││││││  0x00007f83fb19aa23:   lock cmpxchg %r15,0x3e(%r10)
           │ │││ │││ │ │ │     │                │││││││││││  0x00007f83fb19aa29:   jne    0x00007f83fb19ae35
           │ │││ │││ │ │ │     │                │││││││││││  0x00007f83fb19aa2f:   incq   0x550(%r15)
           │ │││ │││ │ │ │     │                ╰││││││││││  0x00007f83fb19aa36:   jmp    0x00007f83fb19a610           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
           │ │││ │││ │ │ │     │                 ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 94)
           │ │↘│ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa3b:   movq   $0x3,(%r8)
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa42:   mov    0x3e(%r10),%rsi
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa46:   test   %rsi,%rsi
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa49:   jne    0x00007f83fb19aefc
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa4f:   mov    $0x0,%rax
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa56:   lock cmpxchg %r15,0x3e(%r10)
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa5c:   nopl   0x0(%rax)
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa60:   jne    0x00007f83fb19aded
           │ │ │ │││ │ │ │     │                 ││││││││││  0x00007f83fb19aa66:   incq   0x550(%r15)
           │ │ │ │││ │ │ │     │                 ╰│││││││││  0x00007f83fb19aa6d:   jmp    0x00007f83fb19a550           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │││ │ │ │     │                  │││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 88)
           │ │ │ │↘│ │ │ │     │                  │││││││││  0x00007f83fb19aa72:   movq   $0x3,(%r8)
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa79:   mov    0x3e(%r10),%rsi
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa7d:   data16 xchg %ax,%ax
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa80:   test   %rsi,%rsi
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa83:   jne    0x00007f83fb19ae9c
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa89:   mov    $0x0,%rax                    ;   {no_reloc}
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa90:   lock cmpxchg %r15,0x3e(%r10)
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa96:   jne    0x00007f83fb19ae1d
           │ │ │ │ │ │ │ │     │                  │││││││││  0x00007f83fb19aa9c:   incq   0x550(%r15)
           │ │ │ │ │ │ │ │     │                  ╰││││││││  0x00007f83fb19aaa3:   jmp    0x00007f83fb19a5d0           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │ │ │ │ │     │                   ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 92)
   0.32%   │ │ │ │ │ │ ↘ │     │                   ││││││││  0x00007f83fb19aaa8:   sub    %rsp,%rax
   0.00%   │ │ │ │ │ │   │     │                   ││││││││  0x00007f83fb19aaab:   test   $0xfffffffffffff007,%rax
           │ │ │ │ │ │   │     │                   ││││││││  0x00007f83fb19aab2:   jne    0x00007f83fb19ae65
           │ │ │ │ │ │   │     │                   ││││││││  0x00007f83fb19aab8:   movq   $0x0,(%r8)
           │ │ │ │ │ │   │     │                   ││││││││  0x00007f83fb19aabf:   incq   0x550(%r15)
   0.34%   │ │ │ │ │ │   │     │                   ╰│││││││  0x00007f83fb19aac6:   jmp    0x00007f83fb19a650           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │ │ │   │     │                    │││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@81 (line 96)
   0.33%   │ │ ↘ │ │ │   │     │                    │││││││  0x00007f83fb19aacb:   sub    %rsp,%rax
           │ │   │ │ │   │     │                    │││││││  0x00007f83fb19aace:   test   $0xfffffffffffff007,%rax
           │ │   │ │ │   │     │                    │││││││  0x00007f83fb19aad5:   jne    0x00007f83fb19aded
           │ │   │ │ │   │     │                    │││││││  0x00007f83fb19aadb:   movq   $0x0,(%r8)
           │ │   │ │ │   │     │                    │││││││  0x00007f83fb19aae2:   incq   0x550(%r15)
   0.31%   │ │   │ │ │   │     │                    ╰││││││  0x00007f83fb19aae9:   jmp    0x00007f83fb19a550           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
           │ │   │ │ │   │     │                     ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@33 (line 88)
   0.31%   │ │   │ │ ↘   │     │                     ││││││  0x00007f83fb19aaee:   sub    %rsp,%rax
           │ │   │ │     │     │                     ││││││  0x00007f83fb19aaf1:   test   $0xfffffffffffff007,%rax
           │ │   │ │     │     │                     ││││││  0x00007f83fb19aaf8:   jne    0x00007f83fb19ae35
           │ │   │ │     │     │                     ││││││  0x00007f83fb19aafe:   movq   $0x0,(%r8)
           │ │   │ │     │     │                     ││││││  0x00007f83fb19ab05:   incq   0x550(%r15)
   0.32%   │ │   │ │     │     │                     ╰│││││  0x00007f83fb19ab0c:   jmp    0x00007f83fb19a610           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
           │ │   │ │     │     │                      │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@69 (line 94)
           ↘ │   │ │     │     │                      │││││  0x00007f83fb19ab11:   sub    %rsp,%rax
             │   │ │     │     │                      │││││  0x00007f83fb19ab14:   nopl   0x0(%rax,%rax,1)
             │   │ │     │     │                      │││││  0x00007f83fb19ab1c:   data16 data16 xchg %ax,%ax
             │   │ │     │     │                      │││││  0x00007f83fb19ab20:   test   $0xfffffffffffff007,%rax
             │   │ │     │     │                      │││││  0x00007f83fb19ab27:   jne    0x00007f83fb19ae4d
             │   │ │     │     │                      │││││  0x00007f83fb19ab2d:   movq   $0x0,(%r8)
             │   │ │     │     │                      │││││  0x00007f83fb19ab34:   incq   0x550(%r15)
             │   │ │     │     │                      ╰││││  0x00007f83fb19ab3b:   jmp    0x00007f83fb19a4d0           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
             │   │ │     │     │                       ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@10 (line 84)
   0.33%     │   │ ↘     │     │                       ││││  0x00007f83fb19ab40:   sub    %rsp,%rax
             │   │       │     │                       ││││  0x00007f83fb19ab43:   test   $0xfffffffffffff007,%rax
             │   │       │     │                       ││││  0x00007f83fb19ab4a:   jne    0x00007f83fb19ae1d
             │   │       │     │                       ││││  0x00007f83fb19ab50:   movq   $0x0,(%r8)
             │   │       │     │                       ││││  0x00007f83fb19ab57:   incq   0x550(%r15)
   0.34%     │   │       │     │                       ││││  0x00007f83fb19ab5e:   xchg   %ax,%ax
             │   │       │     │                       ╰│││  0x00007f83fb19ab60:   jmp    0x00007f83fb19a5d0           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
             │   │       │     │                        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@57 (line 92)
   0.30%     ↘   │       │     │                        │││  0x00007f83fb19ab65:   sub    %rsp,%rax
                 │       │     │                        │││  0x00007f83fb19ab68:   test   $0xfffffffffffff007,%rax
                 │       │     │                        │││  0x00007f83fb19ab6f:   jne    0x00007f83fb19ae05
                 │       │     │                        │││  0x00007f83fb19ab75:   movq   $0x0,(%r8)
                 │       │     │                        │││  0x00007f83fb19ab7c:   incq   0x550(%r15)
   0.34%         │       │     │                        ╰││  0x00007f83fb19ab83:   jmp    0x00007f83fb19a510           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                 │       │     │                         ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@21 (line 86)
   0.31%         ↘       │     │                         ││  0x00007f83fb19ab88:   sub    %rsp,%rax
                         │     │                         ││  0x00007f83fb19ab8b:   test   $0xfffffffffffff007,%rax     ;   {no_reloc}
                         │     │                         ││  0x00007f83fb19ab92:   jne    0x00007f83fb19adbd
                         │     │                         ││  0x00007f83fb19ab98:   movq   $0x0,(%r8)
                         │     │                         ││  0x00007f83fb19ab9f:   incq   0x550(%r15)
   0.31%                 │     │                         ╰│  0x00007f83fb19aba6:   jmp    0x00007f83fb19a590           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                         │     │                          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@45 (line 90)
   0.34%                 ↘     │                          │  0x00007f83fb19abab:   sub    %rsp,%rax
                               │                          │  0x00007f83fb19abae:   test   $0xfffffffffffff007,%rax
                               │                          │  0x00007f83fb19abb5:   jne    0x00007f83fb19add5
                               │                          │  0x00007f83fb19abbb:   movq   $0x0,(%r8)
                               │                          │  0x00007f83fb19abc2:   incq   0x550(%r15)
   0.30%                       │                          ╰  0x00007f83fb19abc9:   jmp    0x00007f83fb19a690           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                               │                                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized@93 (line 98)
                               ↘                             0x00007f83fb19abce:   mov    0x86(%r8),%rcx
                                                             0x00007f83fb19abd5:   test   %rcx,%rcx
                                                             0x00007f83fb19abd8:   jne    0x00007f83fb19b365
                                                             0x00007f83fb19abde:   mov    0x96(%r8),%rsi
                                                             0x00007f83fb19abe5:   or     0x8e(%r8),%rsi
                                                             0x00007f83fb19abec:   test   %rsi,%rsi
                                                             0x00007f83fb19abef:   jne    0x00007f83fb19b0fa
                                                             0x00007f83fb19abf5:   movq   $0x0,0x3e(%r8)
                                                             0x00007f83fb19abfd:   decq   0x550(%r15)
....................................................................................................
  95.37%  <total for region 1>

....[Hottest Regions]...............................................................................
  95.37%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 1020 
   0.94%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 1048 
   0.51%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.24%                kernel  [unknown] 
   0.19%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   1.35%  <...other 265 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.37%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::nested_synchronized, version 1, compile id 1020 
   3.14%                kernel  [unknown] 
   0.94%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 1048 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%        hsdis-amd64.so  print_insn 
   0.02%             libc.so.6  syscall 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libc.so.6  _IO_fwrite 
   0.01%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%             libc.so.6  _IO_setb 
   0.01%             libc.so.6  __GI___libc_write 
   0.01%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.01%                        <unknown> 
   0.01%             libjvm.so  nmethod::reloc_string_for 
   0.01%             libjvm.so  MethodMatcher::matches 
   0.01%           interpreter  invokevirtual  182 invokevirtual  
   0.30%  <...other 115 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.31%        jvmci, level 4
   3.14%                kernel
   0.24%             libjvm.so
   0.16%             libc.so.6
   0.08%   libjvmcicompiler.so
   0.03%        hsdis-amd64.so
   0.02%           interpreter
   0.01%  ld-linux-x86-64.so.2
   0.01%                      
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%         perf-7584.map
   0.00%      Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:02:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 311.520 ns/op
# Warmup Iteration   2: 307.308 ns/op
# Warmup Iteration   3: 317.558 ns/op
# Warmup Iteration   4: 420.277 ns/op
# Warmup Iteration   5: 388.525 ns/op
Iteration   1: 410.883 ns/op
Iteration   2: 365.127 ns/op
Iteration   3: 344.669 ns/op
Iteration   4: 415.272 ns/op
Iteration   5: 372.745 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  381.739 ±(99.9%) 117.189 ns/op [Average]
  (min, avg, max) = (344.669, 381.739, 415.272), stdev = 30.434
  CI (99.9%): [264.550, 498.929] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 217156 total address lines.
Perf output processed (skipped 78.910 seconds):
 Column 1: cycles (51168 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 1026 

                                                                         # parm1:    rcx       = int
                                                                         #           [sp+0x70]  (sp of caller)
                                                                         0x00007f96cb197460:   mov    0x8(%rsi),%r10d
                                                                         0x00007f96cb197464:   movabs $0x7f9647000000,%r12
                                                                         0x00007f96cb19746e:   add    %r12,%r10
                                                                         0x00007f96cb197471:   xor    %r12,%r12
                                                                         0x00007f96cb197474:   cmp    %r10,%rax
                                                                         0x00007f96cb197477:   jne    0x00007f96caaf9080           ;   {runtime_call ic_miss_stub}
                                                                         0x00007f96cb19747d:   data16 xchg %ax,%ax
                                                                       [Verified Entry Point]
   0.24%                    ↗                                            0x00007f96cb197480:   mov    %eax,-0x14000(%rsp)
   0.23%                    │                                            0x00007f96cb197487:   sub    $0x68,%rsp
   0.25%                    │                                            0x00007f96cb19748b:   nop
   0.01%                    │                                            0x00007f96cb19748c:   cmpl   $0x1,0x20(%r15)
   0.29%                    │                                            0x00007f96cb197494:   jne    0x00007f96cb1988fd
   0.00%                    │                                            0x00007f96cb19749a:   mov    %rbp,0x60(%rsp)
   0.25%                    │                                            0x00007f96cb19749f:   mov    %edx,%r11d
   0.01%                    │                                            0x00007f96cb1974a2:   mov    (%rsi),%r10
   1.10%                    │                                            0x00007f96cb1974a5:   lea    0x50(%rsp),%r8
   0.01%                    │                                            0x00007f96cb1974aa:   test   $0x2,%r10
          ╭                 │                                            0x00007f96cb1974b1:   jne    0x00007f96cb197a9e
   0.29%  │                 │                                            0x00007f96cb1974b7:   or     $0x1,%r10
   0.00%  │                 │                                            0x00007f96cb1974bb:   mov    %r10,(%r8)
   0.83%  │                 │                                            0x00007f96cb1974be:   mov    %r10,%rax
   0.01%  │                 │                                            0x00007f96cb1974c1:   lock cmpxchg %r8,(%rsi)
  10.12%  │                 │                                            0x00007f96cb1974c6:   cmp    %r10,%rax
          │╭                │                                            0x00007f96cb1974c9:   jne    0x00007f96cb197ad7
   0.02%  ││                │                                            0x00007f96cb1974cf:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                │                                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
   0.53%  ││                │                              ↗↗            0x00007f96cb1974d6:   test   %ecx,%ecx
          ││╭               │                              ││            0x00007f96cb1974d8:   je     0x00007f96cb197858           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││               │                              ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
   0.00%  │││               │                              ││            0x00007f96cb1974de:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││               │                              ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │││               │                              ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   5.89%  │││               │                              ││            0x00007f96cb1974e1:   mov    0x14(%rsi),%r8d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │││               │                              ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
   0.02%  │││               │                              ││            0x00007f96cb1974e5:   lea    0x48(%rsp),%r9
   0.00%  │││               │                              ││            0x00007f96cb1974ea:   test   $0x2,%r10
          │││╭              │                              ││            0x00007f96cb1974f1:   jne    0x00007f96cb197b00
   0.49%  ││││              │                              ││            0x00007f96cb1974f7:   or     $0x1,%r10
   0.00%  ││││              │                              ││            0x00007f96cb1974fb:   mov    %r10,(%r9)
   1.08%  ││││              │                              ││            0x00007f96cb1974fe:   mov    %r10,%rax
   0.00%  ││││              │                              ││            0x00007f96cb197501:   lock cmpxchg %r9,(%rsi)
   9.23%  ││││              │                              ││            0x00007f96cb197506:   cmp    %r10,%rax
   0.00%  ││││╭             │                              ││            0x00007f96cb197509:   jne    0x00007f96cb197b3e
          │││││             │                              ││            0x00007f96cb19750f:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││             │                              ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │││││             │                              ││                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  │││││             │                              ││↗↗          0x00007f96cb197516:   cmp    $0x1,%ecx
          │││││╭            │                              ││││          0x00007f96cb197519:   je     0x00007f96cb1978b1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││││            │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          ││││││            │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││            │                              ││││          0x00007f96cb19751f:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││            │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          ││││││            │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││            │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   5.34%  ││││││            │                              ││││          0x00007f96cb197522:   mov    0x14(%rsi),%r9d              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││            │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          ││││││            │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.02%  ││││││            │                              ││││          0x00007f96cb197526:   lea    0x30(%rsp),%rbx
          ││││││            │                              ││││          0x00007f96cb19752b:   test   $0x2,%r10
          ││││││╭           │                              ││││          0x00007f96cb197532:   jne    0x00007f96cb197b6c
   0.54%  │││││││           │                              ││││          0x00007f96cb197538:   or     $0x1,%r10
          │││││││           │                              ││││          0x00007f96cb19753c:   mov    %r10,(%rbx)
   1.05%  │││││││           │                              ││││          0x00007f96cb19753f:   mov    %r10,%rax
   0.00%  │││││││           │                              ││││          0x00007f96cb197542:   lock cmpxchg %rbx,(%rsi)
   9.56%  │││││││           │                              ││││          0x00007f96cb197547:   cmp    %r10,%rax
          │││││││╭          │                              ││││          0x00007f96cb19754a:   jne    0x00007f96cb197baf
          ││││││││          │                              ││││          0x00007f96cb197550:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││          │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          ││││││││          │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││          │                              ││││                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.51%  ││││││││          │                              ││││↗↗        0x00007f96cb197557:   cmp    $0x2,%ecx
          ││││││││╭         │                              ││││││        0x00007f96cb19755a:   je     0x00007f96cb1978f9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││         │                              ││││││        0x00007f96cb197560:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   2.33%  │││││││││         │                              ││││││        0x00007f96cb197563:   mov    0x14(%rsi),%ebx              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││         │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.02%  │││││││││         │                              ││││││        0x00007f96cb197566:   lea    0x40(%rsp),%rdi
          │││││││││         │                              ││││││        0x00007f96cb19756b:   test   $0x2,%r10
          │││││││││╭        │                              ││││││        0x00007f96cb197572:   jne    0x00007f96cb197be5           ;   {no_reloc}
   0.25%  ││││││││││        │                              ││││││        0x00007f96cb197578:   or     $0x1,%r10
   0.00%  ││││││││││        │                              ││││││        0x00007f96cb19757c:   mov    %r10,(%rdi)
   0.52%  ││││││││││        │                              ││││││        0x00007f96cb19757f:   mov    %r10,%rax
   0.00%  ││││││││││        │                              ││││││        0x00007f96cb197582:   lock cmpxchg %rdi,(%rsi)
   5.04%  ││││││││││        │                              ││││││        0x00007f96cb197587:   cmp    %r10,%rax
          ││││││││││╭       │                              ││││││        0x00007f96cb19758a:   jne    0x00007f96cb197c2c
          │││││││││││       │                              ││││││        0x00007f96cb197590:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││       │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │││││││││││       │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││       │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││       │                              ││││││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.28%  │││││││││││       │                              ││││││↗↗      0x00007f96cb197597:   cmp    $0x3,%ecx
          │││││││││││╭      │                              ││││││││      0x00007f96cb19759a:   je     0x00007f96cb19794b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││      0x00007f96cb1975a0:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   2.47%  ││││││││││││      │                              ││││││││      0x00007f96cb1975a3:   mov    0x14(%rsi),%edi              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││      │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.02%  ││││││││││││      │                              ││││││││      0x00007f96cb1975a6:   lea    0x38(%rsp),%rdx
          ││││││││││││      │                              ││││││││      0x00007f96cb1975ab:   test   $0x2,%r10
          ││││││││││││╭     │                              ││││││││      0x00007f96cb1975b2:   jne    0x00007f96cb197c65
   0.28%  │││││││││││││     │                              ││││││││      0x00007f96cb1975b8:   or     $0x1,%r10
          │││││││││││││     │                              ││││││││      0x00007f96cb1975bc:   mov    %r10,(%rdx)
   0.50%  │││││││││││││     │                              ││││││││      0x00007f96cb1975bf:   mov    %r10,%rax
   0.00%  │││││││││││││     │                              ││││││││      0x00007f96cb1975c2:   lock cmpxchg %rdx,(%rsi)
   4.89%  │││││││││││││     │                              ││││││││      0x00007f96cb1975c7:   cmp    %r10,%rax
          │││││││││││││╭    │                              ││││││││      0x00007f96cb1975ca:   jne    0x00007f96cb197cb5
          ││││││││││││││    │                              ││││││││      0x00007f96cb1975d0:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││    │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          ││││││││││││││    │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││    │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││    │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││    │                              ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.25%  ││││││││││││││    │                              ││││││││↗↗    0x00007f96cb1975d7:   cmp    $0x4,%ecx
          ││││││││││││││╭   │                              ││││││││││    0x00007f96cb1975da:   je     0x00007f96cb19799c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  │││││││││││││││   │                              ││││││││││    0x00007f96cb1975e0:   mov    (%rsi),%r10                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   2.37%  │││││││││││││││   │                              ││││││││││    0x00007f96cb1975e3:   mov    0x14(%rsi),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││   │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.01%  │││││││││││││││   │                              ││││││││││    0x00007f96cb1975e6:   lea    0x28(%rsp),%rdx
   0.00%  │││││││││││││││   │                              ││││││││││    0x00007f96cb1975eb:   test   $0x2,%r10
          │││││││││││││││╭  │                              ││││││││││    0x00007f96cb1975f2:   jne    0x00007f96cb197cf0
   0.24%  ││││││││││││││││  │                              ││││││││││    0x00007f96cb1975f8:   or     $0x1,%r10
   0.00%  ││││││││││││││││  │                              ││││││││││    0x00007f96cb1975fc:   mov    %r10,(%rdx)
   0.48%  ││││││││││││││││  │                              ││││││││││    0x00007f96cb1975ff:   mov    %r10,%rax
          ││││││││││││││││  │                              ││││││││││    0x00007f96cb197602:   lock cmpxchg %rdx,(%rsi)
   4.91%  ││││││││││││││││  │                              ││││││││││    0x00007f96cb197607:   cmp    %r10,%rax
          ││││││││││││││││╭ │                              ││││││││││    0x00007f96cb19760a:   jne    0x00007f96cb197d45
          │││││││││││││││││ │                              ││││││││││    0x00007f96cb197610:   incq   0x550(%r15)                  ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││ │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
          │││││││││││││││││ │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││ │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││ │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││ │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││ │                              ││││││││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││ │                              ││││││││││↗↗  0x00007f96cb197617:   cmp    $0x5,%ecx
          │││││││││││││││││╭│                              ││││││││││││  0x00007f96cb19761a:   je     0x00007f96cb1979f8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││  0x00007f96cb197620:   mov    %ebp,0x14(%rsp)
   0.27%  │││││││││││││││││││                              ││││││││││││  0x00007f96cb197624:   mov    %edi,0x18(%rsp)
   0.00%  │││││││││││││││││││                              ││││││││││││  0x00007f96cb197628:   mov    %ebx,0x1c(%rsp)
          │││││││││││││││││││                              ││││││││││││  0x00007f96cb19762c:   mov    %r9d,0x20(%rsp)
          │││││││││││││││││││                              ││││││││││││  0x00007f96cb197631:   mov    %r8d,0x24(%rsp)
   0.25%  │││││││││││││││││││                              ││││││││││││  0x00007f96cb197636:   mov    0x14(%rsi),%r10d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  │││││││││││││││││││                              ││││││││││││  0x00007f96cb19763a:   lea    -0x6(%rcx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@14 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││  0x00007f96cb19763d:   mov    %rsi,%rax
          │││││││││││││││││││                              ││││││││││││  0x00007f96cb197640:   mov    %r11d,%edx                   ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          │││││││││││││││││││                              ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.30%  │││││││││││││││││││                              ││││││││││││  0x00007f96cb197643:   mov    %r10d,0x10(%rsp)
   0.00%  │││││││││││││││││││                              ││││││││││││  0x00007f96cb197648:   mov    %rax,0x8(%rsp)
          │││││││││││││││││││                              ││││││││││││  0x00007f96cb19764d:   xchg   %ax,%ax
          ││││││││││││││││││╰                              ││││││││││││  0x00007f96cb19764f:   call   0x00007f96cb197480           ; ImmutableOopMap {[8]=Oop }
          ││││││││││││││││││                               ││││││││││││                                                            ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ;   {optimized virtual_call}
   0.23%  ││││││││││││││││││                               ││││││││││││  0x00007f96cb197654:   nopl   0x3c4(%rax,%rax,1)           ;   {other}
   0.00%  ││││││││││││││││││                               ││││││││││││  0x00007f96cb19765c:   mov    %eax,%r10d                   ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││                               ││││││││││││  0x00007f96cb19765f:   lea    0x28(%rsp),%r11
   0.25%  ││││││││││││││││││                               ││││││││││││  0x00007f96cb197664:   mov    (%r11),%rsi
   0.00%  ││││││││││││││││││                               ││││││││││││  0x00007f96cb197667:   test   %rsi,%rsi
          ││││││││││││││││││ ╭                             ││││││││││││  0x00007f96cb19766a:   je     0x00007f96cb197847
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb197670:   mov    0x8(%rsp),%rbp
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb197675:   mov    0x0(%rbp),%r8
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb197679:   nopl   0x0(%rax)
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb197680:   test   $0x2,%r8
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb197687:   jne    0x00007f96cb197ebd
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb19768d:   mov    %r11,%rax
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb197690:   lock cmpxchg %rsi,0x0(%rbp)
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb197696:   jne    0x00007f96cb1983d2
          ││││││││││││││││││ │                             ││││││││││││  0x00007f96cb19769c:   decq   0x550(%r15)                  ;*synchronization entry
          ││││││││││││││││││ │                             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ │                             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │                             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │                             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │                             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │                             ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  ││││││││││││││││││ │           ↗                 ││││││││││││  0x00007f96cb1976a3:   add    0x10(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││ │           │                 ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          ││││││││││││││││││ │           │                 ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │           │                 ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │           │                 ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │           │                 ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │           │                 ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.25%  ││││││││││││││││││ │           │          ↗      ││││││││││││  0x00007f96cb1976a8:   lea    0x38(%rsp),%r11
          ││││││││││││││││││ │           │          │      ││││││││││││  0x00007f96cb1976ad:   mov    (%r11),%rsi
          ││││││││││││││││││ │           │          │      ││││││││││││  0x00007f96cb1976b0:   test   %rsi,%rsi
          ││││││││││││││││││ │╭          │          │      ││││││││││││  0x00007f96cb1976b3:   je     0x00007f96cb19783b
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976b9:   mov    0x0(%rbp),%r8
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976bd:   data16 xchg %ax,%ax
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976c0:   test   $0x2,%r8
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976c7:   jne    0x00007f96cb197e7d
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976cd:   mov    %r11,%rax
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976d0:   lock cmpxchg %rsi,0x0(%rbp)
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976d6:   jne    0x00007f96cb198374
          ││││││││││││││││││ ││          │          │      ││││││││││││  0x00007f96cb1976dc:   decq   0x550(%r15)                  ;*synchronization entry
          ││││││││││││││││││ ││          │          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ ││          │          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││          │          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││          │          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││          │          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  ││││││││││││││││││ ││         ↗│          │      ││││││││││││  0x00007f96cb1976e3:   add    0x14(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││ ││         ││          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          ││││││││││││││││││ ││         ││          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││         ││          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││         ││          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││         ││          │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.26%  ││││││││││││││││││ ││         ││        ↗ │      ││││││││││││  0x00007f96cb1976e8:   lea    0x40(%rsp),%r11
          ││││││││││││││││││ ││         ││        │ │      ││││││││││││  0x00007f96cb1976ed:   mov    (%r11),%rsi
   0.00%  ││││││││││││││││││ ││         ││        │ │      ││││││││││││  0x00007f96cb1976f0:   test   %rsi,%rsi
          ││││││││││││││││││ ││╭        ││        │ │      ││││││││││││  0x00007f96cb1976f3:   je     0x00007f96cb19782f
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb1976f9:   mov    0x0(%rbp),%r8
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb1976fd:   data16 xchg %ax,%ax
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb197700:   test   $0x2,%r8
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb197707:   jne    0x00007f96cb197e3d
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb19770d:   mov    %r11,%rax
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb197710:   lock cmpxchg %rsi,0x0(%rbp)
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb197716:   jne    0x00007f96cb1982d4
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││  0x00007f96cb19771c:   decq   0x550(%r15)                  ;*synchronization entry
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │││        ││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  ││││││││││││││││││ │││       ↗││        │ │      ││││││││││││  0x00007f96cb197723:   add    0x18(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││ │││       │││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          ││││││││││││││││││ │││       │││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │││       │││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │││       │││        │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.22%  ││││││││││││││││││ │││       │││      ↗ │ │      ││││││││││││  0x00007f96cb197728:   lea    0x30(%rsp),%r11
   0.00%  ││││││││││││││││││ │││       │││      │ │ │      ││││││││││││  0x00007f96cb19772d:   mov    (%r11),%rsi
   0.00%  ││││││││││││││││││ │││       │││      │ │ │      ││││││││││││  0x00007f96cb197730:   test   %rsi,%rsi
          ││││││││││││││││││ │││╭      │││      │ │ │      ││││││││││││  0x00007f96cb197733:   je     0x00007f96cb197823
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb197739:   mov    0x0(%rbp),%r8
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb19773d:   data16 xchg %ax,%ax
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb197740:   test   $0x2,%r8
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb197747:   jne    0x00007f96cb197e00
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb19774d:   mov    %r11,%rax
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb197750:   lock cmpxchg %rsi,0x0(%rbp)         ;   {no_reloc}
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb197756:   jne    0x00007f96cb198234
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││  0x00007f96cb19775c:   decq   0x550(%r15)                  ;*synchronization entry
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││││      │││      │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  ││││││││││││││││││ ││││     ↗│││      │ │ │      ││││││││││││  0x00007f96cb197763:   add    0x1c(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││ ││││     ││││      │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          ││││││││││││││││││ ││││     ││││      │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││││     ││││      │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.55%  ││││││││││││││││││ ││││     ││││    ↗ │ │ │      ││││││││││││  0x00007f96cb197768:   lea    0x48(%rsp),%r11
   0.00%  ││││││││││││││││││ ││││     ││││    │ │ │ │      ││││││││││││  0x00007f96cb19776d:   mov    (%r11),%rsi
          ││││││││││││││││││ ││││     ││││    │ │ │ │      ││││││││││││  0x00007f96cb197770:   test   %rsi,%rsi
   0.00%  ││││││││││││││││││ ││││╭    ││││    │ │ │ │      ││││││││││││  0x00007f96cb197773:   je     0x00007f96cb19781a
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb197779:   mov    0x0(%rbp),%r8
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb19777d:   data16 xchg %ax,%ax
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb197780:   test   $0x2,%r8
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb197787:   jne    0x00007f96cb197dc5
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb19778d:   mov    %r11,%rax
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb197790:   lock cmpxchg %rsi,0x0(%rbp)
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb197796:   jne    0x00007f96cb198194
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││  0x00007f96cb19779c:   decq   0x550(%r15)                  ;*synchronization entry
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ │││││    ││││    │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.25%  ││││││││││││││││││ │││││   ↗││││    │ │ │ │      ││││││││││││  0x00007f96cb1977a3:   add    0x20(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││ │││││   │││││    │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
          ││││││││││││││││││ │││││   │││││    │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.26%  ││││││││││││││││││ │││││   │││││  ↗ │ │ │ │      ││││││││││││  0x00007f96cb1977a8:   lea    0x50(%rsp),%r11
   0.00%  ││││││││││││││││││ │││││   │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977ad:   mov    (%r11),%rsi
   0.01%  ││││││││││││││││││ │││││   │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977b0:   test   %rsi,%rsi
          ││││││││││││││││││ │││││╭  │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977b3:   je     0x00007f96cb197811
   0.00%  ││││││││││││││││││ ││││││  │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977b9:   mov    0x0(%rbp),%r8
   0.24%  ││││││││││││││││││ ││││││  │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977bd:   data16 xchg %ax,%ax
          ││││││││││││││││││ ││││││  │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977c0:   test   $0x2,%r8
          ││││││││││││││││││ ││││││╭ │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977c7:   jne    0x00007f96cb197d88
   0.00%  ││││││││││││││││││ │││││││ │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977cd:   mov    %r11,%rax
   0.00%  ││││││││││││││││││ │││││││ │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977d0:   lock cmpxchg %rsi,0x0(%rbp)
   6.11%  ││││││││││││││││││ │││││││ │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977d6:   jne    0x00007f96cb1980e5
   0.02%  ││││││││││││││││││ │││││││ │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977dc:   decq   0x550(%r15)                  ;*synchronization entry
          ││││││││││││││││││ │││││││ │││││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.54%  ││││││││││││││││││ │││││││↗│││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977e3:   add    0x24(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
   0.00%  ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977e8:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 232)
   0.24%  ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977eb:   mov    0x60(%rsp),%rbp
          ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977f0:   add    $0x68,%rsp
   0.27%  ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977f4:   nopl   0x0(%rax,%rax,1)
          ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb1977fc:   data16 data16 xchg %ax,%ax
   0.27%  ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb197800:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb197807:   ja     0x00007f96cb19890d
   0.00%  ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb19780d:   vzeroupper 
   0.50%  ││││││││││││││││││ │││││││││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb197810:   ret    
   0.28%  ││││││││││││││││││ │││││↘│││││││  │ │ │ │ │      ││││││││││││  0x00007f96cb197811:   decq   0x550(%r15)
   0.00%  ││││││││││││││││││ │││││ │╰│││││  │ │ │ │ │      ││││││││││││  0x00007f96cb197818:   jmp    0x00007f96cb1977e3           ;*synchronization entry
          ││││││││││││││││││ │││││ │ │││││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
   0.30%  ││││││││││││││││││ ││││↘ │ │││││  │ │ │ │ │      ││││││││││││  0x00007f96cb19781a:   decq   0x550(%r15)
   0.29%  ││││││││││││││││││ ││││  │ ╰││││  │ │ │ │ │      ││││││││││││  0x00007f96cb197821:   jmp    0x00007f96cb1977a3           ;*synchronization entry
          ││││││││││││││││││ ││││  │  ││││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ ││││  │  ││││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │││↘  │  ││││  │ │ │ │ │      ││││││││││││  0x00007f96cb197823:   decq   0x550(%r15)
   0.24%  ││││││││││││││││││ │││   │  ╰│││  │ │ │ │ │      ││││││││││││  0x00007f96cb19782a:   jmp    0x00007f96cb197763           ;*synchronization entry
          ││││││││││││││││││ │││   │   │││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ │││   │   │││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │││   │   │││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││↘   │   │││  │ │ │ │ │      ││││││││││││  0x00007f96cb19782f:   decq   0x550(%r15)
   0.26%  ││││││││││││││││││ ││    │   ╰││  │ │ │ │ │      ││││││││││││  0x00007f96cb197836:   jmp    0x00007f96cb197723           ;*synchronization entry
          ││││││││││││││││││ ││    │    ││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ ││    │    ││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││    │    ││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ││    │    ││  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  ││││││││││││││││││ │↘    │    ││  │ │ │ │ │      ││││││││││││  0x00007f96cb19783b:   decq   0x550(%r15)
   0.28%  ││││││││││││││││││ │     │    ╰│  │ │ │ │ │      ││││││││││││  0x00007f96cb197842:   jmp    0x00007f96cb1976e3           ;*synchronization entry
          ││││││││││││││││││ │     │     │  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││ │     │     │  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │     │     │  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │     │     │  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ │     │     │  │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││ ↘     │     │  │ │ │ │ │      ││││││││││││  0x00007f96cb197847:   mov    0x8(%rsp),%rbp
          ││││││││││││││││││       │     │  │ │ │ │ │      ││││││││││││  0x00007f96cb19784c:   decq   0x550(%r15)
   0.24%  ││││││││││││││││││       │     ╰  │ │ │ │ │      ││││││││││││  0x00007f96cb197853:   jmp    0x00007f96cb1976a3           ;*synchronization entry
          ││││││││││││││││││       │        │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││││││││││││││││││       │        │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││       │        │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││       │        │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││       │        │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││││││││││││││││││       │        │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││↘│││││││││││││││       │        │ │ │ │ │      ││││││││││││  0x00007f96cb197858:   mov    %rsi,%rbp
          ││ │││││││││││││││       │        │ │ │ │ │      ││││││││││││  0x00007f96cb19785b:   lea    0x50(%rsp),%r10
          ││ │││││││││││││││       │        │ │ │ │ │      ││││││││││││  0x00007f96cb197860:   mov    (%r10),%rsi
          ││ │││││││││││││││       │        │ │ │ │ │      ││││││││││││  0x00007f96cb197863:   test   %rsi,%rsi
          ││ │││││││││││││││       │      ╭ │ │ │ │ │      ││││││││││││  0x00007f96cb197866:   je     0x00007f96cb197a58
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││  0x00007f96cb19786c:   mov    0x0(%rbp),%r8
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││  0x00007f96cb197870:   test   $0x2,%r8
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││  0x00007f96cb197877:   jne    0x00007f96cb198027
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││  0x00007f96cb19787d:   mov    %r10,%rax
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││  0x00007f96cb197880:   lock cmpxchg %rsi,0x0(%rbp)
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││  0x00007f96cb197886:   jne    0x00007f96cb19847c
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││  0x00007f96cb19788c:   decq   0x550(%r15)                  ;*synchronization entry
          ││ │││││││││││││││       │      │ │ │ │ │ │      ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ │││││││││││││││       │      │ │ │ │ │ │↗     ││││││││││││  0x00007f96cb197893:   mov    %r11d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@5 (line 230)
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb197896:   mov    0x60(%rsp),%rbp
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb19789b:   add    $0x68,%rsp
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb19789f:   nop
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978a0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978a7:   ja     0x00007f96cb198921
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978ad:   vzeroupper 
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978b0:   ret                                 ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          ││ │││││││││││││││       │      │ │ │ │ │ ││     ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││↘││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978b1:   mov    %r8d,0x24(%rsp)
          ││ ││ ││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978b6:   mov    %rsi,%rbp
          ││ ││ ││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978b9:   lea    0x48(%rsp),%r10
          ││ ││ ││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978be:   mov    (%r10),%rsi
          ││ ││ ││││││││││││       │      │ │ │ │ │ ││     ││││││││││││  0x00007f96cb1978c1:   test   %rsi,%rsi
          ││ ││ ││││││││││││       │      │╭│ │ │ │ ││     ││││││││││││  0x00007f96cb1978c4:   je     0x00007f96cb197a65
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││  0x00007f96cb1978ca:   mov    0x0(%rbp),%r8
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││  0x00007f96cb1978ce:   test   $0x2,%r8
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││  0x00007f96cb1978d5:   jne    0x00007f96cb198085
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││  0x00007f96cb1978db:   mov    %r10,%rax
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││  0x00007f96cb1978de:   lock cmpxchg %rsi,0x0(%rbp)
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││  0x00007f96cb1978e4:   jne    0x00007f96cb1984eb
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││  0x00007f96cb1978ea:   decq   0x550(%r15)                  ;*synchronization entry
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││││││││││││       │      │││ │ │ │ ││     ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││││││││││││       │      │││ │ │ │ ││↗    ││││││││││││  0x00007f96cb1978f1:   mov    %r11d,%r10d
          ││ ││ ││││││││││││       │      ││╰ │ │ │ │││    ││││││││││││  0x00007f96cb1978f4:   jmp    0x00007f96cb1977a8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ ││││││││││││       │      ││  │ │ │ │││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          ││ ││ ││││││││││││       │      ││  │ │ │ │││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││││││││││││       │      ││  │ │ │ │││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.27%  ││ ││ ││↘│││││││││       │      ││  │ │ │ │││    ││││││││││││  0x00007f96cb1978f9:   mov    %r9d,0x20(%rsp)
          ││ ││ ││ │││││││││       │      ││  │ │ │ │││    ││││││││││││  0x00007f96cb1978fe:   mov    %r8d,0x24(%rsp)
          ││ ││ ││ │││││││││       │      ││  │ │ │ │││    ││││││││││││  0x00007f96cb197903:   mov    %rsi,%rbp
          ││ ││ ││ │││││││││       │      ││  │ │ │ │││    ││││││││││││  0x00007f96cb197906:   lea    0x30(%rsp),%r10
   0.26%  ││ ││ ││ │││││││││       │      ││  │ │ │ │││    ││││││││││││  0x00007f96cb19790b:   mov    (%r10),%rsi
   0.00%  ││ ││ ││ │││││││││       │      ││  │ │ │ │││    ││││││││││││  0x00007f96cb19790e:   test   %rsi,%rsi
          ││ ││ ││ │││││││││       │      ││ ╭│ │ │ │││    ││││││││││││  0x00007f96cb197911:   je     0x00007f96cb197a71
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb197917:   mov    0x0(%rbp),%r8
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb19791b:   nopl   0x0(%rax,%rax,1)
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb197920:   test   $0x2,%r8
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb197927:   jne    0x00007f96cb198152
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb19792d:   mov    %r10,%rax
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb197930:   lock cmpxchg %rsi,0x0(%rbp)
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb197936:   jne    0x00007f96cb19857e
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││  0x00007f96cb19793c:   decq   0x550(%r15)                  ;*synchronization entry
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ │││││││││       │      ││ ││ │ │ │││    ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
   0.00%  ││ ││ ││ │││││││││       │      ││ ││ │ │ │││↗   ││││││││││││  0x00007f96cb197943:   mov    %r11d,%r10d
          ││ ││ ││ │││││││││       │      ││ │╰ │ │ ││││   ││││││││││││  0x00007f96cb197946:   jmp    0x00007f96cb197768           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ ││ │││││││││       │      ││ │  │ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          ││ ││ ││ │││││││││       │      ││ │  │ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ │││││││││       │      ││ │  │ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ │││││││││       │      ││ │  │ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││↘││││││       │      ││ │  │ │ ││││   ││││││││││││  0x00007f96cb19794b:   mov    %ebx,0x1c(%rsp)
          ││ ││ ││ ││ ││││││       │      ││ │  │ │ ││││   ││││││││││││  0x00007f96cb19794f:   mov    %r9d,0x20(%rsp)
          ││ ││ ││ ││ ││││││       │      ││ │  │ │ ││││   ││││││││││││  0x00007f96cb197954:   mov    %r8d,0x24(%rsp)
          ││ ││ ││ ││ ││││││       │      ││ │  │ │ ││││   ││││││││││││  0x00007f96cb197959:   mov    %rsi,%rbp
          ││ ││ ││ ││ ││││││       │      ││ │  │ │ ││││   ││││││││││││  0x00007f96cb19795c:   lea    0x40(%rsp),%r10
          ││ ││ ││ ││ ││││││       │      ││ │  │ │ ││││   ││││││││││││  0x00007f96cb197961:   mov    (%r10),%rsi
          ││ ││ ││ ││ ││││││       │      ││ │  │ │ ││││   ││││││││││││  0x00007f96cb197964:   test   %rsi,%rsi
          ││ ││ ││ ││ ││││││       │      ││ │ ╭│ │ ││││   ││││││││││││  0x00007f96cb197967:   je     0x00007f96cb197a7d
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││  0x00007f96cb19796d:   mov    0x0(%rbp),%r8
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││  0x00007f96cb197971:   test   $0x2,%r8
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││  0x00007f96cb197978:   jne    0x00007f96cb1981f2
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││  0x00007f96cb19797e:   mov    %r10,%rax
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││  0x00007f96cb197981:   lock cmpxchg %rsi,0x0(%rbp)
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││  0x00007f96cb197987:   jne    0x00007f96cb19860a
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││  0x00007f96cb19798d:   decq   0x550(%r15)                  ;*synchronization entry
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││   ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││││││       │      ││ │ ││ │ ││││↗  ││││││││││││  0x00007f96cb197994:   mov    %r11d,%r10d
          ││ ││ ││ ││ ││││││       │      ││ │ │╰ │ │││││  ││││││││││││  0x00007f96cb197997:   jmp    0x00007f96cb197728           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ ││ ││ ││││││       │      ││ │ │  │ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          ││ ││ ││ ││ ││││││       │      ││ │ │  │ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││││││       │      ││ │ │  │ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││││││       │      ││ │ │  │ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││││││       │      ││ │ │  │ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││↘│││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb19799c:   mov    %edi,0x18(%rsp)              ;   {no_reloc}
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979a0:   mov    %ebx,0x1c(%rsp)
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979a4:   mov    %r9d,0x20(%rsp)
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979a9:   mov    %r8d,0x24(%rsp)
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979ae:   mov    %rsi,%rbp
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979b1:   lea    0x38(%rsp),%r10
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979b6:   mov    (%r10),%rsi
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979b9:   nopl   0x0(%rax)
          ││ ││ ││ ││ ││ │││       │      ││ │ │  │ │││││  ││││││││││││  0x00007f96cb1979c0:   test   %rsi,%rsi
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ╭│ │││││  ││││││││││││  0x00007f96cb1979c3:   je     0x00007f96cb197a89
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││  0x00007f96cb1979c9:   mov    0x0(%rbp),%r8
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││  0x00007f96cb1979cd:   test   $0x2,%r8
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││  0x00007f96cb1979d4:   jne    0x00007f96cb198292
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││  0x00007f96cb1979da:   mov    %r10,%rax
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││  0x00007f96cb1979dd:   lock cmpxchg %rsi,0x0(%rbp)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││  0x00007f96cb1979e3:   jne    0x00007f96cb1986a7
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││  0x00007f96cb1979e9:   decq   0x550(%r15)                  ;*synchronization entry
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││  ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ ││ │││││↗ ││││││││││││  0x00007f96cb1979f0:   mov    %r11d,%r10d
          ││ ││ ││ ││ ││ │││       │      ││ │ │ │╰ ││││││ ││││││││││││  0x00007f96cb1979f3:   jmp    0x00007f96cb1976e8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ ││ ││ ││ ││ │││       │      ││ │ │ │  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 229)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ │  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ │  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ │  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ │  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ │││       │      ││ │ │ │  ││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││↘       │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb1979f8:   mov    %ebp,0x14(%rsp)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb1979fc:   mov    %edi,0x18(%rsp)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a00:   mov    %ebx,0x1c(%rsp)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a04:   mov    %r9d,0x20(%rsp)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a09:   mov    %r8d,0x24(%rsp)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a0e:   mov    %rsi,%rbp
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a11:   lea    0x28(%rsp),%r10
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a16:   mov    (%r10),%rsi
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a19:   nopl   0x0(%rax)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │  ││││││ ││││││││││││  0x00007f96cb197a20:   test   %rsi,%rsi
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ ╭││││││ ││││││││││││  0x00007f96cb197a23:   je     0x00007f96cb197a95
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││  0x00007f96cb197a29:   mov    0x0(%rbp),%r8
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││  0x00007f96cb197a2d:   test   $0x2,%r8
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││  0x00007f96cb197a34:   jne    0x00007f96cb198332
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││  0x00007f96cb197a3a:   mov    %r10,%rax
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││  0x00007f96cb197a3d:   lock cmpxchg %rsi,0x0(%rbp)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││  0x00007f96cb197a43:   jne    0x00007f96cb198747
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││  0x00007f96cb197a49:   decq   0x550(%r15)                  ;*synchronization entry
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││ ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │││││││↗││││││││││││  0x00007f96cb197a50:   mov    %r11d,%r10d
          ││ ││ ││ ││ ││ ││        │      ││ │ │ │ │╰││││││││││││││││││  0x00007f96cb197a53:   jmp    0x00007f96cb1976a8
          ││ ││ ││ ││ ││ ││        │      ↘│ │ │ │ │ ││││││││││││││││││  0x00007f96cb197a58:   decq   0x550(%r15)
          ││ ││ ││ ││ ││ ││        │       │ │ │ │ │ ││││││││││││││││││  0x00007f96cb197a5f:   nop
          ││ ││ ││ ││ ││ ││        │       │ │ │ │ │ ╰│││││││││││││││││  0x00007f96cb197a60:   jmp    0x00007f96cb197893           ;*synchronization entry
          ││ ││ ││ ││ ││ ││        │       │ │ │ │ │  │││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ ││        │       ↘ │ │ │ │  │││││││││││││││││  0x00007f96cb197a65:   decq   0x550(%r15)
          ││ ││ ││ ││ ││ ││        │         │ │ │ │  ╰││││││││││││││││  0x00007f96cb197a6c:   jmp    0x00007f96cb1978f1           ;*synchronization entry
          ││ ││ ││ ││ ││ ││        │         │ │ │ │   ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ ││        │         │ │ │ │   ││││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │         ↘ │ │ │   ││││││││││││││││  0x00007f96cb197a71:   decq   0x550(%r15)
   0.24%  ││ ││ ││ ││ ││ ││        │           │ │ │   ╰│││││││││││││││  0x00007f96cb197a78:   jmp    0x00007f96cb197943           ;*synchronization entry
          ││ ││ ││ ││ ││ ││        │           │ │ │    │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ ││        │           │ │ │    │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │           │ │ │    │││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │           ↘ │ │    │││││││││││││││  0x00007f96cb197a7d:   decq   0x550(%r15)
          ││ ││ ││ ││ ││ ││        │             │ │    ╰││││││││││││││  0x00007f96cb197a84:   jmp    0x00007f96cb197994           ;*synchronization entry
          ││ ││ ││ ││ ││ ││        │             │ │     ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ ││        │             │ │     ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │             │ │     ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │             │ │     ││││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │             ↘ │     ││││││││││││││  0x00007f96cb197a89:   decq   0x550(%r15)
          ││ ││ ││ ││ ││ ││        │               │     ╰│││││││││││││  0x00007f96cb197a90:   jmp    0x00007f96cb1979f0           ;*synchronization entry
          ││ ││ ││ ││ ││ ││        │               │      │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ ││        │               │      │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │               │      │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │               │      │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │               │      │││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │               ↘      │││││││││││││  0x00007f96cb197a95:   decq   0x550(%r15)
          ││ ││ ││ ││ ││ ││        │                      ╰││││││││││││  0x00007f96cb197a9c:   jmp    0x00007f96cb197a50           ;*synchronization entry
          ││ ││ ││ ││ ││ ││        │                       ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
          ││ ││ ││ ││ ││ ││        │                       ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │                       ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │                       ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │                       ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ││ ││ ││ ││ ││ ││        │                       ││││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
          ↘│ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197a9e:   mov    %rsi,%rbp                    ;   {no_reloc}
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197aa1:   movq   $0x3,(%r8)
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197aa8:   mov    0x3e(%r10),%rsi
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197aac:   test   %rsi,%rsi
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197aaf:   jne    0x00007f96cb197f75
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197ab5:   mov    $0x0,%rax
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197abc:   lock cmpxchg %r15,0x3e(%r10)
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197ac2:   jne    0x00007f96cb197efd
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197ac8:   incq   0x550(%r15)
           │ ││ ││ ││ ││ ││        │                       ││││││││││││  0x00007f96cb197acf:   mov    %rbp,%rsi
           │ ││ ││ ││ ││ ││        │                       ╰│││││││││││  0x00007f96cb197ad2:   jmp    0x00007f96cb1974d6
   0.03%   ↘ ││ ││ ││ ││ ││        │                        │││││││││││  0x00007f96cb197ad7:   mov    %rsi,%rbp
   0.26%     ││ ││ ││ ││ ││        │                        │││││││││││  0x00007f96cb197ada:   sub    %rsp,%rax
             ││ ││ ││ ││ ││        │                        │││││││││││  0x00007f96cb197add:   data16 xchg %ax,%ax
             ││ ││ ││ ││ ││        │                        │││││││││││  0x00007f96cb197ae0:   test   $0xfffffffffffff007,%rax
             ││ ││ ││ ││ ││        │                        │││││││││││  0x00007f96cb197ae7:   jne    0x00007f96cb197efd
             ││ ││ ││ ││ ││        │                        │││││││││││  0x00007f96cb197aed:   movq   $0x0,(%r8)
   0.24%     ││ ││ ││ ││ ││        │                        │││││││││││  0x00007f96cb197af4:   incq   0x550(%r15)
             ││ ││ ││ ││ ││        │                        ╰││││││││││  0x00007f96cb197afb:   jmp    0x00007f96cb1974d6           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             ││ ││ ││ ││ ││        │                         ││││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
             ↘│ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b00:   mov    %r8d,0x24(%rsp)
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b05:   mov    %rsi,%rbp
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b08:   movq   $0x3,(%r9)
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b0f:   mov    0x3e(%r10),%rsi
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b13:   test   %rsi,%rsi
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b16:   jne    0x00007f96cb197fab
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b1c:   mov    $0x0,%rax
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b23:   lock cmpxchg %r15,0x3e(%r10)
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b29:   jne    0x00007f96cb197f18
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b2f:   incq   0x550(%r15)
              │ ││ ││ ││ ││        │                         ││││││││││  0x00007f96cb197b36:   mov    %rbp,%rsi
              │ ││ ││ ││ ││        │                         ╰│││││││││  0x00007f96cb197b39:   jmp    0x00007f96cb197516
   0.04%      ↘ ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b3e:   mov    %r8d,0x24(%rsp)
   0.50%        ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b43:   mov    %rsi,%rbp
   0.01%        ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b46:   sub    %rsp,%rax
                ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b49:   test   $0xfffffffffffff007,%rax
                ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b50:   jne    0x00007f96cb197f18
   0.00%        ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b56:   movq   $0x0,(%r9)
   0.51%        ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b5d:   incq   0x550(%r15)
   0.01%        ││ ││ ││ ││        │                          │││││││││  0x00007f96cb197b64:   mov    %rbp,%rsi
   0.54%        ││ ││ ││ ││        │                          ╰││││││││  0x00007f96cb197b67:   jmp    0x00007f96cb197516           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                ││ ││ ││ ││        │                           ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                ││ ││ ││ ││        │                           ││││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                ↘│ ││ ││ ││        │                           ││││││││  0x00007f96cb197b6c:   mov    %r9d,0x20(%rsp)
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b71:   mov    %r8d,0x24(%rsp)
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b76:   mov    %rsi,%rbp
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b79:   movq   $0x3,(%rbx)
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b80:   mov    0x3e(%r10),%rsi
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b84:   test   %rsi,%rsi
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b87:   jne    0x00007f96cb197fe9
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b8d:   mov    $0x0,%rax
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b94:   lock cmpxchg %r15,0x3e(%r10)
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197b9a:   jne    0x00007f96cb197f37           ;   {no_reloc}
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197ba0:   incq   0x550(%r15)
                 │ ││ ││ ││        │                           ││││││││  0x00007f96cb197ba7:   mov    %rbp,%rsi
                 │ ││ ││ ││        │                           ╰│││││││  0x00007f96cb197baa:   jmp    0x00007f96cb197557
   0.03%         ↘ ││ ││ ││        │                            │││││││  0x00007f96cb197baf:   mov    %r9d,0x20(%rsp)
   0.54%           ││ ││ ││        │                            │││││││  0x00007f96cb197bb4:   mov    %r8d,0x24(%rsp)
   0.01%           ││ ││ ││        │                            │││││││  0x00007f96cb197bb9:   mov    %rsi,%rbp
                   ││ ││ ││        │                            │││││││  0x00007f96cb197bbc:   sub    %rsp,%rax
                   ││ ││ ││        │                            │││││││  0x00007f96cb197bbf:   nop
   0.51%           ││ ││ ││        │                            │││││││  0x00007f96cb197bc0:   test   $0xfffffffffffff007,%rax
                   ││ ││ ││        │                            │││││││  0x00007f96cb197bc7:   jne    0x00007f96cb197f37
   0.01%           ││ ││ ││        │                            │││││││  0x00007f96cb197bcd:   movq   $0x0,(%rbx)
                   ││ ││ ││        │                            │││││││  0x00007f96cb197bd4:   incq   0x550(%r15)
   0.51%           ││ ││ ││        │                            │││││││  0x00007f96cb197bdb:   mov    %rbp,%rsi
                   ││ ││ ││        │                            │││││││  0x00007f96cb197bde:   xchg   %ax,%ax
                   ││ ││ ││        │                            ╰││││││  0x00007f96cb197be0:   jmp    0x00007f96cb197557           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                   ││ ││ ││        │                             ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                   ││ ││ ││        │                             ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                   ││ ││ ││        │                             ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                   ↘│ ││ ││        │                             ││││││  0x00007f96cb197be5:   mov    %ebx,0x1c(%rsp)
                    │ ││ ││        │                             ││││││  0x00007f96cb197be9:   mov    %r9d,0x20(%rsp)
                    │ ││ ││        │                             ││││││  0x00007f96cb197bee:   mov    %r8d,0x24(%rsp)
                    │ ││ ││        │                             ││││││  0x00007f96cb197bf3:   mov    %rsi,%rbp
                    │ ││ ││        │                             ││││││  0x00007f96cb197bf6:   movq   $0x3,(%rdi)
                    │ ││ ││        │                             ││││││  0x00007f96cb197bfd:   mov    0x3e(%r10),%rsi
                    │ ││ ││        │                             ││││││  0x00007f96cb197c01:   test   %rsi,%rsi
                    │ ││ ││        │                             ││││││  0x00007f96cb197c04:   jne    0x00007f96cb198008
                    │ ││ ││        │                             ││││││  0x00007f96cb197c0a:   mov    $0x0,%rax
                    │ ││ ││        │                             ││││││  0x00007f96cb197c11:   lock cmpxchg %r15,0x3e(%r10)
                    │ ││ ││        │                             ││││││  0x00007f96cb197c17:   jne    0x00007f96cb197f55
                    │ ││ ││        │                             ││││││  0x00007f96cb197c1d:   incq   0x550(%r15)
                    │ ││ ││        │                             ││││││  0x00007f96cb197c24:   mov    %rbp,%rsi
                    │ ││ ││        │                             ╰│││││  0x00007f96cb197c27:   jmp    0x00007f96cb197597
   0.02%            ↘ ││ ││        │                              │││││  0x00007f96cb197c2c:   mov    %ebx,0x1c(%rsp)
   0.29%              ││ ││        │                              │││││  0x00007f96cb197c30:   mov    %r9d,0x20(%rsp)
                      ││ ││        │                              │││││  0x00007f96cb197c35:   mov    %r8d,0x24(%rsp)
                      ││ ││        │                              │││││  0x00007f96cb197c3a:   mov    %rsi,%rbp
                      ││ ││        │                              │││││  0x00007f96cb197c3d:   sub    %rsp,%rax
   0.27%              ││ ││        │                              │││││  0x00007f96cb197c40:   test   $0xfffffffffffff007,%rax
                      ││ ││        │                              │││││  0x00007f96cb197c47:   jne    0x00007f96cb197f55
                      ││ ││        │                              │││││  0x00007f96cb197c4d:   movq   $0x0,(%rdi)
                      ││ ││        │                              │││││  0x00007f96cb197c54:   incq   0x550(%r15)
   0.27%              ││ ││        │                              │││││  0x00007f96cb197c5b:   mov    %rbp,%rsi
                      ││ ││        │                              │││││  0x00007f96cb197c5e:   xchg   %ax,%ax
                      ││ ││        │                              ╰││││  0x00007f96cb197c60:   jmp    0x00007f96cb197597           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                      ││ ││        │                               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                      ││ ││        │                               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                      ││ ││        │                               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                      ││ ││        │                               ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                      ↘│ ││        │                               ││││  0x00007f96cb197c65:   mov    %edi,0x18(%rsp)
                       │ ││        │                               ││││  0x00007f96cb197c69:   mov    %ebx,0x1c(%rsp)
                       │ ││        │                               ││││  0x00007f96cb197c6d:   mov    %r9d,0x20(%rsp)
                       │ ││        │                               ││││  0x00007f96cb197c72:   mov    %r8d,0x24(%rsp)
                       │ ││        │                               ││││  0x00007f96cb197c77:   mov    %rsi,%rbp
                       │ ││        │                               ││││  0x00007f96cb197c7a:   movq   $0x3,(%rdx)
                       │ ││        │                               ││││  0x00007f96cb197c81:   mov    0x3e(%r10),%rsi
                       │ ││        │                               ││││  0x00007f96cb197c85:   test   %rsi,%rsi
                       │ ││        │                               ││││  0x00007f96cb197c88:   jne    0x00007f96cb198065
                       │ ││        │                               ││││  0x00007f96cb197c8e:   mov    $0x0,%rax
                       │ ││        │                               ││││  0x00007f96cb197c95:   lock cmpxchg %r15,0x3e(%r10)
                       │ ││        │                               ││││  0x00007f96cb197c9b:   nopl   0x0(%rax,%rax,1)             ;   {no_reloc}
                       │ ││        │                               ││││  0x00007f96cb197ca0:   jne    0x00007f96cb197f90
                       │ ││        │                               ││││  0x00007f96cb197ca6:   incq   0x550(%r15)
                       │ ││        │                               ││││  0x00007f96cb197cad:   mov    %rbp,%rsi
                       │ ││        │                               ╰│││  0x00007f96cb197cb0:   jmp    0x00007f96cb1975d7
   0.02%               ↘ ││        │                                │││  0x00007f96cb197cb5:   mov    %edi,0x18(%rsp)
   0.24%                 ││        │                                │││  0x00007f96cb197cb9:   mov    %ebx,0x1c(%rsp)
   0.00%                 ││        │                                │││  0x00007f96cb197cbd:   mov    %r9d,0x20(%rsp)
                         ││        │                                │││  0x00007f96cb197cc2:   mov    %r8d,0x24(%rsp)
   0.00%                 ││        │                                │││  0x00007f96cb197cc7:   mov    %rsi,%rbp
   0.23%                 ││        │                                │││  0x00007f96cb197cca:   sub    %rsp,%rax
   0.00%                 ││        │                                │││  0x00007f96cb197ccd:   test   $0xfffffffffffff007,%rax
                         ││        │                                │││  0x00007f96cb197cd4:   jne    0x00007f96cb197f90
                         ││        │                                │││  0x00007f96cb197cda:   movq   $0x0,(%rdx)
                         ││        │                                │││  0x00007f96cb197ce1:   incq   0x550(%r15)
   0.26%                 ││        │                                │││  0x00007f96cb197ce8:   mov    %rbp,%rsi
   0.00%                 ││        │                                ╰││  0x00007f96cb197ceb:   jmp    0x00007f96cb1975d7           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                         ││        │                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                         ││        │                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                         ││        │                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                         ││        │                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                         ││        │                                 ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                         ↘│        │                                 ││  0x00007f96cb197cf0:   mov    %ebp,0x14(%rsp)
                          │        │                                 ││  0x00007f96cb197cf4:   mov    %edi,0x18(%rsp)
                          │        │                                 ││  0x00007f96cb197cf8:   mov    %ebx,0x1c(%rsp)
                          │        │                                 ││  0x00007f96cb197cfc:   mov    %r9d,0x20(%rsp)
                          │        │                                 ││  0x00007f96cb197d01:   mov    %r8d,0x24(%rsp)
                          │        │                                 ││  0x00007f96cb197d06:   mov    %rsi,%rbp
                          │        │                                 ││  0x00007f96cb197d09:   movq   $0x3,(%rdx)
                          │        │                                 ││  0x00007f96cb197d10:   mov    0x3e(%r10),%rsi
                          │        │                                 ││  0x00007f96cb197d14:   test   %rsi,%rsi
                          │        │                                 ││  0x00007f96cb197d17:   jne    0x00007f96cb1980c0
                          │        │                                 ││  0x00007f96cb197d1d:   mov    $0x0,%rax
                          │        │                                 ││  0x00007f96cb197d24:   lock cmpxchg %r15,0x3e(%r10)
                          │        │                                 ││  0x00007f96cb197d2a:   jne    0x00007f96cb197fca
                          │        │                                 ││  0x00007f96cb197d30:   incq   0x550(%r15)
                          │        │                                 ││  0x00007f96cb197d37:   mov    %rbp,%rsi
                          │        │                                 ││  0x00007f96cb197d3a:   mov    0x14(%rsp),%ebp
                          │        │                                 ││  0x00007f96cb197d3e:   xchg   %ax,%ax
                          │        │                                 ╰│  0x00007f96cb197d40:   jmp    0x00007f96cb197617
   0.03%                  ↘        │                                  │  0x00007f96cb197d45:   mov    %ebp,0x14(%rsp)
   0.23%                           │                                  │  0x00007f96cb197d49:   mov    %edi,0x18(%rsp)
                                   │                                  │  0x00007f96cb197d4d:   mov    %ebx,0x1c(%rsp)
                                   │                                  │  0x00007f96cb197d51:   mov    %r9d,0x20(%rsp)
                                   │                                  │  0x00007f96cb197d56:   mov    %r8d,0x24(%rsp)
   0.26%                           │                                  │  0x00007f96cb197d5b:   mov    %rsi,%rbp
   0.00%                           │                                  │  0x00007f96cb197d5e:   sub    %rsp,%rax
                                   │                                  │  0x00007f96cb197d61:   test   $0xfffffffffffff007,%rax
                                   │                                  │  0x00007f96cb197d68:   jne    0x00007f96cb197fca
                                   │                                  │  0x00007f96cb197d6e:   movq   $0x0,(%rdx)
   0.29%                           │                                  │  0x00007f96cb197d75:   incq   0x550(%r15)
   0.00%                           │                                  │  0x00007f96cb197d7c:   mov    %rbp,%rsi
   0.26%                           │                                  │  0x00007f96cb197d7f:   mov    0x14(%rsp),%ebp
   0.00%                           │                                  ╰  0x00007f96cb197d83:   jmp    0x00007f96cb197617           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                   │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@0 (line 229)
                                   │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                   │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                   │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                   │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                   │                                                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                   ↘                                     0x00007f96cb197d88:   mov    0x86(%r8),%r9
                                                                         0x00007f96cb197d8f:   test   %r9,%r9
                                                                         0x00007f96cb197d92:   jne    0x00007f96cb198557
                                                                         0x00007f96cb197d98:   mov    0x96(%r8),%rsi               ;   {no_reloc}
....................................................................................................
  93.26%  <total for region 1>

....[Hottest Regions]...............................................................................
  93.26%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 1026 
   1.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 1055 
   1.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 1025 
   0.49%                kernel  [unknown] 
   0.44%                kernel  [unknown] 
   0.26%                kernel  [unknown] 
   0.18%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.05%                kernel  [unknown] 
   0.04%                kernel  [unknown] 
   2.05%  <...other 353 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.26%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 1026 
   3.83%                kernel  [unknown] 
   1.13%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 5, compile id 1055 
   1.07%        jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 1025 
   0.13%                        <unknown> 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  defaultStream::hold 
   0.02%             libc.so.6  __strchr_avx2 
   0.02%             libjvm.so  xmlTextStream::flush 
   0.02%             libc.so.6  __vfprintf_internal 
   0.02%             libjvm.so  ElfSymbolTable::lookup 
   0.02%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.02%             libc.so.6  __GI___libc_open 
   0.02%             libc.so.6  __mempcpy_avx_unaligned_erms 
   0.02%             libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%             libc.so.6  _IO_fwrite 
   0.02%             libc.so.6  syscall 
   0.01%             libjvm.so  RelocIterator::initialize 
   0.01%             libc.so.6  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%             libjvm.so  WatcherThread::sleep 
   0.29%  <...other 102 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.46%        jvmci, level 4
   3.83%                kernel
   0.29%             libjvm.so
   0.21%             libc.so.6
   0.13%                      
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.00%           c1, level 3
   0.00%                [vdso]
   0.00%         perf-7651.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:13:32

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

Benchmark                                                    Mode  Cnt    Score     Error  Units
LockCoarseningBenchmark.baseline                             avgt    5   54.746 ±   0.655  ns/op
LockCoarseningBenchmark.baseline:asm                         avgt           NaN              ---
LockCoarseningBenchmark.chain_method_calls                   avgt    5   54.831 ±   0.575  ns/op
LockCoarseningBenchmark.chain_method_calls:asm               avgt           NaN              ---
LockCoarseningBenchmark.conditional_chain_method_calls       avgt    5   55.731 ±   1.508  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:asm   avgt           NaN              ---
LockCoarseningBenchmark.conditional_nested_method_calls      avgt    5   55.472 ±   1.023  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:asm  avgt           NaN              ---
LockCoarseningBenchmark.nested_synchronized                  avgt    5  262.464 ±   5.798  ns/op
LockCoarseningBenchmark.nested_synchronized:asm              avgt           NaN              ---
LockCoarseningBenchmark.recursive_method_calls               avgt    5  381.739 ± 117.189  ns/op
LockCoarseningBenchmark.recursive_method_calls:asm           avgt           NaN              ---
