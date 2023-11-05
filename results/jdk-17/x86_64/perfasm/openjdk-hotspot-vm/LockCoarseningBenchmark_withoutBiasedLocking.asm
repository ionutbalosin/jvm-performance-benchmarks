# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
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
# Warmup Iteration   1: 25.264 ns/op
# Warmup Iteration   2: 25.139 ns/op
# Warmup Iteration   3: 25.202 ns/op
# Warmup Iteration   4: 25.138 ns/op
# Warmup Iteration   5: 25.138 ns/op
Iteration   1: 25.137 ns/op
Iteration   2: 25.138 ns/op
Iteration   3: 25.139 ns/op
Iteration   4: 25.140 ns/op
Iteration   5: 25.138 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  25.139 ±(99.9%) 0.003 ns/op [Average]
  (min, avg, max) = (25.137, 25.139, 25.140), stdev = 0.001
  CI (99.9%): [25.135, 25.142] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:·asm":
PrintAssembly processed: 117066 total address lines.
Perf output processed (skipped 55.656 seconds):
 Column 1: cycles (50458 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 468 

             # {method} {0x00007fb2c48743a8} &apos;baseline&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007fb2d4f639a0:   mov    0x8(%rsi),%r10d
             0x00007fb2d4f639a4:   movabs $0x800000000,%r11
             0x00007fb2d4f639ae:   add    %r11,%r10
             0x00007fb2d4f639b1:   cmp    %r10,%rax
             0x00007fb2d4f639b4:   jne    0x00007fb2d49fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fb2d4f639ba:   xchg   %ax,%ax
             0x00007fb2d4f639bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.42%     0x00007fb2d4f639c0:   mov    %eax,-0x14000(%rsp)
             0x00007fb2d4f639c7:   push   %rbp
             0x00007fb2d4f639c8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@-1 (line 209)
   1.50%     0x00007fb2d4f639cc:   mov    %rsi,(%rsp)
             0x00007fb2d4f639d0:   mov    0x10(%rsi),%ebp
             0x00007fb2d4f639d3:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 209)
   1.54%     0x00007fb2d4f639d5:   lea    0x20(%rsp),%rbx
             0x00007fb2d4f639da:   mov    (%rsi),%rax
   6.00%     0x00007fb2d4f639dd:   test   $0x2,%rax
          ╭  0x00007fb2d4f639e4:   jne    0x00007fb2d4f63a0a
   1.55%  │  0x00007fb2d4f639e6:   or     $0x1,%rax
          │  0x00007fb2d4f639ea:   mov    %rax,(%rbx)
   2.92%  │  0x00007fb2d4f639ed:   lock cmpxchg %rbx,(%rsi)
  27.42%  │  0x00007fb2d4f639f2:   je     0x00007fb2d4f63a36
          │  0x00007fb2d4f639f8:   sub    %rsp,%rax
          │  0x00007fb2d4f639fb:   and    $0xfffffffffffff007,%rax
          │  0x00007fb2d4f63a02:   mov    %rax,(%rbx)
          │  0x00007fb2d4f63a05:   jmp    0x00007fb2d4f63a36
          ↘  0x00007fb2d4f63a0a:   mov    %rax,%r11
             0x00007fb2d4f63a0d:   xor    %rax,%rax
             0x00007fb2d4f63a10:   lock cmpxchg %r15,0x3e(%r11)
             0x00007fb2d4f63a16:   movq   $0x3,(%rbx)
             0x00007fb2d4f63a1d:   je     0x00007fb2d4f63a36
             0x00007fb2d4f63a23:   cmp    %rax,%r15
....................................................................................................
  42.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 468 

                 0x00007fb2d4f63aa6:   movq   $0x0,0x3e(%r10)
                 0x00007fb2d4f63aae:   lock addl $0x0,(%rsp)
                 0x00007fb2d4f63ab3:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007fb2d4f63abe:   jne    0x00007fb2d4f63acd
          │      0x00007fb2d4f63ac0:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007fb2d4f63ac6:   jne    0x00007fb2d4f63acd
          ││     0x00007fb2d4f63ac8:   or     $0x1,%eax
          ││╭    0x00007fb2d4f63acb:   jmp    0x00007fb2d4f63add
          ↘↘│    0x00007fb2d4f63acd:   test   $0x0,%eax
            │╭   0x00007fb2d4f63ad3:   jmp    0x00007fb2d4f63add
   1.50%    ││   0x00007fb2d4f63ad5:   mov    (%rax),%r10
            ││   0x00007fb2d4f63ad8:   lock cmpxchg %r10,(%r11)
  25.77%    ↘↘╭  0x00007fb2d4f63add:   jne    0x00007fb2d4f63b15           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
              │  0x00007fb2d4f63adf:   add    %ebx,%ebp
   1.45%      │  0x00007fb2d4f63ae1:   add    %ebx,%ebp
              │  0x00007fb2d4f63ae3:   add    %ebx,%ebp
              │  0x00007fb2d4f63ae5:   add    %ebx,%ebp
              │  0x00007fb2d4f63ae7:   add    %ebx,%ebp
   1.49%      │  0x00007fb2d4f63ae9:   add    %ebx,%ebp
              │  0x00007fb2d4f63aeb:   add    %ebx,%ebp
              │  0x00007fb2d4f63aed:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 219)
              │  0x00007fb2d4f63aef:   mov    %ebp,%eax
   1.50%      │  0x00007fb2d4f63af1:   add    $0x30,%rsp
              │  0x00007fb2d4f63af5:   pop    %rbp
              │  0x00007fb2d4f63af6:   cmp    0x340(%r15),%rsp             ;   {poll_return}
              │  0x00007fb2d4f63afd:   ja     0x00007fb2d4f63b2f
   1.50%      │  0x00007fb2d4f63b03:   ret    
              │  0x00007fb2d4f63b04:   lea    0x20(%rsp),%rdx
              │  0x00007fb2d4f63b09:   xchg   %ax,%ax
              │  0x00007fb2d4f63b0b:   call   0x00007fb2d4aaca00           ; ImmutableOopMap {[0]=Oop }
              │                                                            ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
              │                                                            ;   {runtime_call _complete_monitor_locking_Java}
              │  0x00007fb2d4f63b10:   jmp    0x00007fb2d4f63a3c
              ↘  0x00007fb2d4f63b15:   mov    %r11,%rdi
                 0x00007fb2d4f63b18:   lea    0x20(%rsp),%rsi              ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
....................................................................................................
  33.21%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 468 

               0x00007fb2d4f63a0d:   xor    %rax,%rax
               0x00007fb2d4f63a10:   lock cmpxchg %r15,0x3e(%r11)
               0x00007fb2d4f63a16:   movq   $0x3,(%rbx)
          ╭    0x00007fb2d4f63a1d:   je     0x00007fb2d4f63a36
          │    0x00007fb2d4f63a23:   cmp    %rax,%r15
          │╭   0x00007fb2d4f63a26:   jne    0x00007fb2d4f63a36
          ││   0x00007fb2d4f63a2c:   incq   0x86(%r11)
          ││   0x00007fb2d4f63a33:   xor    %rax,%rax
          ↘↘   0x00007fb2d4f63a36:   jne    0x00007fb2d4f63b04           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 211)
   1.56%       0x00007fb2d4f63a3c:   mov    (%rsp),%r10
               0x00007fb2d4f63a40:   mov    0x14(%r10),%ebx              ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 220)
               0x00007fb2d4f63a44:   lea    0x20(%rsp),%rax
               0x00007fb2d4f63a49:   mov    (%rsp),%r11
   1.53%       0x00007fb2d4f63a4d:   cmpq   $0x0,(%rax)
               0x00007fb2d4f63a54:   je     0x00007fb2d4f63add
               0x00007fb2d4f63a5a:   mov    (%r11),%r10
  17.01%       0x00007fb2d4f63a5d:   test   $0x2,%r10
               0x00007fb2d4f63a64:   je     0x00007fb2d4f63ad5
               0x00007fb2d4f63a66:   cmpq   $0x0,0x86(%r10)
            ╭  0x00007fb2d4f63a71:   je     0x00007fb2d4f63a7c
            │  0x00007fb2d4f63a73:   decq   0x86(%r10)
            │  0x00007fb2d4f63a7a:   jmp    0x00007fb2d4f63acd
            ↘  0x00007fb2d4f63a7c:   mov    0x96(%r10),%rax
               0x00007fb2d4f63a83:   or     0x8e(%r10),%rax
               0x00007fb2d4f63a8a:   jne    0x00007fb2d4f63a96
               0x00007fb2d4f63a8c:   movq   $0x0,0x3e(%r10)
               0x00007fb2d4f63a94:   jmp    0x00007fb2d4f63add
