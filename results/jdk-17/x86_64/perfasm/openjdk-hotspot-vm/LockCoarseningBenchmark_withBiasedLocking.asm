# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
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
# Warmup Iteration   1: 10.347 ns/op
# Warmup Iteration   2: 9.365 ns/op
# Warmup Iteration   3: 10.213 ns/op
# Warmup Iteration   4: 9.465 ns/op
# Warmup Iteration   5: 9.490 ns/op
Iteration   1: 9.488 ns/op
Iteration   2: 9.473 ns/op
Iteration   3: 9.582 ns/op
Iteration   4: 9.634 ns/op
Iteration   5: 9.580 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  9.552 ±(99.9%) 0.263 ns/op [Average]
  (min, avg, max) = (9.473, 9.552, 9.634), stdev = 0.068
  CI (99.9%): [9.288, 9.815] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:·asm":
PrintAssembly processed: 118880 total address lines.
Perf output processed (skipped 55.756 seconds):
 Column 1: cycles (50936 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 481 

             # {method} {0x00007f3683c743a8} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f36bcf64aa0:   mov    0x8(%rsi),%r10d
             0x00007f36bcf64aa4:   movabs $0x800000000,%r11
             0x00007f36bcf64aae:   add    %r11,%r10
             0x00007f36bcf64ab1:   cmp    %r10,%rax
             0x00007f36bcf64ab4:   jne    0x00007f36bc9fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f36bcf64aba:   xchg   %ax,%ax
             0x00007f36bcf64abc:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.94%     0x00007f36bcf64ac0:   mov    %eax,-0x14000(%rsp)
   8.42%     0x00007f36bcf64ac7:   push   %rbp
   0.16%     0x00007f36bcf64ac8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@-1 (line 209)
   0.93%     0x00007f36bcf64acc:   mov    %rsi,(%rsp)
   2.89%     0x00007f36bcf64ad0:   mov    0x10(%rsi),%ebp
   0.18%     0x00007f36bcf64ad3:   mov    (%rsi),%rax
   0.96%     0x00007f36bcf64ad6:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 209)
             0x00007f36bcf64ad8:   mov    %rax,%r10
   2.74%     0x00007f36bcf64adb:   and    $0x7,%r10
   0.20%     0x00007f36bcf64adf:   nop
   0.97%     0x00007f36bcf64ae0:   cmp    $0x5,%r10
          ╭  0x00007f36bcf64ae4:   jne    0x00007f36bcf64b64
          │  0x00007f36bcf64aea:   mov    0x8(%rsi),%r11d
   5.58%  │  0x00007f36bcf64aee:   movabs $0x800000000,%r10
   0.20%  │  0x00007f36bcf64af8:   add    %r11,%r10
   0.98%  │  0x00007f36bcf64afb:   mov    0xb8(%r10),%r10
   4.23%  │  0x00007f36bcf64b02:   mov    %r10,%r11
   1.87%  │  0x00007f36bcf64b05:   or     %r15,%r11
   2.09%  │  0x00007f36bcf64b08:   mov    %r11,%r8
          │  0x00007f36bcf64b0b:   xor    %rax,%r8
   4.06%  │  0x00007f36bcf64b0e:   test   $0xffffffffffffff87,%r8
          │  0x00007f36bcf64b15:   jne    0x00007f36bcf64c95           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   3.97%  │  0x00007f36bcf64b1b:   mov    (%rsp),%r10
          │  0x00007f36bcf64b1f:   mov    0x14(%r10),%ebx
   0.20%  │  0x00007f36bcf64b23:   mov    $0x7,%r10d
          │  0x00007f36bcf64b29:   mov    (%rsp),%r11
   3.84%  │  0x00007f36bcf64b2d:   and    (%r11),%r10
          │  0x00007f36bcf64b30:   cmp    $0x5,%r10
          │  0x00007f36bcf64b34:   jne    0x00007f36bcf64bdd           ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
   0.12%  │  0x00007f36bcf64b3a:   add    %ebx,%ebp
   0.15%  │  0x00007f36bcf64b3c:   add    %ebx,%ebp
   4.36%  │  0x00007f36bcf64b3e:   add    %ebx,%ebp
   0.04%  │  0x00007f36bcf64b40:   add    %ebx,%ebp
   3.08%  │  0x00007f36bcf64b42:   add    %ebx,%ebp
  11.72%  │  0x00007f36bcf64b44:   add    %ebx,%ebp
   0.20%  │  0x00007f36bcf64b46:   add    %ebx,%ebp
   0.22%  │  0x00007f36bcf64b48:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 219)
   0.96%  │  0x00007f36bcf64b4a:   mov    %ebp,%eax
   2.85%  │  0x00007f36bcf64b4c:   add    $0x30,%rsp
          │  0x00007f36bcf64b50:   pop    %rbp
          │  0x00007f36bcf64b51:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │  0x00007f36bcf64b58:   ja     0x00007f36bcf64cd3
   3.78%  │  0x00007f36bcf64b5e:   ret    
          │  0x00007f36bcf64b5f:   lock cmpxchg %r10,(%rsi)
          ↘  0x00007f36bcf64b64:   lea    0x20(%rsp),%rbx
             0x00007f36bcf64b69:   mov    (%rsi),%rax
             0x00007f36bcf64b6c:   test   $0x2,%rax
             0x00007f36bcf64b73:   jne    0x00007f36bcf64b99
             0x00007f36bcf64b75:   or     $0x1,%rax
             0x00007f36bcf64b79:   mov    %rax,(%rbx)
             0x00007f36bcf64b7c:   lock cmpxchg %rbx,(%rsi)
             0x00007f36bcf64b81:   je     0x00007f36bcf64bc5
             0x00007f36bcf64b87:   sub    %rsp,%rax
