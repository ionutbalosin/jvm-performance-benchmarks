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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 85.623 us/op
# Warmup Iteration   2: 28.951 us/op
# Warmup Iteration   3: 27.643 us/op
# Warmup Iteration   4: 24.414 us/op
# Warmup Iteration   5: 24.890 us/op
Iteration   1: 24.363 us/op
Iteration   2: 24.728 us/op
Iteration   3: 25.715 us/op
Iteration   4: 24.734 us/op
Iteration   5: 24.723 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  24.852 ±(99.9%) 1.954 us/op [Average]
  (min, avg, max) = (24.363, 24.852, 25.715), stdev = 0.507
  CI (99.9%): [22.898, 26.806] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 411962 total address lines.
Perf output processed (skipped 60.691 seconds):
 Column 1: cycles (157373 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  18.35%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1355 

                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd6e0:   mov    0x458(%r15),%r9              ; ImmutableOopMap {rbx=Oop r10=Oop [224]=Oop [232]=Oop [244]=NarrowOop [248]=Oop [256]=Oop }
                                                                         ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd6e7:   test   %eax,(%r9)                   ;   {poll}
               0x00007f5016dfd6ea:   mov    %rax,%r11                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       0x00007f5016dfd6ed:   mov    %r11d,0xc(%rbx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd6f1:   mov    %r11,%r9
               0x00007f5016dfd6f4:   add    0x1a0(%rsp),%r9              ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       0x00007f5016dfd6fc:   mov    %r9,%rax
   0.00%       0x00007f5016dfd6ff:   and    0x1b8(%rsp),%rax             ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd707:   mov    %rax,%rcx
               0x00007f5016dfd70a:   or     %r8,%rcx                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       0x00007f5016dfd70d:   mov    %r11,%rax
   0.00%       0x00007f5016dfd710:   lock cmpxchg %rcx,0xd8(%r10)        ;* unwind (locked if synchronized)
                                                                         ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                         ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.19%       0x00007f5016dfd719:   cmp    %r11,%rax
               0x00007f5016dfd71c:   jne    0x00007f5016dfd6e0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd71e:   and    0x1a0(%rsp),%r9              ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       0x00007f5016dfd726:   cmp    $0x1,%r9
               0x00007f5016dfd72a:   jl     0x00007f5016dfe3e5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd730:   mov    0x34(%r10),%r11d             ; ImmutableOopMap {rbx=Oop r10=Oop [224]=Oop [232]=Oop [244]=NarrowOop [248]=Oop [256]=Oop }
                                                                         ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       0x00007f5016dfd734:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f5016e0188d
   0.00%       0x00007f5016dfd73c:   mov    $0x0,%r8d
   0.00%       0x00007f5016dfd742:   mov    %r8d,0x140(%rsp)
               0x00007f5016dfd74a:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       0x00007f5016dfd751:   test   %r9d,%r9d
               0x00007f5016dfd754:   jge    0x00007f5016dfe6cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd75a:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       0x00007f5016dfd761:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd764:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd768:   lea    -0x2(%r11),%ecx
   0.00%       0x00007f5016dfd76c:   jmp    0x00007f5016dfd858           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               0x00007f5016dfd771:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007f5016dfd77c:   data16 data16 xchg %ax,%ax          ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%  ↗    0x00007f5016dfd780:   pause                               ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.Thread::onSpinWait@-3
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.18%  │    0x00007f5016dfd782:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%  │    0x00007f5016dfd789:   test   %r9d,%r9d
          │    0x00007f5016dfd78c:   jge    0x00007f5016dfe6cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │    0x00007f5016dfd792:   pause                               ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.Thread::onSpinWait@-3
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.20%  │    0x00007f5016dfd794:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%  │    0x00007f5016dfd79b:   nopl   0x0(%rax,%rax,1)
          │    0x00007f5016dfd7a0:   test   %r9d,%r9d
          │    0x00007f5016dfd7a3:   jge    0x00007f5016dfe6cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │    0x00007f5016dfd7a9:   pause                               ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.Thread::onSpinWait@-3
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.10%  │    0x00007f5016dfd7ab:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%  │    0x00007f5016dfd7b2:   test   %r9d,%r9d
          │    0x00007f5016dfd7b5:   jge    0x00007f5016dfe6cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │    0x00007f5016dfd7bb:   pause                               ;* unwind (locked if synchronized)
          │                                                              ; - java.lang.Thread::onSpinWait@-3
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.18%  │    0x00007f5016dfd7bd:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%  │    0x00007f5016dfd7c4:   test   %r9d,%r9d
          │    0x00007f5016dfd7c7:   jge    0x00007f5016dfe6cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │    0x00007f5016dfd7cd:   lea    -0x4(%r11),%r11d
          │    0x00007f5016dfd7d1:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.02%  │    0x00007f5016dfd7dc:   data16 data16 xchg %ax,%ax
   0.00%  │    0x00007f5016dfd7e0:   mov    %r11d,%ecx
          │    0x00007f5016dfd7e3:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │    0x00007f5016dfd7e5:   cmp    $0x5,%ecx                    ;   {no_reloc}
          ╰    0x00007f5016dfd7e8:   jge    0x00007f5016dfd780
           ╭   0x00007f5016dfd7ea:   jmp    0x00007f5016dfd820
           │   0x00007f5016dfd7ef:   data16 data16 nopw 0x0(%rax,%rax,1)
           │   0x00007f5016dfd7fa:   data16 data16 xchg %ax,%ax
           │   0x00007f5016dfd7fe:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
           │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │↗  0x00007f5016dfd800:   pause                               ;* unwind (locked if synchronized)
           ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
           ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.89%   ││  0x00007f5016dfd802:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   ││  0x00007f5016dfd809:   test   %r9d,%r9d
           ││  0x00007f5016dfd80c:   jge    0x00007f5016dfe6cc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ││  0x00007f5016dfd812:   data16 nopw 0x0(%rax,%rax,1)
           ││  0x00007f5016dfd81c:   data16 data16 xchg %ax,%ax
   0.01%   ↘│  0x00007f5016dfd820:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  0x00007f5016dfd823:   cmp    $0x1,%r11d
            │  0x00007f5016dfd827:   jl     0x00007f5016dfd86a
            ╰  0x00007f5016dfd82d:   jmp    0x00007f5016dfd800
               0x00007f5016dfd82f:   data16 data16 nopw 0x0(%rax,%rax,1)
               0x00007f5016dfd83a:   data16 data16 xchg %ax,%ax
               0x00007f5016dfd83e:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                         ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
....................................................................................................
  13.91%  <total for region 2>

....[Hottest Regions]...............................................................................
  18.35%               kernel  [unknown] 
  13.91%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1355 
   8.47%               kernel  [unknown] 
   1.98%               kernel  [unknown] 
   1.80%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1355 
   1.55%               kernel  [unknown] 
   1.47%               kernel  [unknown] 
   1.10%            libjvm.so  update_register_map1 
   0.98%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.95%               kernel  [unknown] 
   0.91%               kernel  [unknown] 
   0.85%               kernel  [unknown] 
   0.84%               kernel  [unknown] 
   0.75%            libjvm.so  Parker::park 
   0.74%               kernel  [unknown] 
   0.72%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1355 
   0.71%               kernel  [unknown] 
   0.71%               kernel  [unknown] 
   0.70%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.64%   libpthread-2.31.so  __pthread_mutex_trylock 
  41.89%  <...other 1715 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.29%               kernel  [unknown] 
  17.93%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1355 
   2.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 5, compile id 1385 
   1.45%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.11%            libjvm.so  update_register_map1 
   1.03%            libjvm.so  OopMapStream::find_next 
   0.92%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::blocking_calls, version 4, compile id 1423 
   0.91%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.88%            libjvm.so  vframeStream::vframeStream 
   0.86%            libjvm.so  Unsafe_Park 
   0.80%            libjvm.so  Parker::park 
   0.74%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.jmh_generated.VPThreadBlockingApiBenchmark_blocking_calls_jmhTest::blocking_calls_avgt_jmhStub, version 4, compile id 1380 
   0.73%       jvmci, level 4  jdk.internal.vm.Continuation::enter, version 4, compile id 1394 
   0.70%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.64%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::blocking_calls, version 2, compile id 1332 
   0.64%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.62%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.62%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.58%       jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1285 
   0.55%     Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 1036 
   9.54%  <...other 574 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  56.29%               kernel
  25.22%       jvmci, level 4
  10.40%            libjvm.so
   5.21%   libpthread-2.31.so
   0.80%     Unknown, level 0
   0.67%         libc-2.31.so
   0.41%               [vdso]
   0.35%           ld-2.31.so
   0.30%  libjvmcicompiler.so
   0.29%                     
   0.02%       hsdis-amd64.so
   0.02%         runtime stub
   0.01%          interpreter
   0.01%          c1, level 3
   0.00%     perf-2154926.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1, threadType = PLATFORM)

# Run progress: 12.50% complete, ETA 00:13:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 153.863 us/op
# Warmup Iteration   2: 148.250 us/op
# Warmup Iteration   3: 148.658 us/op
# Warmup Iteration   4: 153.231 us/op
# Warmup Iteration   5: 153.022 us/op
Iteration   1: 153.244 us/op
Iteration   2: 152.263 us/op
Iteration   3: 152.349 us/op
Iteration   4: 152.402 us/op
Iteration   5: 151.690 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  152.390 ±(99.9%) 2.142 us/op [Average]
  (min, avg, max) = (151.690, 152.390, 153.244), stdev = 0.556
  CI (99.9%): [150.247, 154.532] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 303351 total address lines.
Perf output processed (skipped 61.274 seconds):
 Column 1: cycles (1127268 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  56.42%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.89%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.42%               kernel  [unknown] 
  27.89%               kernel  [unknown] 
   2.36%               kernel  [unknown] 
   2.32%               kernel  [unknown] 
   1.72%               kernel  [unknown] 
   1.14%               kernel  [unknown] 
   0.97%               kernel  [unknown] 
   0.77%               kernel  [unknown] 
   0.59%               kernel  [unknown] 
   0.45%               kernel  [unknown] 
   0.36%               kernel  [unknown] 
   0.30%               kernel  [unknown] 
   0.19%               kernel  [unknown] 
   0.16%               kernel  [unknown] 
   0.15%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.10%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.07%               kernel  [unknown] 
   3.79%  <...other 2821 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  99.00%               kernel  [unknown] 
   0.03%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%         libc-2.31.so  _int_free 
   0.03%         libc-2.31.so  malloc 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%            libjvm.so  ThreadsSMRSupport::free_list 
   0.02%         libc-2.31.so  cfree@GLIBC_2.2.5 
   0.02%         libc-2.31.so  _int_malloc 
   0.02%            libjvm.so  ServiceThread::service_thread_entry 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%                       <unknown> 
   0.02%            libjvm.so  JVM_GetStackAccessControlContext 
   0.02%            libjvm.so  vframeStreamCommon::next 
   0.02%   libpthread-2.31.so  __pthread_mutex_lock 
   0.02%            libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.01%         libc-2.31.so  __memset_avx2_erms 
   0.01%            libjvm.so  OopStorage::Block::release_entries 
   0.01%         libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.60%  <...other 532 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  99.00%               kernel
   0.51%            libjvm.so
   0.24%         libc-2.31.so
   0.14%   libpthread-2.31.so
   0.03%       jvmci, level 4
   0.02%               [vdso]
   0.02%                     
   0.02%           ld-2.31.so
   0.01%     Unknown, level 0
   0.00%         runtime stub
   0.00%  libjvmcicompiler.so
   0.00%       hsdis-amd64.so
   0.00%           libjava.so
   0.00%     perf-2155003.map
   0.00%          c1, level 3
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 10, threadType = VIRTUAL)

# Run progress: 25.00% complete, ETA 00:13:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 144.675 us/op
# Warmup Iteration   2: 62.618 us/op
# Warmup Iteration   3: 47.129 us/op
# Warmup Iteration   4: 41.631 us/op
# Warmup Iteration   5: 40.938 us/op
Iteration   1: 40.569 us/op
Iteration   2: 40.571 us/op
Iteration   3: 40.764 us/op
Iteration   4: 41.315 us/op
Iteration   5: 41.399 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  40.924 ±(99.9%) 1.559 us/op [Average]
  (min, avg, max) = (40.569, 40.924, 41.399), stdev = 0.405
  CI (99.9%): [39.365, 42.482] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 424504 total address lines.
Perf output processed (skipped 60.992 seconds):
 Column 1: cycles (204921 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  16.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1373 

                    0x00007fc756ebf187:   mov    %esi,%r10d
                    0x00007fc756ebf18a:   mov    %r11,%rsi
                    0x00007fc756ebf18d:   call   0x00007fc7568ebd00           ;   {runtime_call Stub&lt;write_barrier_pre(Object)void&gt;}
                    0x00007fc756ebf192:   nop
                    0x00007fc756ebf193:   mov    %r11,0xb0(%rsp)
                    0x00007fc756ebf19b:   jmp    0x00007fc756ebf0b6           ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::compareAndSetReference@-3
                                                                              ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                              ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%            0x00007fc756ebf1a0:   mov    0xe0(%rsp),%rax
   0.00%            0x00007fc756ebf1a8:   mov    0xe8(%rsp),%r9
                    0x00007fc756ebf1b0:   mov    $0x10000,%esi
                    0x00007fc756ebf1b5:   add    0xa8(%rax),%esi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf1bb:   mov    0x30(%r9),%r10d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf1bf:   and    $0x7fffffff,%esi             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf1c5:   test   %r10d,%r10d
                    0x00007fc756ebf1c8:   jl     0x00007fc756ecb934           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fc756ebf1ce:   mov    0x150(%rsp),%r14
   0.00%            0x00007fc756ebf1d6:   mov    0xc8(%rsp),%rcx
                    0x00007fc756ebf1de:   mov    %rax,%rbx
   0.00%            0x00007fc756ebf1e1:   mov    %r9,%r10
                    0x00007fc756ebf1e4:   mov    0xd8(%r10),%rax              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.07%            0x00007fc756ebf1eb:   mov    %esi,%edx
                    0x00007fc756ebf1ed:   or     $0x80000000,%edx             ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf1f3:   mov    %edx,0xa8(%rbx)
   0.00%            0x00007fc756ebf1f9:   lock addl $0x0,(%rsp)               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.13%            0x00007fc756ebf1fe:   mov    %esi,%esi                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fc756ebf200:   mov    %rax,%rdx
                    0x00007fc756ebf203:   mov    0x180(%rsp),%r11
   0.00%            0x00007fc756ebf20b:   mov    0x1b0(%rsp),%r8
          ╭         0x00007fc756ebf213:   jmp    0x00007fc756ebf22c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │         0x00007fc756ebf218:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗        0x00007fc756ebf220:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rbx=Oop r10=Oop [200]=Oop [208]=Oop [220]=NarrowOop [224]=Oop [232]=Oop }
          ││                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││        0x00007fc756ebf227:   test   %eax,(%rdi)                  ;   {poll}
   0.00%  ││        0x00007fc756ebf229:   mov    %rax,%rdx                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘│        0x00007fc756ebf22c:   mov    %edx,0xc(%rbx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fc756ebf22f:   mov    %rdx,%rdi
   0.00%   │        0x00007fc756ebf232:   add    %r11,%rdi                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fc756ebf235:   mov    %rdi,%rax
           │        0x00007fc756ebf238:   and    %r8,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fc756ebf23b:   mov    %rax,%rbp
   0.00%   │        0x00007fc756ebf23e:   or     %rsi,%rbp                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fc756ebf241:   mov    %rdx,%rax
           │        0x00007fc756ebf244:   lock cmpxchg %rbp,0xd8(%r10)        ;* unwind (locked if synchronized)
           │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.17%   │        0x00007fc756ebf24d:   cmp    %rdx,%rax
           ╰        0x00007fc756ebf250:   jne    0x00007fc756ebf220           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf252:   and    %r11,%rdi                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf255:   cmp    $0x1,%rdi
                    0x00007fc756ebf259:   jl     0x00007fc756eca5b9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fc756ebf25f:   mov    0x34(%r10),%eax              ; ImmutableOopMap {rbx=Oop r10=Oop [200]=Oop [208]=Oop [220]=NarrowOop [224]=Oop [232]=Oop }
                                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf263:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fc756eccce4
   0.00%            0x00007fc756ebf26a:   mov    $0x0,%r11d
   0.00%            0x00007fc756ebf270:   mov    %r11d,0x130(%rsp)
   0.00%            0x00007fc756ebf278:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf27f:   nop
                    0x00007fc756ebf280:   test   %r8d,%r8d
                    0x00007fc756ebf283:   jge    0x00007fc756eca9a5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf289:   and    $0xffff,%eax                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf28f:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fc756ebf291:   or     $0xf,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fc756ebf294:   lea    -0x2(%rax),%r9d
   0.00%    ╭       0x00007fc756ebf298:   jmp    0x00007fc756ebf2b4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │       0x00007fc756ebf29d:   data16 xchg %ax,%ax                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │↗      0x00007fc756ebf2a0:   pause                               ;* unwind (locked if synchronized)
            ││                                                                ; - java.lang.Thread::onSpinWait@-3
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.67%    ││      0x00007fc756ebf2a2:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││      0x00007fc756ebf2a9:   test   %r8d,%r8d
            ││      0x00007fc756ebf2ac:   jge    0x00007fc756ecacb8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││      0x00007fc756ebf2b2:   mov    %ecx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ↘│      0x00007fc756ebf2b4:   mov    %eax,%ecx
   0.01%     │      0x00007fc756ebf2b6:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │      0x00007fc756ebf2b8:   cmp    %ecx,%r9d
             ╰      0x00007fc756ebf2bb:   jle    0x00007fc756ebf2a0
                    0x00007fc756ebf2bd:   mov    %r8d,%r9d
   0.00%            0x00007fc756ebf2c0:   mov    %eax,%r8d
   0.00%      ╭     0x00007fc756ebf2c3:   jmp    0x00007fc756ebf331
              │     0x00007fc756ebf2c8:   data16 data16 nopw 0x0(%rax,%rax,1)
              │     0x00007fc756ebf2d3:   data16 data16 xchg %ax,%ax
              │     0x00007fc756ebf2d7:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │↗    0x00007fc756ebf2e0:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.97%      ││    0x00007fc756ebf2e2:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%      ││    0x00007fc756ebf2e9:   test   %r9d,%r9d
              ││    0x00007fc756ebf2ec:   jge    0x00007fc756eca596           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007fc756ebf2f2:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.93%      ││    0x00007fc756ebf2f4:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%      ││    0x00007fc756ebf2fb:   nopl   0x0(%rax,%rax,1)
              ││    0x00007fc756ebf300:   test   %r9d,%r9d
              ││    0x00007fc756ebf303:   jge    0x00007fc756eca596           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fc756ebf309:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.88%      ││    0x00007fc756ebf30b:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%      ││    0x00007fc756ebf312:   test   %r9d,%r9d
              ││    0x00007fc756ebf315:   jge    0x00007fc756eca596           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007fc756ebf31b:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.84%      ││    0x00007fc756ebf31d:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%      ││    0x00007fc756ebf324:   test   %r9d,%r9d                    ;   {no_reloc}
              ││    0x00007fc756ebf327:   jge    0x00007fc756eca596           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fc756ebf32d:   lea    -0x4(%r8),%r8d
   0.00%      ↘│    0x00007fc756ebf331:   mov    %r8d,%ecx
   0.02%       │    0x00007fc756ebf334:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │    0x00007fc756ebf336:   cmp    $0x5,%ecx
               ╰    0x00007fc756ebf339:   jge    0x00007fc756ebf2e0
                ╭   0x00007fc756ebf33b:   jmp    0x00007fc756ebf360           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │↗  0x00007fc756ebf340:   pause                               ;* unwind (locked if synchronized)
                ││                                                            ; - java.lang.Thread::onSpinWait@-3
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.74%        ││  0x00007fc756ebf342:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ││  0x00007fc756ebf349:   test   %r9d,%r9d
                ││  0x00007fc756ebf34c:   jge    0x00007fc756eca596           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                ││  0x00007fc756ebf352:   data16 nopw 0x0(%rax,%rax,1)
                ││  0x00007fc756ebf35c:   data16 data16 xchg %ax,%ax
   0.00%        ↘│  0x00007fc756ebf360:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                 │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  0x00007fc756ebf363:   cmp    $0x1,%r8d
                 ╰  0x00007fc756ebf367:   jge    0x00007fc756ebf340           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fc756ebf369:   test   %r9d,%r9d
                    0x00007fc756ebf36c:   jge    0x00007fc756eca572           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fc756ebf372:   test   %r11d,%r11d
                    0x00007fc756ebf375:   jne    0x00007fc756eca7c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fc756ebf37b:   movq   $0x0,0xf8(%rsp)
                    0x00007fc756ebf387:   mov    0x380(%r15),%rsi
                    0x00007fc756ebf38e:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                              ; - java.lang.Thread::currentThread@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%            0x00007fc756ebf391:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007fc756ebf396:   jne    0x00007fc756eca808
                    0x00007fc756ebf39c:   mov    0xdc(%rsp),%r11d
                    0x00007fc756ebf3a4:   mov    %r11d,0x5c(%rdx)
   0.00%            0x00007fc756ebf3a8:   mov    %rdx,%rsi
                    0x00007fc756ebf3ab:   xor    %r10,%rsi
                    0x00007fc756ebf3ae:   test   $0xffffffffffe00000,%rsi
                    0x00007fc756ebf3b5:   je     0x00007fc756eca83f
                    0x00007fc756ebf3bb:   nopl   0x0(%rax,%rax,1)
                    0x00007fc756ebf3c0:   test   %r10,%r10
                    0x00007fc756ebf3c3:   je     0x00007fc756eca8ba
                    0x00007fc756ebf3c9:   mov    0x150(%rsp),%r8
                    0x00007fc756ebf3d1:   shr    $0x9,%rdx
                    0x00007fc756ebf3d5:   cmpb   $0x2,(%rdx,%r8,1)
                    0x00007fc756ebf3da:   jne    0x00007fc756eca8c7           ;* unwind (locked if synchronized)
....................................................................................................
  13.64%  <total for region 2>

....[Hottest Regions]...............................................................................
  16.78%              kernel  [unknown] 
  13.64%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1373 
   7.64%              kernel  [unknown] 
   5.56%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1362 
   3.31%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1354 
   1.72%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1373 
   1.45%              kernel  [unknown] 
   1.31%              kernel  [unknown] 
   1.19%              kernel  [unknown] 
   0.85%              kernel  [unknown] 
   0.80%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.79%              kernel  [unknown] 
   0.75%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1362 
   0.72%              kernel  [unknown] 
   0.68%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.64%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.62%           libjvm.so  update_register_map1 
   0.60%           libjvm.so  Parker::park 
   0.57%              kernel  [unknown] 
  39.72%  <...other 1179 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.94%              kernel  [unknown] 
  16.93%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1373 
   7.01%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1362 
   4.20%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1354 
   2.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1304 
   1.33%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.21%      jvmci, level 4  java.util.concurrent.SynchronousQueue::take, version 4, compile id 1367 
   0.93%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.92%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1241 
   0.65%      jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1250 
   0.64%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.62%           libjvm.so  update_register_map1 
   0.61%           libjvm.so  Parker::park 
   0.59%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::blocking_calls, version 4, compile id 1375 
   0.55%           libjvm.so  Unsafe_Park 
   0.52%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1322 
   0.51%           libjvm.so  OopMapStream::find_next 
   0.50%           libjvm.so  vframeStream::vframeStream 
   0.47%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.47%  libpthread-2.31.so  __pthread_mutex_lock 
   9.89%  <...other 215 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  48.94%              kernel
  35.96%      jvmci, level 4
   8.33%           libjvm.so
   4.37%  libpthread-2.31.so
   1.08%        libc-2.31.so
   0.77%    Unknown, level 0
   0.18%                    
   0.17%              [vdso]
   0.15%          ld-2.31.so
   0.04%        runtime stub
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%    perf-2777996.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 10, threadType = PLATFORM)

# Run progress: 37.50% complete, ETA 00:10:37
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 251.514 us/op
# Warmup Iteration   2: 205.461 us/op
# Warmup Iteration   3: 213.153 us/op
# Warmup Iteration   4: 217.177 us/op
# Warmup Iteration   5: 216.733 us/op
Iteration   1: 216.956 us/op
Iteration   2: 218.434 us/op
Iteration   3: 218.231 us/op
Iteration   4: 218.329 us/op
Iteration   5: 217.711 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  217.932 ±(99.9%) 2.358 us/op [Average]
  (min, avg, max) = (216.956, 217.932, 218.434), stdev = 0.612
  CI (99.9%): [215.574, 220.291] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 298027 total address lines.
Perf output processed (skipped 60.890 seconds):
 Column 1: cycles (1535014 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  28.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  19.80%  <total for region 2>

....[Hottest Regions]...............................................................................
  28.92%              kernel  [unknown] 
  19.80%              kernel  [unknown] 
   9.66%              kernel  [unknown] 
   7.83%              kernel  [unknown] 
   6.23%              kernel  [unknown] 
   3.51%              kernel  [unknown] 
   2.78%              kernel  [unknown] 
   2.00%              kernel  [unknown] 
   1.50%              kernel  [unknown] 
   1.23%              kernel  [unknown] 
   1.07%              kernel  [unknown] 
   0.85%              kernel  [unknown] 
   0.75%              kernel  [unknown] 
   0.73%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.63%              kernel  [unknown] 
   0.51%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
  10.42%  <...other 2845 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  95.96%              kernel  [unknown] 
   0.38%        libc-2.31.so  _int_free 
   0.31%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 2, compile id 1044 
   0.25%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.18%  libpthread-2.31.so  __pthread_mutex_lock 
   0.14%        libc-2.31.so  __malloc_arena_thread_freeres 
   0.13%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.13%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.10%  libpthread-2.31.so  __nptl_deallocate_tsd.part.0 
   0.09%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.08%                      <unknown> 
   0.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 1090 
   0.07%           libjvm.so  methodHandle::~methodHandle 
   0.06%           libjvm.so  JavaCalls::call_helper 
   0.06%           libjvm.so  SafeThreadsListPtr::release_stable_list 
   0.06%           libjvm.so  JNIHandleBlock::release_block 
   0.05%           libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.05%    Unknown, level 0  jdk.internal.misc.Unsafe::unpark, version 1, compile id 997 
   0.05%           libjvm.so  Unsafe_Unpark 
   0.05%        runtime stub  StubRoutines::call_stub 
   1.72%  <...other 526 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.96%              kernel
   1.34%           libjvm.so
   1.02%  libpthread-2.31.so
   0.92%        libc-2.31.so
   0.48%      jvmci, level 4
   0.10%    Unknown, level 0
   0.08%                    
   0.05%        runtime stub
   0.04%          ld-2.31.so
   0.01%              [vdso]
   0.00%    perf-2778067.map
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%      hsdis-amd64.so
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 100, threadType = VIRTUAL)

# Run progress: 50.00% complete, ETA 00:08:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 988.032 us/op
# Warmup Iteration   2: 309.256 us/op
# Warmup Iteration   3: 206.224 us/op
# Warmup Iteration   4: 205.485 us/op
# Warmup Iteration   5: 205.238 us/op
Iteration   1: 203.214 us/op
Iteration   2: 205.243 us/op
Iteration   3: 206.699 us/op
Iteration   4: 203.087 us/op
Iteration   5: 204.773 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  204.603 ±(99.9%) 5.794 us/op [Average]
  (min, avg, max) = (203.087, 204.603, 206.699), stdev = 1.505
  CI (99.9%): [198.809, 210.398] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 428324 total address lines.
Perf output processed (skipped 60.931 seconds):
 Column 1: cycles (212995 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 

                     0x00007fee5eeaea47:   mov    %esi,%r10d
                     0x00007fee5eeaea4a:   mov    %rdx,%rsi
                     0x00007fee5eeaea4d:   call   0x00007fee5e8ea100           ;   {runtime_call Stub&lt;write_barrier_pre(Object)void&gt;}
                     0x00007fee5eeaea52:   nop
                     0x00007fee5eeaea53:   mov    %rdx,0xb0(%rsp)
                     0x00007fee5eeaea5b:   jmp    0x00007fee5eeae976           ;* unwind (locked if synchronized)
                                                                               ; - jdk.internal.misc.Unsafe::compareAndSetReference@-3
                                                                               ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                               ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%             0x00007fee5eeaea60:   mov    0xd8(%rsp),%rax
   0.01%             0x00007fee5eeaea68:   mov    0xe0(%rsp),%rdx
                     0x00007fee5eeaea70:   mov    $0x10000,%esi
                     0x00007fee5eeaea75:   add    0xa8(%rax),%esi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%             0x00007fee5eeaea7b:   mov    0x30(%rdx),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%             0x00007fee5eeaea7f:   and    $0x7fffffff,%esi             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fee5eeaea85:   test   %r10d,%r10d
                     0x00007fee5eeaea88:   jl     0x00007fee5eebb660
   0.00%             0x00007fee5eeaea8e:   movabs $0x7fede3127048,%r11         ;   {metadata(&apos;java/util/concurrent/ForkJoinTask&apos;)}
   0.01%             0x00007fee5eeaea98:   mov    %rax,%rbx
                     0x00007fee5eeaea9b:   mov    %rdx,%r10
   0.00%             0x00007fee5eeaea9e:   mov    0xd8(%r10),%rax              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.28%             0x00007fee5eeaeaa5:   mov    %esi,%r8d
   0.00%             0x00007fee5eeaeaa8:   or     $0x80000000,%r8d             ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaeaaf:   mov    %r8d,0xa8(%rbx)
   0.00%             0x00007fee5eeaeab6:   lock addl $0x0,(%rsp)               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.47%             0x00007fee5eeaeabb:   mov    %esi,%r8d                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaeabe:   mov    %rax,%r9
                     0x00007fee5eeaeac1:   mov    0x150(%rsp),%rcx
   0.01%             0x00007fee5eeaeac9:   mov    0x168(%rsp),%rdi
          ╭          0x00007fee5eeaead1:   jmp    0x00007fee5eeaeaec           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │          0x00007fee5eeaead6:   data16 nopw 0x0(%rax,%rax,1)        ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗         0x00007fee5eeaeae0:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rbx=Oop r10=Oop [200]=Oop [212]=NarrowOop [216]=Oop [224]=Oop }
          ││                                                                   ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││         0x00007fee5eeaeae7:   test   %eax,(%rdx)                  ;   {poll}
   0.00%  ││         0x00007fee5eeaeae9:   mov    %rax,%r9                     ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘│         0x00007fee5eeaeaec:   mov    %r9d,0xc(%rbx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fee5eeaeaf0:   mov    %r9,%rdx
   0.00%   │         0x00007fee5eeaeaf3:   add    %rcx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fee5eeaeaf6:   mov    %rdx,%rax
           │         0x00007fee5eeaeaf9:   and    %rdi,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fee5eeaeafc:   mov    %rax,%rsi
   0.00%   │         0x00007fee5eeaeaff:   or     %r8,%rsi                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fee5eeaeb02:   mov    %r9,%rax
   0.00%   │         0x00007fee5eeaeb05:   lock cmpxchg %rsi,0xd8(%r10)        ;* unwind (locked if synchronized)
           │                                                                   ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                   ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.63%   │         0x00007fee5eeaeb0e:   cmp    %r9,%rax
           ╰         0x00007fee5eeaeb11:   jne    0x00007fee5eeaeae0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fee5eeaeb13:   and    %rcx,%rdx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fee5eeaeb16:   cmp    $0x1,%rdx
                     0x00007fee5eeaeb1a:   jl     0x00007fee5eeb96ad           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaeb20:   mov    0x34(%r10),%r8d              ; ImmutableOopMap {rbx=Oop r10=Oop [200]=Oop [212]=NarrowOop [216]=Oop [224]=Oop }
                                                                               ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fee5eeaeb24:   mov    0xc(,%r8,8),%r8d             ; implicit exception: dispatches to 0x00007fee5eebe05a
   0.00%             0x00007fee5eeaeb2c:   mov    $0x0,%r9d
   0.01%             0x00007fee5eeaeb32:   mov    0xa8(%rbx),%edx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fee5eeaeb38:   test   %edx,%edx
                     0x00007fee5eeaeb3a:   jge    0x00007fee5eeaec12           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaeb40:   mov    %r9d,0x110(%rsp)
   0.00%             0x00007fee5eeaeb48:   and    $0xffff,%r8d                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fee5eeaeb4f:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaeb52:   or     $0xf,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaeb56:   lea    -0x2(%r8),%esi
   0.00%    ╭        0x00007fee5eeaeb5a:   jmp    0x00007fee5eeaebd8           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │        0x00007fee5eeaeb5f:   nop                                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.07%    │↗       0x00007fee5eeaeb60:   pause                               ;* unwind (locked if synchronized)
            ││                                                                 ; - java.lang.Thread::onSpinWait@-3
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
  10.64%    ││       0x00007fee5eeaeb62:   mov    0xa8(%rbx),%edx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.22%    ││       0x00007fee5eeaeb68:   test   %edx,%edx
            ││       0x00007fee5eeaeb6a:   jge    0x00007fee5eeaec12           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││       0x00007fee5eeaeb70:   pause                               ;* unwind (locked if synchronized)
            ││                                                                 ; - java.lang.Thread::onSpinWait@-3
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
  10.49%    ││       0x00007fee5eeaeb72:   mov    0xa8(%rbx),%edx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.23%    ││       0x00007fee5eeaeb78:   test   %edx,%edx
            ││       0x00007fee5eeaeb7a:   jge    0x00007fee5eeaec12           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││       0x00007fee5eeaeb80:   lea    -0x2(%r8),%r8d
   0.00%    ││       0x00007fee5eeaeb84:   nopl   0x0(%rax,%rax,1)
   0.08%    ││       0x00007fee5eeaeb8c:   data16 data16 xchg %ax,%ax
   0.01%    ││   ↗   0x00007fee5eeaeb90:   mov    %r8d,%esi
   0.00%    ││   │   0x00007fee5eeaeb93:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││   │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││   │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││   │   0x00007fee5eeaeb95:   cmp    $0x3,%esi
            │╰   │   0x00007fee5eeaeb98:   jge    0x00007fee5eeaeb60
   0.00%    │ ╭  │   0x00007fee5eeaeb9a:   jmp    0x00007fee5eeaebb0
            │ │  │   0x00007fee5eeaeb9f:   nop                                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │ │  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │ │  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │ ↗│   0x00007fee5eeaeba0:   pause                               ;* unwind (locked if synchronized)
            │ │ ││                                                             ; - java.lang.Thread::onSpinWait@-3
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.53%    │ │ ││   0x00007fee5eeaeba2:   mov    0xa8(%rbx),%edx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │ ││   0x00007fee5eeaeba8:   test   %edx,%edx
            │ │ ││   0x00007fee5eeaebaa:   jge    0x00007fee5eeaec12           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ ↘ ││   0x00007fee5eeaebb0:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │   ││   0x00007fee5eeaebb3:   cmp    $0x1,%r8d
            │  ╭││   0x00007fee5eeaebb7:   jl     0x00007fee5eeaebe6
   0.00%    │  │╰│   0x00007fee5eeaebbd:   jmp    0x00007fee5eeaeba0
            │  │ │   0x00007fee5eeaebbf:   nop                                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │  │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │  │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │ │↗  0x00007fee5eeaebc0:   pause                               ;* unwind (locked if synchronized)
            │  │ ││                                                            ; - java.lang.Thread::onSpinWait@-3
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.67%    │  │ ││  0x00007fee5eeaebc2:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    │  │ ││  0x00007fee5eeaebc9:   test   %r8d,%r8d
            │  │ ││  0x00007fee5eeaebcc:   jge    0x00007fee5eeba619           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │ ││  0x00007fee5eeaebd2:   mov    %r8d,%edx
            │  │ ││  0x00007fee5eeaebd5:   mov    %eax,%r8d                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%    ↘  │ ││  0x00007fee5eeaebd8:   mov    %r8d,%eax
               │ ││  0x00007fee5eeaebdb:   dec    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ ││  0x00007fee5eeaebdd:   data16 xchg %ax,%ax
   0.00%       │ ││  0x00007fee5eeaebe0:   cmp    %eax,%esi
               │ ╰│  0x00007fee5eeaebe2:   jg     0x00007fee5eeaeb90
   0.00%       │  ╰  0x00007fee5eeaebe4:   jmp    0x00007fee5eeaebc0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
               │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       ↘     0x00007fee5eeaebe6:   test   %edx,%edx                    ;   {no_reloc}
                     0x00007fee5eeaebe8:   jl     0x00007fee5eeb98cf           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaebee:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rbx=Oop r10=Oop [200]=Oop [212]=NarrowOop [216]=Oop [224]=Oop }
                                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@195 (line 1882)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fee5eeaebf5:   test   %eax,(%r8)                   ;   {poll}
....................................................................................................
  25.45%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  14.41%  <total for region 2>

....[Hottest Regions]...............................................................................
  25.45%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 
  14.41%              kernel  [unknown] 
   6.51%              kernel  [unknown] 
   3.63%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 
   3.08%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.33%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 
   1.15%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 
   1.12%              kernel  [unknown] 
   1.08%              kernel  [unknown] 
   0.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1299 
   0.85%              kernel  [unknown] 
   0.78%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.74%              kernel  [unknown] 
   0.63%      jvmci, level 4  java.lang.VirtualThread::tryYield, version 2, compile id 1238 
   0.63%      jvmci, level 4  java.util.concurrent.SynchronousQueue::take, version 4, compile id 1365 
   0.62%              kernel  [unknown] 
   0.61%              kernel  [unknown] 
   0.58%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 
   0.56%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.54%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 
  34.73%  <...other 1245 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  41.12%              kernel  [unknown] 
  34.86%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1401 
   3.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1299 
   3.09%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.78%      jvmci, level 4  java.util.concurrent.SynchronousQueue::take, version 4, compile id 1365 
   1.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 4, compile id 1388 
   1.18%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.85%      jvmci, level 4  java.lang.VirtualThread::tryYield, version 2, compile id 1238 
   0.75%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.56%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.54%           libjvm.so  freeze<Config<(oop_kind)0, G1BarrierSet> > 
   0.51%           libjvm.so  Parker::park 
   0.51%  libpthread-2.31.so  __pthread_mutex_lock 
   0.48%           libjvm.so  SafepointMechanism::update_poll_values 
   0.44%           libjvm.so  Unsafe_Park 
   0.39%           libjvm.so  G1CollectedHeap::requires_barriers 
   0.38%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 286822ul>::oop_access_barrier 
   0.37%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.35%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.34%  libpthread-2.31.so  __pthread_mutex_trylock 
   7.05%  <...other 280 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  42.63%      jvmci, level 4
  41.12%              kernel
   7.69%           libjvm.so
   3.77%        libc-2.31.so
   3.71%  libpthread-2.31.so
   0.72%    Unknown, level 0
   0.13%          ld-2.31.so
   0.09%        runtime stub
   0.07%                    
   0.06%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%    perf-3216838.map
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 100, threadType = PLATFORM)