....................................................................................................
  20.10%  <total for region 3>

....[Hottest Regions]...............................................................................
  42.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 468 
  33.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 468 
  20.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 468 
   2.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 504 
   0.30%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.62%  <...other 224 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 468 
   2.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 504 
   1.17%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  [unknown] 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%           libjvm.so  os::javaTimeNanos 
   0.00%         interpreter  invokeinterface  185 invokeinterface  
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.00%           libjvm.so  fileStream::write 
   0.11%  <...other 48 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.56%         c2, level 4
   1.17%              kernel
   0.11%           libjvm.so
   0.06%        libc-2.31.so
   0.03%                    
   0.02%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%      perf-19268.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
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
# Warmup Iteration   1: 25.385 ns/op
# Warmup Iteration   2: 25.139 ns/op
# Warmup Iteration   3: 25.202 ns/op
# Warmup Iteration   4: 25.137 ns/op
# Warmup Iteration   5: 25.138 ns/op
Iteration   1: 25.139 ns/op
Iteration   2: 25.139 ns/op
Iteration   3: 25.141 ns/op
Iteration   4: 25.140 ns/op
Iteration   5: 25.140 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  25.140 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (25.139, 25.140, 25.141), stdev = 0.001
  CI (99.9%): [25.138, 25.142] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:·asm":
PrintAssembly processed: 118030 total address lines.
Perf output processed (skipped 55.609 seconds):
 Column 1: cycles (50599 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 471 

             # {method} {0x00007fd219873fb8} &apos;chain_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007fd238f62da0:   mov    0x8(%rsi),%r10d
             0x00007fd238f62da4:   movabs $0x800000000,%r11
             0x00007fd238f62dae:   add    %r11,%r10
             0x00007fd238f62db1:   cmp    %r10,%rax
             0x00007fd238f62db4:   jne    0x00007fd2389fbd80           ;   {runtime_call ic_miss_stub}
             0x00007fd238f62dba:   xchg   %ax,%ax
             0x00007fd238f62dbc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.40%     0x00007fd238f62dc0:   mov    %eax,-0x14000(%rsp)
             0x00007fd238f62dc7:   push   %rbp
             0x00007fd238f62dc8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@-1 (line 124)
   1.44%     0x00007fd238f62dcc:   mov    %rsi,(%rsp)
             0x00007fd238f62dd0:   mov    0x10(%rsi),%ebp
             0x00007fd238f62dd3:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 124)
   1.52%     0x00007fd238f62dd5:   lea    0x20(%rsp),%rbx
             0x00007fd238f62dda:   mov    (%rsi),%rax
   5.94%     0x00007fd238f62ddd:   test   $0x2,%rax
          ╭  0x00007fd238f62de4:   jne    0x00007fd238f62e0a
   1.57%  │  0x00007fd238f62de6:   or     $0x1,%rax
          │  0x00007fd238f62dea:   mov    %rax,(%rbx)
   3.04%  │  0x00007fd238f62ded:   lock cmpxchg %rbx,(%rsi)
  26.83%  │  0x00007fd238f62df2:   je     0x00007fd238f62e36
          │  0x00007fd238f62df8:   sub    %rsp,%rax
          │  0x00007fd238f62dfb:   and    $0xfffffffffffff007,%rax
          │  0x00007fd238f62e02:   mov    %rax,(%rbx)
          │  0x00007fd238f62e05:   jmp    0x00007fd238f62e36
          ↘  0x00007fd238f62e0a:   mov    %rax,%r11
             0x00007fd238f62e0d:   xor    %rax,%rax
             0x00007fd238f62e10:   lock cmpxchg %r15,0x3e(%r11)
             0x00007fd238f62e16:   movq   $0x3,(%rbx)
             0x00007fd238f62e1d:   je     0x00007fd238f62e36
             0x00007fd238f62e23:   cmp    %rax,%r15
....................................................................................................
  41.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 471 

                 0x00007fd238f62ea6:   movq   $0x0,0x3e(%r10)
                 0x00007fd238f62eae:   lock addl $0x0,(%rsp)
                 0x00007fd238f62eb3:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007fd238f62ebe:   jne    0x00007fd238f62ecd
          │      0x00007fd238f62ec0:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007fd238f62ec6:   jne    0x00007fd238f62ecd
          ││     0x00007fd238f62ec8:   or     $0x1,%eax
          ││╭    0x00007fd238f62ecb:   jmp    0x00007fd238f62edd
          ↘↘│    0x00007fd238f62ecd:   test   $0x0,%eax
            │╭   0x00007fd238f62ed3:   jmp    0x00007fd238f62edd
   1.49%    ││   0x00007fd238f62ed5:   mov    (%rax),%r10
            ││   0x00007fd238f62ed8:   lock cmpxchg %r10,(%r11)
  26.04%    ↘↘╭  0x00007fd238f62edd:   jne    0x00007fd238f62f15           ;*synchronization entry
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
              │  0x00007fd238f62edf:   add    %ebx,%ebp
   1.55%      │  0x00007fd238f62ee1:   add    %ebx,%ebp
              │  0x00007fd238f62ee3:   add    %ebx,%ebp
              │  0x00007fd238f62ee5:   add    %ebx,%ebp
              │  0x00007fd238f62ee7:   add    %ebx,%ebp
   1.52%      │  0x00007fd238f62ee9:   add    %ebx,%ebp
              │  0x00007fd238f62eeb:   add    %ebx,%ebp
              │  0x00007fd238f62eed:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 226)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
              │  0x00007fd238f62eef:   mov    %ebp,%eax
   1.62%      │  0x00007fd238f62ef1:   add    $0x30,%rsp
              │  0x00007fd238f62ef5:   pop    %rbp
              │  0x00007fd238f62ef6:   cmp    0x340(%r15),%rsp             ;   {poll_return}
              │  0x00007fd238f62efd:   ja     0x00007fd238f62f2f
   1.56%      │  0x00007fd238f62f03:   ret    
              │  0x00007fd238f62f04:   lea    0x20(%rsp),%rdx
              │  0x00007fd238f62f09:   xchg   %ax,%ax
              │  0x00007fd238f62f0b:   call   0x00007fd238aaea00           ; ImmutableOopMap {[0]=Oop }
              │                                                            ;*synchronization entry
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
              │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
              │                                                            ;   {runtime_call _complete_monitor_locking_Java}
              │  0x00007fd238f62f10:   jmp    0x00007fd238f62e3c
              ↘  0x00007fd238f62f15:   mov    %r11,%rdi
                 0x00007fd238f62f18:   lea    0x20(%rsp),%rsi              ;*synchronization entry