....................................................................................................
  75.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 517 

              0x00007f36bcf67ea6:   mov    0x38(%rsp),%r10
              0x00007f36bcf67eab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f36bcf67f5c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@30 (line 234)
              0x00007f36bcf67eb3:   mov    $0x1,%ebp
              0x00007f36bcf67eb8:   test   %r11d,%r11d
          ╭   0x00007f36bcf67ebb:   jne    0x00007f36bcf67eec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
          │   0x00007f36bcf67ebd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 235)
   3.65%  │↗  0x00007f36bcf67ec0:   mov    0x40(%rsp),%rsi
          ││  0x00007f36bcf67ec5:   xchg   %ax,%ax
          ││  0x00007f36bcf67ec7:   call   0x00007f36bc9fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual baseline {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
   2.51%  ││  0x00007f36bcf67ecc:   mov    0x38(%rsp),%r10
   2.26%  ││  0x00007f36bcf67ed1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
  13.18%  ││  0x00007f36bcf67ed9:   mov    0x348(%r15),%r11
          ││  0x00007f36bcf67ee0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@33 (line 234)
          ││  0x00007f36bcf67ee4:   test   %eax,(%r11)                  ;   {poll}
   0.18%  ││  0x00007f36bcf67ee7:   test   %r10d,%r10d
          │╰  0x00007f36bcf67eea:   je     0x00007f36bcf67ec0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@36 (line 235)
          ↘   0x00007f36bcf67eec:   movabs $0x7f36d135bd10,%r10
              0x00007f36bcf67ef6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@37 (line 235)
              0x00007f36bcf67ef9:   mov    0x30(%rsp),%r10
              0x00007f36bcf67efe:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@40 (line 235)
              0x00007f36bcf67f02:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub@46 (line 236)
....................................................................................................
  21.78%  <total for region 2>

....[Hottest Regions]...............................................................................
  75.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 481 
  21.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 517 
   1.12%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.67%  <...other 240 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  75.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 481 
  21.78%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 517 
   1.98%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  os::javaTimeNanos 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.14%  <...other 63 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.68%         c2, level 4
   1.98%              kernel
   0.15%           libjvm.so
   0.07%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.00%      perf-18817.map
   0.00%              [vdso]
   0.00%    Unknown, level 0
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.661 ns/op
# Warmup Iteration   2: 9.354 ns/op
# Warmup Iteration   3: 10.536 ns/op
# Warmup Iteration   4: 9.535 ns/op
# Warmup Iteration   5: 9.551 ns/op
Iteration   1: 9.556 ns/op
Iteration   2: 9.585 ns/op
Iteration   3: 9.624 ns/op
Iteration   4: 9.590 ns/op
Iteration   5: 9.573 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  9.586 ±(99.9%) 0.096 ns/op [Average]
  (min, avg, max) = (9.556, 9.586, 9.624), stdev = 0.025
  CI (99.9%): [9.489, 9.682] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 121876 total address lines.
Perf output processed (skipped 55.792 seconds):
 Column 1: cycles (50833 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 489 

             # {method} {0x00007f7a11c73fb8} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f7a30f65220:   mov    0x8(%rsi),%r10d
             0x00007f7a30f65224:   movabs $0x800000000,%r11
             0x00007f7a30f6522e:   add    %r11,%r10
             0x00007f7a30f65231:   cmp    %r10,%rax
             0x00007f7a30f65234:   jne    0x00007f7a309fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f7a30f6523a:   xchg   %ax,%ax
             0x00007f7a30f6523c:   nopl   0x0(%rax)
           [Verified Entry Point]
   3.75%     0x00007f7a30f65240:   mov    %eax,-0x14000(%rsp)
   9.57%     0x00007f7a30f65247:   push   %rbp
   0.04%     0x00007f7a30f65248:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@-1 (line 124)
   0.67%     0x00007f7a30f6524c:   mov    %rsi,(%rsp)
   3.18%     0x00007f7a30f65250:   mov    0x10(%rsi),%ebp
   0.06%     0x00007f7a30f65253:   mov    (%rsi),%rax
   0.62%     0x00007f7a30f65256:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 124)
             0x00007f7a30f65258:   mov    %rax,%r10
   3.18%     0x00007f7a30f6525b:   and    $0x7,%r10
   0.06%     0x00007f7a30f6525f:   nop
   0.64%     0x00007f7a30f65260:   cmp    $0x5,%r10
          ╭  0x00007f7a30f65264:   jne    0x00007f7a30f652e4
          │  0x00007f7a30f6526a:   mov    0x8(%rsi),%r11d
   6.44%  │  0x00007f7a30f6526e:   movabs $0x800000000,%r10
   0.06%  │  0x00007f7a30f65278:   add    %r11,%r10
   0.62%  │  0x00007f7a30f6527b:   mov    0xb8(%r10),%r10
   2.29%  │  0x00007f7a30f65282:   mov    %r10,%r11
   2.84%  │  0x00007f7a30f65285:   or     %r15,%r11
   1.04%  │  0x00007f7a30f65288:   mov    %r11,%r8
          │  0x00007f7a30f6528b:   xor    %rax,%r8
   4.02%  │  0x00007f7a30f6528e:   test   $0xffffffffffffff87,%r8
          │  0x00007f7a30f65295:   jne    0x00007f7a30f65415           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   4.01%  │  0x00007f7a30f6529b:   mov    (%rsp),%r10
   0.00%  │  0x00007f7a30f6529f:   mov    0x14(%r10),%ebx
   0.02%  │  0x00007f7a30f652a3:   mov    $0x7,%r10d
          │  0x00007f7a30f652a9:   mov    (%rsp),%r11
   4.03%  │  0x00007f7a30f652ad:   and    (%r11),%r10
   0.00%  │  0x00007f7a30f652b0:   cmp    $0x5,%r10
          │  0x00007f7a30f652b4:   jne    0x00007f7a30f6535d           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
   0.07%  │  0x00007f7a30f652ba:   add    %ebx,%ebp
   0.04%  │  0x00007f7a30f652bc:   add    %ebx,%ebp
   4.10%  │  0x00007f7a30f652be:   add    %ebx,%ebp
   0.07%  │  0x00007f7a30f652c0:   add    %ebx,%ebp
   1.80%  │  0x00007f7a30f652c2:   add    %ebx,%ebp
  13.49%  │  0x00007f7a30f652c4:   add    %ebx,%ebp
   0.05%  │  0x00007f7a30f652c6:   add    %ebx,%ebp
   0.08%  │  0x00007f7a30f652c8:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
   0.53%  │  0x00007f7a30f652ca:   mov    %ebp,%eax
   3.37%  │  0x00007f7a30f652cc:   add    $0x30,%rsp
   0.00%  │  0x00007f7a30f652d0:   pop    %rbp
          │  0x00007f7a30f652d1:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │  0x00007f7a30f652d8:   ja     0x00007f7a30f65453
   3.80%  │  0x00007f7a30f652de:   ret    
          │  0x00007f7a30f652df:   lock cmpxchg %r10,(%rsi)
          ↘  0x00007f7a30f652e4:   lea    0x20(%rsp),%rbx
             0x00007f7a30f652e9:   mov    (%rsi),%rax
             0x00007f7a30f652ec:   test   $0x2,%rax
             0x00007f7a30f652f3:   jne    0x00007f7a30f65319
             0x00007f7a30f652f5:   or     $0x1,%rax
             0x00007f7a30f652f9:   mov    %rax,(%rbx)
             0x00007f7a30f652fc:   lock cmpxchg %rbx,(%rsi)
             0x00007f7a30f65301:   je     0x00007f7a30f65345
             0x00007f7a30f65307:   sub    %rsp,%rax
....................................................................................................
  74.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 528 

              0x00007f7a30f68726:   mov    0x38(%rsp),%r10
              0x00007f7a30f6872b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007f7a30f687dc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@30 (line 234)
              0x00007f7a30f68733:   mov    $0x1,%ebp
              0x00007f7a30f68738:   test   %r11d,%r11d
          ╭   0x00007f7a30f6873b:   jne    0x00007f7a30f6876c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
          │   0x00007f7a30f6873d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 235)
   3.72%  │↗  0x00007f7a30f68740:   mov    0x40(%rsp),%rsi
          ││  0x00007f7a30f68745:   xchg   %ax,%ax
          ││  0x00007f7a30f68747:   call   0x00007f7a309fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
   2.97%  ││  0x00007f7a30f6874c:   mov    0x38(%rsp),%r10
   1.16%  ││  0x00007f7a30f68751:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
  14.40%  ││  0x00007f7a30f68759:   mov    0x348(%r15),%r11
          ││  0x00007f7a30f68760:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007f7a30f68764:   test   %eax,(%r11)                  ;   {poll}
   0.07%  ││  0x00007f7a30f68767:   test   %r10d,%r10d
          │╰  0x00007f7a30f6876a:   je     0x00007f7a30f68740           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@36 (line 235)
          ↘   0x00007f7a30f6876c:   movabs $0x7f7a4735ad10,%r10
              0x00007f7a30f68776:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@37 (line 235)
              0x00007f7a30f68779:   mov    0x30(%rsp),%r10
              0x00007f7a30f6877e:   mov    %rax,0x30(%r10)              ;*putfield stopTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@40 (line 235)
              0x00007f7a30f68782:   mov    %r12,0x20(%r10)              ;*putfield realTime {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub@46 (line 236)
....................................................................................................
  22.32%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 489 
  22.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 528 
   0.90%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.35%  <...other 408 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  74.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 489 
  22.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 528 
   2.78%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  os::current_thread_id 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%        libc-2.31.so  __strchr_sse2 
   0.00%      hsdis-amd64.so  putop 
   0.00%        libc-2.31.so  __strxfrm_l 
   0.16%  <...other 75 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.86%         c2, level 4
   2.78%              kernel
   0.18%           libjvm.so
   0.05%                    
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         interpreter
   0.01%          ld-2.31.so
   0.01%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 28.291 ns/op
# Warmup Iteration   2: 27.035 ns/op
# Warmup Iteration   3: 27.638 ns/op
# Warmup Iteration   4: 27.108 ns/op
# Warmup Iteration   5: 27.483 ns/op
Iteration   1: 26.961 ns/op
Iteration   2: 27.115 ns/op
Iteration   3: 27.227 ns/op
Iteration   4: 26.795 ns/op
Iteration   5: 27.220 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  27.064 ±(99.9%) 0.711 ns/op [Average]
  (min, avg, max) = (26.795, 27.064, 27.227), stdev = 0.185
  CI (99.9%): [26.353, 27.775] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 122289 total address lines.
Perf output processed (skipped 55.835 seconds):
 Column 1: cycles (50563 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 484 

             # {method} {0x00007fb8ac87ee30} &apos;conditional_chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007fb8c0f62540:   mov    0x8(%rsi),%r10d
             0x00007fb8c0f62544:   movabs $0x800000000,%r11
             0x00007fb8c0f6254e:   add    %r11,%r10
             0x00007fb8c0f62551:   cmp    %r10,%rax
             0x00007fb8c0f62554:   jne    0x00007fb8c09fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fb8c0f6255a:   xchg   %ax,%ax
             0x00007fb8c0f6255c:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.41%     0x00007fb8c0f62560:   mov    %eax,-0x14000(%rsp)
   1.11%     0x00007fb8c0f62567:   push   %rbp
             0x00007fb8c0f62568:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@-1 (line 141)
   1.03%     0x00007fb8c0f6256c:   mov    %rsi,%rbp
   0.34%     0x00007fb8c0f6256f:   mov    0x10(%rsi),%r13d
             0x00007fb8c0f62573:   shl    %r13d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@5 (line 141)
   1.15%     0x00007fb8c0f62576:   cmp    $0x20,%r13d
   0.00%     0x00007fb8c0f6257a:   nopw   0x0(%rax,%rax,1)
   0.36%     0x00007fb8c0f62580:   jle    0x00007fb8c0f635d4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@10 (line 144)
             0x00007fb8c0f62586:   mov    (%rsi),%rax
   1.09%     0x00007fb8c0f62589:   mov    %rax,%r10
             0x00007fb8c0f6258c:   and    $0x7,%r10
   0.37%     0x00007fb8c0f62590:   cmp    $0x5,%r10
          ╭  0x00007fb8c0f62594:   jne    0x00007fb8c0f6290e
   0.00%  │  0x00007fb8c0f6259a:   mov    0x8(%rsi),%r11d
   1.09%  │  0x00007fb8c0f6259e:   movabs $0x800000000,%r10
          │  0x00007fb8c0f625a8:   add    %r11,%r10
   0.35%  │  0x00007fb8c0f625ab:   mov    0xb8(%r10),%r10
   3.49%  │  0x00007fb8c0f625b2:   mov    %r10,%r11
          │  0x00007fb8c0f625b5:   or     %r15,%r11
   1.39%  │  0x00007fb8c0f625b8:   mov    %r11,%r8
          │  0x00007fb8c0f625bb:   xor    %rax,%r8
   1.38%  │  0x00007fb8c0f625be:   xchg   %ax,%ax
          │  0x00007fb8c0f625c0:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f625c7:   jne    0x00007fb8c0f62c32           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
   1.30%  │  0x00007fb8c0f625cd:   add    0x14(%rbp),%r13d
          │  0x00007fb8c0f625d1:   mov    $0x7,%r10d
          │  0x00007fb8c0f625d7:   and    0x0(%rbp),%r10
          │  0x00007fb8c0f625db:   nopl   0x0(%rax,%rax,1)
   1.44%  │  0x00007fb8c0f625e0:   cmp    $0x5,%r10
          │  0x00007fb8c0f625e4:   jne    0x00007fb8c0f6298e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
          │  0x00007fb8c0f625ea:   cmp    $0x20,%r13d
          │  0x00007fb8c0f625ee:   jle    0x00007fb8c0f635e4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 147)
          │  0x00007fb8c0f625f4:   mov    0x0(%rbp),%rax
          │  0x00007fb8c0f625f8:   mov    %rax,%r10
   1.37%  │  0x00007fb8c0f625fb:   and    $0x7,%r10
          │  0x00007fb8c0f625ff:   nop
          │  0x00007fb8c0f62600:   cmp    $0x5,%r10
          │  0x00007fb8c0f62604:   jne    0x00007fb8c0f62a58
          │  0x00007fb8c0f6260a:   mov    0x8(%rbp),%r11d
   1.42%  │  0x00007fb8c0f6260e:   movabs $0x800000000,%r10
          │  0x00007fb8c0f62618:   add    %r11,%r10
          │  0x00007fb8c0f6261b:   mov    0xb8(%r10),%r10
          │  0x00007fb8c0f62622:   mov    %r10,%r11
   1.38%  │  0x00007fb8c0f62625:   or     %r15,%r11
          │  0x00007fb8c0f62628:   mov    %r11,%r8
          │  0x00007fb8c0f6262b:   xor    %rax,%r8
   0.69%  │  0x00007fb8c0f6262e:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f62635:   jne    0x00007fb8c0f62dc5           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 148)
   1.36%  │  0x00007fb8c0f6263b:   add    0x14(%rbp),%r13d
          │  0x00007fb8c0f6263f:   mov    $0x7,%r10d
          │  0x00007fb8c0f62645:   and    0x0(%rbp),%r10
          │  0x00007fb8c0f62649:   cmp    $0x5,%r10
          │  0x00007fb8c0f6264d:   jne    0x00007fb8c0f62ae5           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 148)
   1.34%  │  0x00007fb8c0f62653:   cmp    $0x20,%r13d
          │  0x00007fb8c0f62657:   jle    0x00007fb8c0f635f4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 150)
          │  0x00007fb8c0f6265d:   mov    0x0(%rbp),%rax
          │  0x00007fb8c0f62661:   mov    %rax,%r10
          │  0x00007fb8c0f62664:   and    $0x7,%r10
   1.40%  │  0x00007fb8c0f62668:   cmp    $0x5,%r10
          │  0x00007fb8c0f6266c:   jne    0x00007fb8c0f62bab
          │  0x00007fb8c0f62672:   mov    0x8(%rbp),%r11d
          │  0x00007fb8c0f62676:   movabs $0x800000000,%r10
          │  0x00007fb8c0f62680:   add    %r11,%r10
   1.36%  │  0x00007fb8c0f62683:   mov    0xb8(%r10),%r10
   0.56%  │  0x00007fb8c0f6268a:   mov    %r10,%r11
          │  0x00007fb8c0f6268d:   or     %r15,%r11
   0.34%  │  0x00007fb8c0f62690:   mov    %r11,%r8
   1.00%  │  0x00007fb8c0f62693:   xor    %rax,%r8
   0.39%  │  0x00007fb8c0f62696:   data16 nopw 0x0(%rax,%rax,1)
          │  0x00007fb8c0f626a0:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f626a7:   jne    0x00007fb8c0f62f65           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 151)
   0.33%  │  0x00007fb8c0f626ad:   add    0x14(%rbp),%r13d
   1.04%  │  0x00007fb8c0f626b1:   mov    $0x7,%r10d
          │  0x00007fb8c0f626b7:   and    0x0(%rbp),%r10
          │  0x00007fb8c0f626bb:   nopl   0x0(%rax,%rax,1)
   0.30%  │  0x00007fb8c0f626c0:   cmp    $0x5,%r10
          │  0x00007fb8c0f626c4:   jne    0x00007fb8c0f62c73           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 151)
   1.04%  │  0x00007fb8c0f626ca:   cmp    $0x20,%r13d
          │  0x00007fb8c0f626ce:   jle    0x00007fb8c0f63604           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 153)
          │  0x00007fb8c0f626d4:   mov    0x0(%rbp),%rax
          │  0x00007fb8c0f626d8:   mov    %rax,%r10
   0.39%  │  0x00007fb8c0f626db:   and    $0x7,%r10
   1.10%  │  0x00007fb8c0f626df:   nop
          │  0x00007fb8c0f626e0:   cmp    $0x5,%r10
          │  0x00007fb8c0f626e4:   jne    0x00007fb8c0f62d38
          │  0x00007fb8c0f626ea:   mov    0x8(%rbp),%r11d
   0.65%  │  0x00007fb8c0f626ee:   movabs $0x800000000,%r10
   1.07%  │  0x00007fb8c0f626f8:   add    %r11,%r10
          │  0x00007fb8c0f626fb:   mov    0xb8(%r10),%r10
   0.08%  │  0x00007fb8c0f62702:   mov    %r10,%r11
   0.29%  │  0x00007fb8c0f62705:   or     %r15,%r11
   1.16%  │  0x00007fb8c0f62708:   mov    %r11,%r8
          │  0x00007fb8c0f6270b:   xor    %rax,%r8
   0.41%  │  0x00007fb8c0f6270e:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f62715:   jne    0x00007fb8c0f63105           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 154)
   0.40%  │  0x00007fb8c0f6271b:   add    0x14(%rbp),%r13d
   0.89%  │  0x00007fb8c0f6271f:   mov    $0x7,%r10d
          │  0x00007fb8c0f62725:   and    0x0(%rbp),%r10
          │  0x00007fb8c0f62729:   cmp    $0x5,%r10
          │  0x00007fb8c0f6272d:   jne    0x00007fb8c0f62e0b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 154)
   0.43%  │  0x00007fb8c0f62733:   cmp    $0x20,%r13d
          │  0x00007fb8c0f62737:   jle    0x00007fb8c0f63614           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 156)
   0.97%  │  0x00007fb8c0f6273d:   mov    0x0(%rbp),%rax
          │  0x00007fb8c0f62741:   mov    %rax,%r10
          │  0x00007fb8c0f62744:   and    $0x7,%r10
   0.44%  │  0x00007fb8c0f62748:   cmp    $0x5,%r10
          │  0x00007fb8c0f6274c:   jne    0x00007fb8c0f62ed8
   0.92%  │  0x00007fb8c0f62752:   mov    0x8(%rbp),%r11d
          │  0x00007fb8c0f62756:   movabs $0x800000000,%r10
          │  0x00007fb8c0f62760:   add    %r11,%r10
   0.46%  │  0x00007fb8c0f62763:   mov    0xb8(%r10),%r10
   1.82%  │  0x00007fb8c0f6276a:   mov    %r10,%r11
          │  0x00007fb8c0f6276d:   or     %r15,%r11
   0.75%  │  0x00007fb8c0f62770:   mov    %r11,%r8
          │  0x00007fb8c0f62773:   xor    %rax,%r8
   1.43%  │  0x00007fb8c0f62776:   data16 nopw 0x0(%rax,%rax,1)
          │  0x00007fb8c0f62780:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f62787:   jne    0x00007fb8c0f632a5           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 157)
   1.18%  │  0x00007fb8c0f6278d:   add    0x14(%rbp),%r13d
          │  0x00007fb8c0f62791:   mov    $0x7,%r10d
   0.16%  │  0x00007fb8c0f62797:   and    0x0(%rbp),%r10
          │  0x00007fb8c0f6279b:   nopl   0x0(%rax,%rax,1)
   1.21%  │  0x00007fb8c0f627a0:   cmp    $0x5,%r10
          │  0x00007fb8c0f627a4:   jne    0x00007fb8c0f62fab           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 157)
   0.00%  │  0x00007fb8c0f627aa:   cmp    $0x20,%r13d
          │  0x00007fb8c0f627ae:   jle    0x00007fb8c0f63624           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 159)
   0.19%  │  0x00007fb8c0f627b4:   mov    0x0(%rbp),%rax
          │  0x00007fb8c0f627b8:   mov    %rax,%r10
   1.30%  │  0x00007fb8c0f627bb:   and    $0x7,%r10
          │  0x00007fb8c0f627bf:   nop
   0.21%  │  0x00007fb8c0f627c0:   cmp    $0x5,%r10
          │  0x00007fb8c0f627c4:   jne    0x00007fb8c0f63078
          │  0x00007fb8c0f627ca:   mov    0x8(%rbp),%r11d
   2.37%  │  0x00007fb8c0f627ce:   movabs $0x800000000,%r10
          │  0x00007fb8c0f627d8:   add    %r11,%r10
   0.17%  │  0x00007fb8c0f627db:   mov    0xb8(%r10),%r10
   0.90%  │  0x00007fb8c0f627e2:   mov    %r10,%r11
   0.53%  │  0x00007fb8c0f627e5:   or     %r15,%r11
   0.62%  │  0x00007fb8c0f627e8:   mov    %r11,%r8
   0.15%  │  0x00007fb8c0f627eb:   xor    %rax,%r8
   1.23%  │  0x00007fb8c0f627ee:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f627f5:   jne    0x00007fb8c0f63445           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 160)
   1.29%  │  0x00007fb8c0f627fb:   add    0x14(%rbp),%r13d
          │  0x00007fb8c0f627ff:   mov    $0x7,%r10d
   0.12%  │  0x00007fb8c0f62805:   and    0x0(%rbp),%r10
          │  0x00007fb8c0f62809:   cmp    $0x5,%r10
          │  0x00007fb8c0f6280d:   jne    0x00007fb8c0f6314b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@75 (line 160)
   1.21%  │  0x00007fb8c0f62813:   cmp    $0x20,%r13d
          │  0x00007fb8c0f62817:   jle    0x00007fb8c0f63634           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@82 (line 162)
          │  0x00007fb8c0f6281d:   mov    0x0(%rbp),%rax
   0.11%  │  0x00007fb8c0f62821:   mov    %rax,%r10
          │  0x00007fb8c0f62824:   and    $0x7,%r10
   1.29%  │  0x00007fb8c0f62828:   cmp    $0x5,%r10
          │  0x00007fb8c0f6282c:   jne    0x00007fb8c0f63218
          │  0x00007fb8c0f62832:   mov    0x8(%rbp),%r11d
   0.12%  │  0x00007fb8c0f62836:   movabs $0x800000000,%r10
          │  0x00007fb8c0f62840:   add    %r11,%r10
   1.21%  │  0x00007fb8c0f62843:   mov    0xb8(%r10),%r10
   2.32%  │  0x00007fb8c0f6284a:   mov    %r10,%r11
   0.05%  │  0x00007fb8c0f6284d:   or     %r15,%r11
   1.23%  │  0x00007fb8c0f62850:   mov    %r11,%r8
   0.03%  │  0x00007fb8c0f62853:   xor    %rax,%r8
   1.33%  │  0x00007fb8c0f62856:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │  0x00007fb8c0f62860:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f62867:   jne    0x00007fb8c0f63552           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 163)
   1.40%  │  0x00007fb8c0f6286d:   add    0x14(%rbp),%r13d
   0.01%  │  0x00007fb8c0f62871:   mov    $0x7,%r10d
          │  0x00007fb8c0f62877:   and    0x0(%rbp),%r10
   0.00%  │  0x00007fb8c0f6287b:   nopl   0x0(%rax,%rax,1)
   1.31%  │  0x00007fb8c0f62880:   cmp    $0x5,%r10
          │  0x00007fb8c0f62884:   jne    0x00007fb8c0f632eb           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@87 (line 163)
   0.01%  │  0x00007fb8c0f6288a:   cmp    $0x20,%r13d
          │  0x00007fb8c0f6288e:   jle    0x00007fb8c0f63644           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@94 (line 165)
          │  0x00007fb8c0f62894:   mov    0x0(%rbp),%rax
   0.00%  │  0x00007fb8c0f62898:   mov    %rax,%r10
   1.32%  │  0x00007fb8c0f6289b:   and    $0x7,%r10
   0.01%  │  0x00007fb8c0f6289f:   nop
          │  0x00007fb8c0f628a0:   cmp    $0x5,%r10
          │  0x00007fb8c0f628a4:   jne    0x00007fb8c0f633b8
   0.00%  │  0x00007fb8c0f628aa:   mov    0x8(%rbp),%r11d
   2.58%  │  0x00007fb8c0f628ae:   movabs $0x800000000,%r10
   0.02%  │  0x00007fb8c0f628b8:   add    %r11,%r10
          │  0x00007fb8c0f628bb:   mov    0xb8(%r10),%r10
   0.54%  │  0x00007fb8c0f628c2:   mov    %r10,%r11
   0.92%  │  0x00007fb8c0f628c5:   or     %r15,%r11
   0.60%  │  0x00007fb8c0f628c8:   mov    %r11,%r8
          │  0x00007fb8c0f628cb:   xor    %rax,%r8
   1.20%  │  0x00007fb8c0f628ce:   test   $0xffffffffffffff87,%r8
          │  0x00007fb8c0f628d5:   jne    0x00007fb8c0f63594           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@99 (line 166)
   1.31%  │  0x00007fb8c0f628db:   add    0x14(%rbp),%r13d
   0.00%  │  0x00007fb8c0f628df:   mov    $0x7,%r10d
          │  0x00007fb8c0f628e5:   and    0x0(%rbp),%r10
   0.00%  │  0x00007fb8c0f628e9:   cmp    $0x5,%r10
          │  0x00007fb8c0f628ed:   jne    0x00007fb8c0f6348b           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@-1 (line 141)
   1.45%  │  0x00007fb8c0f628f3:   mov    %r13d,%eax
          │  0x00007fb8c0f628f6:   add    $0x30,%rsp
          │  0x00007fb8c0f628fa:   pop    %rbp
          │  0x00007fb8c0f628fb:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │  0x00007fb8c0f62902:   ja     0x00007fb8c0f63654
   1.66%  │  0x00007fb8c0f62908:   ret    
          │  0x00007fb8c0f62909:   lock cmpxchg %r10,(%rsi)
          ↘  0x00007fb8c0f6290e:   lea    0x20(%rsp),%rbx
             0x00007fb8c0f62913:   mov    (%rsi),%rax
             0x00007fb8c0f62916:   test   $0x2,%rax
             0x00007fb8c0f6291d:   jne    0x00007fb8c0f62943
             0x00007fb8c0f6291f:   or     $0x1,%rax
             0x00007fb8c0f62923:   mov    %rax,(%rbx)
             0x00007fb8c0f62926:   lock cmpxchg %rbx,(%rsi)
             0x00007fb8c0f6292b:   je     0x00007fb8c0f6296f
             0x00007fb8c0f62931:   sub    %rsp,%rax
