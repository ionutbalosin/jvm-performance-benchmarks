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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline

# Run progress: 0.00% complete, ETA 00:10:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.256 ns/op
# Warmup Iteration   2: 27.072 ns/op
# Warmup Iteration   3: 27.119 ns/op
# Warmup Iteration   4: 27.071 ns/op
# Warmup Iteration   5: 27.072 ns/op
Iteration   1: 27.072 ns/op
Iteration   2: 27.072 ns/op
Iteration   3: 27.072 ns/op
Iteration   4: 27.072 ns/op
Iteration   5: 27.071 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline":
  27.072 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (27.071, 27.072, 27.072), stdev = 0.001
  CI (99.9%): [27.070, 27.074] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.baseline:asm":
PrintAssembly processed: 125415 total address lines.
Perf output processed (skipped 56.221 seconds):
 Column 1: cycles (50339 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 556 

             #           [sp+0x40]  (sp of caller)
             0x00007f618c6381a0:   mov    0x8(%rsi),%r10d
             0x00007f618c6381a4:   movabs $0x7f6113000000,%r11
             0x00007f618c6381ae:   add    %r11,%r10
             0x00007f618c6381b1:   cmp    %r10,%rax
             0x00007f618c6381b4:   jne    0x00007f618c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f618c6381ba:   xchg   %ax,%ax
             0x00007f618c6381bc:   nopl   0x0(%rax)
           [Verified Entry Point]
             0x00007f618c6381c0:   mov    %eax,-0x14000(%rsp)
   1.37%     0x00007f618c6381c7:   push   %rbp
             0x00007f618c6381c8:   sub    $0x30,%rsp
             0x00007f618c6381cc:   cmpl   $0x1,0x20(%r15)
   1.31%     0x00007f618c6381d4:   jne    0x00007f618c638361           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@-1 (line 208)
             0x00007f618c6381da:   mov    %rsi,(%rsp)
             0x00007f618c6381de:   mov    0x10(%rsi),%ebp
             0x00007f618c6381e1:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@5 (line 208)
   1.44%     0x00007f618c6381e3:   lea    0x20(%rsp),%rbx
             0x00007f618c6381e8:   mov    (%rsi),%rax
   3.03%     0x00007f618c6381eb:   test   $0x2,%al
          ╭  0x00007f618c6381ed:   jne    0x00007f618c638216
   1.37%  │  0x00007f618c6381f3:   or     $0x1,%rax
          │  0x00007f618c6381f7:   mov    %rax,(%rbx)
   2.86%  │  0x00007f618c6381fa:   lock cmpxchg %rbx,(%rsi)
  32.43%  │  0x00007f618c6381ff:   je     0x00007f618c63823c
          │  0x00007f618c638205:   sub    %rsp,%rax
          │  0x00007f618c638208:   and    $0xfffffffffffff007,%rax
          │  0x00007f618c63820e:   mov    %rax,(%rbx)
          │  0x00007f618c638211:   jmp    0x00007f618c63823a
          ↘  0x00007f618c638216:   mov    %rax,%r10
             0x00007f618c638219:   xor    %rax,%rax
             0x00007f618c63821c:   lock cmpxchg %r15,0x3e(%r10)
             0x00007f618c638222:   movq   $0x3,(%rbx)
             0x00007f618c638229:   je     0x00007f618c63823c
             0x00007f618c63822b:   cmp    %rax,%r15
....................................................................................................
  43.81%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 556 

                  0x00007f618c6382ad:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                  0x00007f618c6382b5:   lock addl $0x0,(%rsp)
                  0x00007f618c6382ba:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007f618c6382c2:   jne    0x00007f618c6382d1
          │       0x00007f618c6382c4:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007f618c6382ca:   jne    0x00007f618c6382d1
          ││      0x00007f618c6382cc:   or     $0x1,%eax
          ││╭     0x00007f618c6382cf:   jmp    0x00007f618c6382dd
          ↘↘│     0x00007f618c6382d1:   test   $0x0,%al
            │╭    0x00007f618c6382d3:   jmp    0x00007f618c6382dd
   1.45%    ││    0x00007f618c6382d5:   mov    (%rax),%r10
            ││    0x00007f618c6382d8:   lock cmpxchg %r10,(%r11)
  23.96%    ↘↘╭   0x00007f618c6382dd:   jne    0x00007f618c6382e9
              │   0x00007f618c6382df:   decq   0x550(%r15)
   1.41%      │   0x00007f618c6382e6:   xor    %r10d,%r10d
              ↘╭  0x00007f618c6382e9:   jne    0x00007f618c638329           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.38%       │  0x00007f618c6382eb:   add    %ebx,%ebp
               │  0x00007f618c6382ed:   add    %ebx,%ebp
               │  0x00007f618c6382ef:   add    %ebx,%ebp
               │  0x00007f618c6382f1:   add    %ebx,%ebp
   1.36%       │  0x00007f618c6382f3:   add    %ebx,%ebp
               │  0x00007f618c6382f5:   add    %ebx,%ebp
               │  0x00007f618c6382f7:   add    %ebx,%ebp
               │  0x00007f618c6382f9:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@65 (line 218)
   1.46%       │  0x00007f618c6382fb:   mov    %ebp,%eax
               │  0x00007f618c6382fd:   add    $0x30,%rsp
               │  0x00007f618c638301:   pop    %rbp
               │  0x00007f618c638302:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               │  0x00007f618c638309:   ja     0x00007f618c63834b
   1.48%       │  0x00007f618c63830f:   ret    
               │  0x00007f618c638310:   lea    0x20(%rsp),%rdx
               │  0x00007f618c638315:   xchg   %ax,%ax
               │  0x00007f618c638317:   call   0x00007f618c19ca80           ; ImmutableOopMap {[0]=Oop }
               │                                                            ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
               │                                                            ;   {runtime_call _complete_monitor_locking_Java}
               │  0x00007f618c63831c:   nopl   0x30c(%rax,%rax,1)           ;   {other}
               │  0x00007f618c638324:   jmp    0x00007f618c63824b
               ↘  0x00007f618c638329:   mov    %r11,%rdi
                  0x00007f618c63832c:   lea    0x20(%rsp),%rsi              ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  32.50%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 556 

                0x00007f618c638219:   xor    %rax,%rax
                0x00007f618c63821c:   lock cmpxchg %r15,0x3e(%r10)
                0x00007f618c638222:   movq   $0x3,(%rbx)
          ╭     0x00007f618c638229:   je     0x00007f618c63823c
          │     0x00007f618c63822b:   cmp    %rax,%r15
          │╭    0x00007f618c63822e:   jne    0x00007f618c638245
          ││    0x00007f618c638230:   incq   0x86(%r10)
          ││    0x00007f618c638237:   xor    %rax,%rax
          ││╭   0x00007f618c63823a:   jne    0x00007f618c638245
          ↘││   0x00007f618c63823c:   incq   0x550(%r15)
   1.41%   ││   0x00007f618c638243:   xor    %eax,%eax
           ↘↘   0x00007f618c638245:   jne    0x00007f618c638310           ;*monitorenter {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@10 (line 210)
   1.40%        0x00007f618c63824b:   mov    (%rsp),%r10
                0x00007f618c63824f:   mov    0x14(%r10),%ebx              ;*monitorexit {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline@68 (line 219)
                0x00007f618c638253:   lea    0x20(%rsp),%rax
                0x00007f618c638258:   mov    (%rsp),%r11
   1.44%        0x00007f618c63825c:   cmpq   $0x0,(%rax)
                0x00007f618c638260:   je     0x00007f618c6382df
                0x00007f618c638266:   mov    (%r11),%r10
  13.83%        0x00007f618c638269:   test   $0x2,%r10b
                0x00007f618c63826d:   je     0x00007f618c6382d5
                0x00007f618c638273:   cmpq   $0x0,0x86(%r10)
             ╭  0x00007f618c63827b:   je     0x00007f618c638286
             │  0x00007f618c63827d:   decq   0x86(%r10)
             │  0x00007f618c638284:   jmp    0x00007f618c6382d1
             ↘  0x00007f618c638286:   mov    0x96(%r10),%rax
                0x00007f618c63828d:   or     0x8e(%r10),%rax
                0x00007f618c638294:   jne    0x00007f618c6382a0
                0x00007f618c638296:   movq   $0x0,0x3e(%r10)
                0x00007f618c63829e:   jmp    0x00007f618c6382dd
....................................................................................................
  18.07%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 556 
  32.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 556 
  18.07%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 556 
   4.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 591 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%           libjvm.so  fileStream::write 
   0.71%  <...other 257 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.38%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::baseline, version 2, compile id 556 
   4.39%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_baseline_jmhTest::baseline_avgt_jmhStub, version 6, compile id 591 
   0.97%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  stringStream::write 
   0.00%        libc-2.31.so  __vsnprintf_internal 
   0.00%      hsdis-amd64.so  print_insn_i386 
   0.00%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.00%           libjvm.so  fieldDescriptor::reinitialize 
   0.00%    perf-1938070.map  [unknown] 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.12%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.77%         c2, level 4
   0.97%              kernel
   0.13%           libjvm.so
   0.06%        libc-2.31.so
   0.02%      hsdis-amd64.so
   0.02%                    
   0.01%  libpthread-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-1938070.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls

# Run progress: 16.67% complete, ETA 00:09:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 27.397 ns/op
# Warmup Iteration   2: 27.072 ns/op
# Warmup Iteration   3: 27.118 ns/op
# Warmup Iteration   4: 27.072 ns/op
# Warmup Iteration   5: 27.072 ns/op
Iteration   1: 27.072 ns/op
Iteration   2: 27.072 ns/op
Iteration   3: 27.073 ns/op
Iteration   4: 27.071 ns/op
Iteration   5: 27.072 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls":
  27.072 ±(99.9%) 0.002 ns/op [Average]
  (min, avg, max) = (27.071, 27.072, 27.073), stdev = 0.001
  CI (99.9%): [27.070, 27.074] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.chain_method_calls:asm":
PrintAssembly processed: 122748 total address lines.
Perf output processed (skipped 56.063 seconds):
 Column 1: cycles (51020 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 556 

             #           [sp+0x40]  (sp of caller)
             0x00007f9528637ca0:   mov    0x8(%rsi),%r10d
             0x00007f9528637ca4:   movabs $0x7f94af000000,%r11
             0x00007f9528637cae:   add    %r11,%r10
             0x00007f9528637cb1:   cmp    %r10,%rax
             0x00007f9528637cb4:   jne    0x00007f95280c4080           ;   {runtime_call ic_miss_stub}
             0x00007f9528637cba:   xchg   %ax,%ax
             0x00007f9528637cbc:   nopl   0x0(%rax)
           [Verified Entry Point]
             0x00007f9528637cc0:   mov    %eax,-0x14000(%rsp)
   1.44%     0x00007f9528637cc7:   push   %rbp
             0x00007f9528637cc8:   sub    $0x30,%rsp
             0x00007f9528637ccc:   cmpl   $0x1,0x20(%r15)
   1.39%     0x00007f9528637cd4:   jne    0x00007f9528637e61           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@-1 (line 123)
             0x00007f9528637cda:   mov    %rsi,(%rsp)
             0x00007f9528637cde:   mov    0x10(%rsi),%ebp
             0x00007f9528637ce1:   shl    %ebp                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@5 (line 123)
   1.46%     0x00007f9528637ce3:   lea    0x20(%rsp),%rbx
             0x00007f9528637ce8:   mov    (%rsi),%rax
   2.74%     0x00007f9528637ceb:   test   $0x2,%al
          ╭  0x00007f9528637ced:   jne    0x00007f9528637d16
   1.32%  │  0x00007f9528637cf3:   or     $0x1,%rax
          │  0x00007f9528637cf7:   mov    %rax,(%rbx)
   2.91%  │  0x00007f9528637cfa:   lock cmpxchg %rbx,(%rsi)
  32.20%  │  0x00007f9528637cff:   je     0x00007f9528637d3c
          │  0x00007f9528637d05:   sub    %rsp,%rax
          │  0x00007f9528637d08:   and    $0xfffffffffffff007,%rax
          │  0x00007f9528637d0e:   mov    %rax,(%rbx)
          │  0x00007f9528637d11:   jmp    0x00007f9528637d3a
          ↘  0x00007f9528637d16:   mov    %rax,%r10
             0x00007f9528637d19:   xor    %rax,%rax
             0x00007f9528637d1c:   lock cmpxchg %r15,0x3e(%r10)
             0x00007f9528637d22:   movq   $0x3,(%rbx)
             0x00007f9528637d29:   je     0x00007f9528637d3c
             0x00007f9528637d2b:   cmp    %rax,%r15
....................................................................................................
  43.46%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 556 

                 0x00007f9528637dad:   movq   $0x0,0x3e(%r10)              ;   {no_reloc}
                 0x00007f9528637db5:   lock addl $0x0,(%rsp)
                 0x00007f9528637dba:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007f9528637dc2:   jne    0x00007f9528637dd1
          │      0x00007f9528637dc4:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007f9528637dca:   jne    0x00007f9528637dd1
          ││     0x00007f9528637dcc:   or     $0x1,%eax
          ││╭    0x00007f9528637dcf:   jmp    0x00007f9528637ddd
          ↘↘│    0x00007f9528637dd1:   test   $0x0,%al
            │╭   0x00007f9528637dd3:   jmp    0x00007f9528637ddd
   1.37%    ││   0x00007f9528637dd5:   mov    (%rax),%r10
            ││   0x00007f9528637dd8:   lock cmpxchg %r10,(%r11)
  23.97%    ↘↘╭  0x00007f9528637ddd:   jne    0x00007f9528637de9
              │  0x00007f9528637ddf:   decq   0x550(%r15)
   1.32%      │  0x00007f9528637de6:   xor    %r10d,%r10d
              ↘  0x00007f9528637de9:   jne    0x00007f9528637e29           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.44%         0x00007f9528637deb:   add    %ebx,%ebp
                 0x00007f9528637ded:   add    %ebx,%ebp
                 0x00007f9528637def:   add    %ebx,%ebp
                 0x00007f9528637df1:   add    %ebx,%ebp
   1.44%         0x00007f9528637df3:   add    %ebx,%ebp
                 0x00007f9528637df5:   add    %ebx,%ebp
                 0x00007f9528637df7:   add    %ebx,%ebp
                 0x00007f9528637df9:   add    %ebx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@5 (line 225)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
   1.37%         0x00007f9528637dfb:   mov    %ebp,%eax
                 0x00007f9528637dfd:   add    $0x30,%rsp
                 0x00007f9528637e01:   pop    %rbp
                 0x00007f9528637e02:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007f9528637e09:   ja     0x00007f9528637e4b
   1.38%         0x00007f9528637e0f:   ret    
                 0x00007f9528637e10:   lea    0x20(%rsp),%rdx
                 0x00007f9528637e15:   xchg   %ax,%ax
                 0x00007f9528637e17:   call   0x00007f952819c780           ; ImmutableOopMap {[0]=Oop }
                                                                           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
                                                                           ;   {runtime_call _complete_monitor_locking_Java}
                 0x00007f9528637e1c:   nopl   0x30c(%rax,%rax,1)           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
....................................................................................................
  32.30%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 556 

                0x00007f9528637d19:   xor    %rax,%rax
                0x00007f9528637d1c:   lock cmpxchg %r15,0x3e(%r10)
                0x00007f9528637d22:   movq   $0x3,(%rbx)
          ╭     0x00007f9528637d29:   je     0x00007f9528637d3c
          │     0x00007f9528637d2b:   cmp    %rax,%r15
          │╭    0x00007f9528637d2e:   jne    0x00007f9528637d45
          ││    0x00007f9528637d30:   incq   0x86(%r10)
          ││    0x00007f9528637d37:   xor    %rax,%rax
          ││╭   0x00007f9528637d3a:   jne    0x00007f9528637d45
          ↘││   0x00007f9528637d3c:   incq   0x550(%r15)
   1.39%   ││   0x00007f9528637d43:   xor    %eax,%eax
           ↘↘   0x00007f9528637d45:   jne    0x00007f9528637e10           ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@9 (line 125)
   1.34%        0x00007f9528637d4b:   mov    (%rsp),%r10
                0x00007f9528637d4f:   mov    0x14(%r10),%ebx              ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
                0x00007f9528637d53:   lea    0x20(%rsp),%rax              ;*synchronization entry
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@-1 (line 225)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls@51 (line 132)
                0x00007f9528637d58:   mov    (%rsp),%r11
   1.40%        0x00007f9528637d5c:   cmpq   $0x0,(%rax)
                0x00007f9528637d60:   je     0x00007f9528637ddf
                0x00007f9528637d66:   mov    (%r11),%r10
  13.41%        0x00007f9528637d69:   test   $0x2,%r10b
                0x00007f9528637d6d:   je     0x00007f9528637dd5
                0x00007f9528637d73:   cmpq   $0x0,0x86(%r10)
             ╭  0x00007f9528637d7b:   je     0x00007f9528637d86
             │  0x00007f9528637d7d:   decq   0x86(%r10)
             │  0x00007f9528637d84:   jmp    0x00007f9528637dd1
             ↘  0x00007f9528637d86:   mov    0x96(%r10),%rax
                0x00007f9528637d8d:   or     0x8e(%r10),%rax
                0x00007f9528637d94:   jne    0x00007f9528637da0
                0x00007f9528637d96:   movq   $0x0,0x3e(%r10)
                0x00007f9528637d9e:   jmp    0x00007f9528637ddd
....................................................................................................
  17.53%  <total for region 3>

....[Hottest Regions]...............................................................................
  43.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 556 
  32.30%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 556 
  17.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 556 
   4.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 590 
   1.42%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.63%  <...other 202 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::chain_method_calls, version 2, compile id 556 
   4.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_chain_method_calls_jmhTest::chain_method_calls_avgt_jmhStub, version 6, compile id 590 
   2.36%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%         interpreter  invokestatic  184 invokestatic  
   0.01%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __strcmp_avx2 
   0.00%           libjvm.so  fileStream::write 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  G1ServiceThread::wait_for_task 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  os::elapsed_counter 
   0.00%         interpreter  iconst_0  3 iconst_0  
   0.07%  <...other 37 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.46%         c2, level 4
   2.36%              kernel
   0.07%           libjvm.so
   0.04%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%                    
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls

# Run progress: 33.33% complete, ETA 00:07:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 212.023 ns/op
# Warmup Iteration   2: 210.765 ns/op
# Warmup Iteration   3: 210.862 ns/op
# Warmup Iteration   4: 210.991 ns/op
# Warmup Iteration   5: 211.105 ns/op
Iteration   1: 211.060 ns/op
Iteration   2: 210.844 ns/op
Iteration   3: 210.729 ns/op
Iteration   4: 210.731 ns/op
Iteration   5: 210.853 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls":
  210.844 ±(99.9%) 0.519 ns/op [Average]
  (min, avg, max) = (210.729, 210.844, 211.060), stdev = 0.135
  CI (99.9%): [210.325, 211.362] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_chain_method_calls:asm":
PrintAssembly processed: 126831 total address lines.
Perf output processed (skipped 56.360 seconds):
 Column 1: cycles (50857 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 

                  0x00007f3f7c638e2f:   movq   $0x0,0x3e(%r10)
                  0x00007f3f7c638e37:   lock addl $0x0,(%rsp)
                  0x00007f3f7c638e3c:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007f3f7c638e44:   jne    0x00007f3f7c638e53
          │       0x00007f3f7c638e46:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007f3f7c638e4c:   jne    0x00007f3f7c638e53
          ││      0x00007f3f7c638e4e:   or     $0x1,%eax
          ││╭     0x00007f3f7c638e51:   jmp    0x00007f3f7c638e60
          ↘↘│     0x00007f3f7c638e53:   test   $0x0,%al
            │╭    0x00007f3f7c638e55:   jmp    0x00007f3f7c638e60
   0.20%    ││    0x00007f3f7c638e57:   mov    (%rax),%r10
            ││    0x00007f3f7c638e5a:   lock cmpxchg %r10,0x0(%rbp)
   3.48%    ↘↘╭   0x00007f3f7c638e60:   jne    0x00007f3f7c638e6c
              │   0x00007f3f7c638e62:   decq   0x550(%r15)
   0.23%      │   0x00007f3f7c638e69:   xor    %r10d,%r10d
              ↘   0x00007f3f7c638e6c:   jne    0x00007f3f7c6393e5           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@51 (line 153)
   0.19%          0x00007f3f7c638e72:   cmp    $0x20,%r13d
                  0x00007f3f7c638e76:   jle    0x00007f3f7c639598           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@58 (line 155)
                  0x00007f3f7c638e7c:   lea    0x20(%rsp),%rbx
                  0x00007f3f7c638e81:   mov    0x0(%rbp),%rax
   2.29%          0x00007f3f7c638e85:   test   $0x2,%al
               ╭  0x00007f3f7c638e87:   jne    0x00007f3f7c638eb1
   0.18%       │  0x00007f3f7c638e8d:   or     $0x1,%rax
               │  0x00007f3f7c638e91:   mov    %rax,(%rbx)
   0.35%       │  0x00007f3f7c638e94:   lock cmpxchg %rbx,0x0(%rbp)
   4.53%       │  0x00007f3f7c638e9a:   je     0x00007f3f7c638ed7
               │  0x00007f3f7c638ea0:   sub    %rsp,%rax
               │  0x00007f3f7c638ea3:   and    $0xfffffffffffff007,%rax
               │  0x00007f3f7c638ea9:   mov    %rax,(%rbx)
               │  0x00007f3f7c638eac:   jmp    0x00007f3f7c638ed5
               ↘  0x00007f3f7c638eb1:   mov    %rax,%r10
                  0x00007f3f7c638eb4:   xor    %rax,%rax
                  0x00007f3f7c638eb7:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007f3f7c638ebd:   movq   $0x3,(%rbx)
                  0x00007f3f7c638ec4:   je     0x00007f3f7c638ed7
                  0x00007f3f7c638ec6:   cmp    %rax,%r15
....................................................................................................
  11.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 

                  0x00007f3f7c638d15:   movq   $0x0,0x3e(%r10)
                  0x00007f3f7c638d1d:   lock addl $0x0,(%rsp)
                  0x00007f3f7c638d22:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007f3f7c638d2a:   jne    0x00007f3f7c638d39
          │       0x00007f3f7c638d2c:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007f3f7c638d32:   jne    0x00007f3f7c638d39
          ││      0x00007f3f7c638d34:   or     $0x1,%eax
          ││╭     0x00007f3f7c638d37:   jmp    0x00007f3f7c638d46
          ↘↘│     0x00007f3f7c638d39:   test   $0x0,%al
            │╭    0x00007f3f7c638d3b:   jmp    0x00007f3f7c638d46
   0.22%    ││    0x00007f3f7c638d3d:   mov    (%rax),%r10
            ││    0x00007f3f7c638d40:   lock cmpxchg %r10,0x0(%rbp)
   3.53%    ↘↘╭   0x00007f3f7c638d46:   jne    0x00007f3f7c638d52
              │   0x00007f3f7c638d48:   decq   0x550(%r15)
   0.23%      │   0x00007f3f7c638d4f:   xor    %r10d,%r10d
              ↘   0x00007f3f7c638d52:   jne    0x00007f3f7c639396           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@39 (line 150)
   0.22%          0x00007f3f7c638d58:   nopl   0x0(%rax,%rax,1)
                  0x00007f3f7c638d60:   cmp    $0x20,%r13d
                  0x00007f3f7c638d64:   jle    0x00007f3f7c639580           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@46 (line 152)
                  0x00007f3f7c638d6a:   lea    0x20(%rsp),%rbx
                  0x00007f3f7c638d6f:   mov    0x0(%rbp),%rax
   2.41%          0x00007f3f7c638d73:   test   $0x2,%al
               ╭  0x00007f3f7c638d75:   jne    0x00007f3f7c638d9f
   0.20%       │  0x00007f3f7c638d7b:   or     $0x1,%rax
               │  0x00007f3f7c638d7f:   mov    %rax,(%rbx)
   0.42%       │  0x00007f3f7c638d82:   lock cmpxchg %rbx,0x0(%rbp)
   3.86%       │  0x00007f3f7c638d88:   je     0x00007f3f7c638dc5
               │  0x00007f3f7c638d8e:   sub    %rsp,%rax
               │  0x00007f3f7c638d91:   and    $0xfffffffffffff007,%rax
               │  0x00007f3f7c638d97:   mov    %rax,(%rbx)
               │  0x00007f3f7c638d9a:   jmp    0x00007f3f7c638dc3
               ↘  0x00007f3f7c638d9f:   mov    %rax,%r10
                  0x00007f3f7c638da2:   xor    %rax,%rax
                  0x00007f3f7c638da5:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007f3f7c638dab:   movq   $0x3,(%rbx)
                  0x00007f3f7c638db2:   je     0x00007f3f7c638dc5
                  0x00007f3f7c638db4:   cmp    %rax,%r15
....................................................................................................
  11.10%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 

                  0x00007f3f7c638c03:   movq   $0x0,0x3e(%r10)
                  0x00007f3f7c638c0b:   lock addl $0x0,(%rsp)
                  0x00007f3f7c638c10:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007f3f7c638c18:   jne    0x00007f3f7c638c27
          │       0x00007f3f7c638c1a:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007f3f7c638c20:   jne    0x00007f3f7c638c27
          ││      0x00007f3f7c638c22:   or     $0x1,%eax
          ││╭     0x00007f3f7c638c25:   jmp    0x00007f3f7c638c34
          ↘↘│     0x00007f3f7c638c27:   test   $0x0,%al
            │╭    0x00007f3f7c638c29:   jmp    0x00007f3f7c638c34
   0.17%    ││    0x00007f3f7c638c2b:   mov    (%rax),%r10
            ││    0x00007f3f7c638c2e:   lock cmpxchg %r10,0x0(%rbp)
   3.19%    ↘↘╭   0x00007f3f7c638c34:   jne    0x00007f3f7c638c40
              │   0x00007f3f7c638c36:   decq   0x550(%r15)
   0.17%      │   0x00007f3f7c638c3d:   xor    %r10d,%r10d
              ↘   0x00007f3f7c638c40:   jne    0x00007f3f7c63934a           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@27 (line 147)
   0.19%          0x00007f3f7c638c46:   cmp    $0x20,%r13d
                  0x00007f3f7c638c4a:   jle    0x00007f3f7c639568           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@34 (line 149)
                  0x00007f3f7c638c50:   lea    0x20(%rsp),%rbx
                  0x00007f3f7c638c55:   mov    0x0(%rbp),%rax
   2.22%          0x00007f3f7c638c59:   test   $0x2,%al
               ╭  0x00007f3f7c638c5b:   jne    0x00007f3f7c638c85
   0.17%       │  0x00007f3f7c638c61:   or     $0x1,%rax
               │  0x00007f3f7c638c65:   mov    %rax,(%rbx)
   0.36%       │  0x00007f3f7c638c68:   lock cmpxchg %rbx,0x0(%rbp)
   4.36%       │  0x00007f3f7c638c6e:   je     0x00007f3f7c638cab
               │  0x00007f3f7c638c74:   sub    %rsp,%rax
               │  0x00007f3f7c638c77:   and    $0xfffffffffffff007,%rax
               │  0x00007f3f7c638c7d:   mov    %rax,(%rbx)
               │  0x00007f3f7c638c80:   jmp    0x00007f3f7c638ca9
               ↘  0x00007f3f7c638c85:   mov    %rax,%r10
                  0x00007f3f7c638c88:   xor    %rax,%rax
                  0x00007f3f7c638c8b:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007f3f7c638c91:   movq   $0x3,(%rbx)
                  0x00007f3f7c638c98:   je     0x00007f3f7c638cab
                  0x00007f3f7c638c9a:   cmp    %rax,%r15
....................................................................................................
  10.82%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 

                  0x00007f3f7c638f41:   movq   $0x0,0x3e(%r10)
                  0x00007f3f7c638f49:   lock addl $0x0,(%rsp)
                  0x00007f3f7c638f4e:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007f3f7c638f56:   jne    0x00007f3f7c638f65
          │       0x00007f3f7c638f58:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007f3f7c638f5e:   jne    0x00007f3f7c638f65
          ││      0x00007f3f7c638f60:   or     $0x1,%eax
          ││╭     0x00007f3f7c638f63:   jmp    0x00007f3f7c638f72
          ↘↘│     0x00007f3f7c638f65:   test   $0x0,%al
            │╭    0x00007f3f7c638f67:   jmp    0x00007f3f7c638f72
   0.20%    ││    0x00007f3f7c638f69:   mov    (%rax),%r10
            ││    0x00007f3f7c638f6c:   lock cmpxchg %r10,0x0(%rbp)
   3.09%    ↘↘╭   0x00007f3f7c638f72:   jne    0x00007f3f7c638f7e
              │   0x00007f3f7c638f74:   decq   0x550(%r15)
   0.21%      │   0x00007f3f7c638f7b:   xor    %r10d,%r10d
              ↘   0x00007f3f7c638f7e:   xchg   %ax,%ax
   0.15%          0x00007f3f7c638f80:   jne    0x00007f3f7c63942e           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@63 (line 156)
                  0x00007f3f7c638f86:   cmp    $0x20,%r13d
                  0x00007f3f7c638f8a:   jle    0x00007f3f7c6395b0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls@70 (line 158)
                  0x00007f3f7c638f90:   lea    0x20(%rsp),%rbx
                  0x00007f3f7c638f95:   mov    0x0(%rbp),%rax
   2.03%          0x00007f3f7c638f99:   test   $0x2,%al
               ╭  0x00007f3f7c638f9b:   jne    0x00007f3f7c638fc5
   0.19%       │  0x00007f3f7c638fa1:   or     $0x1,%rax
               │  0x00007f3f7c638fa5:   mov    %rax,(%rbx)
   0.41%       │  0x00007f3f7c638fa8:   lock cmpxchg %rbx,0x0(%rbp)
   4.35%       │  0x00007f3f7c638fae:   je     0x00007f3f7c638feb
               │  0x00007f3f7c638fb4:   sub    %rsp,%rax
               │  0x00007f3f7c638fb7:   and    $0xfffffffffffff007,%rax
               │  0x00007f3f7c638fbd:   mov    %rax,(%rbx)
               │  0x00007f3f7c638fc0:   jmp    0x00007f3f7c638fe9
               ↘  0x00007f3f7c638fc5:   mov    %rax,%r10
                  0x00007f3f7c638fc8:   xor    %rax,%rax
                  0x00007f3f7c638fcb:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007f3f7c638fd1:   movq   $0x3,(%rbx)
                  0x00007f3f7c638fd8:   je     0x00007f3f7c638feb
                  0x00007f3f7c638fda:   cmp    %rax,%r15
....................................................................................................
  10.63%  <total for region 4>

....[Hottest Regions]...............................................................................
  11.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
  11.10%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
  10.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
  10.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   9.53%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   8.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   8.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   4.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   3.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.63%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.54%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.36%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.02%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   1.26%              kernel  [unknown] 
   0.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 603 
   0.06%              kernel  [unknown] 
   0.93%  <...other 214 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_chain_method_calls, version 2, compile id 569 
   2.05%              kernel  [unknown] 
   0.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_chain_method_calls_jmhTest::conditional_chain_method_calls_avgt_jmhStub, version 6, compile id 603 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  defaultStream::hold 
   0.01%                      <unknown> 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.01%        libc-2.31.so  syscall 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%  libpthread-2.31.so  __libc_write 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __strlen_avx2 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.00%              [vdso]  __vdso_clock_gettime 
   0.00%        libc-2.31.so  __vfprintf_internal 
   0.00%           libjvm.so  xmlStream::write_text 
   0.00%           libjvm.so  jio_print 
   0.09%  <...other 47 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.75%         c2, level 4
   2.05%              kernel
   0.11%           libjvm.so
   0.04%        libc-2.31.so
   0.01%  libpthread-2.31.so
   0.01%                    
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-1938201.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls

# Run progress: 50.00% complete, ETA 00:05:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 213.070 ns/op
# Warmup Iteration   2: 211.672 ns/op
# Warmup Iteration   3: 211.404 ns/op
# Warmup Iteration   4: 211.239 ns/op
# Warmup Iteration   5: 211.051 ns/op
Iteration   1: 211.194 ns/op
Iteration   2: 211.247 ns/op
Iteration   3: 211.437 ns/op
Iteration   4: 211.326 ns/op
Iteration   5: 211.303 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls":
  211.302 ±(99.9%) 0.353 ns/op [Average]
  (min, avg, max) = (211.194, 211.302, 211.437), stdev = 0.092
  CI (99.9%): [210.949, 211.654] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.conditional_nested_method_calls:asm":
PrintAssembly processed: 125373 total address lines.
Perf output processed (skipped 56.186 seconds):
 Column 1: cycles (50763 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 

                  0x00007fd6486373af:   movq   $0x0,0x3e(%r10)
                  0x00007fd6486373b7:   lock addl $0x0,(%rsp)
                  0x00007fd6486373bc:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007fd6486373c4:   jne    0x00007fd6486373d3
          │       0x00007fd6486373c6:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007fd6486373cc:   jne    0x00007fd6486373d3
          ││      0x00007fd6486373ce:   or     $0x1,%eax
          ││╭     0x00007fd6486373d1:   jmp    0x00007fd6486373e0
          ↘↘│     0x00007fd6486373d3:   test   $0x0,%al
            │╭    0x00007fd6486373d5:   jmp    0x00007fd6486373e0
   0.20%    ││    0x00007fd6486373d7:   mov    (%rax),%r10
            ││    0x00007fd6486373da:   lock cmpxchg %r10,0x0(%rbp)
   3.29%    ↘↘╭   0x00007fd6486373e0:   jne    0x00007fd6486373ec
              │   0x00007fd6486373e2:   decq   0x550(%r15)
   0.21%      │   0x00007fd6486373e9:   xor    %r10d,%r10d
              ↘   0x00007fd6486373ec:   jne    0x00007fd648637965           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@51 (line 184)
   0.21%          0x00007fd6486373f2:   cmp    $0x20,%r13d
                  0x00007fd6486373f6:   jle    0x00007fd648637b18           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@58 (line 185)
                  0x00007fd6486373fc:   lea    0x20(%rsp),%rbx
                  0x00007fd648637401:   mov    0x0(%rbp),%rax
   2.29%          0x00007fd648637405:   test   $0x2,%al
               ╭  0x00007fd648637407:   jne    0x00007fd648637431
   0.20%       │  0x00007fd64863740d:   or     $0x1,%rax
               │  0x00007fd648637411:   mov    %rax,(%rbx)
   0.37%       │  0x00007fd648637414:   lock cmpxchg %rbx,0x0(%rbp)
   4.52%       │  0x00007fd64863741a:   je     0x00007fd648637457
               │  0x00007fd648637420:   sub    %rsp,%rax
               │  0x00007fd648637423:   and    $0xfffffffffffff007,%rax
               │  0x00007fd648637429:   mov    %rax,(%rbx)
               │  0x00007fd64863742c:   jmp    0x00007fd648637455
               ↘  0x00007fd648637431:   mov    %rax,%r10
                  0x00007fd648637434:   xor    %rax,%rax
                  0x00007fd648637437:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007fd64863743d:   movq   $0x3,(%rbx)
                  0x00007fd648637444:   je     0x00007fd648637457
                  0x00007fd648637446:   cmp    %rax,%r15
....................................................................................................
  11.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 

                  0x00007fd6486374c1:   movq   $0x0,0x3e(%r10)
                  0x00007fd6486374c9:   lock addl $0x0,(%rsp)
                  0x00007fd6486374ce:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007fd6486374d6:   jne    0x00007fd6486374e5
          │       0x00007fd6486374d8:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007fd6486374de:   jne    0x00007fd6486374e5
          ││      0x00007fd6486374e0:   or     $0x1,%eax
          ││╭     0x00007fd6486374e3:   jmp    0x00007fd6486374f2
          ↘↘│     0x00007fd6486374e5:   test   $0x0,%al
            │╭    0x00007fd6486374e7:   jmp    0x00007fd6486374f2
   0.20%    ││    0x00007fd6486374e9:   mov    (%rax),%r10
            ││    0x00007fd6486374ec:   lock cmpxchg %r10,0x0(%rbp)
   3.24%    ↘↘╭   0x00007fd6486374f2:   jne    0x00007fd6486374fe
              │   0x00007fd6486374f4:   decq   0x550(%r15)
   0.19%      │   0x00007fd6486374fb:   xor    %r10d,%r10d
              ↘   0x00007fd6486374fe:   xchg   %ax,%ax
   0.19%          0x00007fd648637500:   jne    0x00007fd6486379ae           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@63 (line 186)
                  0x00007fd648637506:   cmp    $0x20,%r13d
                  0x00007fd64863750a:   jle    0x00007fd648637b30           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@70 (line 187)
                  0x00007fd648637510:   lea    0x20(%rsp),%rbx
                  0x00007fd648637515:   mov    0x0(%rbp),%rax
   2.06%          0x00007fd648637519:   test   $0x2,%al
               ╭  0x00007fd64863751b:   jne    0x00007fd648637545
   0.18%       │  0x00007fd648637521:   or     $0x1,%rax
               │  0x00007fd648637525:   mov    %rax,(%rbx)
   0.36%       │  0x00007fd648637528:   lock cmpxchg %rbx,0x0(%rbp)
   4.24%       │  0x00007fd64863752e:   je     0x00007fd64863756b
               │  0x00007fd648637534:   sub    %rsp,%rax
               │  0x00007fd648637537:   and    $0xfffffffffffff007,%rax
               │  0x00007fd64863753d:   mov    %rax,(%rbx)
               │  0x00007fd648637540:   jmp    0x00007fd648637569
               ↘  0x00007fd648637545:   mov    %rax,%r10
                  0x00007fd648637548:   xor    %rax,%rax
                  0x00007fd64863754b:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007fd648637551:   movq   $0x3,(%rbx)
                  0x00007fd648637558:   je     0x00007fd64863756b
                  0x00007fd64863755a:   cmp    %rax,%r15
....................................................................................................
  10.67%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 

                  0x00007fd648637183:   movq   $0x0,0x3e(%r10)
                  0x00007fd64863718b:   lock addl $0x0,(%rsp)
                  0x00007fd648637190:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007fd648637198:   jne    0x00007fd6486371a7
          │       0x00007fd64863719a:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007fd6486371a0:   jne    0x00007fd6486371a7
          ││      0x00007fd6486371a2:   or     $0x1,%eax
          ││╭     0x00007fd6486371a5:   jmp    0x00007fd6486371b4
          ↘↘│     0x00007fd6486371a7:   test   $0x0,%al
            │╭    0x00007fd6486371a9:   jmp    0x00007fd6486371b4
   0.17%    ││    0x00007fd6486371ab:   mov    (%rax),%r10
            ││    0x00007fd6486371ae:   lock cmpxchg %r10,0x0(%rbp)
   3.08%    ↘↘╭   0x00007fd6486371b4:   jne    0x00007fd6486371c0
              │   0x00007fd6486371b6:   decq   0x550(%r15)
   0.17%      │   0x00007fd6486371bd:   xor    %r10d,%r10d
              ↘   0x00007fd6486371c0:   jne    0x00007fd6486378ca           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@27 (line 180)
   0.22%          0x00007fd6486371c6:   cmp    $0x20,%r13d
                  0x00007fd6486371ca:   jle    0x00007fd648637ae8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@34 (line 181)
                  0x00007fd6486371d0:   lea    0x20(%rsp),%rbx
                  0x00007fd6486371d5:   mov    0x0(%rbp),%rax
   2.01%          0x00007fd6486371d9:   test   $0x2,%al
               ╭  0x00007fd6486371db:   jne    0x00007fd648637205
   0.21%       │  0x00007fd6486371e1:   or     $0x1,%rax
               │  0x00007fd6486371e5:   mov    %rax,(%rbx)
   0.42%       │  0x00007fd6486371e8:   lock cmpxchg %rbx,0x0(%rbp)
   4.30%       │  0x00007fd6486371ee:   je     0x00007fd64863722b
               │  0x00007fd6486371f4:   sub    %rsp,%rax
               │  0x00007fd6486371f7:   and    $0xfffffffffffff007,%rax
               │  0x00007fd6486371fd:   mov    %rax,(%rbx)
               │  0x00007fd648637200:   jmp    0x00007fd648637229
               ↘  0x00007fd648637205:   mov    %rax,%r10
                  0x00007fd648637208:   xor    %rax,%rax
                  0x00007fd64863720b:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007fd648637211:   movq   $0x3,(%rbx)
                  0x00007fd648637218:   je     0x00007fd64863722b
                  0x00007fd64863721a:   cmp    %rax,%r15
....................................................................................................
  10.57%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 

                  0x00007fd648637295:   movq   $0x0,0x3e(%r10)
                  0x00007fd64863729d:   lock addl $0x0,(%rsp)
                  0x00007fd6486372a2:   cmpq   $0x0,0x9e(%r10)
          ╭       0x00007fd6486372aa:   jne    0x00007fd6486372b9
          │       0x00007fd6486372ac:   lock cmpxchg %r15,0x3e(%r10)
          │╭      0x00007fd6486372b2:   jne    0x00007fd6486372b9
          ││      0x00007fd6486372b4:   or     $0x1,%eax
          ││╭     0x00007fd6486372b7:   jmp    0x00007fd6486372c6
          ↘↘│     0x00007fd6486372b9:   test   $0x0,%al
            │╭    0x00007fd6486372bb:   jmp    0x00007fd6486372c6
   0.18%    ││    0x00007fd6486372bd:   mov    (%rax),%r10
            ││    0x00007fd6486372c0:   lock cmpxchg %r10,0x0(%rbp)
   3.13%    ↘↘╭   0x00007fd6486372c6:   jne    0x00007fd6486372d2
              │   0x00007fd6486372c8:   decq   0x550(%r15)
   0.18%      │   0x00007fd6486372cf:   xor    %r10d,%r10d
              ↘   0x00007fd6486372d2:   jne    0x00007fd648637916           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::sum@6 (line 225)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@39 (line 182)
   0.18%          0x00007fd6486372d8:   nopl   0x0(%rax,%rax,1)
                  0x00007fd6486372e0:   cmp    $0x20,%r13d
                  0x00007fd6486372e4:   jle    0x00007fd648637b00           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls@46 (line 183)
                  0x00007fd6486372ea:   lea    0x20(%rsp),%rbx
                  0x00007fd6486372ef:   mov    0x0(%rbp),%rax
   2.23%          0x00007fd6486372f3:   test   $0x2,%al
               ╭  0x00007fd6486372f5:   jne    0x00007fd64863731f
   0.17%       │  0x00007fd6486372fb:   or     $0x1,%rax
               │  0x00007fd6486372ff:   mov    %rax,(%rbx)
   0.41%       │  0x00007fd648637302:   lock cmpxchg %rbx,0x0(%rbp)
   4.11%       │  0x00007fd648637308:   je     0x00007fd648637345
               │  0x00007fd64863730e:   sub    %rsp,%rax
               │  0x00007fd648637311:   and    $0xfffffffffffff007,%rax
               │  0x00007fd648637317:   mov    %rax,(%rbx)
               │  0x00007fd64863731a:   jmp    0x00007fd648637343
               ↘  0x00007fd64863731f:   mov    %rax,%r10
                  0x00007fd648637322:   xor    %rax,%rax
                  0x00007fd648637325:   lock cmpxchg %r15,0x3e(%r10)
                  0x00007fd64863732b:   movq   $0x3,(%rbx)
                  0x00007fd648637332:   je     0x00007fd648637345
                  0x00007fd648637334:   cmp    %rax,%r15
....................................................................................................
  10.57%  <total for region 4>

....[Hottest Regions]...............................................................................
  11.29%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
  10.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
  10.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
  10.57%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   9.60%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   9.26%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   8.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   4.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   3.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.44%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.27%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.15%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   0.76%              kernel  [unknown] 
   0.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 588 
   0.25%              kernel  [unknown] 
   1.33%  <...other 301 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  97.14%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::conditional_nested_method_calls, version 2, compile id 550 
   2.10%              kernel  [unknown] 
   0.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_conditional_nested_method_calls_jmhTest::conditional_nested_method_calls_avgt_jmhStub, version 6, compile id 588 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_fflush 
   0.00%        libc-2.31.so  syscall 
   0.00%        libc-2.31.so  _IO_default_xsputn 
   0.00%        libc-2.31.so  __mempcpy_avx_unaligned_erms 
   0.00%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%           libjvm.so  MethodMatcher::matches 
   0.00%           libjvm.so  fileStream::write 
   0.00%      hsdis-amd64.so  print_insn 
   0.00%         interpreter  method entry point (kind = zerolocals)  
   0.00%           libjvm.so  defaultStream::hold 
   0.00%           libjvm.so  metadata_Relocation::metadata_value 
   0.11%  <...other 56 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.66%         c2, level 4
   2.10%              kernel
   0.10%           libjvm.so
   0.05%        libc-2.31.so
   0.03%                    
   0.02%      hsdis-amd64.so
   0.02%         interpreter
   0.01%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.00%        runtime stub
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized

# Run progress: 66.67% complete, ETA 00:03:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1380.236 ns/op
# Warmup Iteration   2: 1378.075 ns/op
# Warmup Iteration   3: 1370.172 ns/op
# Warmup Iteration   4: 1371.858 ns/op
# Warmup Iteration   5: 1370.932 ns/op
Iteration   1: 1371.200 ns/op
Iteration   2: 1371.124 ns/op
Iteration   3: 1370.087 ns/op
Iteration   4: 1369.148 ns/op
Iteration   5: 1369.220 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized":
  1370.156 ±(99.9%) 3.814 ns/op [Average]
  (min, avg, max) = (1369.148, 1370.156, 1371.200), stdev = 0.991
  CI (99.9%): [1366.341, 1373.970] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.nested_synchronized:asm":
PrintAssembly processed: 121852 total address lines.
Perf output processed (skipped 56.048 seconds):
 Column 1: cycles (50708 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
interpreter, monitorenter  194 monitorenter  

                   --------------------------------------------------------------------------------
                   ----------------------------------------------------------------------
                   monitorenter  194 monitorenter  [0x00007f7dd0090400, 0x00007f7dd0090540]  320 bytes
                   --------------------------------------------------------------------------------
   2.75%             0x00007f7dd0090400:   pop    %rax
   2.41%             0x00007f7dd0090401:   cmp    (%rax),%rax
   1.16%             0x00007f7dd0090404:   xor    %esi,%esi
                     0x00007f7dd0090406:   mov    -0x48(%rbp),%rcx
                     0x00007f7dd009040a:   lea    -0x48(%rbp),%rdx
          ╭          0x00007f7dd009040e:   jmp    0x00007f7dd0090423
   0.19%  │ ↗        0x00007f7dd0090410:   cmpq   $0x0,0x8(%rcx)
          │ │        0x00007f7dd0090415:   cmove  %rcx,%rsi
          │ │        0x00007f7dd0090419:   cmp    0x8(%rcx),%rax
          │╭│        0x00007f7dd009041d:   je     0x00007f7dd0090428
          │││        0x00007f7dd009041f:   add    $0x10,%rcx
   0.25%  ↘││        0x00007f7dd0090423:   cmp    %rdx,%rcx
           │╰        0x00007f7dd0090426:   jne    0x00007f7dd0090410
   0.19%   ↘         0x00007f7dd0090428:   test   %rsi,%rsi
             ╭       0x00007f7dd009042b:   jne    0x00007f7dd0090459
             │       0x00007f7dd0090431:   mov    -0x48(%rbp),%rsi
             │       0x00007f7dd0090435:   sub    $0x10,%rsp
   0.25%     │       0x00007f7dd0090439:   sub    $0x10,%rsi
             │       0x00007f7dd009043d:   mov    %rsp,%rcx
             │       0x00007f7dd0090440:   mov    %rsi,-0x48(%rbp)
   0.12%     │╭      0x00007f7dd0090444:   jmp    0x00007f7dd0090454
             ││↗     0x00007f7dd0090449:   mov    0x10(%rcx),%rdx
             │││     0x00007f7dd009044d:   mov    %rdx,(%rcx)
             │││     0x00007f7dd0090450:   add    $0x8,%rcx
   0.09%     │↘│     0x00007f7dd0090454:   cmp    %rsi,%rcx
             │ ╰     0x00007f7dd0090457:   jne    0x00007f7dd0090449
             ↘       0x00007f7dd0090459:   inc    %r13
                     0x00007f7dd009045c:   mov    %rax,0x8(%rsi)
   0.81%             0x00007f7dd0090460:   mov    0x8(%rsi),%rcx
   0.95%             0x00007f7dd0090464:   mov    $0x1,%eax
                     0x00007f7dd0090469:   or     (%rcx),%rax
   1.59%             0x00007f7dd009046c:   mov    %rax,(%rsi)
   0.45%             0x00007f7dd009046f:   lock cmpxchg %rsi,(%rcx)
   4.50%        ╭    0x00007f7dd0090474:   je     0x00007f7dd009048c
                │    0x00007f7dd009047a:   sub    %rsp,%rax
   0.20%        │    0x00007f7dd009047d:   and    $0xfffffffffffff007,%rax
                │    0x00007f7dd0090483:   mov    %rax,(%rsi)
   0.02%        │╭   0x00007f7dd0090486:   jne    0x00007f7dd0090498
                ↘│   0x00007f7dd009048c:   incq   0x550(%r15)
   0.22%         │   0x00007f7dd0090493:   jmp    0x00007f7dd0090522
                 ↘╭  0x00007f7dd0090498:   call   0x00007f7dd00904a2
                  │  0x00007f7dd009049d:   jmp    0x00007f7dd0090522
                  ↘  0x00007f7dd00904a2:   lea    0x8(%rsp),%rax
                     0x00007f7dd00904a7:   mov    %r13,-0x40(%rbp)
                     0x00007f7dd00904ab:   mov    %r15,%rdi
                     0x00007f7dd00904ae:   vzeroupper 
                     0x00007f7dd00904b1:   mov    %rbp,0x3a8(%r15)
                     0x00007f7dd00904b8:   mov    %rax,0x398(%r15)
                     0x00007f7dd00904bf:   test   $0xf,%spl
                     0x00007f7dd00904c3:   je     0x00007f7dd00904db
....................................................................................................
  16.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
interpreter, fast_iaccess_0  221 fast_iaccess_0  

               0x00007f7dd0091f80:   sub    $0x8,%rsp
               0x00007f7dd0091f84:   vmovss %xmm0,(%rsp)
          ╭    0x00007f7dd0091f89:   jmp    0x00007f7dd0091faa
          │    0x00007f7dd0091f8b:   sub    $0x10,%rsp
          │    0x00007f7dd0091f8f:   vmovsd %xmm0,(%rsp)
          │╭   0x00007f7dd0091f94:   jmp    0x00007f7dd0091faa
          ││   0x00007f7dd0091f96:   sub    $0x10,%rsp
          ││   0x00007f7dd0091f9a:   mov    %rax,(%rsp)
          ││   0x00007f7dd0091f9e:   movq   $0x0,0x8(%rsp)
          ││╭  0x00007f7dd0091fa7:   jmp    0x00007f7dd0091faa
   4.31%  │││  0x00007f7dd0091fa9:   push   %rax
   2.65%  ↘↘↘  0x00007f7dd0091faa:   mov    (%r14),%rax
   0.29%       0x00007f7dd0091fad:   movzwl 0x2(%r13),%edx
   0.03%       0x00007f7dd0091fb2:   mov    -0x30(%rbp),%rcx
               0x00007f7dd0091fb6:   shl    $0x2,%edx
   0.26%       0x00007f7dd0091fb9:   mov    0x48(%rcx,%rdx,8),%rbx
   1.18%       0x00007f7dd0091fbe:   inc    %r13
               0x00007f7dd0091fc1:   cmp    (%rax),%rax
   0.01%       0x00007f7dd0091fc4:   mov    (%rax,%rbx,1),%eax
   1.20%       0x00007f7dd0091fc7:   dec    %r13
               0x00007f7dd0091fca:   movzbl 0x4(%r13),%ebx
               0x00007f7dd0091fcf:   add    $0x4,%r13
               0x00007f7dd0091fd3:   movabs $0x7f7de79d9220,%r10
   0.27%       0x00007f7dd0091fdd:   jmp    *(%r10,%rbx,8)
               0x00007f7dd0091fe1:   nopl   0x0(%rax)
             --------------------------------------------------------------------------------
             ----------------------------------------------------------------------
             fast_aaccess_0  222 fast_aaccess_0  [0x00007f7dd0092000, 0x00007f7dd0092068]  104 bytes
             --------------------------------------------------------------------------------
....................................................................................................
  10.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  16.16%         interpreter  monitorenter  194 monitorenter  
  10.18%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   9.19%         interpreter  monitorexit  195 monitorexit  
   8.11%         interpreter  goto  167 goto  
   7.52%         interpreter  dup  89 dup  
   6.97%         interpreter  istore_1  60 istore_1  
   6.40%         interpreter  fast_aload_0  220 fast_aload_0  
   5.98%         interpreter  aload  25 aload  
   5.66%         interpreter  iadd  96 iadd  
   5.45%         interpreter  astore  58 astore  
   2.75%         interpreter  monitorexit  195 monitorexit  
   1.85%         interpreter  iload_1  27 iload_1  
   1.27%         interpreter  method entry point (kind = zerolocals)  
   0.96%         interpreter  ishl  120 ishl  
   0.88%              kernel  [unknown] 
   0.82%         interpreter  aload_3  45 aload_3  
   0.79%         interpreter  astore_3  78 astore_3  
   0.79%         interpreter  goto  167 goto  
   0.78%         interpreter  ireturn  172 ireturn  
   0.78%         interpreter  aload_2  44 aload_2  
   6.73%  <...other 343 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  16.38%         interpreter  monitorenter  194 monitorenter  
  12.42%         interpreter  monitorexit  195 monitorexit  
  10.18%         interpreter  fast_iaccess_0  221 fast_iaccess_0  
   8.90%         interpreter  goto  167 goto  
   7.52%         interpreter  dup  89 dup  
   6.97%         interpreter  istore_1  60 istore_1  
   6.40%         interpreter  fast_aload_0  220 fast_aload_0  
   5.98%         interpreter  aload  25 aload  
   5.66%         interpreter  iadd  96 iadd  
   5.45%         interpreter  astore  58 astore  
   1.99%         interpreter  ireturn  172 ireturn  
   1.85%         interpreter  iload_1  27 iload_1  
   1.76%         interpreter  method entry point (kind = zerolocals)  
   1.71%              kernel  [unknown] 
   0.96%         interpreter  ishl  120 ishl  
   0.82%         interpreter  aload_3  45 aload_3  
   0.79%    perf-1938329.map  [unknown] 
   0.79%         interpreter  astore_3  78 astore_3  
   0.78%         interpreter  aload_2  44 aload_2  
   0.77%         interpreter  astore_2  77 astore_2  
   1.95%  <...other 100 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.18%         interpreter
   1.71%              kernel
   0.79%    perf-1938329.map
   0.71%         c2, level 4
   0.43%           libjvm.so
   0.06%                    
   0.05%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls

# Run progress: 83.33% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 84.600 ns/op
# Warmup Iteration   2: 83.922 ns/op
# Warmup Iteration   3: 84.099 ns/op
# Warmup Iteration   4: 83.920 ns/op
# Warmup Iteration   5: 83.924 ns/op
Iteration   1: 83.924 ns/op
Iteration   2: 83.923 ns/op
Iteration   3: 83.923 ns/op
Iteration   4: 83.920 ns/op
Iteration   5: 83.920 ns/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls":
  83.922 ±(99.9%) 0.006 ns/op [Average]
  (min, avg, max) = (83.920, 83.922, 83.924), stdev = 0.002
  CI (99.9%): [83.916, 83.928] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark.recursive_method_calls:asm":
PrintAssembly processed: 119917 total address lines.
Perf output processed (skipped 56.004 seconds):
 Column 1: cycles (50531 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 532 

             # parm1:    rcx       = int
             #           [sp+0x50]  (sp of caller)
             0x00007f883c635ea0:   mov    0x8(%rsi),%r10d
             0x00007f883c635ea4:   movabs $0x7f87bb000000,%r11
             0x00007f883c635eae:   add    %r11,%r10
             0x00007f883c635eb1:   cmp    %r10,%rax
             0x00007f883c635eb4:   jne    0x00007f883c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f883c635eba:   xchg   %ax,%ax
             0x00007f883c635ebc:   nopl   0x0(%rax)
           [Verified Entry Point]
   1.15%     0x00007f883c635ec0:   mov    %eax,-0x14000(%rsp)
   0.61%     0x00007f883c635ec7:   push   %rbp
   1.16%     0x00007f883c635ec8:   sub    $0x40,%rsp
   0.04%     0x00007f883c635ecc:   cmpl   $0x1,0x20(%r15)
   0.59%     0x00007f883c635ed4:   jne    0x00007f883c636238
   1.14%     0x00007f883c635eda:   mov    %ecx,%ebp
             0x00007f883c635edc:   mov    %edx,0x8(%rsp)
   0.03%     0x00007f883c635ee0:   mov    %rsi,(%rsp)
   0.48%     0x00007f883c635ee4:   lea    0x20(%rsp),%rbx
   1.11%     0x00007f883c635ee9:   mov    (%rsi),%rax
   6.93%     0x00007f883c635eec:   test   $0x2,%al
          ╭  0x00007f883c635eee:   jne    0x00007f883c635f17
   1.66%  │  0x00007f883c635ef4:   or     $0x1,%rax
          │  0x00007f883c635ef8:   mov    %rax,(%rbx)
   3.59%  │  0x00007f883c635efb:   lock cmpxchg %rbx,(%rsi)
  30.62%  │  0x00007f883c635f00:   je     0x00007f883c635f3d
          │  0x00007f883c635f06:   sub    %rsp,%rax
   1.60%  │  0x00007f883c635f09:   and    $0xfffffffffffff007,%rax
          │  0x00007f883c635f0f:   mov    %rax,(%rbx)
   1.55%  │  0x00007f883c635f12:   jmp    0x00007f883c635f3b
          ↘  0x00007f883c635f17:   mov    %rax,%r10
             0x00007f883c635f1a:   xor    %rax,%rax
             0x00007f883c635f1d:   lock cmpxchg %r15,0x3e(%r10)
             0x00007f883c635f23:   movq   $0x3,(%rbx)
             0x00007f883c635f2a:   je     0x00007f883c635f3d
             0x00007f883c635f2c:   cmp    %rax,%r15
             0x00007f883c635f2f:   jne    0x00007f883c635f46
             0x00007f883c635f31:   incq   0x86(%r10)
             0x00007f883c635f38:   xor    %rax,%rax
             0x00007f883c635f3b:   jne    0x00007f883c635f46
....................................................................................................
  52.25%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 535 

             # {method} {0x00007f87b7479a98} &apos;recursive_method_calls&apos; &apos;()I&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/compiler/LockCoarseningBenchmark&apos;
             #           [sp+0x40]  (sp of caller)
             0x00007f883c6369a0:   mov    0x8(%rsi),%r10d
             0x00007f883c6369a4:   movabs $0x7f87bb000000,%r11
             0x00007f883c6369ae:   add    %r11,%r10
             0x00007f883c6369b1:   cmp    %r10,%rax
             0x00007f883c6369b4:   jne    0x00007f883c0c4080           ;   {runtime_call ic_miss_stub}
             0x00007f883c6369ba:   xchg   %ax,%ax
             0x00007f883c6369bc:   nopl   0x0(%rax)
           [Verified Entry Point]
   0.54%     0x00007f883c6369c0:   mov    %eax,-0x14000(%rsp)
             0x00007f883c6369c7:   push   %rbp
             0x00007f883c6369c8:   sub    $0x30,%rsp
   0.55%     0x00007f883c6369cc:   cmpl   $0x1,0x20(%r15)
             0x00007f883c6369d4:   jne    0x00007f883c636c4f           ;*synchronization entry
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@-1 (line 115)
             0x00007f883c6369da:   mov    %rsi,0x8(%rsp)
   0.49%     0x00007f883c6369df:   mov    0x10(%rsi),%r9d
             0x00007f883c6369e3:   shl    %r9d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@5 (line 115)
             0x00007f883c6369e6:   lea    0x10(%rsp),%rbx
             0x00007f883c6369eb:   mov    (%rsi),%rax
   2.16%     0x00007f883c6369ee:   test   $0x2,%al
          ╭  0x00007f883c6369f0:   jne    0x00007f883c636a19
   0.52%  │  0x00007f883c6369f6:   or     $0x1,%rax
          │  0x00007f883c6369fa:   mov    %rax,(%rbx)
   1.01%  │  0x00007f883c6369fd:   lock cmpxchg %rbx,(%rsi)
   9.49%  │  0x00007f883c636a02:   je     0x00007f883c636a3f
          │  0x00007f883c636a08:   sub    %rsp,%rax
          │  0x00007f883c636a0b:   and    $0xfffffffffffff007,%rax
          │  0x00007f883c636a11:   mov    %rax,(%rbx)
          │  0x00007f883c636a14:   jmp    0x00007f883c636a3d
          ↘  0x00007f883c636a19:   mov    %rax,%r10
             0x00007f883c636a1c:   xor    %rax,%rax
             0x00007f883c636a1f:   lock cmpxchg %r15,0x3e(%r10)
             0x00007f883c636a25:   movq   $0x3,(%rbx)
             0x00007f883c636a2c:   je     0x00007f883c636a3f
             0x00007f883c636a2e:   cmp    %rax,%r15
....................................................................................................
  14.76%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 535 

                 0x00007f883c636ae0:   lock addl $0x0,(%rsp)
                 0x00007f883c636ae5:   cmpq   $0x0,0x9e(%r10)
          ╭      0x00007f883c636aed:   jne    0x00007f883c636afc
          │      0x00007f883c636aef:   lock cmpxchg %r15,0x3e(%r10)
          │╭     0x00007f883c636af5:   jne    0x00007f883c636afc
          ││     0x00007f883c636af7:   or     $0x1,%eax
          ││╭    0x00007f883c636afa:   jmp    0x00007f883c636b08
          ↘↘│    0x00007f883c636afc:   test   $0x0,%al
            │╭   0x00007f883c636afe:   jmp    0x00007f883c636b08
            ││   0x00007f883c636b00:   mov    (%rax),%r10
   0.39%    ││   0x00007f883c636b03:   lock cmpxchg %r10,(%r11)
  10.31%    ↘↘╭  0x00007f883c636b08:   jne    0x00007f883c636b14
              │  0x00007f883c636b0a:   decq   0x550(%r15)
   0.53%      │  0x00007f883c636b11:   xor    %r10d,%r10d
              ↘  0x00007f883c636b14:   jne    0x00007f883c636b4d           ;*invokevirtual recursiveSum {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@15 (line 232)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
   0.57%         0x00007f883c636b16:   lea    (%rbx,%rbp,1),%eax
                 0x00007f883c636b19:   add    %ebp,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@18 (line 232)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                 0x00007f883c636b1b:   add    $0x30,%rsp
                 0x00007f883c636b1f:   pop    %rbp
   0.53%         0x00007f883c636b20:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                 0x00007f883c636b27:   ja     0x00007f883c636c39
                 0x00007f883c636b2d:   ret    
                 0x00007f883c636b2e:   lea    0x10(%rsp),%rdx
                 0x00007f883c636b33:   mov    %rsi,%rbp
                 0x00007f883c636b36:   mov    %r9d,0x4(%rsp)
                 0x00007f883c636b3b:   call   0x00007f883c19ca80           ; ImmutableOopMap {rbp=Oop [8]=Oop }
                                                                           ;*synchronization entry
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum@-1 (line 229)
                                                                           ; - com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls@11 (line 116)
                                                                           ;   {runtime_call _complete_monitor_locking_Java}
....................................................................................................
  12.32%  <total for region 3>

....[Hottest Regions]...............................................................................
  52.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 532 
  14.76%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 535 
  12.32%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 535 
   8.65%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 532 
   4.94%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 532 
   3.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 535 
   1.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 571 
   0.84%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 532 
   0.55%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.70%  <...other 228 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.68%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursiveSum, version 2, compile id 532 
  30.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.LockCoarseningBenchmark::recursive_method_calls, version 2, compile id 535 
   1.56%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.compiler.jmh_generated.LockCoarseningBenchmark_recursive_method_calls_jmhTest::recursive_method_calls_avgt_jmhStub, version 6, compile id 571 
   1.38%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%        libc-2.31.so  syscall 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.00%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.00%           libjvm.so  Type::cmp 
   0.00%        libc-2.31.so  __strchr_avx2 
   0.00%          ld-2.31.so  __tls_get_addr 
   0.00%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.00%        libc-2.31.so  __strchrnul_avx2 
   0.00%           libjvm.so  defaultStream::write 
   0.00%           libjvm.so  nmethod::has_code_comment 
   0.00%           libjvm.so  os::elapsed_counter 
   0.10%  <...other 53 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.40%         c2, level 4
   1.38%              kernel
   0.10%           libjvm.so
   0.06%        libc-2.31.so
   0.02%                    
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:10:52

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

Benchmark                                                    Mode  Cnt     Score   Error  Units
LockCoarseningBenchmark.baseline                             avgt    5    27.072 ± 0.002  ns/op
LockCoarseningBenchmark.baseline:asm                         avgt            NaN            ---
LockCoarseningBenchmark.chain_method_calls                   avgt    5    27.072 ± 0.002  ns/op
LockCoarseningBenchmark.chain_method_calls:asm               avgt            NaN            ---
LockCoarseningBenchmark.conditional_chain_method_calls       avgt    5   210.844 ± 0.519  ns/op
LockCoarseningBenchmark.conditional_chain_method_calls:asm   avgt            NaN            ---
LockCoarseningBenchmark.conditional_nested_method_calls      avgt    5   211.302 ± 0.353  ns/op
LockCoarseningBenchmark.conditional_nested_method_calls:asm  avgt            NaN            ---
LockCoarseningBenchmark.nested_synchronized                  avgt    5  1370.156 ± 3.814  ns/op
LockCoarseningBenchmark.nested_synchronized:asm              avgt            NaN            ---
LockCoarseningBenchmark.recursive_method_calls               avgt    5    83.922 ± 0.006  ns/op
LockCoarseningBenchmark.recursive_method_calls:asm           avgt            NaN            ---