....................................................................................................
  33.79%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 471 

               0x00007fd238f62e10:   lock cmpxchg %r15,0x3e(%r11)
               0x00007fd238f62e16:   movq   $0x3,(%rbx)
          ╭    0x00007fd238f62e1d:   je     0x00007fd238f62e36
          │    0x00007fd238f62e23:   cmp    %rax,%r15
          │╭   0x00007fd238f62e26:   jne    0x00007fd238f62e36
          ││   0x00007fd238f62e2c:   incq   0x86(%r11)
          ││   0x00007fd238f62e33:   xor    %rax,%rax
          ↘↘   0x00007fd238f62e36:   jne    0x00007fd238f62f04           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 126)
   1.65%       0x00007fd238f62e3c:   mov    (%rsp),%r10
               0x00007fd238f62e40:   mov    0x14(%r10),%ebx              ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
               0x00007fd238f62e44:   lea    0x20(%rsp),%rax              ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 226)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 133)
               0x00007fd238f62e49:   mov    (%rsp),%r11
   1.41%       0x00007fd238f62e4d:   cmpq   $0x0,(%rax)
               0x00007fd238f62e54:   je     0x00007fd238f62edd
               0x00007fd238f62e5a:   mov    (%r11),%r10
  16.57%       0x00007fd238f62e5d:   test   $0x2,%r10
               0x00007fd238f62e64:   je     0x00007fd238f62ed5
               0x00007fd238f62e66:   cmpq   $0x0,0x86(%r10)
            ╭  0x00007fd238f62e71:   je     0x00007fd238f62e7c
            │  0x00007fd238f62e73:   decq   0x86(%r10)
            │  0x00007fd238f62e7a:   jmp    0x00007fd238f62ecd
            ↘  0x00007fd238f62e7c:   mov    0x96(%r10),%rax
               0x00007fd238f62e83:   or     0x8e(%r10),%rax
               0x00007fd238f62e8a:   jne    0x00007fd238f62e96
               0x00007fd238f62e8c:   movq   $0x0,0x3e(%r10)
               0x00007fd238f62e94:   jmp    0x00007fd238f62edd
....................................................................................................
  19.63%  <total for region 3>

....[Hottest Regions]...............................................................................
  41.73%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 471 
  33.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 471 
  19.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 471 
   3.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 511 
   0.43%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.74%  <...other 274 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 471 
   3.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 511 
   1.35%              kernel  [unknown] 
   0.06%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  tcache_init.part.0 
   0.01%           libjvm.so  outputStream::print 
   0.00%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  xmlTextStream::write 
   0.00%        libc-2.31.so  _nl_cleanup_time 
   0.00%           libjvm.so  VMError::is_error_reported 
   0.00%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.13%  <...other 61 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.34%         c2, level 4
   1.35%              kernel
   0.14%           libjvm.so
   0.06%                    
   0.06%        libc-2.31.so
   0.02%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.00%        runtime stub
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%      perf-19329.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 212.337 ns/op
# Warmup Iteration   2: 211.173 ns/op
# Warmup Iteration   3: 211.530 ns/op
# Warmup Iteration   4: 211.429 ns/op
# Warmup Iteration   5: 211.376 ns/op
Iteration   1: 211.342 ns/op
Iteration   2: 211.108 ns/op
Iteration   3: 211.292 ns/op
Iteration   4: 211.590 ns/op
Iteration   5: 211.502 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  211.367 ±(99.9%) 0.724 ns/op [Average]
  (min, avg, max) = (211.108, 211.367, 211.590), stdev = 0.188
  CI (99.9%): [210.642, 212.091] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:·asm":
PrintAssembly processed: 120009 total address lines.
Perf output processed (skipped 55.715 seconds):
 Column 1: cycles (50796 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 

                 0x00007f43d8f657e9:   movq   $0x0,0x3e(%r10)
                 0x00007f43d8f657f1:   lock addl $0x0,(%rsp)
                 0x00007f43d8f657f6:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007f43d8f65801:   jne    0x00007f43d8f65810
          │      0x00007f43d8f65803:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007f43d8f65809:   jne    0x00007f43d8f65810
          ││     0x00007f43d8f6580b:   or     $0x1,%eax
          ││╭    0x00007f43d8f6580e:   jmp    0x00007f43d8f65821
          ↘↘│    0x00007f43d8f65810:   test   $0x0,%eax
            │╭   0x00007f43d8f65816:   jmp    0x00007f43d8f65821
   0.21%    ││   0x00007f43d8f65818:   mov    (%rax),%r10
            ││   0x00007f43d8f6581b:   lock cmpxchg %r10,0x0(%rbp)
   3.68%    ↘↘   0x00007f43d8f65821:   jne    0x00007f43d8f65f16           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 148)
                 0x00007f43d8f65827:   cmp    $0x20,%r13d
                 0x00007f43d8f6582b:   jle    0x00007f43d8f660d4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 150)
   0.24%         0x00007f43d8f65831:   lea    0x20(%rsp),%rbx
                 0x00007f43d8f65836:   mov    0x0(%rbp),%rax
   2.68%         0x00007f43d8f6583a:   test   $0x2,%rax
              ╭  0x00007f43d8f65841:   jne    0x00007f43d8f65868
   0.20%      │  0x00007f43d8f65843:   or     $0x1,%rax
              │  0x00007f43d8f65847:   mov    %rax,(%rbx)
   0.49%      │  0x00007f43d8f6584a:   lock cmpxchg %rbx,0x0(%rbp)
   5.07%      │  0x00007f43d8f65850:   je     0x00007f43d8f65894
              │  0x00007f43d8f65856:   sub    %rsp,%rax
              │  0x00007f43d8f65859:   and    $0xfffffffffffff007,%rax
              │  0x00007f43d8f65860:   mov    %rax,(%rbx)
              │  0x00007f43d8f65863:   jmp    0x00007f43d8f65894
              ↘  0x00007f43d8f65868:   mov    %rax,%r10
                 0x00007f43d8f6586b:   xor    %rax,%rax
                 0x00007f43d8f6586e:   lock cmpxchg %r15,0x3e(%r10)
                 0x00007f43d8f65874:   movq   $0x3,(%rbx)
                 0x00007f43d8f6587b:   je     0x00007f43d8f65894
                 0x00007f43d8f65881:   cmp    %rax,%r15
....................................................................................................
  12.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 

                 0x00007f43d8f656d0:   movq   $0x0,0x3e(%r10)
                 0x00007f43d8f656d8:   lock addl $0x0,(%rsp)
                 0x00007f43d8f656dd:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007f43d8f656e8:   jne    0x00007f43d8f656f7
          │      0x00007f43d8f656ea:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007f43d8f656f0:   jne    0x00007f43d8f656f7
          ││     0x00007f43d8f656f2:   or     $0x1,%eax
          ││╭    0x00007f43d8f656f5:   jmp    0x00007f43d8f65708
          ↘↘│    0x00007f43d8f656f7:   test   $0x0,%eax
            │╭   0x00007f43d8f656fd:   jmp    0x00007f43d8f65708
   0.19%    ││   0x00007f43d8f656ff:   mov    (%rax),%r10
            ││   0x00007f43d8f65702:   lock cmpxchg %r10,0x0(%rbp)
   3.21%    ↘↘   0x00007f43d8f65708:   jne    0x00007f43d8f65eda           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@15 (line 145)
                 0x00007f43d8f6570e:   cmp    $0x20,%r13d
                 0x00007f43d8f65712:   jle    0x00007f43d8f660c4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@22 (line 147)
   0.21%         0x00007f43d8f65718:   lea    0x20(%rsp),%rbx
                 0x00007f43d8f6571d:   mov    0x0(%rbp),%rax
   2.38%         0x00007f43d8f65721:   test   $0x2,%rax
              ╭  0x00007f43d8f65728:   jne    0x00007f43d8f6574f
   0.20%      │  0x00007f43d8f6572a:   or     $0x1,%rax
              │  0x00007f43d8f6572e:   mov    %rax,(%rbx)
   0.43%      │  0x00007f43d8f65731:   lock cmpxchg %rbx,0x0(%rbp)
   4.75%      │  0x00007f43d8f65737:   je     0x00007f43d8f6577b
              │  0x00007f43d8f6573d:   sub    %rsp,%rax
              │  0x00007f43d8f65740:   and    $0xfffffffffffff007,%rax
              │  0x00007f43d8f65747:   mov    %rax,(%rbx)
              │  0x00007f43d8f6574a:   jmp    0x00007f43d8f6577b
              ↘  0x00007f43d8f6574f:   mov    %rax,%r11
                 0x00007f43d8f65752:   xor    %rax,%rax
                 0x00007f43d8f65755:   lock cmpxchg %r15,0x3e(%r11)
                 0x00007f43d8f6575b:   movq   $0x3,(%rbx)
                 0x00007f43d8f65762:   je     0x00007f43d8f6577b
                 0x00007f43d8f65768:   cmp    %rax,%r15