# Run progress: 62.50% complete, ETA 00:06:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1057.001 us/op
# Warmup Iteration   2: 862.826 us/op
# Warmup Iteration   3: 836.527 us/op
# Warmup Iteration   4: 839.769 us/op
# Warmup Iteration   5: 855.507 us/op
Iteration   1: 829.055 us/op
Iteration   2: 856.830 us/op
Iteration   3: 840.004 us/op
Iteration   4: 851.208 us/op
Iteration   5: 834.807 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  842.381 ±(99.9%) 44.210 us/op [Average]
  (min, avg, max) = (829.055, 842.381, 856.830), stdev = 11.481
  CI (99.9%): [798.171, 886.591] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 307049 total address lines.
Perf output processed (skipped 60.836 seconds):
 Column 1: cycles (520058 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  33.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  33.73%               kernel  [unknown] 
   8.63%               kernel  [unknown] 
   7.22%               kernel  [unknown] 
   6.45%               kernel  [unknown] 
   6.04%               kernel  [unknown] 
   3.92%               kernel  [unknown] 
   2.83%               kernel  [unknown] 
   2.67%               kernel  [unknown] 
   1.98%               kernel  [unknown] 
   1.69%               kernel  [unknown] 
   1.65%               kernel  [unknown] 
   1.62%               kernel  [unknown] 
   1.21%               kernel  [unknown] 
   1.00%               kernel  [unknown] 
   0.80%               kernel  [unknown] 
   0.78%               kernel  [unknown] 
   0.75%               kernel  [unknown] 
   0.69%               kernel  [unknown] 
   0.67%               kernel  [unknown] 
   0.51%               kernel  [unknown] 
  15.17%  <...other 3179 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.86%               kernel  [unknown] 
   0.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 4, compile id 1158 
   0.52%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.35%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 5, compile id 1154 
   0.34%       jvmci, level 4  java.util.concurrent.SynchronousQueue::take, version 2, compile id 1023 
   0.27%   libpthread-2.31.so  __pthread_mutex_lock 
   0.27%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.26%            libjvm.so  Parker::park 
   0.20%            libjvm.so  Unsafe_Park 
   0.18%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.17%     Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 996 
   0.16%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.15%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.11%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.11%       jvmci, level 4  java.util.concurrent.ForkJoinPool::managedBlock, version 4, compile id 1150 
   0.10%            libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.10%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.09%            libjvm.so  Unsafe_Unpark 
   0.09%           ld-2.31.so  __tls_get_addr 
   0.08%            libjvm.so  java_lang_Thread::set_thread_status 
   1.90%  <...other 806 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.86%               kernel
   2.01%            libjvm.so
   1.61%   libpthread-2.31.so
   1.54%       jvmci, level 4
   0.41%         libc-2.31.so
   0.28%     Unknown, level 0
   0.10%           ld-2.31.so
   0.08%  libjvmcicompiler.so
   0.05%                     
   0.02%               [vdso]
   0.02%          c1, level 3
   0.01%          interpreter
   0.00%       hsdis-amd64.so
   0.00%     perf-3216911.map
   0.00%           libjava.so
   0.00%         runtime stub
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1000, threadType = VIRTUAL)