....................................................................................................
  81.14%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 519 

              0x00007fb8c0f66e26:   mov    0x38(%rsp),%r10
              0x00007fb8c0f66e2b:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fb8c0f66edc
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@30 (line 234)
              0x00007fb8c0f66e33:   mov    $0x1,%ebp
              0x00007fb8c0f66e38:   test   %r11d,%r11d
          ╭   0x00007fb8c0f66e3b:   jne    0x00007fb8c0f66e6c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
          │   0x00007fb8c0f66e3d:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 235)
   1.40%  │↗  0x00007fb8c0f66e40:   mov    0x40(%rsp),%rsi
          ││  0x00007fb8c0f66e45:   xchg   %ax,%ax
          ││  0x00007fb8c0f66e47:   call   0x00007fb8c09fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual conditional_chain_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
   0.10%  ││  0x00007fb8c0f66e4c:   mov    0x38(%rsp),%r10
   9.87%  ││  0x00007fb8c0f66e51:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
   5.66%  ││  0x00007fb8c0f66e59:   mov    0x348(%r15),%r11
          ││  0x00007fb8c0f66e60:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007fb8c0f66e64:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fb8c0f66e67:   test   %r10d,%r10d
          │╰  0x00007fb8c0f66e6a:   je     0x00007fb8c0f66e40           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub@36 (line 235)
          ↘   0x00007fb8c0f66e6c:   movabs $0x7fb8d60e5d10,%r10
              0x00007fb8c0f66e76:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  17.03%  <total for region 2>