....................................................................................................
  11.37%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 

                 0x00007f43d8f658fd:   movq   $0x0,0x3e(%r10)
                 0x00007f43d8f65905:   lock addl $0x0,(%rsp)
                 0x00007f43d8f6590a:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007f43d8f65915:   jne    0x00007f43d8f65924
          │      0x00007f43d8f65917:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007f43d8f6591d:   jne    0x00007f43d8f65924
          ││     0x00007f43d8f6591f:   or     $0x1,%eax
          ││╭    0x00007f43d8f65922:   jmp    0x00007f43d8f65935
          ↘↘│    0x00007f43d8f65924:   test   $0x0,%eax
            │╭   0x00007f43d8f6592a:   jmp    0x00007f43d8f65935
   0.19%    ││   0x00007f43d8f6592c:   mov    (%rax),%r10
            ││   0x00007f43d8f6592f:   lock cmpxchg %r10,0x0(%rbp)
   3.64%    ↘↘   0x00007f43d8f65935:   jne    0x00007f43d8f65f52           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 151)
                 0x00007f43d8f6593b:   nopl   0x0(%rax,%rax,1)
   0.22%         0x00007f43d8f65940:   cmp    $0x20,%r13d
                 0x00007f43d8f65944:   jle    0x00007f43d8f660e4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 153)
                 0x00007f43d8f6594a:   lea    0x20(%rsp),%rbx
                 0x00007f43d8f6594f:   mov    0x0(%rbp),%rax
   2.32%         0x00007f43d8f65953:   test   $0x2,%rax
              ╭  0x00007f43d8f6595a:   jne    0x00007f43d8f65981
   0.22%      │  0x00007f43d8f6595c:   or     $0x1,%rax
              │  0x00007f43d8f65960:   mov    %rax,(%rbx)
   0.39%      │  0x00007f43d8f65963:   lock cmpxchg %rbx,0x0(%rbp)
   4.08%      │  0x00007f43d8f65969:   je     0x00007f43d8f659ad
              │  0x00007f43d8f6596f:   sub    %rsp,%rax
              │  0x00007f43d8f65972:   and    $0xfffffffffffff007,%rax
              │  0x00007f43d8f65979:   mov    %rax,(%rbx)
              │  0x00007f43d8f6597c:   jmp    0x00007f43d8f659ad
              ↘  0x00007f43d8f65981:   mov    %rax,%r10
                 0x00007f43d8f65984:   xor    %rax,%rax
                 0x00007f43d8f65987:   lock cmpxchg %r15,0x3e(%r10)
                 0x00007f43d8f6598d:   movq   $0x3,(%rbx)
                 0x00007f43d8f65994:   je     0x00007f43d8f659ad
                 0x00007f43d8f6599a:   cmp    %rax,%r15
....................................................................................................
  11.05%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 

                 0x00007f43d8f65a16:   movq   $0x0,0x3e(%r10)
                 0x00007f43d8f65a1e:   lock addl $0x0,(%rsp)
                 0x00007f43d8f65a23:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007f43d8f65a2e:   jne    0x00007f43d8f65a3d
          │      0x00007f43d8f65a30:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007f43d8f65a36:   jne    0x00007f43d8f65a3d
          ││     0x00007f43d8f65a38:   or     $0x1,%eax
          ││╭    0x00007f43d8f65a3b:   jmp    0x00007f43d8f65a4e
          ↘↘│    0x00007f43d8f65a3d:   test   $0x0,%eax
            │╭   0x00007f43d8f65a43:   jmp    0x00007f43d8f65a4e
   0.18%    ││   0x00007f43d8f65a45:   mov    (%rax),%r10
            ││   0x00007f43d8f65a48:   lock cmpxchg %r10,0x0(%rbp)
   2.99%    ↘↘   0x00007f43d8f65a4e:   jne    0x00007f43d8f65f8e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 154)
                 0x00007f43d8f65a54:   cmp    $0x20,%r13d
                 0x00007f43d8f65a58:   jle    0x00007f43d8f660f4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 156)
   0.19%         0x00007f43d8f65a5e:   lea    0x20(%rsp),%rbx
                 0x00007f43d8f65a63:   mov    0x0(%rbp),%rax
   2.24%         0x00007f43d8f65a67:   test   $0x2,%rax
              ╭  0x00007f43d8f65a6e:   jne    0x00007f43d8f65a95
   0.19%      │  0x00007f43d8f65a70:   or     $0x1,%rax
              │  0x00007f43d8f65a74:   mov    %rax,(%rbx)
   0.34%      │  0x00007f43d8f65a77:   lock cmpxchg %rbx,0x0(%rbp)
   3.99%      │  0x00007f43d8f65a7d:   je     0x00007f43d8f65ac1
              │  0x00007f43d8f65a83:   sub    %rsp,%rax
              │  0x00007f43d8f65a86:   and    $0xfffffffffffff007,%rax
              │  0x00007f43d8f65a8d:   mov    %rax,(%rbx)
              │  0x00007f43d8f65a90:   jmp    0x00007f43d8f65ac1
              ↘  0x00007f43d8f65a95:   mov    %rax,%r10
                 0x00007f43d8f65a98:   xor    %rax,%rax
                 0x00007f43d8f65a9b:   lock cmpxchg %r15,0x3e(%r10)
                 0x00007f43d8f65aa1:   movq   $0x3,(%rbx)
                 0x00007f43d8f65aa8:   je     0x00007f43d8f65ac1
                 0x00007f43d8f65aae:   cmp    %rax,%r15
....................................................................................................
  10.11%  <total for region 4>

....[Hottest Regions]...............................................................................
  12.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
  11.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
  11.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
  10.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   9.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   8.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   8.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   4.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   2.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   2.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   2.64%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   2.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   2.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   2.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   2.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   1.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   1.86%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   0.87%              kernel  [unknown] 
   0.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 517 
   0.10%              kernel  [unknown] 
   1.07%  <...other 269 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 487 
   1.73%              kernel  [unknown] 
   0.35%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 517 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%                      <unknown> 
   0.02%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  tcache_init.part.0 
   0.00%           libjvm.so  SymbolTable::do_lookup 
   0.00%      hsdis-amd64.so  oappend 
   0.00%      hsdis-amd64.so  putop 
   0.00%           libjvm.so  WatcherThread::sleep 
   0.12%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.96%         c2, level 4
   1.73%              kernel
   0.13%           libjvm.so
   0.07%        libc-2.31.so
   0.04%                    
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 212.964 ns/op
# Warmup Iteration   2: 211.275 ns/op
# Warmup Iteration   3: 211.779 ns/op
# Warmup Iteration   4: 211.269 ns/op
# Warmup Iteration   5: 211.474 ns/op
Iteration   1: 211.243 ns/op
Iteration   2: 211.415 ns/op
Iteration   3: 211.451 ns/op
Iteration   4: 211.293 ns/op
Iteration   5: 211.464 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  211.373 ±(99.9%) 0.382 ns/op [Average]
  (min, avg, max) = (211.243, 211.373, 211.464), stdev = 0.099
  CI (99.9%): [210.992, 211.755] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:·asm":