# Run progress: 75.00% complete, ETA 00:04:17
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 5505.578 us/op
# Warmup Iteration   2: 1636.314 us/op
# Warmup Iteration   3: 1322.078 us/op
# Warmup Iteration   4: 1244.130 us/op
# Warmup Iteration   5: 1249.011 us/op
Iteration   1: 1241.182 us/op
Iteration   2: 1238.416 us/op
Iteration   3: 1235.245 us/op
Iteration   4: 1233.201 us/op
Iteration   5: 1233.234 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  1236.255 ±(99.9%) 13.396 us/op [Average]
  (min, avg, max) = (1233.201, 1236.255, 1241.182), stdev = 3.479
  CI (99.9%): [1222.859, 1249.651] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 394228 total address lines.
Perf output processed (skipped 60.824 seconds):
 Column 1: cycles (206429 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 

                 0x00007ff5eee27797:   mov    0x1b0(%rsp),%rbp
   0.00%         0x00007ff5eee2779f:   mov    0x1c8(%rsp),%rcx
          ╭      0x00007ff5eee277a7:   jmp    0x00007ff5eee277cd           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │      0x00007ff5eee277ac:   data16 data16 nopw 0x0(%rax,%rax,1)
          │      0x00007ff5eee277b7:   data16 data16 xchg %ax,%ax
          │      0x00007ff5eee277bb:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗     0x00007ff5eee277c0:   mov    0x458(%r15),%r9              ; ImmutableOopMap {rbx=Oop r10=Oop [264]=Oop [276]=NarrowOop [280]=Oop [288]=Oop }
          ││                                                               ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││     0x00007ff5eee277c7:   test   %eax,(%r9)                   ;   {poll}
          ││     0x00007ff5eee277ca:   mov    %rax,%r8                     ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘│     0x00007ff5eee277cd:   mov    %r8d,0xc(%rbx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │     0x00007ff5eee277d1:   mov    %r8,%r9
   0.01%   │     0x00007ff5eee277d4:   add    %rbp,%r9                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │     0x00007ff5eee277d7:   mov    %r9,%rax
           │     0x00007ff5eee277da:   and    %rcx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │     0x00007ff5eee277dd:   mov    %rax,%rdi
   0.01%   │     0x00007ff5eee277e0:   or     %r11,%rdi                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │     0x00007ff5eee277e3:   mov    %r8,%rax
           │     0x00007ff5eee277e6:   lock cmpxchg %rdi,0xd8(%r10)        ;* unwind (locked if synchronized)
           │                                                               ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                               ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.87%   │     0x00007ff5eee277ef:   cmp    %r8,%rax
           ╰     0x00007ff5eee277f2:   jne    0x00007ff5eee277c0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         0x00007ff5eee277f4:   and    %rbp,%r9                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%         0x00007ff5eee277f7:   nopw   0x0(%rax,%rax,1)
                 0x00007ff5eee27800:   cmp    $0x1,%r9
                 0x00007ff5eee27804:   jl     0x00007ff5eee32777           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                 0x00007ff5eee2780a:   mov    0x34(%r10),%r11d             ; ImmutableOopMap {rbx=Oop r10=Oop [264]=Oop [276]=NarrowOop [280]=Oop [288]=Oop }
                                                                           ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         0x00007ff5eee2780e:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007ff5eee34f3e
   0.00%         0x00007ff5eee27816:   mov    $0x0,%r8d
                 0x00007ff5eee2781c:   mov    %r8d,0x168(%rsp)
   0.00%         0x00007ff5eee27824:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         0x00007ff5eee2782b:   test   %r9d,%r9d
                 0x00007ff5eee2782e:   jge    0x00007ff5eee3271c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%         0x00007ff5eee27834:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                 0x00007ff5eee2783b:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                 0x00007ff5eee2783e:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         0x00007ff5eee27842:   lea    -0x2(%r11),%edi
   0.01%         0x00007ff5eee27846:   jmp    0x00007ff5eee27938           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                 0x00007ff5eee2784b:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007ff5eee27856:   data16 data16 xchg %ax,%ax
                 0x00007ff5eee2785a:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%    ↗    0x00007ff5eee27860:   pause                               ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.Thread::onSpinWait@-3
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.52%    │    0x00007ff5eee27862:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.17%    │    0x00007ff5eee27869:   test   %r9d,%r9d
            │    0x00007ff5eee2786c:   jge    0x00007ff5eee3271c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    0x00007ff5eee27872:   pause                               ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.Thread::onSpinWait@-3
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.39%    │    0x00007ff5eee27874:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.18%    │    0x00007ff5eee2787b:   nopl   0x0(%rax,%rax,1)
            │    0x00007ff5eee27880:   test   %r9d,%r9d
            │    0x00007ff5eee27883:   jge    0x00007ff5eee3271c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    0x00007ff5eee27889:   pause                               ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.Thread::onSpinWait@-3
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.04%    │    0x00007ff5eee2788b:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.16%    │    0x00007ff5eee27892:   test   %r9d,%r9d
            │    0x00007ff5eee27895:   jge    0x00007ff5eee3271c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    0x00007ff5eee2789b:   pause                               ;* unwind (locked if synchronized)
            │                                                              ; - java.lang.Thread::onSpinWait@-3
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.89%    │    0x00007ff5eee2789d:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.17%    │    0x00007ff5eee278a4:   test   %r9d,%r9d
            │    0x00007ff5eee278a7:   jge    0x00007ff5eee3271c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    0x00007ff5eee278ad:   lea    -0x4(%r11),%r11d
   0.00%    │    0x00007ff5eee278b1:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.03%    │    0x00007ff5eee278bc:   data16 data16 xchg %ax,%ax
   0.01%    │    0x00007ff5eee278c0:   mov    %r11d,%edi
   0.00%    │    0x00007ff5eee278c3:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    0x00007ff5eee278c5:   cmp    $0x5,%edi                    ;   {no_reloc}
            ╰    0x00007ff5eee278c8:   jge    0x00007ff5eee27860
   0.00%     ╭   0x00007ff5eee278ca:   jmp    0x00007ff5eee27900
             │   0x00007ff5eee278cf:   data16 data16 nopw 0x0(%rax,%rax,1)
             │   0x00007ff5eee278da:   data16 data16 xchg %ax,%ax
             │   0x00007ff5eee278de:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
             │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │↗  0x00007ff5eee278e0:   pause                               ;* unwind (locked if synchronized)
             ││                                                            ; - java.lang.Thread::onSpinWait@-3
             ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.79%     ││  0x00007ff5eee278e2:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     ││  0x00007ff5eee278e9:   test   %r9d,%r9d
             ││  0x00007ff5eee278ec:   jge    0x00007ff5eee3271c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             ││  0x00007ff5eee278f2:   data16 nopw 0x0(%rax,%rax,1)
             ││  0x00007ff5eee278fc:   data16 data16 xchg %ax,%ax
   0.00%     ↘│  0x00007ff5eee27900:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  0x00007ff5eee27903:   cmp    $0x1,%r11d
              │  0x00007ff5eee27907:   jl     0x00007ff5eee2794a
              ╰  0x00007ff5eee2790d:   jmp    0x00007ff5eee278e0
                 0x00007ff5eee2790f:   data16 data16 nopw 0x0(%rax,%rax,1)
                 0x00007ff5eee2791a:   data16 data16 xchg %ax,%ax
                 0x00007ff5eee2791e:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
....................................................................................................
  23.34%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.10%  <total for region 2>

....[Hottest Regions]...............................................................................
  23.34%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
  13.10%              kernel  [unknown] 
   5.97%              kernel  [unknown] 
   4.38%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
   4.14%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   2.33%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
   2.11%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
   1.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1278 
   1.14%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
   0.94%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
   0.92%      jvmci, level 4  java.lang.VirtualThread::tryYield, version 2, compile id 1154 
   0.92%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1278 
   0.76%              kernel  [unknown] 
   0.76%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.71%              kernel  [unknown] 
   0.71%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
   0.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 4, compile id 1396 
   0.68%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
   0.65%           libjvm.so  SafepointMechanism::update_poll_values 
   0.64%              kernel  [unknown] 
  33.92%  <...other 1268 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  37.84%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1370 
  34.67%              kernel  [unknown] 
   4.16%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   3.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1278 
   3.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 4, compile id 1396 
   1.34%      jvmci, level 4  java.util.concurrent.SynchronousQueue::take, version 4, compile id 1418 
   1.27%      jvmci, level 4  java.lang.VirtualThread::tryYield, version 2, compile id 1154 
   0.84%      jvmci, level 4  java.lang.VirtualThread$$Lambda.0x00007ff57403f128::run, version 4, compile id 1416 
   0.81%           libjvm.so  SafepointMechanism::update_poll_values 
   0.80%           libjvm.so  freeze<Config<(oop_kind)0, G1BarrierSet> > 
   0.76%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.74%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.56%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.56%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<4481126ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 4481126ul>::oop_access_barrier 
   0.50%           libjvm.so  FreezeBase::freeze_fast_copy 
   0.47%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 286822ul>::oop_access_barrier 
   0.41%           libjvm.so  Thaw<Config<(oop_kind)0, G1BarrierSet> >::thaw_fast 
   0.38%           libjvm.so  Parker::park 
   0.37%  libpthread-2.31.so  __pthread_mutex_lock 
   0.37%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   6.20%  <...other 312 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  48.73%      jvmci, level 4
  34.67%              kernel
   8.03%           libjvm.so
   4.95%        libc-2.31.so
   2.53%  libpthread-2.31.so
   0.72%    Unknown, level 0
   0.13%        runtime stub
   0.08%                    
   0.07%          ld-2.31.so
   0.04%         interpreter
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%    perf-3331117.map
   0.00%         c1, level 3
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1000, threadType = PLATFORM)

# Run progress: 87.50% complete, ETA 00:02:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7154.210 us/op
# Warmup Iteration   2: 6177.557 us/op
# Warmup Iteration   3: 6160.584 us/op
# Warmup Iteration   4: 6278.129 us/op
# Warmup Iteration   5: 6466.617 us/op
Iteration   1: 6423.830 us/op
Iteration   2: 6432.058 us/op
Iteration   3: 6404.097 us/op
Iteration   4: 6454.517 us/op
Iteration   5: 6439.374 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  6430.775 ±(99.9%) 72.018 us/op [Average]
  (min, avg, max) = (6404.097, 6430.775, 6454.517), stdev = 18.703
  CI (99.9%): [6358.757, 6502.794] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 293619 total address lines.
Perf output processed (skipped 60.845 seconds):
 Column 1: cycles (118420 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.92%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  14.05%  <total for region 2>

....[Hottest Regions]...............................................................................
  20.92%              kernel  [unknown] 
  14.05%              kernel  [unknown] 
   8.33%              kernel  [unknown] 
   7.30%              kernel  [unknown] 
   2.77%              kernel  [unknown] 
   2.37%              kernel  [unknown] 
   2.35%              kernel  [unknown] 
   2.28%              kernel  [unknown] 
   1.98%              kernel  [unknown] 
   1.51%              kernel  [unknown] 
   1.35%              kernel  [unknown] 
   1.35%              kernel  [unknown] 
   1.33%              kernel  [unknown] 
   1.13%              kernel  [unknown] 
   1.09%              kernel  [unknown] 
   0.93%              kernel  [unknown] 
   0.93%              kernel  [unknown] 
   0.86%              kernel  [unknown] 
   0.73%              kernel  [unknown] 
   0.70%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
  25.74%  <...other 1391 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.59%              kernel  [unknown] 
   1.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1036 
   1.08%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.70%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.56%  libpthread-2.31.so  __pthread_mutex_lock 
   0.52%           libjvm.so  Parker::park 
   0.43%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.40%           libjvm.so  Unsafe_Park 
   0.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 4, compile id 1149 
   0.34%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.29%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.27%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.23%    Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 1004 
   0.22%           libjvm.so  java_lang_Thread::set_thread_status 
   0.21%      jvmci, level 4  java.util.concurrent.SynchronousQueue::take, version 2, compile id 1016 
   0.19%           libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.19%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.17%        libc-2.31.so  __sched_yield 
   0.15%    Unknown, level 0  java.lang.Thread::yield0, version 1, compile id 994 
   0.15%           libjvm.so  Unsafe_Unpark 
   1.69%  <...other 298 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.59%              kernel
   3.49%  libpthread-2.31.so
   2.84%           libjvm.so
   1.99%      jvmci, level 4
   0.50%    Unknown, level 0
   0.34%        libc-2.31.so
   0.10%                    
   0.09%          ld-2.31.so
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.00%    perf-3331190.map
   0.00%         c1, level 3
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:16:45

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

Benchmark                                        (stackDepth)  (threadType)  Mode  Cnt     Score    Error  Units
VPThreadBlockingApiBenchmark.blocking_calls                 1       VIRTUAL  avgt    5    24.852 ±  1.954  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm             1       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls                 1      PLATFORM  avgt    5   152.390 ±  2.142  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm             1      PLATFORM  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls                10       VIRTUAL  avgt    5    40.924 ±  1.559  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm            10       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls                10      PLATFORM  avgt    5   217.932 ±  2.358  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm            10      PLATFORM  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls               100       VIRTUAL  avgt    5   204.603 ±  5.794  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm           100       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls               100      PLATFORM  avgt    5   842.381 ± 44.210  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm           100      PLATFORM  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls              1000       VIRTUAL  avgt    5  1236.255 ± 13.396  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm          1000       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls              1000      PLATFORM  avgt    5  6430.775 ± 72.018  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm          1000      PLATFORM  avgt            NaN             ---