....[Hottest Regions]...............................................................................
  81.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 484 
  17.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 519 
   0.32%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
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
   0.94%  <...other 313 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 484 
  17.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 519 
   1.49%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  fileStream::write 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%           libjvm.so  os::current_thread_id 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%           libjvm.so  outputStream::print 
   0.14%  <...other 64 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%         c2, level 4
   1.49%              kernel
   0.16%           libjvm.so
   0.09%        libc-2.31.so
   0.03%                    
   0.03%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 29.822 ns/op
# Warmup Iteration   2: 30.012 ns/op
# Warmup Iteration   3: 28.783 ns/op
# Warmup Iteration   4: 27.640 ns/op
# Warmup Iteration   5: 28.364 ns/op
Iteration   1: 28.585 ns/op
Iteration   2: 28.113 ns/op
Iteration   3: 28.352 ns/op
Iteration   4: 28.768 ns/op
Iteration   5: 28.788 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  28.521 ±(99.9%) 1.108 ns/op [Average]
  (min, avg, max) = (28.113, 28.521, 28.788), stdev = 0.288
  CI (99.9%): [27.413, 29.629] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 116704 total address lines.
Perf output processed (skipped 55.455 seconds):
 Column 1: cycles (50493 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 464 

             # {method} {0x00007fe11f87ef90} &apos;conditional_nested_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007fe158f63ec0:   mov    0x8(%rsi),%r10d
             0x00007fe158f63ec4:   movabs $0x800000000,%r11
             0x00007fe158f63ece:   add    %r11,%r10
             0x00007fe158f63ed1:   cmp    %r10,%rax
             0x00007fe158f63ed4:   jne    0x00007fe1589fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fe158f63eda:   xchg   %ax,%ax
             0x00007fe158f63edc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.21%     0x00007fe158f63ee0:   mov    %eax,-0x14000(%rsp)
   3.00%     0x00007fe158f63ee7:   push   %rbp
             0x00007fe158f63ee8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@-1 (line 175)
   0.31%     0x00007fe158f63eec:   mov    %rsi,%rbp
   1.01%     0x00007fe158f63eef:   mov    0x10(%rsi),%r13d
             0x00007fe158f63ef3:   shl    %r13d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@5 (line 175)
   0.31%     0x00007fe158f63ef6:   cmp    $0x20,%r13d
   0.00%     0x00007fe158f63efa:   nopw   0x0(%rax,%rax,1)
   1.01%     0x00007fe158f63f00:   jle    0x00007fe158f64f54           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@10 (line 178)
             0x00007fe158f63f06:   mov    (%rsi),%rax
   0.31%     0x00007fe158f63f09:   mov    %rax,%r10
             0x00007fe158f63f0c:   and    $0x7,%r10
   1.03%     0x00007fe158f63f10:   cmp    $0x5,%r10
          ╭  0x00007fe158f63f14:   jne    0x00007fe158f6428e
          │  0x00007fe158f63f1a:   mov    0x8(%rsi),%r11d
   0.35%  │  0x00007fe158f63f1e:   movabs $0x800000000,%r10
          │  0x00007fe158f63f28:   add    %r11,%r10
   1.01%  │  0x00007fe158f63f2b:   mov    0xb8(%r10),%r10
   1.87%  │  0x00007fe158f63f32:   mov    %r10,%r11
          │  0x00007fe158f63f35:   or     %r15,%r11
   1.39%  │  0x00007fe158f63f38:   mov    %r11,%r8
          │  0x00007fe158f63f3b:   xor    %rax,%r8
   1.32%  │  0x00007fe158f63f3e:   xchg   %ax,%ax
          │  0x00007fe158f63f40:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f63f47:   jne    0x00007fe158f645b2           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
   1.41%  │  0x00007fe158f63f4d:   add    0x14(%rbp),%r13d
          │  0x00007fe158f63f51:   mov    $0x7,%r10d
          │  0x00007fe158f63f57:   and    0x0(%rbp),%r10
          │  0x00007fe158f63f5b:   nopl   0x0(%rax,%rax,1)
   1.30%  │  0x00007fe158f63f60:   cmp    $0x5,%r10
          │  0x00007fe158f63f64:   jne    0x00007fe158f6430e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@15 (line 179)
          │  0x00007fe158f63f6a:   cmp    $0x20,%r13d
          │  0x00007fe158f63f6e:   jle    0x00007fe158f64f64           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@22 (line 180)
          │  0x00007fe158f63f74:   mov    0x0(%rbp),%rax
          │  0x00007fe158f63f78:   mov    %rax,%r10
   1.33%  │  0x00007fe158f63f7b:   and    $0x7,%r10
          │  0x00007fe158f63f7f:   nop
          │  0x00007fe158f63f80:   cmp    $0x5,%r10
          │  0x00007fe158f63f84:   jne    0x00007fe158f643d8
          │  0x00007fe158f63f8a:   mov    0x8(%rbp),%r11d
   1.34%  │  0x00007fe158f63f8e:   movabs $0x800000000,%r10
          │  0x00007fe158f63f98:   add    %r11,%r10
          │  0x00007fe158f63f9b:   mov    0xb8(%r10),%r10
          │  0x00007fe158f63fa2:   mov    %r10,%r11
   1.35%  │  0x00007fe158f63fa5:   or     %r15,%r11
          │  0x00007fe158f63fa8:   mov    %r11,%r8
          │  0x00007fe158f63fab:   xor    %rax,%r8
   0.65%  │  0x00007fe158f63fae:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f63fb5:   jne    0x00007fe158f64745           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 181)
   1.46%  │  0x00007fe158f63fbb:   add    0x14(%rbp),%r13d
          │  0x00007fe158f63fbf:   mov    $0x7,%r10d
          │  0x00007fe158f63fc5:   and    0x0(%rbp),%r10
          │  0x00007fe158f63fc9:   cmp    $0x5,%r10
          │  0x00007fe158f63fcd:   jne    0x00007fe158f64465           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 181)
   1.35%  │  0x00007fe158f63fd3:   cmp    $0x20,%r13d
          │  0x00007fe158f63fd7:   jle    0x00007fe158f64f74           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 182)
          │  0x00007fe158f63fdd:   mov    0x0(%rbp),%rax
          │  0x00007fe158f63fe1:   mov    %rax,%r10
          │  0x00007fe158f63fe4:   and    $0x7,%r10
   1.30%  │  0x00007fe158f63fe8:   cmp    $0x5,%r10
          │  0x00007fe158f63fec:   jne    0x00007fe158f6452b
          │  0x00007fe158f63ff2:   mov    0x8(%rbp),%r11d
          │  0x00007fe158f63ff6:   movabs $0x800000000,%r10
          │  0x00007fe158f64000:   add    %r11,%r10
   1.35%  │  0x00007fe158f64003:   mov    0xb8(%r10),%r10
   1.45%  │  0x00007fe158f6400a:   mov    %r10,%r11
          │  0x00007fe158f6400d:   or     %r15,%r11
   0.88%  │  0x00007fe158f64010:   mov    %r11,%r8
   0.43%  │  0x00007fe158f64013:   xor    %rax,%r8
   0.84%  │  0x00007fe158f64016:   data16 nopw 0x0(%rax,%rax,1)
          │  0x00007fe158f64020:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f64027:   jne    0x00007fe158f648e5           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 183)
   0.90%  │  0x00007fe158f6402d:   add    0x14(%rbp),%r13d
   0.44%  │  0x00007fe158f64031:   mov    $0x7,%r10d
          │  0x00007fe158f64037:   and    0x0(%rbp),%r10
          │  0x00007fe158f6403b:   nopl   0x0(%rax,%rax,1)
   0.85%  │  0x00007fe158f64040:   cmp    $0x5,%r10
          │  0x00007fe158f64044:   jne    0x00007fe158f645f3           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 183)
   0.45%  │  0x00007fe158f6404a:   cmp    $0x20,%r13d
          │  0x00007fe158f6404e:   jle    0x00007fe158f64f84           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 184)
          │  0x00007fe158f64054:   mov    0x0(%rbp),%rax
          │  0x00007fe158f64058:   mov    %rax,%r10
   0.88%  │  0x00007fe158f6405b:   and    $0x7,%r10
   0.48%  │  0x00007fe158f6405f:   nop
          │  0x00007fe158f64060:   cmp    $0x5,%r10
          │  0x00007fe158f64064:   jne    0x00007fe158f646b8
          │  0x00007fe158f6406a:   mov    0x8(%rbp),%r11d
   1.75%  │  0x00007fe158f6406e:   movabs $0x800000000,%r10
   0.46%  │  0x00007fe158f64078:   add    %r11,%r10
          │  0x00007fe158f6407b:   mov    0xb8(%r10),%r10
   0.46%  │  0x00007fe158f64082:   mov    %r10,%r11
   0.49%  │  0x00007fe158f64085:   or     %r15,%r11
   0.88%  │  0x00007fe158f64088:   mov    %r11,%r8
          │  0x00007fe158f6408b:   xor    %rax,%r8
   0.95%  │  0x00007fe158f6408e:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f64095:   jne    0x00007fe158f64a85           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 185)
   1.13%  │  0x00007fe158f6409b:   add    0x14(%rbp),%r13d
   0.25%  │  0x00007fe158f6409f:   mov    $0x7,%r10d
          │  0x00007fe158f640a5:   and    0x0(%rbp),%r10
          │  0x00007fe158f640a9:   cmp    $0x5,%r10
          │  0x00007fe158f640ad:   jne    0x00007fe158f6478b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 185)
   1.14%  │  0x00007fe158f640b3:   cmp    $0x20,%r13d
          │  0x00007fe158f640b7:   jle    0x00007fe158f64f94           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 186)
   0.25%  │  0x00007fe158f640bd:   mov    0x0(%rbp),%rax
          │  0x00007fe158f640c1:   mov    %rax,%r10
          │  0x00007fe158f640c4:   and    $0x7,%r10
   1.05%  │  0x00007fe158f640c8:   cmp    $0x5,%r10
          │  0x00007fe158f640cc:   jne    0x00007fe158f64858
   0.25%  │  0x00007fe158f640d2:   mov    0x8(%rbp),%r11d
          │  0x00007fe158f640d6:   movabs $0x800000000,%r10
          │  0x00007fe158f640e0:   add    %r11,%r10
   1.11%  │  0x00007fe158f640e3:   mov    0xb8(%r10),%r10
   2.32%  │  0x00007fe158f640ea:   mov    %r10,%r11
          │  0x00007fe158f640ed:   or     %r15,%r11
   1.24%  │  0x00007fe158f640f0:   mov    %r11,%r8
          │  0x00007fe158f640f3:   xor    %rax,%r8
   1.32%  │  0x00007fe158f640f6:   data16 nopw 0x0(%rax,%rax,1)
          │  0x00007fe158f64100:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f64107:   jne    0x00007fe158f64c25           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 187)
   1.30%  │  0x00007fe158f6410d:   add    0x14(%rbp),%r13d
          │  0x00007fe158f64111:   mov    $0x7,%r10d
   0.02%  │  0x00007fe158f64117:   and    0x0(%rbp),%r10
          │  0x00007fe158f6411b:   nopl   0x0(%rax,%rax,1)
   1.36%  │  0x00007fe158f64120:   cmp    $0x5,%r10
          │  0x00007fe158f64124:   jne    0x00007fe158f6492b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 187)
          │  0x00007fe158f6412a:   cmp    $0x20,%r13d
          │  0x00007fe158f6412e:   jle    0x00007fe158f64fa4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 188)
   0.02%  │  0x00007fe158f64134:   mov    0x0(%rbp),%rax
          │  0x00007fe158f64138:   mov    %rax,%r10
   1.32%  │  0x00007fe158f6413b:   and    $0x7,%r10
          │  0x00007fe158f6413f:   nop
   0.02%  │  0x00007fe158f64140:   cmp    $0x5,%r10
          │  0x00007fe158f64144:   jne    0x00007fe158f649f8
          │  0x00007fe158f6414a:   mov    0x8(%rbp),%r11d
   2.63%  │  0x00007fe158f6414e:   movabs $0x800000000,%r10
          │  0x00007fe158f64158:   add    %r11,%r10
   0.02%  │  0x00007fe158f6415b:   mov    0xb8(%r10),%r10
   0.75%  │  0x00007fe158f64162:   mov    %r10,%r11
   0.52%  │  0x00007fe158f64165:   or     %r15,%r11
   0.73%  │  0x00007fe158f64168:   mov    %r11,%r8
   0.02%  │  0x00007fe158f6416b:   xor    %rax,%r8
   1.32%  │  0x00007fe158f6416e:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f64175:   jne    0x00007fe158f64dc5           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 189)
   1.32%  │  0x00007fe158f6417b:   add    0x14(%rbp),%r13d
          │  0x00007fe158f6417f:   mov    $0x7,%r10d
   0.01%  │  0x00007fe158f64185:   and    0x0(%rbp),%r10
          │  0x00007fe158f64189:   cmp    $0x5,%r10
          │  0x00007fe158f6418d:   jne    0x00007fe158f64acb           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@75 (line 189)
   1.27%  │  0x00007fe158f64193:   cmp    $0x20,%r13d
          │  0x00007fe158f64197:   jle    0x00007fe158f64fb4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@82 (line 190)
          │  0x00007fe158f6419d:   mov    0x0(%rbp),%rax
   0.01%  │  0x00007fe158f641a1:   mov    %rax,%r10
          │  0x00007fe158f641a4:   and    $0x7,%r10
   1.32%  │  0x00007fe158f641a8:   cmp    $0x5,%r10
          │  0x00007fe158f641ac:   jne    0x00007fe158f64b98
          │  0x00007fe158f641b2:   mov    0x8(%rbp),%r11d
   0.02%  │  0x00007fe158f641b6:   movabs $0x800000000,%r10
          │  0x00007fe158f641c0:   add    %r11,%r10
   1.28%  │  0x00007fe158f641c3:   mov    0xb8(%r10),%r10
   2.62%  │  0x00007fe158f641ca:   mov    %r10,%r11
   0.01%  │  0x00007fe158f641cd:   or     %r15,%r11
   1.34%  │  0x00007fe158f641d0:   mov    %r11,%r8
          │  0x00007fe158f641d3:   xor    %rax,%r8
   1.37%  │  0x00007fe158f641d6:   data16 nopw 0x0(%rax,%rax,1)
          │  0x00007fe158f641e0:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f641e7:   jne    0x00007fe158f64ed2           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 191)
   1.31%  │  0x00007fe158f641ed:   add    0x14(%rbp),%r13d
          │  0x00007fe158f641f1:   mov    $0x7,%r10d
          │  0x00007fe158f641f7:   and    0x0(%rbp),%r10
   0.00%  │  0x00007fe158f641fb:   nopl   0x0(%rax,%rax,1)
   1.27%  │  0x00007fe158f64200:   cmp    $0x5,%r10
          │  0x00007fe158f64204:   jne    0x00007fe158f64c6b           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@87 (line 191)
   0.00%  │  0x00007fe158f6420a:   cmp    $0x20,%r13d
          │  0x00007fe158f6420e:   jle    0x00007fe158f64fc4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@94 (line 192)
          │  0x00007fe158f64214:   mov    0x0(%rbp),%rax
          │  0x00007fe158f64218:   mov    %rax,%r10
   1.35%  │  0x00007fe158f6421b:   and    $0x7,%r10
   0.00%  │  0x00007fe158f6421f:   nop
          │  0x00007fe158f64220:   cmp    $0x5,%r10
          │  0x00007fe158f64224:   jne    0x00007fe158f64d38
   0.00%  │  0x00007fe158f6422a:   mov    0x8(%rbp),%r11d
   2.30%  │  0x00007fe158f6422e:   movabs $0x800000000,%r10
          │  0x00007fe158f64238:   add    %r11,%r10
          │  0x00007fe158f6423b:   mov    0xb8(%r10),%r10
   0.44%  │  0x00007fe158f64242:   mov    %r10,%r11
   0.80%  │  0x00007fe158f64245:   or     %r15,%r11
   0.39%  │  0x00007fe158f64248:   mov    %r11,%r8
          │  0x00007fe158f6424b:   xor    %rax,%r8
   0.84%  │  0x00007fe158f6424e:   test   $0xffffffffffffff87,%r8
          │  0x00007fe158f64255:   jne    0x00007fe158f64f14           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@99 (line 193)
   1.36%  │  0x00007fe158f6425b:   add    0x14(%rbp),%r13d
          │  0x00007fe158f6425f:   mov    $0x7,%r10d
          │  0x00007fe158f64265:   and    0x0(%rbp),%r10
          │  0x00007fe158f64269:   cmp    $0x5,%r10
          │  0x00007fe158f6426d:   jne    0x00007fe158f64e0b           ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@-1 (line 175)
   1.22%  │  0x00007fe158f64273:   mov    %r13d,%eax
          │  0x00007fe158f64276:   add    $0x30,%rsp
          │  0x00007fe158f6427a:   pop    %rbp
          │  0x00007fe158f6427b:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │  0x00007fe158f64282:   ja     0x00007fe158f64fd4
   1.45%  │  0x00007fe158f64288:   ret    
          │  0x00007fe158f64289:   lock cmpxchg %r10,(%rsi)
          ↘  0x00007fe158f6428e:   lea    0x20(%rsp),%rbx
             0x00007fe158f64293:   mov    (%rsi),%rax
             0x00007fe158f64296:   test   $0x2,%rax
             0x00007fe158f6429d:   jne    0x00007fe158f642c3
             0x00007fe158f6429f:   or     $0x1,%rax
             0x00007fe158f642a3:   mov    %rax,(%rbx)
             0x00007fe158f642a6:   lock cmpxchg %rbx,(%rsi)
             0x00007fe158f642ab:   je     0x00007fe158f642ef
             0x00007fe158f642b1:   sub    %rsp,%rax