PrintAssembly processed: 118420 total address lines.
Perf output processed (skipped 55.686 seconds):
 Column 1: cycles (50541 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 

                 0x00007fd184f65296:   movq   $0x0,0x3e(%r10)
                 0x00007fd184f6529e:   lock addl $0x0,(%rsp)
                 0x00007fd184f652a3:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007fd184f652ae:   jne    0x00007fd184f652bd
          │      0x00007fd184f652b0:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007fd184f652b6:   jne    0x00007fd184f652bd
          ││     0x00007fd184f652b8:   or     $0x1,%eax
          ││╭    0x00007fd184f652bb:   jmp    0x00007fd184f652ce
          ↘↘│    0x00007fd184f652bd:   test   $0x0,%eax
            │╭   0x00007fd184f652c3:   jmp    0x00007fd184f652ce
   0.22%    ││   0x00007fd184f652c5:   mov    (%rax),%r10
            ││   0x00007fd184f652c8:   lock cmpxchg %r10,0x0(%rbp)
   3.46%    ↘↘   0x00007fd184f652ce:   jne    0x00007fd184f6580e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 185)
                 0x00007fd184f652d4:   cmp    $0x20,%r13d
                 0x00007fd184f652d8:   jle    0x00007fd184f65974           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 186)
   0.19%         0x00007fd184f652de:   lea    0x20(%rsp),%rbx
                 0x00007fd184f652e3:   mov    0x0(%rbp),%rax
   2.41%         0x00007fd184f652e7:   test   $0x2,%rax
              ╭  0x00007fd184f652ee:   jne    0x00007fd184f65315
   0.21%      │  0x00007fd184f652f0:   or     $0x1,%rax
              │  0x00007fd184f652f4:   mov    %rax,(%rbx)
   0.40%      │  0x00007fd184f652f7:   lock cmpxchg %rbx,0x0(%rbp)
   4.64%      │  0x00007fd184f652fd:   je     0x00007fd184f65341
              │  0x00007fd184f65303:   sub    %rsp,%rax
              │  0x00007fd184f65306:   and    $0xfffffffffffff007,%rax
              │  0x00007fd184f6530d:   mov    %rax,(%rbx)
              │  0x00007fd184f65310:   jmp    0x00007fd184f65341
              ↘  0x00007fd184f65315:   mov    %rax,%r10
                 0x00007fd184f65318:   xor    %rax,%rax
                 0x00007fd184f6531b:   lock cmpxchg %r15,0x3e(%r10)
                 0x00007fd184f65321:   movq   $0x3,(%rbx)
                 0x00007fd184f65328:   je     0x00007fd184f65341
                 0x00007fd184f6532e:   cmp    %rax,%r15
....................................................................................................
  11.54%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 

                 0x00007fd184f653aa:   movq   $0x0,0x3e(%r10)
                 0x00007fd184f653b2:   lock addl $0x0,(%rsp)
                 0x00007fd184f653b7:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007fd184f653c2:   jne    0x00007fd184f653d1
          │      0x00007fd184f653c4:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007fd184f653ca:   jne    0x00007fd184f653d1
          ││     0x00007fd184f653cc:   or     $0x1,%eax
          ││╭    0x00007fd184f653cf:   jmp    0x00007fd184f653e2
          ↘↘│    0x00007fd184f653d1:   test   $0x0,%eax
            │╭   0x00007fd184f653d7:   jmp    0x00007fd184f653e2
   0.19%    ││   0x00007fd184f653d9:   mov    (%rax),%r10
            ││   0x00007fd184f653dc:   lock cmpxchg %r10,0x0(%rbp)
   3.45%    ↘↘   0x00007fd184f653e2:   jne    0x00007fd184f6584e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 187)
                 0x00007fd184f653e8:   cmp    $0x20,%r13d
                 0x00007fd184f653ec:   jle    0x00007fd184f65984           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 188)
   0.20%         0x00007fd184f653f2:   lea    0x20(%rsp),%rbx
                 0x00007fd184f653f7:   mov    0x0(%rbp),%rax
   2.41%         0x00007fd184f653fb:   test   $0x2,%rax
              ╭  0x00007fd184f65402:   jne    0x00007fd184f65429
   0.17%      │  0x00007fd184f65404:   or     $0x1,%rax
              │  0x00007fd184f65408:   mov    %rax,(%rbx)
   0.37%      │  0x00007fd184f6540b:   lock cmpxchg %rbx,0x0(%rbp)
   4.57%      │  0x00007fd184f65411:   je     0x00007fd184f65455
              │  0x00007fd184f65417:   sub    %rsp,%rax
              │  0x00007fd184f6541a:   and    $0xfffffffffffff007,%rax
              │  0x00007fd184f65421:   mov    %rax,(%rbx)
              │  0x00007fd184f65424:   jmp    0x00007fd184f65455
              ↘  0x00007fd184f65429:   mov    %rax,%r10
                 0x00007fd184f6542c:   xor    %rax,%rax
                 0x00007fd184f6542f:   lock cmpxchg %r15,0x3e(%r10)
                 0x00007fd184f65435:   movq   $0x3,(%rbx)
                 0x00007fd184f6543c:   je     0x00007fd184f65455
                 0x00007fd184f65442:   cmp    %rax,%r15
....................................................................................................
  11.36%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 

                 0x00007fd184f6517d:   movq   $0x0,0x3e(%r10)
                 0x00007fd184f65185:   lock addl $0x0,(%rsp)
                 0x00007fd184f6518a:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007fd184f65195:   jne    0x00007fd184f651a4
          │      0x00007fd184f65197:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007fd184f6519d:   jne    0x00007fd184f651a4
          ││     0x00007fd184f6519f:   or     $0x1,%eax
          ││╭    0x00007fd184f651a2:   jmp    0x00007fd184f651b5
          ↘↘│    0x00007fd184f651a4:   test   $0x0,%eax
            │╭   0x00007fd184f651aa:   jmp    0x00007fd184f651b5
   0.16%    ││   0x00007fd184f651ac:   mov    (%rax),%r10
            ││   0x00007fd184f651af:   lock cmpxchg %r10,0x0(%rbp)
   3.17%    ↘↘   0x00007fd184f651b5:   jne    0x00007fd184f657d2           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 226)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 183)
                 0x00007fd184f651bb:   nopl   0x0(%rax,%rax,1)
   0.19%         0x00007fd184f651c0:   cmp    $0x20,%r13d
                 0x00007fd184f651c4:   jle    0x00007fd184f65964           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 184)
                 0x00007fd184f651ca:   lea    0x20(%rsp),%rbx
                 0x00007fd184f651cf:   mov    0x0(%rbp),%rax
   2.33%         0x00007fd184f651d3:   test   $0x2,%rax
              ╭  0x00007fd184f651da:   jne    0x00007fd184f65201
   0.20%      │  0x00007fd184f651dc:   or     $0x1,%rax
              │  0x00007fd184f651e0:   mov    %rax,(%rbx)
   0.38%      │  0x00007fd184f651e3:   lock cmpxchg %rbx,0x0(%rbp)
   4.00%      │  0x00007fd184f651e9:   je     0x00007fd184f6522d
              │  0x00007fd184f651ef:   sub    %rsp,%rax
              │  0x00007fd184f651f2:   and    $0xfffffffffffff007,%rax
              │  0x00007fd184f651f9:   mov    %rax,(%rbx)
              │  0x00007fd184f651fc:   jmp    0x00007fd184f6522d
              ↘  0x00007fd184f65201:   mov    %rax,%r10
                 0x00007fd184f65204:   xor    %rax,%rax
                 0x00007fd184f65207:   lock cmpxchg %r15,0x3e(%r10)
                 0x00007fd184f6520d:   movq   $0x3,(%rbx)
                 0x00007fd184f65214:   je     0x00007fd184f6522d
                 0x00007fd184f6521a:   cmp    %rax,%r15
