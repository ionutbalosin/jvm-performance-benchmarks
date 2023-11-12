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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 38.037 us/op
# Warmup Iteration   2: 25.179 us/op
# Warmup Iteration   3: 24.701 us/op
# Warmup Iteration   4: 24.681 us/op
# Warmup Iteration   5: 26.068 us/op
Iteration   1: 24.680 us/op
Iteration   2: 24.695 us/op
Iteration   3: 24.766 us/op
Iteration   4: 24.708 us/op
Iteration   5: 24.822 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  24.734 ±(99.9%) 0.226 us/op [Average]
  (min, avg, max) = (24.680, 24.734, 24.822), stdev = 0.059
  CI (99.9%): [24.508, 24.961] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 330354 total address lines.
Perf output processed (skipped 60.334 seconds):
 Column 1: cycles (156704 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  18.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 1251 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x60]  (sp of caller)
                  0x00007fb8f325a6c0:   mov    0x8(%rsi),%r10d
                  0x00007fb8f325a6c4:   movabs $0x7fb877000000,%r12
                  0x00007fb8f325a6ce:   add    %r12,%r10
                  0x00007fb8f325a6d1:   xor    %r12,%r12
                  0x00007fb8f325a6d4:   cmp    %r10,%rax
                  0x00007fb8f325a6d7:   jne    0x00007fb8f2c2f080           ;   {runtime_call ic_miss_stub}
                  0x00007fb8f325a6dd:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007fb8f325a6e0:   mov    %eax,-0x14000(%rsp)
   0.00%          0x00007fb8f325a6e7:   sub    $0x58,%rsp
   0.00%          0x00007fb8f325a6eb:   nop
                  0x00007fb8f325a6ec:   cmpl   $0x1,0x20(%r15)
                  0x00007fb8f325a6f4:   jne    0x00007fb8f325b148
                  0x00007fb8f325a6fa:   mov    %rbp,0x50(%rsp)
   0.00%          0x00007fb8f325a6ff:   mov    %rsi,0x20(%rsp)
   0.00%          0x00007fb8f325a704:   mov    %rdx,0x18(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
                  0x00007fb8f325a709:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007fb8f325b180
                  0x00007fb8f325a70f:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%          0x00007fb8f325a713:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
                  0x00007fb8f325a719:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                  0x00007fb8f325a71f:   nop
                  0x00007fb8f325a720:   test   %r10d,%r10d
                  0x00007fb8f325a723:   jl     0x00007fb8f325b102           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
   0.00%          0x00007fb8f325a729:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.07%          0x00007fb8f325a730:   mov    %eax,%r11d
                  0x00007fb8f325a733:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                  0x00007fb8f325a73a:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.00%          0x00007fb8f325a741:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%          0x00007fb8f325a745:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                  0x00007fb8f325a748:   movabs $0xffff000000000000,%r8
                  0x00007fb8f325a752:   mov    %r10,%rax
   0.00%          0x00007fb8f325a755:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%          0x00007fb8f325a758:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
                  0x00007fb8f325a762:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                  0x00007fb8f325a765:   mov    %r11,%rcx
   0.00%          0x00007fb8f325a768:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007fb8f325a76b:   mov    %r10,%rax
                  0x00007fb8f325a76e:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.20%          0x00007fb8f325a777:   cmp    %r10,%rax
                  0x00007fb8f325a77a:   jne    0x00007fb8f325acf2           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%          0x00007fb8f325a780:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.00%          0x00007fb8f325a783:   cmp    $0x1,%rcx
                  0x00007fb8f325a787:   jl     0x00007fb8f325a97a           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                  0x00007fb8f325a78d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                  0x00007fb8f325a793:   mov    %r10d,0x44(%rsp)
   0.00%          0x00007fb8f325a798:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%          0x00007fb8f325a79c:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007fb8f325b1a3
   0.00%          0x00007fb8f325a7a4:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%          0x00007fb8f325a7ab:   test   %r8d,%r8d
          ╭       0x00007fb8f325a7ae:   jl     0x00007fb8f325a7d9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%  │  ↗ ↗  0x00007fb8f325a7b4:   test   %r8d,%r8d
          │╭ │ │  0x00007fb8f325a7b7:   jl     0x00007fb8f325a828           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
   0.00%  ││ │ │  0x00007fb8f325a7bd:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.00%  ││ │ │  0x00007fb8f325a7c2:   mov    0x50(%rsp),%rbp
   0.00%  ││ │ │  0x00007fb8f325a7c7:   add    $0x58,%rsp
          ││ │ │  0x00007fb8f325a7cb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007fb8f325a7d2:   ja     0x00007fb8f325b158
   0.01%  ││ │ │  0x00007fb8f325a7d8:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ↘│ │ │  0x00007fb8f325a7d9:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.34%   │ │ │  0x00007fb8f325a7db:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007fb8f325a7e2:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
           │ │ │  0x00007fb8f325a7e5:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007fb8f325a7e9:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │╭│ │  0x00007fb8f325a7ec:   jmp    0x00007fb8f325a81a           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007fb8f325a7f1:   data16 data16 nopw 0x0(%rax,%rax,1)
           │││ │  0x00007fb8f325a7fc:   data16 data16 xchg %ax,%ax          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%   │││↗│  0x00007fb8f325a800:   mov    %r11d,%r9d
           │││││  0x00007fb8f325a803:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │││││  0x00007fb8f325a806:   cmp    $0x1,%r9d
           ││╰││  0x00007fb8f325a80a:   jl     0x00007fb8f325a7b4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.08%   ││ ││  0x00007fb8f325a80c:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  13.53%   ││ ││  0x00007fb8f325a80e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
           ││ ││  0x00007fb8f325a815:   test   %eax,(%rcx)                  ;   {poll}
   0.00%   ││ ││  0x00007fb8f325a817:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007fb8f325a81a:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.17%   │  ││  0x00007fb8f325a821:   test   %r8d,%r8d
           │  ╰│  0x00007fb8f325a824:   jl     0x00007fb8f325a800
   0.01%   │   ╰  0x00007fb8f325a826:   jmp    0x00007fb8f325a7b4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   ↘      0x00007fb8f325a828:   test   %r10d,%r10d
                  0x00007fb8f325a82b:   jne    0x00007fb8f325aa74           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.00%          0x00007fb8f325a831:   movq   $0x0,0x38(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.00%          0x00007fb8f325a83a:   mov    0x380(%r15),%r10
                  0x00007fb8f325a841:   mov    (%r10),%r10                  ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.02%          0x00007fb8f325a844:   cmpb   $0x0,0x40(%r15)
   0.00%          0x00007fb8f325a849:   jne    0x00007fb8f325ab74
                  0x00007fb8f325a84f:   mov    %rsi,%r8
                  0x00007fb8f325a852:   mov    %r8,%rsi
   0.00%          0x00007fb8f325a855:   shr    $0x3,%rsi
   0.00%          0x00007fb8f325a859:   mov    %esi,0x5c(%r10)
   0.00%          0x00007fb8f325a85d:   mov    %r10,%rsi
                  0x00007fb8f325a860:   xor    %r8,%rsi
                  0x00007fb8f325a863:   test   $0xffffffffffe00000,%rsi
                  0x00007fb8f325a86a:   je     0x00007fb8f325ab67
                  0x00007fb8f325a870:   test   %r8,%r8
                  0x00007fb8f325a873:   je     0x00007fb8f325abb3
                  0x00007fb8f325a879:   shr    $0x9,%r10
                  0x00007fb8f325a87d:   movabs $0x7fb904cfc000,%rsi
                  0x00007fb8f325a887:   cmpb   $0x2,(%r10,%rsi,1)
                  0x00007fb8f325a88c:   jne    0x00007fb8f325abc0
                  0x00007fb8f325a892:   mov    0x18(%rsp),%rdx
....................................................................................................
  14.49%  <total for region 2>

....[Hottest Regions]...............................................................................
  18.11%               kernel  [unknown] 
  14.49%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 1251 
   8.26%               kernel  [unknown] 
   1.98%               kernel  [unknown] 
   1.70%               kernel  [unknown] 
   1.68%       jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1298 
   1.34%               kernel  [unknown] 
   1.22%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.17%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1270 
   1.05%            libjvm.so  update_register_map1 
   0.94%               kernel  [unknown] 
   0.92%       jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1394 
   0.91%               kernel  [unknown] 
   0.87%               kernel  [unknown] 
   0.86%               kernel  [unknown] 
   0.76%               kernel  [unknown] 
   0.75%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.73%               kernel  [unknown] 
   0.73%               kernel  [unknown] 
   0.69%               kernel  [unknown] 
  40.85%  <...other 864 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.86%               kernel  [unknown] 
  15.00%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 1251 
   2.02%       jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1298 
   1.87%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.53%       jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1394 
   1.17%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1270 
   1.10%       jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1274 
   1.05%            libjvm.so  update_register_map1 
   0.97%            libjvm.so  OopMapStream::find_next 
   0.92%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.84%            libjvm.so  vframeStream::vframeStream 
   0.77%            libjvm.so  Unsafe_Park 
   0.76%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.jmh_generated.VPThreadBlockingApiBenchmark_blocking_calls_jmhTest::blocking_calls_avgt_jmhStub, version 5, compile id 1373 
   0.75%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.73%            libjvm.so  Parker::park 
   0.64%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.64%       jvmci, level 4  java.util.concurrent.ConcurrentHashMap::putVal, version 4, compile id 1303 
   0.64%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.63%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.60%       jvmci, level 4  java.util.concurrent.FutureTask::get, version 2, compile id 1284 
  11.51%  <...other 221 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  55.86%               kernel
  25.69%       jvmci, level 4
  10.32%            libjvm.so
   5.55%   libpthread-2.31.so
   0.86%     Unknown, level 0
   0.70%         libc-2.31.so
   0.36%               [vdso]
   0.31%           ld-2.31.so
   0.29%                     
   0.02%         runtime stub
   0.02%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%     perf-2134187.map
   0.00%          interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1, threadType = PLATFORM)

# Run progress: 12.50% complete, ETA 00:13:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 150.348 us/op
# Warmup Iteration   2: 144.165 us/op
# Warmup Iteration   3: 141.686 us/op
# Warmup Iteration   4: 150.918 us/op
# Warmup Iteration   5: 150.997 us/op
Iteration   1: 150.734 us/op
Iteration   2: 151.085 us/op
Iteration   3: 157.165 us/op
Iteration   4: 150.137 us/op
Iteration   5: 150.674 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  151.959 ±(99.9%) 11.282 us/op [Average]
  (min, avg, max) = (150.137, 151.959, 157.165), stdev = 2.930
  CI (99.9%): [140.677, 163.241] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 316750 total address lines.
Perf output processed (skipped 60.691 seconds):
 Column 1: cycles (1108431 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  57.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  28.25%  <total for region 2>

....[Hottest Regions]...............................................................................
  57.73%              kernel  [unknown] 
  28.25%              kernel  [unknown] 
   2.25%              kernel  [unknown] 
   1.71%              kernel  [unknown] 
   1.30%              kernel  [unknown] 
   1.07%              kernel  [unknown] 
   0.97%              kernel  [unknown] 
   0.57%              kernel  [unknown] 
   0.51%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   3.85%  <...other 3072 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.89%              kernel  [unknown] 
   0.04%                      <unknown> 
   0.04%        libc-2.31.so  _int_free 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%        libc-2.31.so  _int_malloc 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  ServiceThread::service_thread_entry 
   0.02%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.02%           libjvm.so  JVM_GetStackAccessControlContext 
   0.02%  libpthread-2.31.so  __pthread_mutex_lock 
   0.02%           libjvm.so  vframeStreamCommon::next 
   0.02%        libc-2.31.so  malloc 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.01%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.01%           libjvm.so  OopStorage::Block::release_entries 
   0.68%  <...other 563 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.89%              kernel
   0.56%           libjvm.so
   0.25%        libc-2.31.so
   0.16%  libpthread-2.31.so
   0.04%                    
   0.04%      jvmci, level 4
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.00%      hsdis-amd64.so
   0.00%        runtime stub
   0.00%          libjava.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2134266.map
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 10, threadType = VIRTUAL)

# Run progress: 25.00% complete, ETA 00:13:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 75.318 us/op
# Warmup Iteration   2: 42.363 us/op
# Warmup Iteration   3: 40.986 us/op
# Warmup Iteration   4: 40.871 us/op
# Warmup Iteration   5: 39.998 us/op
Iteration   1: 40.047 us/op
Iteration   2: 40.484 us/op
Iteration   3: 41.202 us/op
Iteration   4: 41.076 us/op
Iteration   5: 41.432 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  40.848 ±(99.9%) 2.188 us/op [Average]
  (min, avg, max) = (40.047, 40.848, 41.432), stdev = 0.568
  CI (99.9%): [38.660, 43.036] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 330235 total address lines.
Perf output processed (skipped 60.267 seconds):
 Column 1: cycles (206288 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1153 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x40]  (sp of caller)
                  0x00007f834724c020:   mov    0x8(%rsi),%r10d
                  0x00007f834724c024:   movabs $0x7f82cb000000,%r12
                  0x00007f834724c02e:   add    %r12,%r10
                  0x00007f834724c031:   xor    %r12,%r12
                  0x00007f834724c034:   cmp    %r10,%rax
                  0x00007f834724c037:   jne    0x00007f8346c2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f834724c03d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007f834724c040:   mov    %eax,-0x14000(%rsp)
   0.01%          0x00007f834724c047:   sub    $0x38,%rsp
                  0x00007f834724c04b:   nop
                  0x00007f834724c04c:   cmpl   $0x0,0x20(%r15)
   0.01%          0x00007f834724c054:   jne    0x00007f834724c7f1
   0.00%          0x00007f834724c05a:   mov    %rbp,0x30(%rsp)
                  0x00007f834724c05f:   mov    %rsi,0x8(%rsp)
   0.00%          0x00007f834724c064:   mov    %rdx,(%rsp)                  ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
   0.00%          0x00007f834724c068:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007f834724c829
   0.00%          0x00007f834724c06e:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%          0x00007f834724c072:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
   0.00%          0x00007f834724c078:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
   0.01%          0x00007f834724c07e:   xchg   %ax,%ax
                  0x00007f834724c080:   test   %r10d,%r10d
                  0x00007f834724c083:   jl     0x00007f834724c7ce           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                  0x00007f834724c089:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.12%          0x00007f834724c090:   mov    %eax,%r11d
   0.00%          0x00007f834724c093:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
   0.00%          0x00007f834724c09a:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.00%          0x00007f834724c0a1:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.01%          0x00007f834724c0a5:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
   0.00%          0x00007f834724c0a8:   movabs $0xffff000000000000,%r8
                  0x00007f834724c0b2:   mov    %r10,%rax
                  0x00007f834724c0b5:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%          0x00007f834724c0b8:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
   0.00%          0x00007f834724c0c2:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                  0x00007f834724c0c5:   mov    %r11,%rcx
                  0x00007f834724c0c8:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007f834724c0cb:   mov    %r10,%rax
   0.00%          0x00007f834724c0ce:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.42%          0x00007f834724c0d7:   cmp    %r10,%rax
                  0x00007f834724c0da:   jne    0x00007f834724c485           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                  0x00007f834724c0e0:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.00%          0x00007f834724c0e3:   cmp    $0x1,%rcx
                  0x00007f834724c0e7:   jl     0x00007f834724c2e9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                  0x00007f834724c0ed:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                  0x00007f834724c0f3:   mov    %r10d,0x24(%rsp)
                  0x00007f834724c0f8:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.01%          0x00007f834724c0fc:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f834724c84d
   0.00%          0x00007f834724c104:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%          0x00007f834724c10b:   test   %r8d,%r8d
          ╭       0x00007f834724c10e:   jl     0x00007f834724c139           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.02%  │  ↗ ↗  0x00007f834724c114:   test   %r8d,%r8d
          │╭ │ │  0x00007f834724c117:   jl     0x00007f834724c188           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
   0.00%  ││ │ │  0x00007f834724c11d:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.01%  ││ │ │  0x00007f834724c122:   mov    0x30(%rsp),%rbp
   0.01%  ││ │ │  0x00007f834724c127:   add    $0x38,%rsp
          ││ │ │  0x00007f834724c12b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007f834724c132:   ja     0x00007f834724c801
   0.01%  ││ │ │  0x00007f834724c138:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%  ↘│ │ │  0x00007f834724c139:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.56%   │ │ │  0x00007f834724c13b:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007f834724c142:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
           │ │ │  0x00007f834724c145:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007f834724c149:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │╭│ │  0x00007f834724c14c:   jmp    0x00007f834724c17a           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007f834724c151:   data16 data16 nopw 0x0(%rax,%rax,1)
           │││ │  0x00007f834724c15c:   data16 data16 xchg %ax,%ax          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   │││↗│  0x00007f834724c160:   mov    %r11d,%r9d
           │││││  0x00007f834724c163:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │││││  0x00007f834724c166:   cmp    $0x1,%r9d
           ││╰││  0x00007f834724c16a:   jl     0x00007f834724c114           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.13%   ││ ││  0x00007f834724c16c:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  20.40%   ││ ││  0x00007f834724c16e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
           ││ ││  0x00007f834724c175:   test   %eax,(%rcx)                  ;   {poll}
   0.01%   ││ ││  0x00007f834724c177:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007f834724c17a:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.39%   │  ││  0x00007f834724c181:   test   %r8d,%r8d
           │  ╰│  0x00007f834724c184:   jl     0x00007f834724c160
   0.03%   │   ╰  0x00007f834724c186:   jmp    0x00007f834724c114           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   ↘      0x00007f834724c188:   test   %r10d,%r10d
                  0x00007f834724c18b:   jne    0x00007f834724c329           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%          0x00007f834724c191:   movq   $0x0,0x18(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%          0x00007f834724c19a:   mov    0x380(%r15),%r10
                  0x00007f834724c1a1:   mov    (%r10),%r10                  ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.05%          0x00007f834724c1a4:   cmpb   $0x0,0x40(%r15)
                  0x00007f834724c1a9:   jne    0x00007f834724c389
                  0x00007f834724c1af:   mov    (%rsp),%rdx
                  0x00007f834724c1b3:   mov    %rsi,%rcx
   0.00%          0x00007f834724c1b6:   mov    %rcx,%rsi
                  0x00007f834724c1b9:   shr    $0x3,%rsi
                  0x00007f834724c1bd:   mov    %esi,0x5c(%r10)
   0.01%          0x00007f834724c1c1:   mov    %r10,%rsi
   0.00%          0x00007f834724c1c4:   xor    %rcx,%rsi
                  0x00007f834724c1c7:   test   $0xffffffffffe00000,%rsi
                  0x00007f834724c1ce:   je     0x00007f834724c3ff
                  0x00007f834724c1d4:   test   %rcx,%rcx
                  0x00007f834724c1d7:   je     0x00007f834724c407
                  0x00007f834724c1dd:   shr    $0x9,%r10
                  0x00007f834724c1e1:   movabs $0x7f833a5bf000,%rsi
                  0x00007f834724c1eb:   cmpb   $0x2,(%r10,%rsi,1)
                  0x00007f834724c1f0:   jne    0x00007f834724c40f
                  0x00007f834724c1f6:   mov    %rcx,%rsi                    ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
....................................................................................................
  22.26%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  16.31%  <total for region 2>

....[Hottest Regions]...............................................................................
  22.26%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1153 
  16.31%               kernel  [unknown] 
   7.44%               kernel  [unknown] 
   2.74%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1342 
   1.38%               kernel  [unknown] 
   1.36%       jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1322 
   1.26%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1226 
   1.22%               kernel  [unknown] 
   1.10%               kernel  [unknown] 
   0.95%       jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1322 
   0.82%               kernel  [unknown] 
   0.81%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.75%   libpthread-2.31.so  __pthread_mutex_lock 
   0.75%               kernel  [unknown] 
   0.67%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1153 
   0.67%               kernel  [unknown] 
   0.67%               kernel  [unknown] 
   0.64%            libjvm.so  Parker::park 
   0.62%         libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.62%       jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1243 
  36.95%  <...other 1033 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  47.64%               kernel  [unknown] 
  22.94%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1153 
   3.21%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1342 
   2.81%       jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1322 
   1.50%       jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1246 
   1.31%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.27%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1226 
   0.88%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.75%   libpthread-2.31.so  __pthread_mutex_lock 
   0.74%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1330 
   0.66%       jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1243 
   0.66%            libjvm.so  Parker::park 
   0.65%            libjvm.so  Unsafe_Park 
   0.63%         libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.61%            libjvm.so  update_register_map1 
   0.53%            libjvm.so  OopMapStream::find_next 
   0.51%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.51%            libjvm.so  vframeStream::vframeStream 
   0.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 1169 
   0.46%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
  11.26%  <...other 276 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  47.64%               kernel
  36.49%       jvmci, level 4
   8.54%            libjvm.so
   4.70%   libpthread-2.31.so
   1.07%         libc-2.31.so
   0.72%     Unknown, level 0
   0.24%          interpreter
   0.18%               [vdso]
   0.17%                     
   0.17%           ld-2.31.so
   0.05%         runtime stub
   0.01%  libjvmcicompiler.so
   0.01%     perf-2763392.map
   0.00%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 10, threadType = PLATFORM)

# Run progress: 37.50% complete, ETA 00:10:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 232.408 us/op
# Warmup Iteration   2: 202.755 us/op
# Warmup Iteration   3: 206.952 us/op
# Warmup Iteration   4: 213.251 us/op
# Warmup Iteration   5: 215.828 us/op
Iteration   1: 213.199 us/op
Iteration   2: 213.242 us/op
Iteration   3: 212.505 us/op
Iteration   4: 213.093 us/op
Iteration   5: 213.795 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  213.167 ±(99.9%) 1.770 us/op [Average]
  (min, avg, max) = (212.505, 213.167, 213.795), stdev = 0.460
  CI (99.9%): [211.397, 214.936] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 270441 total address lines.
Perf output processed (skipped 60.447 seconds):
 Column 1: cycles (1555275 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  28.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  19.14%  <total for region 2>

....[Hottest Regions]...............................................................................
  28.30%              kernel  [unknown] 
  19.14%              kernel  [unknown] 
   8.69%              kernel  [unknown] 
   7.08%              kernel  [unknown] 
   6.56%              kernel  [unknown] 
   4.90%              kernel  [unknown] 
   2.65%              kernel  [unknown] 
   2.04%              kernel  [unknown] 
   1.89%              kernel  [unknown] 
   1.47%              kernel  [unknown] 
   1.22%              kernel  [unknown] 
   1.13%              kernel  [unknown] 
   0.76%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.53%              kernel  [unknown] 
   0.49%              kernel  [unknown] 
   0.47%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
  10.86%  <...other 2846 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.44%              kernel  [unknown] 
   0.37%        libc-2.31.so  _int_free 
   0.25%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 2, compile id 1050 
   0.24%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.12%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.12%        libc-2.31.so  __malloc_arena_thread_freeres 
   0.12%  libpthread-2.31.so  __pthread_mutex_lock 
   0.10%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.09%        runtime stub  StubRoutines::call_stub 
   0.09%           libjvm.so  Unsafe_Park 
   0.07%           libjvm.so  JavaCalls::call_helper 
   0.07%  libpthread-2.31.so  __nptl_deallocate_tsd.part.0 
   0.07%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.06%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.05%           libjvm.so  SafeThreadsListPtr::release_stable_list 
   0.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.05%                      <unknown> 
   0.04%      jvmci, level 4  java.lang.Thread::run, version 2, compile id 1116 
   0.04%           libjvm.so  JNIHandleBlock::release_block 
   0.04%    Unknown, level 0  jdk.internal.misc.Unsafe::unpark, version 1, compile id 1008 
   1.51%  <...other 531 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.44%              kernel
   1.23%           libjvm.so
   0.86%  libpthread-2.31.so
   0.83%        libc-2.31.so
   0.36%      jvmci, level 4
   0.10%    Unknown, level 0
   0.09%        runtime stub
   0.05%                    
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.00%    perf-2763463.map
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 100, threadType = VIRTUAL)

# Run progress: 50.00% complete, ETA 00:08:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 341.740 us/op
# Warmup Iteration   2: 198.465 us/op
# Warmup Iteration   3: 194.336 us/op
# Warmup Iteration   4: 192.831 us/op
# Warmup Iteration   5: 192.053 us/op
Iteration   1: 194.714 us/op
Iteration   2: 197.095 us/op
Iteration   3: 194.453 us/op
Iteration   4: 194.772 us/op
Iteration   5: 196.342 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  195.475 ±(99.9%) 4.513 us/op [Average]
  (min, avg, max) = (194.453, 195.475, 197.095), stdev = 1.172
  CI (99.9%): [190.962, 199.989] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 336475 total address lines.
Perf output processed (skipped 60.486 seconds):
 Column 1: cycles (212260 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1131 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x50]  (sp of caller)
                  0x00007f39ef251fc0:   mov    0x8(%rsi),%r10d
                  0x00007f39ef251fc4:   movabs $0x7f3973000000,%r12
                  0x00007f39ef251fce:   add    %r12,%r10
                  0x00007f39ef251fd1:   xor    %r12,%r12
                  0x00007f39ef251fd4:   cmp    %r10,%rax
                  0x00007f39ef251fd7:   jne    0x00007f39eec2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f39ef251fdd:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007f39ef251fe0:   mov    %eax,-0x14000(%rsp)
   0.02%          0x00007f39ef251fe7:   sub    $0x48,%rsp
                  0x00007f39ef251feb:   nop
                  0x00007f39ef251fec:   cmpl   $0x1,0x20(%r15)
   0.00%          0x00007f39ef251ff4:   jne    0x00007f39ef2527cd
   0.00%          0x00007f39ef251ffa:   mov    %rbp,0x40(%rsp)
   0.00%          0x00007f39ef251fff:   mov    %rsi,0x18(%rsp)
   0.00%          0x00007f39ef252004:   mov    %rdx,0x10(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
   0.00%          0x00007f39ef252009:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007f39ef252806
   0.00%          0x00007f39ef25200f:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%          0x00007f39ef252013:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
   0.00%          0x00007f39ef252019:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
   0.00%          0x00007f39ef25201f:   nop
                  0x00007f39ef252020:   test   %r10d,%r10d
                  0x00007f39ef252023:   jl     0x00007f39ef2527a7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                  0x00007f39ef252029:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.28%          0x00007f39ef252030:   mov    %eax,%r11d
   0.00%          0x00007f39ef252033:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
   0.00%          0x00007f39ef25203a:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.00%          0x00007f39ef252041:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.01%          0x00007f39ef252045:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
   0.00%          0x00007f39ef252048:   movabs $0xffff000000000000,%r8
                  0x00007f39ef252052:   mov    %r10,%rax
                  0x00007f39ef252055:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%          0x00007f39ef252058:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
   0.00%          0x00007f39ef252062:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                  0x00007f39ef252065:   mov    %r11,%rcx
                  0x00007f39ef252068:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007f39ef25206b:   mov    %r10,%rax
   0.00%          0x00007f39ef25206e:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.70%          0x00007f39ef252077:   cmp    %r10,%rax
                  0x00007f39ef25207a:   jne    0x00007f39ef252465           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%          0x00007f39ef252080:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.01%          0x00007f39ef252083:   cmp    $0x1,%rcx
                  0x00007f39ef252087:   jl     0x00007f39ef252333           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                  0x00007f39ef25208d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                  0x00007f39ef252093:   mov    %r10d,0x34(%rsp)
                  0x00007f39ef252098:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.01%          0x00007f39ef25209c:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f39ef25282d
   0.00%          0x00007f39ef2520a4:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%          0x00007f39ef2520ab:   test   %r8d,%r8d
          ╭       0x00007f39ef2520ae:   jl     0x00007f39ef2520d9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.03%  │  ↗ ↗  0x00007f39ef2520b4:   test   %r8d,%r8d
          │╭ │ │  0x00007f39ef2520b7:   jl     0x00007f39ef252128           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
   0.02%  ││ │ │  0x00007f39ef2520bd:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.01%  ││ │ │  0x00007f39ef2520c2:   mov    0x40(%rsp),%rbp
   0.01%  ││ │ │  0x00007f39ef2520c7:   add    $0x48,%rsp
          ││ │ │  0x00007f39ef2520cb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007f39ef2520d2:   ja     0x00007f39ef2527dd
   0.01%  ││ │ │  0x00007f39ef2520d8:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ↘│ │ │  0x00007f39ef2520d9:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.84%   │ │ │  0x00007f39ef2520db:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007f39ef2520e2:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
           │ │ │  0x00007f39ef2520e5:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007f39ef2520e9:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │╭│ │  0x00007f39ef2520ec:   jmp    0x00007f39ef25211a           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007f39ef2520f1:   data16 data16 nopw 0x0(%rax,%rax,1)
           │││ │  0x00007f39ef2520fc:   data16 data16 xchg %ax,%ax          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   │││↗│  0x00007f39ef252100:   mov    %r11d,%r9d
   0.00%   │││││  0x00007f39ef252103:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │││││  0x00007f39ef252106:   cmp    $0x1,%r9d
           ││╰││  0x00007f39ef25210a:   jl     0x00007f39ef2520b4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.13%   ││ ││  0x00007f39ef25210c:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  22.03%   ││ ││  0x00007f39ef25210e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
           ││ ││  0x00007f39ef252115:   test   %eax,(%rcx)                  ;   {poll}
   0.01%   ││ ││  0x00007f39ef252117:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007f39ef25211a:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.57%   │  ││  0x00007f39ef252121:   test   %r8d,%r8d
           │  ╰│  0x00007f39ef252124:   jl     0x00007f39ef252100
   0.05%   │   ╰  0x00007f39ef252126:   jmp    0x00007f39ef2520b4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   ↘      0x00007f39ef252128:   test   %r10d,%r10d
                  0x00007f39ef25212b:   jne    0x00007f39ef25239a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.00%          0x00007f39ef252131:   movq   $0x0,0x28(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%          0x00007f39ef25213a:   mov    0x380(%r15),%r8
   0.01%          0x00007f39ef252141:   mov    (%r8),%r8                    ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.05%          0x00007f39ef252144:   cmpb   $0x0,0x40(%r15)
                  0x00007f39ef252149:   jne    0x00007f39ef2522d3
                  0x00007f39ef25214f:   mov    %rsi,%r10
   0.00%          0x00007f39ef252152:   mov    %r10,%rsi
   0.00%          0x00007f39ef252155:   shr    $0x3,%rsi
                  0x00007f39ef252159:   mov    %esi,0x5c(%r8)
   0.01%          0x00007f39ef25215d:   mov    %r8,%rax
                  0x00007f39ef252160:   xor    %r10,%rax
                  0x00007f39ef252163:   test   $0xffffffffffe00000,%rax
                  0x00007f39ef25216a:   je     0x00007f39ef2522cb
                  0x00007f39ef252170:   test   %r10,%r10
                  0x00007f39ef252173:   je     0x00007f39ef252313
                  0x00007f39ef252179:   shr    $0x9,%r8
                  0x00007f39ef25217d:   movabs $0x7f3a00f94000,%rax
                  0x00007f39ef252187:   cmpb   $0x2,(%r8,%rax,1)
                  0x00007f39ef25218c:   jne    0x00007f39ef25231b
                  0x00007f39ef252192:   mov    %r10,%rsi                    ;* unwind (locked if synchronized)
....................................................................................................
  24.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  14.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  24.87%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1131 
  14.08%              kernel  [unknown] 
   6.39%              kernel  [unknown] 
   4.11%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1346 
   3.08%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 6, compile id 1272 
   2.93%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.58%      jvmci, level 4  java.util.concurrent.ForkJoinPool::externalSubmit, version 2, compile id 1162 
   1.47%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 6, compile id 1272 
   1.07%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1208 
   1.00%              kernel  [unknown] 
   0.96%              kernel  [unknown] 
   0.86%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1207 
   0.78%              kernel  [unknown] 
   0.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 1133 
   0.68%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.67%              kernel  [unknown] 
   0.66%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.64%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1315 
   0.60%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1207 
   0.60%              kernel  [unknown] 
  32.19%  <...other 1111 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  39.42%              kernel  [unknown] 
  25.46%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1131 
   5.00%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 6, compile id 1272 
   4.11%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1346 
   2.95%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   2.25%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1207 
   2.03%      jvmci, level 4  java.util.concurrent.ForkJoinPool::externalSubmit, version 2, compile id 1162 
   1.13%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1208 
   1.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.91%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1315 
   0.78%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 1133 
   0.70%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.68%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.64%           libjvm.so  freeze<Config<(oop_kind)0, G1BarrierSet> > 
   0.61%           libjvm.so  Parker::park 
   0.58%  libpthread-2.31.so  __pthread_mutex_lock 
   0.57%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<4481126ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 4481126ul>::oop_access_barrier 
   0.53%           libjvm.so  SafepointMechanism::update_poll_values 
   0.48%           libjvm.so  Unsafe_Park 
   0.43%           libjvm.so  Freeze<Config<(oop_kind)0, G1BarrierSet> >::allocate_chunk 
   9.71%  <...other 282 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  43.76%      jvmci, level 4
  39.42%              kernel
   8.61%           libjvm.so
   3.64%        libc-2.31.so
   3.51%  libpthread-2.31.so
   0.70%    Unknown, level 0
   0.12%          ld-2.31.so
   0.11%        runtime stub
   0.07%                    
   0.06%              [vdso]
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%    perf-3212432.map
   0.00%        libjimage.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 100, threadType = PLATFORM)

# Run progress: 62.50% complete, ETA 00:06:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 941.410 us/op
# Warmup Iteration   2: 832.672 us/op
# Warmup Iteration   3: 786.643 us/op
# Warmup Iteration   4: 791.089 us/op
# Warmup Iteration   5: 786.266 us/op
Iteration   1: 782.184 us/op
Iteration   2: 791.387 us/op
Iteration   3: 797.197 us/op
Iteration   4: 787.255 us/op
Iteration   5: 789.600 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  789.524 ±(99.9%) 21.211 us/op [Average]
  (min, avg, max) = (782.184, 789.524, 797.197), stdev = 5.508
  CI (99.9%): [768.314, 810.735] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 279480 total address lines.
Perf output processed (skipped 60.270 seconds):
 Column 1: cycles (546488 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  32.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  32.72%               kernel  [unknown] 
   9.79%               kernel  [unknown] 
   7.91%               kernel  [unknown] 
   6.65%               kernel  [unknown] 
   5.22%               kernel  [unknown] 
   4.12%               kernel  [unknown] 
   3.77%               kernel  [unknown] 
   2.36%               kernel  [unknown] 
   2.12%               kernel  [unknown] 
   1.48%               kernel  [unknown] 
   1.26%               kernel  [unknown] 
   1.17%               kernel  [unknown] 
   1.11%               kernel  [unknown] 
   0.92%               kernel  [unknown] 
   0.82%               kernel  [unknown] 
   0.78%               kernel  [unknown] 
   0.71%               kernel  [unknown] 
   0.59%               kernel  [unknown] 
   0.57%               kernel  [unknown] 
   0.54%               kernel  [unknown] 
  15.38%  <...other 3034 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  93.88%               kernel  [unknown] 
   0.95%       jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1137 
   0.58%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.42%   libpthread-2.31.so  __pthread_mutex_lock 
   0.42%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.27%            libjvm.so  Parker::park 
   0.25%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.20%            libjvm.so  Unsafe_Park 
   0.17%     Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 978 
   0.15%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.15%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.15%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 1000 
   0.13%            libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.13%   libpthread-2.31.so  __pthread_mutex_trylock 
   0.10%   libpthread-2.31.so  __pthread_disable_asynccancel 
   0.09%            libjvm.so  Unsafe_Unpark 
   0.09%            libjvm.so  java_lang_Thread::set_thread_status 
   0.06%     Unknown, level 0  java.lang.Thread::yield0, version 1, compile id 967 
   0.06%           ld-2.31.so  __tls_get_addr 
   0.05%         libc-2.31.so  __sched_yield 
   1.68%  <...other 822 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.88%               kernel
   2.03%            libjvm.so
   2.03%   libpthread-2.31.so
   1.19%       jvmci, level 4
   0.34%         libc-2.31.so
   0.28%     Unknown, level 0
   0.08%  libjvmcicompiler.so
   0.07%           ld-2.31.so
   0.05%                     
   0.02%               [vdso]
   0.01%          c1, level 3
   0.00%       hsdis-amd64.so
   0.00%          interpreter
   0.00%         runtime stub
   0.00%           libjava.so
   0.00%     perf-3212505.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1000, threadType = VIRTUAL)

# Run progress: 75.00% complete, ETA 00:04:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2178.379 us/op
# Warmup Iteration   2: 1294.177 us/op
# Warmup Iteration   3: 1274.762 us/op
# Warmup Iteration   4: 1287.277 us/op
# Warmup Iteration   5: 1299.142 us/op
Iteration   1: 1295.545 us/op
Iteration   2: 1301.574 us/op
Iteration   3: 1295.354 us/op
Iteration   4: 1298.945 us/op
Iteration   5: 1309.222 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  1300.128 ±(99.9%) 21.951 us/op [Average]
  (min, avg, max) = (1295.354, 1300.128, 1309.222), stdev = 5.701
  CI (99.9%): [1278.177, 1322.079] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 322823 total address lines.
Perf output processed (skipped 60.293 seconds):
 Column 1: cycles (207129 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 10, compile id 1197 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x40]  (sp of caller)
                  0x00007fb36b262540:   mov    0x8(%rsi),%r10d
                  0x00007fb36b262544:   movabs $0x7fb2ef000000,%r12
                  0x00007fb36b26254e:   add    %r12,%r10
                  0x00007fb36b262551:   xor    %r12,%r12
                  0x00007fb36b262554:   cmp    %r10,%rax
                  0x00007fb36b262557:   jne    0x00007fb36ac2f080           ;   {runtime_call ic_miss_stub}
                  0x00007fb36b26255d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007fb36b262560:   mov    %eax,-0x14000(%rsp)
   0.01%          0x00007fb36b262567:   sub    $0x38,%rsp
                  0x00007fb36b26256b:   nop
                  0x00007fb36b26256c:   cmpl   $0x1,0x20(%r15)
                  0x00007fb36b262574:   jne    0x00007fb36b262ce3
   0.01%          0x00007fb36b26257a:   mov    %rbp,0x30(%rsp)
                  0x00007fb36b26257f:   mov    %rsi,0x8(%rsp)
   0.00%          0x00007fb36b262584:   mov    %rdx,(%rsp)                  ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
   0.00%          0x00007fb36b262588:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007fb36b262d1b
   0.01%          0x00007fb36b26258e:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%          0x00007fb36b262592:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
   0.00%          0x00007fb36b262598:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
   0.00%          0x00007fb36b26259e:   xchg   %ax,%ax
   0.01%          0x00007fb36b2625a0:   test   %r10d,%r10d
                  0x00007fb36b2625a3:   jl     0x00007fb36b262cc0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                  0x00007fb36b2625a9:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.32%          0x00007fb36b2625b0:   mov    %eax,%r11d
                  0x00007fb36b2625b3:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
   0.00%          0x00007fb36b2625ba:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.00%          0x00007fb36b2625c1:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.01%          0x00007fb36b2625c5:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                  0x00007fb36b2625c8:   movabs $0xffff000000000000,%r8
   0.00%          0x00007fb36b2625d2:   mov    %r10,%rax
                  0x00007fb36b2625d5:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.01%          0x00007fb36b2625d8:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
                  0x00007fb36b2625e2:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
   0.00%          0x00007fb36b2625e5:   mov    %r11,%rcx
   0.00%          0x00007fb36b2625e8:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007fb36b2625eb:   mov    %r10,%rax
                  0x00007fb36b2625ee:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.82%          0x00007fb36b2625f7:   cmp    %r10,%rax
                  0x00007fb36b2625fa:   jne    0x00007fb36b2628e9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%          0x00007fb36b262600:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.01%          0x00007fb36b262603:   cmp    $0x1,%rcx
                  0x00007fb36b262607:   jl     0x00007fb36b2628a5           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                  0x00007fb36b26260d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                  0x00007fb36b262613:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%          0x00007fb36b262617:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007fb36b262d3e
   0.01%          0x00007fb36b26261f:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                  0x00007fb36b262626:   test   %r8d,%r8d
          ╭       0x00007fb36b262629:   jl     0x00007fb36b262654           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.04%  │  ↗ ↗  0x00007fb36b26262f:   test   %r8d,%r8d
          │╭ │ │  0x00007fb36b262632:   jl     0x00007fb36b2626a8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
   0.03%  ││ │ │  0x00007fb36b262638:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.00%  ││ │ │  0x00007fb36b26263d:   mov    0x30(%rsp),%rbp
   0.03%  ││ │ │  0x00007fb36b262642:   add    $0x38,%rsp
          ││ │ │  0x00007fb36b262646:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007fb36b26264d:   ja     0x00007fb36b262cf3
   0.01%  ││ │ │  0x00007fb36b262653:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ↘│ │ │  0x00007fb36b262654:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   1.02%   │ │ │  0x00007fb36b262656:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007fb36b26265d:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
           │ │ │  0x00007fb36b262660:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007fb36b262664:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.01%   │╭│ │  0x00007fb36b262667:   jmp    0x00007fb36b26269a           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007fb36b26266c:   data16 data16 nopw 0x0(%rax,%rax,1)
           │││ │  0x00007fb36b262677:   data16 data16 xchg %ax,%ax
           │││ │  0x00007fb36b26267b:   nopl   0x0(%rax,%rax,1)             ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   │││↗│  0x00007fb36b262680:   mov    %r11d,%r9d
   0.00%   │││││  0x00007fb36b262683:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │││││  0x00007fb36b262686:   cmp    $0x1,%r9d
           ││╰││  0x00007fb36b26268a:   jl     0x00007fb36b26262f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.15%   ││ ││  0x00007fb36b26268c:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  22.97%   ││ ││  0x00007fb36b26268e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
   0.00%   ││ ││  0x00007fb36b262695:   test   %eax,(%rcx)                  ;   {poll}
   0.01%   ││ ││  0x00007fb36b262697:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007fb36b26269a:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.75%   │  ││  0x00007fb36b2626a1:   test   %r8d,%r8d
           │  ╰│  0x00007fb36b2626a4:   jl     0x00007fb36b262680
   0.07%   │   ╰  0x00007fb36b2626a6:   jmp    0x00007fb36b26262f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   ↘      0x00007fb36b2626a8:   mov    %r10d,0x24(%rsp)
   0.01%          0x00007fb36b2626ad:   test   %r10d,%r10d
                  0x00007fb36b2626b0:   jne    0x00007fb36b26298e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.00%          0x00007fb36b2626b6:   movq   $0x0,0x18(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%          0x00007fb36b2626bf:   mov    0x380(%r15),%r8
   0.00%          0x00007fb36b2626c6:   mov    (%r8),%r8                    ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.05%          0x00007fb36b2626c9:   cmpb   $0x0,0x40(%r15)
                  0x00007fb36b2626ce:   jne    0x00007fb36b26281d
                  0x00007fb36b2626d4:   mov    %rsi,%r10
   0.00%          0x00007fb36b2626d7:   mov    %r10,%rsi
   0.00%          0x00007fb36b2626da:   shr    $0x3,%rsi
                  0x00007fb36b2626de:   mov    %esi,0x5c(%r8)
   0.01%          0x00007fb36b2626e2:   mov    %r8,%rax
                  0x00007fb36b2626e5:   xor    %r10,%rax
                  0x00007fb36b2626e8:   test   $0xffffffffffe00000,%rax
                  0x00007fb36b2626ef:   je     0x00007fb36b262717
                  0x00007fb36b2626f5:   test   %r10,%r10
                  0x00007fb36b2626f8:   je     0x00007fb36b262717
                  0x00007fb36b2626fe:   shr    $0x9,%r8
                  0x00007fb36b262702:   movabs $0x7fb37d600000,%rsi
                  0x00007fb36b26270c:   cmpb   $0x2,(%r8,%rsi,1)
                  0x00007fb36b262711:   jne    0x00007fb36b26288f           ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
....................................................................................................
  26.42%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.24%  <total for region 2>

....[Hottest Regions]...............................................................................
  26.42%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 10, compile id 1197 
  13.24%              kernel  [unknown] 
   5.99%              kernel  [unknown] 
   5.07%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1131 
   4.06%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1295 
   3.93%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.81%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1153 
   1.36%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1159 
   1.15%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1163 
   0.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 1123 
   0.95%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1153 
   0.74%              kernel  [unknown] 
   0.73%              kernel  [unknown] 
   0.69%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.68%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1131 
   0.66%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 5, compile id 1307 
   0.65%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<4481126ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 4481126ul>::oop_access_barrier 
   0.64%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1163 
   0.64%           libjvm.so  SafepointMechanism::update_poll_values 
   0.64%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1163 
  28.98%  <...other 1210 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.92%              kernel  [unknown] 
  26.80%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 10, compile id 1197 
   6.53%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1131 
   4.46%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1295 
   3.95%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   2.77%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1153 
   2.73%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1163 
   1.43%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1159 
   0.97%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 1123 
   0.93%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 5, compile id 1307 
   0.85%           libjvm.so  freeze<Config<(oop_kind)0, G1BarrierSet> > 
   0.80%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.77%           libjvm.so  SafepointMechanism::update_poll_values 
   0.69%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.65%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<4481126ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 4481126ul>::oop_access_barrier 
   0.56%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.51%           libjvm.so  Freeze<Config<(oop_kind)0, G1BarrierSet> >::allocate_chunk 
   0.46%           libjvm.so  FreezeBase::freeze_fast_copy 
   0.46%           libjvm.so  G1CollectedHeap::requires_barriers 
   0.44%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 286822ul>::oop_access_barrier 
   8.30%  <...other 329 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  48.25%      jvmci, level 4
  34.92%              kernel
   8.38%           libjvm.so
   4.69%        libc-2.31.so
   2.67%  libpthread-2.31.so
   0.71%    Unknown, level 0
   0.14%        runtime stub
   0.10%          ld-2.31.so
   0.07%                    
   0.04%         interpreter
   0.02%              [vdso]
   0.01%    perf-3334264.map
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1000, threadType = PLATFORM)

# Run progress: 87.50% complete, ETA 00:02:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7277.434 us/op
# Warmup Iteration   2: 6278.520 us/op
# Warmup Iteration   3: 6244.890 us/op
# Warmup Iteration   4: 6155.913 us/op
# Warmup Iteration   5: 6091.357 us/op
Iteration   1: 6003.702 us/op
Iteration   2: 6063.604 us/op
Iteration   3: 6046.113 us/op
Iteration   4: 6083.351 us/op
Iteration   5: 6079.925 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  6055.339 ±(99.9%) 124.907 us/op [Average]
  (min, avg, max) = (6003.702, 6055.339, 6083.351), stdev = 32.438
  CI (99.9%): [5930.432, 6180.246] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 275877 total address lines.
Perf output processed (skipped 60.524 seconds):
 Column 1: cycles (124104 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.23%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  15.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  20.23%              kernel  [unknown] 
  15.08%              kernel  [unknown] 
   8.42%              kernel  [unknown] 
   8.05%              kernel  [unknown] 
   3.16%              kernel  [unknown] 
   3.05%              kernel  [unknown] 
   2.12%              kernel  [unknown] 
   1.96%              kernel  [unknown] 
   1.89%              kernel  [unknown] 
   1.71%              kernel  [unknown] 
   1.57%              kernel  [unknown] 
   1.06%              kernel  [unknown] 
   1.06%              kernel  [unknown] 
   1.05%              kernel  [unknown] 
   1.03%              kernel  [unknown] 
   0.88%              kernel  [unknown] 
   0.71%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.69%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.63%              kernel  [unknown] 
  24.98%  <...other 1154 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.50%              kernel  [unknown] 
   1.75%      jvmci, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 1108 
   1.21%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.71%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.54%  libpthread-2.31.so  __pthread_mutex_lock 
   0.48%           libjvm.so  Parker::park 
   0.39%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.39%           libjvm.so  Unsafe_Park 
   0.35%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.33%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.30%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.25%    Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 996 
   0.24%           libjvm.so  java_lang_Thread::set_thread_status 
   0.18%    Unknown, level 0  java.lang.Thread::yield0, version 1, compile id 991 
   0.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::lambda$setupTrial$0, version 3, compile id 1027 
   0.17%           libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.17%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.15%           libjvm.so  Unsafe_Unpark 
   0.14%        libc-2.31.so  __sched_yield 
   0.13%           libjvm.so  JavaThread::is_interrupted 
   1.48%  <...other 269 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.50%              kernel
   3.58%  libpthread-2.31.so
   2.84%           libjvm.so
   2.04%      jvmci, level 4
   0.53%    Unknown, level 0
   0.27%        libc-2.31.so
   0.11%          ld-2.31.so
   0.10%                    
   0.02%         interpreter
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%        runtime stub
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:16:41

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

Benchmark                                        (stackDepth)  (threadType)  Mode  Cnt     Score     Error  Units
VPThreadBlockingApiBenchmark.blocking_calls                 1       VIRTUAL  avgt    5    24.734 ±   0.226  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm             1       VIRTUAL  avgt            NaN              ---
VPThreadBlockingApiBenchmark.blocking_calls                 1      PLATFORM  avgt    5   151.959 ±  11.282  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm             1      PLATFORM  avgt            NaN              ---
VPThreadBlockingApiBenchmark.blocking_calls                10       VIRTUAL  avgt    5    40.848 ±   2.188  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm            10       VIRTUAL  avgt            NaN              ---
VPThreadBlockingApiBenchmark.blocking_calls                10      PLATFORM  avgt    5   213.167 ±   1.770  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm            10      PLATFORM  avgt            NaN              ---
VPThreadBlockingApiBenchmark.blocking_calls               100       VIRTUAL  avgt    5   195.475 ±   4.513  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm           100       VIRTUAL  avgt            NaN              ---
VPThreadBlockingApiBenchmark.blocking_calls               100      PLATFORM  avgt    5   789.524 ±  21.211  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm           100      PLATFORM  avgt            NaN              ---
VPThreadBlockingApiBenchmark.blocking_calls              1000       VIRTUAL  avgt    5  1300.128 ±  21.951  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm          1000       VIRTUAL  avgt            NaN              ---
VPThreadBlockingApiBenchmark.blocking_calls              1000      PLATFORM  avgt    5  6055.339 ± 124.907  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm          1000      PLATFORM  avgt            NaN              ---