....................................................................................................
  82.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 5, compile id 495 

              0x00007fe158f676a6:   mov    0x38(%rsp),%r10
              0x00007fe158f676ab:   movzbl 0x94(%r10),%r11d             ; implicit exception: dispatches to 0x00007fe158f6775c
                                                                        ;*getfield isDone {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@30 (line 234)
              0x00007fe158f676b3:   mov    $0x1,%ebp
              0x00007fe158f676b8:   test   %r11d,%r11d
          ╭   0x00007fe158f676bb:   jne    0x00007fe158f676ec           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          │   0x00007fe158f676bd:   data16 xchg %ax,%ax                 ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 235)
   1.30%  │↗  0x00007fe158f676c0:   mov    0x40(%rsp),%rsi
          ││  0x00007fe158f676c5:   xchg   %ax,%ax
          ││  0x00007fe158f676c7:   call   0x00007fe1589fc080           ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*invokevirtual conditional_nested_method_calls {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@17 (line 232)
          ││                                                            ;   {optimized virtual_call}
   0.42%  ││  0x00007fe158f676cc:   mov    0x38(%rsp),%r10
   8.39%  ││  0x00007fe158f676d1:   movzbl 0x94(%r10),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
   5.48%  ││  0x00007fe158f676d9:   mov    0x348(%r15),%r11
          ││  0x00007fe158f676e0:   add    $0x1,%rbp                    ; ImmutableOopMap {[48]=Oop [56]=Oop [64]=Oop [0]=Oop }
          ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@33 (line 234)
          ││  0x00007fe158f676e4:   test   %eax,(%r11)                  ;   {poll}
          ││  0x00007fe158f676e7:   test   %r10d,%r10d
          │╰  0x00007fe158f676ea:   je     0x00007fe158f676c0           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub@36 (line 235)
          ↘   0x00007fe158f676ec:   movabs $0x7fe16d1f9d10,%r10
              0x00007fe158f676f6:   call   *%r10                        ;*invokestatic nanoTime {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  15.59%  <total for region 2>

....[Hottest Regions]...............................................................................
  82.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 464 
  15.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 5, compile id 495 
   0.16%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.78%  <...other 288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 464 
  15.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 5, compile id 495 
   1.08%              kernel  [unknown] 
   0.07%                      <unknown> 
   0.04%        libc-2.31.so  [unknown] 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%  libpthread-2.31.so  __pthread_mutex_lock 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.14%  <...other 60 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.53%         c2, level 4
   1.08%              kernel
   0.15%           libjvm.so
   0.09%        libc-2.31.so
   0.07%                    
   0.04%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%      perf-18990.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1361.406 ns/op
# Warmup Iteration   2: 1361.233 ns/op
# Warmup Iteration   3: 1349.397 ns/op
# Warmup Iteration   4: 1355.243 ns/op
# Warmup Iteration   5: 1356.223 ns/op
Iteration   1: 1354.802 ns/op
Iteration   2: 1353.171 ns/op
Iteration   3: 1350.029 ns/op
Iteration   4: 1353.609 ns/op
Iteration   5: 1353.922 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  1353.107 ±(99.9%) 7.013 ns/op [Average]
  (min, avg, max) = (1350.029, 1353.107, 1354.802), stdev = 1.821
  CI (99.9%): [1346.094, 1360.120] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 115628 total address lines.
Perf output processed (skipped 55.492 seconds):
 Column 1: cycles (50801 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
interpreter, monitorenter  194 monitorenter  

                --------------------------------------------------------------------------------
                ----------------------------------------------------------------------
                monitorenter  194 monitorenter  [0x00007f9d589c6840, 0x00007f9d589c6a40]  512 bytes
                --------------------------------------------------------------------------------
   2.74%          0x00007f9d589c6840:   pop    %rax
   2.29%          0x00007f9d589c6841:   cmp    (%rax),%rax
   1.10%          0x00007f9d589c6844:   xor    %esi,%esi
                  0x00007f9d589c6846:   mov    -0x48(%rbp),%rcx
   0.00%          0x00007f9d589c684a:   lea    -0x48(%rbp),%rdx
          ╭       0x00007f9d589c684e:   jmp    0x00007f9d589c6866
   0.19%  │ ↗     0x00007f9d589c6850:   cmpq   $0x0,0x8(%rcx)
   0.58%  │ │     0x00007f9d589c6858:   cmove  %rcx,%rsi
   0.20%  │ │     0x00007f9d589c685c:   cmp    0x8(%rcx),%rax
          │╭│     0x00007f9d589c6860:   je     0x00007f9d589c686b
          │││     0x00007f9d589c6862:   add    $0x10,%rcx
   0.23%  ↘││     0x00007f9d589c6866:   cmp    %rdx,%rcx
           │╰     0x00007f9d589c6869:   jne    0x00007f9d589c6850
   0.12%   ↘      0x00007f9d589c686b:   test   %rsi,%rsi
             ╭    0x00007f9d589c686e:   jne    0x00007f9d589c689c
   0.19%     │    0x00007f9d589c6874:   mov    -0x48(%rbp),%rsi
             │    0x00007f9d589c6878:   sub    $0x10,%rsp
   0.03%     │    0x00007f9d589c687c:   sub    $0x10,%rsi
   0.19%     │    0x00007f9d589c6880:   mov    %rsp,%rcx
             │    0x00007f9d589c6883:   mov    %rsi,-0x48(%rbp)
   0.08%     │╭   0x00007f9d589c6887:   jmp    0x00007f9d589c6897
             ││↗  0x00007f9d589c688c:   mov    0x10(%rcx),%rdx
             │││  0x00007f9d589c6890:   mov    %rdx,(%rcx)
             │││  0x00007f9d589c6893:   add    $0x8,%rcx
             │↘│  0x00007f9d589c6897:   cmp    %rsi,%rcx
             │ ╰  0x00007f9d589c689a:   jne    0x00007f9d589c688c
   0.16%     ↘    0x00007f9d589c689c:   inc    %r13
                  0x00007f9d589c689f:   mov    %rax,0x8(%rsi)
   0.72%          0x00007f9d589c68a3:   mov    0x8(%rsi),%rcx
   0.90%          0x00007f9d589c68a7:   mov    (%rcx),%rax
   1.38%          0x00007f9d589c68aa:   mov    %rax,%rbx
                  0x00007f9d589c68ad:   and    $0x7,%rbx
   0.21%          0x00007f9d589c68b1:   cmp    $0x5,%rbx
                  0x00007f9d589c68b5:   jne    0x00007f9d589c695b
   0.21%          0x00007f9d589c68bb:   mov    0x8(%rcx),%ebx
                  0x00007f9d589c68be:   movabs $0x800000000,%r10
                  0x00007f9d589c68c8:   add    %r10,%rbx
                  0x00007f9d589c68cb:   mov    0xb8(%rbx),%rbx
   0.99%          0x00007f9d589c68d2:   or     %r15,%rbx
   0.19%          0x00007f9d589c68d5:   xor    %rax,%rbx
   0.22%          0x00007f9d589c68d8:   and    $0xffffffffffffff87,%rbx
                  0x00007f9d589c68dc:   je     0x00007f9d589c6a0e
                  0x00007f9d589c68e2:   test   $0x7,%rbx
                  0x00007f9d589c68e9:   jne    0x00007f9d589c693f
                  0x00007f9d589c68ef:   test   $0x300,%rbx
                  0x00007f9d589c68f6:   jne    0x00007f9d589c6915
                  0x00007f9d589c68f8:   and    $0x37f,%rax
                  0x00007f9d589c68ff:   mov    %rax,%rbx
                  0x00007f9d589c6902:   or     %r15,%rbx
                  0x00007f9d589c6905:   lock cmpxchg %rbx,(%rcx)
                  0x00007f9d589c690a:   jne    0x00007f9d589c6984
....................................................................................................
  12.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
interpreter, fast_iaccess_0  221 fast_iaccess_0  

               0x00007f9d589c8300:   sub    $0x8,%rsp
               0x00007f9d589c8304:   vmovss %xmm0,(%rsp)
          ╭    0x00007f9d589c8309:   jmp    0x00007f9d589c832a
          │    0x00007f9d589c830b:   sub    $0x10,%rsp
          │    0x00007f9d589c830f:   vmovsd %xmm0,(%rsp)
          │╭   0x00007f9d589c8314:   jmp    0x00007f9d589c832a
          ││   0x00007f9d589c8316:   sub    $0x10,%rsp
          ││   0x00007f9d589c831a:   mov    %rax,(%rsp)
          ││   0x00007f9d589c831e:   movq   $0x0,0x8(%rsp)
          ││╭  0x00007f9d589c8327:   jmp    0x00007f9d589c832a
   4.32%  │││  0x00007f9d589c8329:   push   %rax
   2.51%  ↘↘↘  0x00007f9d589c832a:   mov    (%r14),%rax
   0.26%       0x00007f9d589c832d:   movzwl 0x2(%r13),%edx
   0.03%       0x00007f9d589c8332:   mov    -0x30(%rbp),%rcx
               0x00007f9d589c8336:   shl    $0x2,%edx
   0.24%       0x00007f9d589c8339:   mov    0x38(%rcx,%rdx,8),%rbx
   1.28%       0x00007f9d589c833e:   inc    %r13
               0x00007f9d589c8341:   cmp    (%rax),%rax
               0x00007f9d589c8344:   mov    (%rax,%rbx,1),%eax
   1.23%       0x00007f9d589c8347:   dec    %r13
               0x00007f9d589c834a:   movzbl 0x4(%r13),%ebx
               0x00007f9d589c834f:   add    $0x4,%r13
               0x00007f9d589c8353:   movabs $0x7f9d6e866060,%r10
   0.28%       0x00007f9d589c835d:   jmp    *(%r10,%rbx,8)
               0x00007f9d589c8361:   nopl   0x0(%rax)
               0x00007f9d589c8368:   add    %al,(%rax)
               0x00007f9d589c836a:   add    %al,(%rax)
               0x00007f9d589c836c:   add    %al,(%rax)
               0x00007f9d589c836e:   add    %al,(%rax)
               0x00007f9d589c8370:   add    %al,(%rax)
               0x00007f9d589c8372:   add    %al,(%rax)
               0x00007f9d589c8374:   add    %al,(%rax)
               0x00007f9d589c8376:   add    %al,(%rax)
               0x00007f9d589c8378:   add    %al,(%rax)
....................................................................................................
  10.15%  <total for region 2>

....[Hottest Regions]...............................................................................
  12.94%         interpreter  monitorenter  194 monitorenter  
  10.15%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   9.18%         interpreter  monitorexit  195 monitorexit  
   9.00%         interpreter  goto  167 goto  
   7.74%         interpreter  dup  89 dup  
   7.01%         interpreter  istore_1  60 istore_1  
   6.60%         interpreter  fast_aload_0  220 fast_aload_0  
   5.98%         interpreter  iadd  96 iadd  
   5.90%         interpreter  aload  25 aload  
   5.38%         interpreter  astore  58 astore  
   3.45%         interpreter  iload_1  27 iload_1  
   2.25%         interpreter  monitorexit  195 monitorexit  
   1.13%         interpreter  method entry point (kind = zerolocals)  
   0.92%         interpreter  ishl  120 ishl  
   0.86%         interpreter  aload_3  45 aload_3  
   0.81%         interpreter  aload_2  44 aload_2  
   0.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 490 
   0.77%         interpreter  astore_2  77 astore_2  
   0.74%              kernel  [unknown] 
   0.72%         interpreter  ireturn  172 ireturn  
   7.66%  <...other 438 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  13.42%         interpreter  monitorenter  194 monitorenter  
  11.89%         interpreter  monitorexit  195 monitorexit  
  10.15%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   9.70%         interpreter  goto  167 goto  
   7.74%         interpreter  dup  89 dup  
   7.01%         interpreter  istore_1  60 istore_1  
   6.60%         interpreter  fast_aload_0  220 fast_aload_0  
   5.98%         interpreter  iadd  96 iadd  
   5.90%         interpreter  aload  25 aload  
   5.38%         interpreter  astore  58 astore  
   3.45%         interpreter  iload_1  27 iload_1  
   2.23%         interpreter  method entry point (kind = zerolocals)  
   1.94%              kernel  [unknown] 
   1.89%         interpreter  ireturn  172 ireturn  
   0.92%         interpreter  ishl  120 ishl  
   0.86%         interpreter  aload_3  45 aload_3  
   0.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 490 
   0.81%         interpreter  aload_2  44 aload_2  
   0.77%         interpreter  astore_2  77 astore_2  
   0.69%         interpreter  astore_3  78 astore_3  
   1.84%  <...other 104 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.07%         interpreter
   1.94%              kernel
   0.83%         c2, level 4
   0.56%           libjvm.so
   0.40%      perf-19050.map
   0.09%                    
   0.06%        libc-2.31.so
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:+UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 43.396 ns/op
# Warmup Iteration   2: 42.361 ns/op
# Warmup Iteration   3: 42.087 ns/op
# Warmup Iteration   4: 42.922 ns/op
# Warmup Iteration   5: 43.119 ns/op
Iteration   1: 42.839 ns/op
Iteration   2: 42.509 ns/op
Iteration   3: 42.527 ns/op
Iteration   4: 42.530 ns/op
Iteration   5: 42.546 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  42.590 ±(99.9%) 0.538 ns/op [Average]
  (min, avg, max) = (42.509, 42.590, 42.839), stdev = 0.140
  CI (99.9%): [42.052, 43.129] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 115483 total address lines.
Perf output processed (skipped 55.473 seconds):
 Column 1: cycles (51206 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 454 

                  # parm1:    rcx       = int
                  #           [sp+0x50]  (sp of caller)
                  0x00007fd7f4f632a0:   mov    0x8(%rsi),%r10d
                  0x00007fd7f4f632a4:   movabs $0x800000000,%r11
                  0x00007fd7f4f632ae:   add    %r11,%r10
                  0x00007fd7f4f632b1:   cmp    %r10,%rax
                  0x00007fd7f4f632b4:   jne    0x00007fd7f49fbd80           ;   {runtime_call ic_miss_stub}
                  0x00007fd7f4f632ba:   xchg   %ax,%ax
                  0x00007fd7f4f632bc:   nopl   0x0(%rax)
                [Verified Entry Point]
   2.33%     ↗    0x00007fd7f4f632c0:   mov    %eax,-0x14000(%rsp)
   1.33%     │    0x00007fd7f4f632c7:   push   %rbp
   0.26%     │    0x00007fd7f4f632c8:   sub    $0x40,%rsp
   2.28%     │    0x00007fd7f4f632cc:   mov    %ecx,%ebp
   0.82%     │    0x00007fd7f4f632ce:   mov    %edx,(%rsp)
   0.27%     │    0x00007fd7f4f632d1:   mov    %rsi,0x8(%rsp)
   2.47%     │    0x00007fd7f4f632d6:   mov    (%rsi),%rax
   0.26%     │    0x00007fd7f4f632d9:   mov    %rax,%r10
   0.50%     │    0x00007fd7f4f632dc:   and    $0x7,%r10
   0.62%     │    0x00007fd7f4f632e0:   cmp    $0x5,%r10
          ╭  │    0x00007fd7f4f632e4:   jne    0x00007fd7f4f633a8
   2.48%  │  │    0x00007fd7f4f632ea:   mov    0x8(%rsi),%r10d
   0.21%  │  │    0x00007fd7f4f632ee:   movabs $0x800000000,%r11
   0.52%  │  │    0x00007fd7f4f632f8:   add    %r10,%r11
   0.29%  │  │    0x00007fd7f4f632fb:   mov    0xb8(%r11),%r10
   3.97%  │  │    0x00007fd7f4f63302:   mov    %r10,%r11
   0.21%  │  │    0x00007fd7f4f63305:   or     %r15,%r11
   1.51%  │  │    0x00007fd7f4f63308:   mov    %r11,%r8
   1.70%  │  │    0x00007fd7f4f6330b:   xor    %rax,%r8
   3.24%  │  │    0x00007fd7f4f6330e:   test   $0xffffffffffffff87,%r8
          │  │    0x00007fd7f4f63315:   jne    0x00007fd7f4f63425           ;*synchronization entry
          │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
   2.97%  │  │    0x00007fd7f4f6331b:   mov    %ebp,%ecx
   0.11%  │  │    0x00007fd7f4f6331d:   data16 xchg %ax,%ax
   0.04%  │  │    0x00007fd7f4f63320:   test   %ecx,%ecx
          │╭ │    0x00007fd7f4f63322:   je     0x00007fd7f4f63381           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
   0.22%  ││ │    0x00007fd7f4f63328:   mov    0x8(%rsp),%r10
   2.28%  ││ │    0x00007fd7f4f6332d:   mov    0x14(%r10),%ebp              ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
   0.22%  ││ │    0x00007fd7f4f63331:   cmp    $0x1,%ecx
          ││╭│    0x00007fd7f4f63334:   je     0x00007fd7f4f6339e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@1 (line 230)
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          ││││    0x00007fd7f4f6333a:   add    $0xfffffffe,%ecx             ;*isub {reexecute=0 rethrow=0 return_oop=0}
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@14 (line 233)
          ││││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
   0.29%  ││││    0x00007fd7f4f6333d:   mov    %r10,%rsi
   2.15%  ││││    0x00007fd7f4f63340:   mov    (%rsp),%edx
   0.19%  ││││    0x00007fd7f4f63343:   mov    %rsi,(%rsp)
          │││╰    0x00007fd7f4f63347:   call   0x00007fd7f4f632c0           ; ImmutableOopMap {[0]=Oop [8]=Oop }
          │││                                                               ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │││                                                               ;   {optimized virtual_call}
   1.70%  │││     0x00007fd7f4f6334c:   mov    %eax,%ebx
   1.86%  │││     0x00007fd7f4f6334e:   add    %ebp,%ebx
   1.59%  │││  ↗  0x00007fd7f4f63350:   mov    $0x7,%r10d
          │││  │  0x00007fd7f4f63356:   mov    0x8(%rsp),%r11
   8.28%  │││  │  0x00007fd7f4f6335b:   and    (%r11),%r10
  10.18%  │││  │  0x00007fd7f4f6335e:   xchg   %ax,%ax
          │││  │  0x00007fd7f4f63360:   cmp    $0x5,%r10
          │││  │  0x00007fd7f4f63364:   jne    0x00007fd7f4f63467           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 233)
   2.54%  │││  │  0x00007fd7f4f6336a:   add    %ebp,%ebx
   0.14%  │││ ↗│  0x00007fd7f4f6336c:   mov    %ebx,%eax
   0.06%  │││ ││  0x00007fd7f4f6336e:   add    $0x40,%rsp
   0.21%  │││ ││  0x00007fd7f4f63372:   pop    %rbp
   3.12%  │││ ││  0x00007fd7f4f63373:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │││ ││  0x00007fd7f4f6337a:   ja     0x00007fd7f4f636c5
   0.17%  │││ ││  0x00007fd7f4f63380:   ret    
   0.20%  │↘│ ││  0x00007fd7f4f63381:   mov    $0x7,%r10d
   0.66%  │ │ ││  0x00007fd7f4f63387:   mov    0x8(%rsp),%r11
   0.00%  │ │ ││  0x00007fd7f4f6338c:   and    (%r11),%r10
   0.04%  │ │ ││  0x00007fd7f4f6338f:   cmp    $0x5,%r10
          │ │ ││  0x00007fd7f4f63393:   jne    0x00007fd7f4f63525           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@5 (line 231)
   0.22%  │ │ ││  0x00007fd7f4f63399:   mov    (%rsp),%ebx
   0.61%  │ │ ╰│  0x00007fd7f4f6339c:   jmp    0x00007fd7f4f6336c
          │ ↘  │  0x00007fd7f4f6339e:   mov    (%rsp),%ebx
          │    ╰  0x00007fd7f4f633a1:   jmp    0x00007fd7f4f63350
          │       0x00007fd7f4f633a3:   lock cmpxchg %r10,(%rsi)
          ↘       0x00007fd7f4f633a8:   lea    0x20(%rsp),%rbx
                  0x00007fd7f4f633ad:   mov    (%rsi),%rax
                  0x00007fd7f4f633b0:   test   $0x2,%rax
                  0x00007fd7f4f633b7:   jne    0x00007fd7f4f633dd
                  0x00007fd7f4f633b9:   or     $0x1,%rax
                  0x00007fd7f4f633bd:   mov    %rax,(%rbx)
                  0x00007fd7f4f633c0:   lock cmpxchg %rbx,(%rsi)
....................................................................................................
  65.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 455 

             # {method} {0x00007fd7e507e5e8} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x50]  (sp of caller)
             0x00007fd7f4f63aa0:   mov    0x8(%rsi),%r10d
             0x00007fd7f4f63aa4:   movabs $0x800000000,%r11
             0x00007fd7f4f63aae:   add    %r11,%r10
             0x00007fd7f4f63ab1:   cmp    %r10,%rax
             0x00007fd7f4f63ab4:   jne    0x00007fd7f49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fd7f4f63aba:   xchg   %ax,%ax
             0x00007fd7f4f63abc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.82%     0x00007fd7f4f63ac0:   mov    %eax,-0x14000(%rsp)
   1.29%     0x00007fd7f4f63ac7:   push   %rbp
             0x00007fd7f4f63ac8:   sub    $0x40,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@-1 (line 116)
   0.27%     0x00007fd7f4f63acc:   mov    %rsi,%rbp
   0.54%     0x00007fd7f4f63acf:   mov    0x10(%rsi),%r11d
             0x00007fd7f4f63ad3:   mov    (%rsi),%rax
   0.30%     0x00007fd7f4f63ad6:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 116)
             0x00007fd7f4f63ad9:   mov    %rax,%r10
   0.57%     0x00007fd7f4f63adc:   and    $0x7,%r10
             0x00007fd7f4f63ae0:   cmp    $0x5,%r10
          ╭  0x00007fd7f4f63ae4:   jne    0x00007fd7f4f63b77
   0.29%  │  0x00007fd7f4f63aea:   mov    0x8(%rsi),%r10d
          │  0x00007fd7f4f63aee:   movabs $0x800000000,%r8
   0.62%  │  0x00007fd7f4f63af8:   add    %r10,%r8
          │  0x00007fd7f4f63afb:   mov    0xb8(%r8),%r10
   2.50%  │  0x00007fd7f4f63b02:   mov    %r10,%r8
          │  0x00007fd7f4f63b05:   or     %r15,%r8
   0.88%  │  0x00007fd7f4f63b08:   mov    %r8,%r9
   0.54%  │  0x00007fd7f4f63b0b:   xor    %rax,%r9
   0.84%  │  0x00007fd7f4f63b0e:   test   $0xffffffffffffff87,%r9
          │  0x00007fd7f4f63b15:   jne    0x00007fd7f4f63bfa
   0.90%  │  0x00007fd7f4f63b1b:   mov    %r11d,%edx
          │  0x00007fd7f4f63b1e:   mov    %rbp,(%rsp)                  ;*synchronization entry
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          │  0x00007fd7f4f63b22:   mov    0x14(%rbp),%r11d             ;*getfield incrementValue {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@7 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          │  0x00007fd7f4f63b26:   mov    %r11d,0x10(%rsp)
   0.88%  │  0x00007fd7f4f63b2b:   mov    $0x7,%ebp
          │  0x00007fd7f4f63b30:   mov    $0x6,%ecx
          │  0x00007fd7f4f63b35:   mov    (%rsp),%rsi
          │  0x00007fd7f4f63b39:   xchg   %ax,%ax
   0.86%  │  0x00007fd7f4f63b3b:   call   0x00007fd7f4f632c0           ; ImmutableOopMap {[0]=Oop }
          │                                                            ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          │                                                            ;   {optimized virtual_call}
          │  0x00007fd7f4f63b40:   mov    %eax,%r13d
   0.89%  │  0x00007fd7f4f63b43:   mov    (%rsp),%r11
   2.51%  │  0x00007fd7f4f63b47:   and    (%r11),%rbp
   4.30%  │  0x00007fd7f4f63b4a:   cmp    $0x5,%rbp
          │  0x00007fd7f4f63b4e:   jne    0x00007fd7f4f63c2f           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@19 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   0.92%  │  0x00007fd7f4f63b54:   mov    %r13d,%eax
          │  0x00007fd7f4f63b57:   add    0x10(%rsp),%eax
          │  0x00007fd7f4f63b5b:   add    0x10(%rsp),%eax              ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
          │  0x00007fd7f4f63b5f:   add    $0x40,%rsp
   0.92%  │  0x00007fd7f4f63b63:   pop    %rbp
          │  0x00007fd7f4f63b64:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │  0x00007fd7f4f63b6b:   ja     0x00007fd7f4f63dd2
          │  0x00007fd7f4f63b71:   ret    
          │  0x00007fd7f4f63b72:   lock cmpxchg %r10,(%rsi)
          ↘  0x00007fd7f4f63b77:   lea    0x20(%rsp),%rbx
             0x00007fd7f4f63b7c:   mov    (%rsi),%rax
             0x00007fd7f4f63b7f:   test   $0x2,%rax
             0x00007fd7f4f63b86:   jne    0x00007fd7f4f63bac
             0x00007fd7f4f63b88:   or     $0x1,%rax
             0x00007fd7f4f63b8c:   mov    %rax,(%rbx)
....................................................................................................
  21.65%  <total for region 2>

....[Hottest Regions]...............................................................................
  65.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 454 
  21.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 455 
   9.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 494 
   1.73%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.79%  <...other 295 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  65.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 454 
  21.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 455 
   9.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 494 
   2.72%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  stringStream::write 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.01%           libjvm.so  outputStream::update_position 
   0.00%        libc-2.31.so  re_search_stub 
   0.00%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.11%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.97%         c2, level 4
   2.72%              kernel
   0.15%           libjvm.so
   0.06%        libc-2.31.so
   0.04%                    
   0.02%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:47

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

Benchmark                                                     Mode  Cnt     Score   Error  Units
LockCoarseningBenchmark.baseline                              avgt    5     9.552 ± 0.263  ns/op
LockCoarseningBenchmark.baseline:·asm                         avgt            NaN            ---
LockCoarseningBenchmark.chain_method_calls                    avgt    5     9.586 ± 0.096  ns/op
LockCoarseningBenchmark.chain_method_calls:·asm               avgt            NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls        avgt    5    27.064 ± 0.711  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:·asm   avgt            NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls       avgt    5    28.521 ± 1.108  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:·asm  avgt            NaN            ---
LockCoarseningBenchmark.nested_synchronized                   avgt    5  1353.107 ± 7.013  ns/op
LockCoarseningBenchmark.nested_synchronized:·asm              avgt            NaN            ---
LockCoarseningBenchmark.recursive_method_calls                avgt    5    42.590 ± 0.538  ns/op
LockCoarseningBenchmark.recursive_method_calls:·asm           avgt            NaN            ---