....................................................................................................
  10.44%  <total for region 3>

....[Hottest Regions]...............................................................................
  11.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
  11.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
  10.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   9.92%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   9.66%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   9.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   8.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   4.83%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   3.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   2.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   2.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   2.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   2.42%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   2.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   2.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   2.06%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   1.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   0.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 514 
   0.21%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   1.24%  <...other 294 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.18%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 482 
   1.21%              kernel  [unknown] 
   0.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 514 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%           libjvm.so  HighResTimeSampler::take_sample 
   0.00%         interpreter  getstatic  178 getstatic  
   0.00%           libjvm.so  Method::line_number_from_bci 
   0.00%  libpthread-2.31.so  __condvar_cancel_waiting 
   0.13%  <...other 59 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.45%         c2, level 4
   1.21%              kernel
   0.15%           libjvm.so
   0.07%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.03%                    
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
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
# Warmup Iteration   1: 1360.001 ns/op
# Warmup Iteration   2: 1361.473 ns/op
# Warmup Iteration   3: 1356.516 ns/op
# Warmup Iteration   4: 1356.581 ns/op
# Warmup Iteration   5: 1356.392 ns/op
Iteration   1: 1357.390 ns/op
Iteration   2: 1355.694 ns/op
Iteration   3: 1356.232 ns/op
Iteration   4: 1356.465 ns/op
Iteration   5: 1356.385 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  1356.433 ±(99.9%) 2.362 ns/op [Average]
  (min, avg, max) = (1355.694, 1356.433, 1357.390), stdev = 0.613
  CI (99.9%): [1354.071, 1358.795] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:·asm":
PrintAssembly processed: 116591 total address lines.
Perf output processed (skipped 55.680 seconds):
 Column 1: cycles (50646 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
interpreter, monitorenter  194 monitorenter  

                 --------------------------------------------------------------------------------
                 ----------------------------------------------------------------------
                 monitorenter  194 monitorenter  [0x00007fe4b09c6520, 0x00007fe4b09c6660]  320 bytes
                 --------------------------------------------------------------------------------
   2.72%           0x00007fe4b09c6520:   pop    %rax
   2.21%           0x00007fe4b09c6521:   cmp    (%rax),%rax
   1.17%           0x00007fe4b09c6524:   xor    %esi,%esi
                   0x00007fe4b09c6526:   mov    -0x48(%rbp),%rcx
                   0x00007fe4b09c652a:   lea    -0x48(%rbp),%rdx
          ╭        0x00007fe4b09c652e:   jmp    0x00007fe4b09c6546
   0.21%  │ ↗      0x00007fe4b09c6530:   cmpq   $0x0,0x8(%rcx)
          │ │      0x00007fe4b09c6538:   cmove  %rcx,%rsi
   0.05%  │ │      0x00007fe4b09c653c:   cmp    0x8(%rcx),%rax
          │╭│      0x00007fe4b09c6540:   je     0x00007fe4b09c654b
          │││      0x00007fe4b09c6542:   add    $0x10,%rcx
   0.20%  ↘││      0x00007fe4b09c6546:   cmp    %rdx,%rcx
           │╰      0x00007fe4b09c6549:   jne    0x00007fe4b09c6530
   0.11%   ↘       0x00007fe4b09c654b:   test   %rsi,%rsi
             ╭     0x00007fe4b09c654e:   jne    0x00007fe4b09c657c
   0.13%     │     0x00007fe4b09c6554:   mov    -0x48(%rbp),%rsi
   0.01%     │     0x00007fe4b09c6558:   sub    $0x10,%rsp
   0.10%     │     0x00007fe4b09c655c:   sub    $0x10,%rsi
   0.14%     │     0x00007fe4b09c6560:   mov    %rsp,%rcx
             │     0x00007fe4b09c6563:   mov    %rsi,-0x48(%rbp)
   0.04%     │╭    0x00007fe4b09c6567:   jmp    0x00007fe4b09c6577
             ││↗   0x00007fe4b09c656c:   mov    0x10(%rcx),%rdx
             │││   0x00007fe4b09c6570:   mov    %rdx,(%rcx)
             │││   0x00007fe4b09c6573:   add    $0x8,%rcx
   0.05%     │↘│   0x00007fe4b09c6577:   cmp    %rsi,%rcx
             │ ╰   0x00007fe4b09c657a:   jne    0x00007fe4b09c656c
   0.14%     ↘     0x00007fe4b09c657c:   inc    %r13
                   0x00007fe4b09c657f:   mov    %rax,0x8(%rsi)
   0.61%           0x00007fe4b09c6583:   mov    0x8(%rsi),%rcx
   1.02%           0x00007fe4b09c6587:   mov    $0x1,%eax
                   0x00007fe4b09c658c:   or     (%rcx),%rax
   1.63%           0x00007fe4b09c658f:   mov    %rax,(%rsi)
   0.51%           0x00007fe4b09c6592:   lock cmpxchg %rsi,(%rcx)
   4.15%           0x00007fe4b09c6597:   je     0x00007fe4b09c663a
                   0x00007fe4b09c659d:   sub    %rsp,%rax
   0.15%           0x00007fe4b09c65a0:   and    $0xfffffffffffff007,%rax
                   0x00007fe4b09c65a7:   mov    %rax,(%rsi)
   0.14%           0x00007fe4b09c65aa:   je     0x00007fe4b09c663a
                ╭  0x00007fe4b09c65b0:   call   0x00007fe4b09c65ba
                │  0x00007fe4b09c65b5:   jmp    0x00007fe4b09c663a
                ↘  0x00007fe4b09c65ba:   lea    0x8(%rsp),%rax
                   0x00007fe4b09c65bf:   mov    %r13,-0x40(%rbp)
                   0x00007fe4b09c65c3:   mov    %r15,%rdi
                   0x00007fe4b09c65c6:   vzeroupper 
                   0x00007fe4b09c65c9:   mov    %rbp,0x298(%r15)
                   0x00007fe4b09c65d0:   mov    %rax,0x288(%r15)
                   0x00007fe4b09c65d7:   test   $0xf,%esp
                   0x00007fe4b09c65dd:   je     0x00007fe4b09c65f5
....................................................................................................
  15.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
interpreter, fast_iaccess_0  221 fast_iaccess_0  

               0x00007fe4b09c7f20:   sub    $0x8,%rsp
               0x00007fe4b09c7f24:   vmovss %xmm0,(%rsp)
          ╭    0x00007fe4b09c7f29:   jmp    0x00007fe4b09c7f4a
          │    0x00007fe4b09c7f2b:   sub    $0x10,%rsp
          │    0x00007fe4b09c7f2f:   vmovsd %xmm0,(%rsp)
          │╭   0x00007fe4b09c7f34:   jmp    0x00007fe4b09c7f4a
          ││   0x00007fe4b09c7f36:   sub    $0x10,%rsp
          ││   0x00007fe4b09c7f3a:   mov    %rax,(%rsp)
          ││   0x00007fe4b09c7f3e:   movq   $0x0,0x8(%rsp)
          ││╭  0x00007fe4b09c7f47:   jmp    0x00007fe4b09c7f4a
   4.36%  │││  0x00007fe4b09c7f49:   push   %rax
   2.66%  ↘↘↘  0x00007fe4b09c7f4a:   mov    (%r14),%rax
   0.32%       0x00007fe4b09c7f4d:   movzwl 0x2(%r13),%edx
   0.02%       0x00007fe4b09c7f52:   mov    -0x30(%rbp),%rcx
   0.00%       0x00007fe4b09c7f56:   shl    $0x2,%edx
   0.26%       0x00007fe4b09c7f59:   mov    0x38(%rcx,%rdx,8),%rbx
   1.29%       0x00007fe4b09c7f5e:   inc    %r13
               0x00007fe4b09c7f61:   cmp    (%rax),%rax
   0.00%       0x00007fe4b09c7f64:   mov    (%rax,%rbx,1),%eax
   1.18%       0x00007fe4b09c7f67:   dec    %r13
               0x00007fe4b09c7f6a:   movzbl 0x4(%r13),%ebx
               0x00007fe4b09c7f6f:   add    $0x4,%r13
               0x00007fe4b09c7f73:   movabs $0x7fe4c890e060,%r10
   0.27%       0x00007fe4b09c7f7d:   jmp    *(%r10,%rbx,8)
               0x00007fe4b09c7f81:   nopl   0x0(%rax)
               0x00007fe4b09c7f88:   add    %al,(%rax)
               0x00007fe4b09c7f8a:   add    %al,(%rax)
               0x00007fe4b09c7f8c:   add    %al,(%rax)
               0x00007fe4b09c7f8e:   add    %al,(%rax)
               0x00007fe4b09c7f90:   add    %al,(%rax)
               0x00007fe4b09c7f92:   add    %al,(%rax)
               0x00007fe4b09c7f94:   add    %al,(%rax)
               0x00007fe4b09c7f96:   add    %al,(%rax)
               0x00007fe4b09c7f98:   add    %al,(%rax)
....................................................................................................
  10.37%  <total for region 2>

....[Hottest Regions]...............................................................................
  15.48%         interpreter  monitorenter  194 monitorenter  
  10.37%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   9.25%         interpreter  monitorexit  195 monitorexit  
   8.16%         interpreter  goto  167 goto  
   7.62%         interpreter  dup  89 dup  
   7.16%         interpreter  istore_1  60 istore_1  
   6.51%         interpreter  fast_aload_0  220 fast_aload_0  
   5.85%         interpreter  iadd  96 iadd  
   5.82%         interpreter  aload  25 aload  
   5.51%         interpreter  astore  58 astore  
   2.75%         interpreter  monitorexit  195 monitorexit  
   1.84%         interpreter  iload_1  27 iload_1  
   1.07%         interpreter  method entry point (kind = zerolocals)  
   1.02%         interpreter  ishl  120 ishl  
   0.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 502 
   0.88%         interpreter  aload_3  45 aload_3  
   0.79%         interpreter  astore_3  78 astore_3  
   0.78%         interpreter  aload_2  44 aload_2  
   0.78%         interpreter  astore_2  77 astore_2  
   0.76%              kernel  [unknown] 
   6.62%  <...other 329 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  15.71%         interpreter  monitorenter  194 monitorenter  
  12.52%         interpreter  monitorexit  195 monitorexit  
  10.37%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   8.84%         interpreter  goto  167 goto  
   7.62%         interpreter  dup  89 dup  
   7.16%         interpreter  istore_1  60 istore_1  
   6.51%         interpreter  fast_aload_0  220 fast_aload_0  
   5.85%         interpreter  iadd  96 iadd  
   5.82%         interpreter  aload  25 aload  
   5.51%         interpreter  astore  58 astore  
   2.11%         interpreter  method entry point (kind = zerolocals)  
   1.84%         interpreter  iload_1  27 iload_1  
   1.68%         interpreter  ireturn  172 ireturn  
   1.48%              kernel  [unknown] 
   1.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_nested_synchronized_jmhTest::nested_synchronized_avgt_jmhStub, version 5, compile id 502 
   1.02%         interpreter  ishl  120 ishl  
   0.88%         interpreter  aload_3  45 aload_3  
   0.79%         interpreter  astore_3  78 astore_3  
   0.78%         interpreter  aload_2  44 aload_2  
   0.78%         interpreter  astore_2  77 astore_2  
   1.71%  <...other 101 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.49%         interpreter
   1.48%              kernel
   1.02%         c2, level 4
   0.50%           libjvm.so
   0.32%      perf-19495.map
   0.08%        libc-2.31.so
   0.04%                    
   0.02%          ld-2.31.so
   0.02%  libpthread-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%           libnio.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -XX:-UseBiasedLocking
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
# Warmup Iteration   1: 81.506 ns/op
# Warmup Iteration   2: 80.821 ns/op
# Warmup Iteration   3: 81.010 ns/op
# Warmup Iteration   4: 80.827 ns/op
# Warmup Iteration   5: 80.820 ns/op
Iteration   1: 80.822 ns/op
Iteration   2: 80.820 ns/op
Iteration   3: 80.822 ns/op
Iteration   4: 80.827 ns/op
Iteration   5: 80.820 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  80.822 ±(99.9%) 0.010 ns/op [Average]
  (min, avg, max) = (80.820, 80.822, 80.827), stdev = 0.003
  CI (99.9%): [80.812, 80.833] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:·asm":
PrintAssembly processed: 116538 total address lines.
Perf output processed (skipped 55.565 seconds):
 Column 1: cycles (50628 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 469 

             # parm1:    rcx       = int
             #           [sp+0x50]  (sp of caller)
             0x00007f31d0f62b20:   mov    0x8(%rsi),%r10d
             0x00007f31d0f62b24:   movabs $0x800000000,%r11
             0x00007f31d0f62b2e:   add    %r11,%r10
             0x00007f31d0f62b31:   cmp    %r10,%rax
             0x00007f31d0f62b34:   jne    0x00007f31d09fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f31d0f62b3a:   xchg   %ax,%ax
             0x00007f31d0f62b3c:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.00%     0x00007f31d0f62b40:   mov    %eax,-0x14000(%rsp)
   0.64%     0x00007f31d0f62b47:   push   %rbp
             0x00007f31d0f62b48:   sub    $0x40,%rsp
   1.16%     0x00007f31d0f62b4c:   mov    %ecx,%ebp
   0.59%     0x00007f31d0f62b4e:   mov    %edx,0x8(%rsp)
             0x00007f31d0f62b52:   mov    %rsi,(%rsp)
   1.08%     0x00007f31d0f62b56:   lea    0x20(%rsp),%rbx
             0x00007f31d0f62b5b:   mov    (%rsi),%rax
  10.46%     0x00007f31d0f62b5e:   test   $0x2,%rax
          ╭  0x00007f31d0f62b65:   jne    0x00007f31d0f62b8b
   1.81%  │  0x00007f31d0f62b67:   or     $0x1,%rax
          │  0x00007f31d0f62b6b:   mov    %rax,(%rbx)
   3.45%  │  0x00007f31d0f62b6e:   lock cmpxchg %rbx,(%rsi)
  31.05%  │  0x00007f31d0f62b73:   je     0x00007f31d0f62bb7
          │  0x00007f31d0f62b79:   sub    %rsp,%rax
   1.71%  │  0x00007f31d0f62b7c:   and    $0xfffffffffffff007,%rax
          │  0x00007f31d0f62b83:   mov    %rax,(%rbx)
   1.66%  │  0x00007f31d0f62b86:   jmp    0x00007f31d0f62bb7
          ↘  0x00007f31d0f62b8b:   mov    %rax,%r11
             0x00007f31d0f62b8e:   xor    %rax,%rax
             0x00007f31d0f62b91:   lock cmpxchg %r15,0x3e(%r11)
             0x00007f31d0f62b97:   movq   $0x3,(%rbx)
             0x00007f31d0f62b9e:   je     0x00007f31d0f62bb7
             0x00007f31d0f62ba4:   cmp    %rax,%r15
             0x00007f31d0f62ba7:   jne    0x00007f31d0f62bb7
             0x00007f31d0f62bad:   incq   0x86(%r11)
             0x00007f31d0f62bb4:   xor    %rax,%rax
             0x00007f31d0f62bb7:   jne    0x00007f31d0f62d65           ;*synchronization entry
....................................................................................................
  54.61%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 470 

             # {method} {0x00007f31c107e5e8} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f31d0f632a0:   mov    0x8(%rsi),%r10d
             0x00007f31d0f632a4:   movabs $0x800000000,%r11
             0x00007f31d0f632ae:   add    %r11,%r10
             0x00007f31d0f632b1:   cmp    %r10,%rax
             0x00007f31d0f632b4:   jne    0x00007f31d09fbd80           ;   {runtime_call ic_miss_stub}
             0x00007f31d0f632ba:   xchg   %ax,%ax
             0x00007f31d0f632bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.00%     0x00007f31d0f632c0:   mov    %eax,-0x14000(%rsp)
   0.54%     0x00007f31d0f632c7:   push   %rbp
             0x00007f31d0f632c8:   sub    $0x30,%rsp                   ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@-1 (line 116)
   0.56%     0x00007f31d0f632cc:   mov    %rsi,0x8(%rsp)
             0x00007f31d0f632d1:   mov    0x10(%rsi),%r11d
             0x00007f31d0f632d5:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 116)
             0x00007f31d0f632d8:   lea    0x10(%rsp),%rbx
   0.57%     0x00007f31d0f632dd:   mov    (%rsi),%rax
   2.73%     0x00007f31d0f632e0:   test   $0x2,%rax
          ╭  0x00007f31d0f632e7:   jne    0x00007f31d0f6330d
   0.55%  │  0x00007f31d0f632e9:   or     $0x1,%rax
          │  0x00007f31d0f632ed:   mov    %rax,(%rbx)
   1.25%  │  0x00007f31d0f632f0:   lock cmpxchg %rbx,(%rsi)
  10.05%  │  0x00007f31d0f632f5:   je     0x00007f31d0f63339
          │  0x00007f31d0f632fb:   sub    %rsp,%rax
          │  0x00007f31d0f632fe:   and    $0xfffffffffffff007,%rax
          │  0x00007f31d0f63305:   mov    %rax,(%rbx)
          │  0x00007f31d0f63308:   jmp    0x00007f31d0f63339
          ↘  0x00007f31d0f6330d:   mov    %rax,%r8
             0x00007f31d0f63310:   xor    %rax,%rax
             0x00007f31d0f63313:   lock cmpxchg %r15,0x3e(%r8)
             0x00007f31d0f63319:   movq   $0x3,(%rbx)
             0x00007f31d0f63320:   je     0x00007f31d0f63339
             0x00007f31d0f63326:   cmp    %rax,%r15
....................................................................................................
  16.25%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 470 

                0x00007f31d0f633c8:   movq   $0x0,0x3e(%r10)
                0x00007f31d0f633d0:   lock addl $0x0,(%rsp)
                0x00007f31d0f633d5:   cmpq   $0x0,0x9e(%r10)
          ╭     0x00007f31d0f633e0:   jne    0x00007f31d0f633ef
          │     0x00007f31d0f633e2:   lock cmpxchg %r15,0x3e(%r10)
          │╭    0x00007f31d0f633e8:   jne    0x00007f31d0f633ef
          ││    0x00007f31d0f633ea:   or     $0x1,%eax
          ││╭   0x00007f31d0f633ed:   jmp    0x00007f31d0f633ff
          ↘↘│   0x00007f31d0f633ef:   test   $0x0,%eax
            │╭  0x00007f31d0f633f5:   jmp    0x00007f31d0f633ff
   0.31%    ││  0x00007f31d0f633f7:   mov    (%rax),%r10
            ││  0x00007f31d0f633fa:   lock cmpxchg %r10,(%r11)
   9.03%    ↘↘  0x00007f31d0f633ff:   nop
   0.00%        0x00007f31d0f63400:   jne    0x00007f31d0f63435           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 233)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
   0.53%        0x00007f31d0f63402:   mov    %ebx,%eax
                0x00007f31d0f63404:   add    %ebp,%eax
                0x00007f31d0f63406:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 233)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 117)
                0x00007f31d0f63408:   add    $0x30,%rsp
   0.55%        0x00007f31d0f6340c:   pop    %rbp
                0x00007f31d0f6340d:   cmp    0x340(%r15),%rsp             ;   {poll_return}
                0x00007f31d0f63414:   ja     0x00007f31d0f63514
                0x00007f31d0f6341a:   ret    
                0x00007f31d0f6341b:   lea    0x10(%rsp),%rdx
                0x00007f31d0f63420:   mov    %rsi,%rbp
                0x00007f31d0f63423:   mov    %r11d,0x4(%rsp)
                0x00007f31d0f63428:   data16 xchg %ax,%ax
                0x00007f31d0f6342b:   call   0x00007f31d0aaea00           ; ImmutableOopMap {rbp=Oop [8]=Oop }
                                                                          ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 230)
....................................................................................................
  10.43%  <total for region 3>

....[Hottest Regions]...............................................................................
  54.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 469 
  16.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 470 
  10.43%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 470 
   7.12%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 469 
   4.21%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 469 
   2.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 470 
   1.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 511 
   1.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 469 
   0.64%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.87%  <...other 299 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 469 
  29.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 470 
   1.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 511 
   1.63%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%                      <unknown> 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  [unknown] 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  outputStream::update_position 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  __GI___strcasecmp_l_sse2 
   0.01%           libjvm.so  outputStream::do_vsnprintf_and_write_with_automatic_buffer 
   0.01%           libjvm.so  RelocIterator::initialize 
   0.01%        libc-2.31.so  _IO_proc_close@@GLIBC_2.2.5 
   0.01%        libc-2.31.so  ptmalloc_init.part.0 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  event_to_env 
   0.01%           libjvm.so  stringStream::write 
   0.12%  <...other 51 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%         c2, level 4
   1.63%              kernel
   0.16%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.01%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:48

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
LockCoarseningBenchmark.baseline                              avgt    5    25.139 ± 0.003  ns/op
LockCoarseningBenchmark.baseline:·asm                         avgt            NaN            ---
LockCoarseningBenchmark.chain_method_calls                    avgt    5    25.140 ± 0.002  ns/op
LockCoarseningBenchmark.chain_method_calls:·asm               avgt            NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls        avgt    5   211.367 ± 0.724  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:·asm   avgt            NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls       avgt    5   211.373 ± 0.382  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:·asm  avgt            NaN            ---
LockCoarseningBenchmark.nested_synchronized                   avgt    5  1356.433 ± 2.362  ns/op
LockCoarseningBenchmark.nested_synchronized:·asm              avgt            NaN            ---
LockCoarseningBenchmark.recursive_method_calls                avgt    5    80.822 ± 0.010  ns/op
LockCoarseningBenchmark.recursive_method_calls:·asm           avgt            NaN            ---
