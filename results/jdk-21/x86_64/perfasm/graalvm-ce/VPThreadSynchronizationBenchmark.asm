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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:30:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 77.715 us/op
# Warmup Iteration   2: 31.433 us/op
# Warmup Iteration   3: 30.990 us/op
# Warmup Iteration   4: 31.016 us/op
# Warmup Iteration   5: 30.993 us/op
Iteration   1: 31.577 us/op
Iteration   2: 31.443 us/op
Iteration   3: 31.421 us/op
Iteration   4: 31.464 us/op
Iteration   5: 31.521 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  31.485 ±(99.9%) 0.244 us/op [Average]
  (min, avg, max) = (31.421, 31.485, 31.577), stdev = 0.063
  CI (99.9%): [31.241, 31.729] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 387270 total address lines.
Perf output processed (skipped 60.570 seconds):
 Column 1: cycles (168518 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 1324 

                                                                        ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                        ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
              0x00007f572325b0aa:   cmp    %rcx,%rax
              0x00007f572325b0ad:   je     0x00007f572325ba6f
              0x00007f572325b0b3:   jmp    0x00007f572325b080           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
              0x00007f572325b0b5:   pause                               ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Thread::onSpinWait@-3
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.30%      0x00007f572325b0b7:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
              0x00007f572325b0be:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
              0x00007f572325b0c1:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
              0x00007f572325b0c5:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%  ╭   0x00007f572325b0c8:   jmp    0x00007f572325b0fe           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          │   0x00007f572325b0cd:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f572325b0d8:   data16 data16 xchg %ax,%ax
          │   0x00007f572325b0dc:   nopl   0x0(%rax)                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%  │↗  0x00007f572325b0e0:   mov    %r11d,%r9d
          ││  0x00007f572325b0e3:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%  ││  0x00007f572325b0e6:   cmp    $0x1,%r9d
          ││  0x00007f572325b0ea:   jl     0x00007f572325b054           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.09%  ││  0x00007f572325b0f0:   pause                               ;* unwind (locked if synchronized)
          ││                                                            ; - java.lang.Thread::onSpinWait@-3
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  13.10%  ││  0x00007f572325b0f2:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
          ││  0x00007f572325b0f9:   test   %eax,(%rcx)                  ;   {poll}
   0.00%  ││  0x00007f572325b0fb:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          ↘│  0x00007f572325b0fe:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.12%   │  0x00007f572325b105:   test   %r8d,%r8d
           ╰  0x00007f572325b108:   jl     0x00007f572325b0e0
              0x00007f572325b10a:   jmp    0x00007f572325b054           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%      0x00007f572325b10f:   test   %r10d,%r10d
              0x00007f572325b112:   jne    0x00007f572325b97a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%      0x00007f572325b118:   movq   $0x0,0x28(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%      0x00007f572325b121:   mov    0x380(%r15),%r8
   0.00%      0x00007f572325b128:   mov    (%r8),%r8                    ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Thread::currentThread@-3
                                                                        ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.07%      0x00007f572325b12b:   cmpb   $0x0,0x40(%r15)
              0x00007f572325b130:   jne    0x00007f572325b89e
              0x00007f572325b136:   mov    %rsi,%r10
   0.00%      0x00007f572325b139:   mov    %r10,%rsi
   0.00%      0x00007f572325b13c:   shr    $0x3,%rsi
              0x00007f572325b140:   mov    %esi,0x5c(%r8)
   0.01%      0x00007f572325b144:   mov    %r8,%rsi
   0.00%      0x00007f572325b147:   xor    %r10,%rsi
              0x00007f572325b14a:   test   $0xffffffffffe00000,%rsi
              0x00007f572325b151:   je     0x00007f572325b179
              0x00007f572325b157:   test   %r10,%r10
              0x00007f572325b15a:   je     0x00007f572325b179
              0x00007f572325b160:   shr    $0x9,%r8
              0x00007f572325b164:   movabs $0x7f57176ef000,%rsi
              0x00007f572325b16e:   cmpb   $0x2,(%r8,%rsi,1)
              0x00007f572325b173:   jne    0x00007f572325b99d           ;* unwind (locked if synchronized)
                                                                        ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                        ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  13.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  13.72%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 1324 
   9.93%              kernel  [unknown] 
   5.52%           libjvm.so  update_register_map1 
   4.49%              kernel  [unknown] 
   2.39%           libjvm.so  vframeStream::vframeStream 
   1.96%           libjvm.so  OopMapStream::find_next 
   1.62%           libjvm.so  OopMapStream::find_next 
   1.26%           libjvm.so  OopMapStream::find_next 
   1.25%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 4, compile id 1301 
   1.09%              kernel  [unknown] 
   0.99%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 4, compile id 1637 
   0.93%              kernel  [unknown] 
   0.89%              kernel  [unknown] 
   0.89%                      <unknown> 
   0.88%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1478 
   0.78%           libjvm.so  methodHandle::~methodHandle 
   0.73%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1478 
   0.69%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1477 
   0.65%              kernel  [unknown] 
   0.61%              kernel  [unknown] 
  48.72%  <...other 1584 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  32.79%              kernel  [unknown] 
  14.70%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 1324 
   5.53%           libjvm.so  update_register_map1 
   4.84%           libjvm.so  OopMapStream::find_next 
   3.43%           libjvm.so  vframeStream::vframeStream 
   1.75%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1478 
   1.56%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 4, compile id 1301 
   1.44%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::addWorker, version 2, compile id 1453 
   1.32%                      <unknown> 
   1.32%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1477 
   1.05%      jvmci, level 4  java.lang.VirtualThread$VThreadContinuation$1::run, version 2, compile id 1485 
   1.03%      jvmci, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 2, compile id 1472 
   0.99%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 4, compile id 1637 
   0.97%      jvmci, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 6, compile id 1591 
   0.84%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 4, compile id 1590 
   0.81%      jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1378 
   0.81%           libjvm.so  frame::sender 
   0.78%           libjvm.so  methodHandle::~methodHandle 
   0.77%      jvmci, level 4  java.util.concurrent.ConcurrentHashMap::putVal, version 2, compile id 1083 
   0.77%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
  22.48%  <...other 351 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  35.48%      jvmci, level 4
  32.79%              kernel
  25.12%           libjvm.so
   3.56%  libpthread-2.31.so
   1.32%                    
   0.56%    Unknown, level 0
   0.42%              [vdso]
   0.37%          ld-2.31.so
   0.25%        libc-2.31.so
   0.10%        runtime stub
   0.02%    perf-3351573.map
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.01%         c1, level 3
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 5.56% complete, ETA 00:33:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1023.080 us/op
# Warmup Iteration   2: 601.489 us/op
# Warmup Iteration   3: 587.362 us/op
# Warmup Iteration   4: 584.685 us/op
# Warmup Iteration   5: 583.890 us/op
Iteration   1: 587.573 us/op
Iteration   2: 586.860 us/op
Iteration   3: 585.985 us/op
Iteration   4: 586.487 us/op
Iteration   5: 589.171 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  587.215 ±(99.9%) 4.765 us/op [Average]
  (min, avg, max) = (585.985, 587.215, 589.171), stdev = 1.237
  CI (99.9%): [582.451, 591.980] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 345029 total address lines.
Perf output processed (skipped 60.581 seconds):
 Column 1: cycles (2635869 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  56.01%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.61%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.01%              kernel  [unknown] 
  20.61%              kernel  [unknown] 
   3.17%              kernel  [unknown] 
   2.38%              kernel  [unknown] 
   1.93%              kernel  [unknown] 
   1.90%              kernel  [unknown] 
   1.62%              kernel  [unknown] 
   1.42%              kernel  [unknown] 
   0.83%              kernel  [unknown] 
   0.70%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.58%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   5.53%  <...other 3566 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.53%              kernel  [unknown] 
   0.09%           libjvm.so  vframeStreamCommon::next 
   0.07%           libjvm.so  JVM_GetStackAccessControlContext 
   0.05%        libc-2.31.so  _int_free 
   0.04%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%        libc-2.31.so  malloc 
   0.03%        libc-2.31.so  _int_malloc 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%  libpthread-2.31.so  __lll_lock_wait_private 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.83%  <...other 616 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.53%              kernel
   0.84%           libjvm.so
   0.26%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.12%      jvmci, level 4
   0.02%                    
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.01%              [vdso]
   0.01%        runtime stub
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%    perf-3351652.map
   0.00%      hsdis-amd64.so
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 11.11% complete, ETA 00:39:32
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 79.611 us/op
# Warmup Iteration   2: 32.376 us/op
# Warmup Iteration   3: 31.992 us/op
# Warmup Iteration   4: 32.012 us/op
# Warmup Iteration   5: 31.813 us/op
Iteration   1: 32.104 us/op
Iteration   2: 32.412 us/op
Iteration   3: 32.463 us/op
Iteration   4: 32.426 us/op
Iteration   5: 32.450 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  32.371 ±(99.9%) 0.580 us/op [Average]
  (min, avg, max) = (32.104, 32.371, 32.463), stdev = 0.151
  CI (99.9%): [31.791, 32.951] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 396312 total address lines.
Perf output processed (skipped 60.805 seconds):
 Column 1: cycles (177493 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1434 

                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
              0x00007f0c6326093f:   mov    %r10,%rax
              0x00007f0c63260942:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                        ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                        ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
              0x00007f0c6326094b:   cmp    %r10,%rax
              0x00007f0c6326094e:   je     0x00007f0c632608c0
              0x00007f0c63260954:   jmp    0x00007f0c63260920           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%      0x00007f0c63260956:   pause                               ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Thread::onSpinWait@-3
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.29%      0x00007f0c63260958:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
              0x00007f0c6326095f:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
              0x00007f0c63260962:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
              0x00007f0c63260966:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%  ╭   0x00007f0c63260969:   jmp    0x00007f0c6326099e           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          │   0x00007f0c6326096e:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f0c63260979:   data16 data16 xchg %ax,%ax
          │   0x00007f0c6326097d:   data16 xchg %ax,%ax                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%  │↗  0x00007f0c63260980:   mov    %r11d,%r9d
   0.00%  ││  0x00007f0c63260983:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          ││  0x00007f0c63260986:   cmp    $0x1,%r9d
          ││  0x00007f0c6326098a:   jl     0x00007f0c632608f4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.08%  ││  0x00007f0c63260990:   pause                               ;* unwind (locked if synchronized)
          ││                                                            ; - java.lang.Thread::onSpinWait@-3
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  13.03%  ││  0x00007f0c63260992:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [32]=Oop [40]=Oop }
          ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
          ││  0x00007f0c63260999:   test   %eax,(%rcx)                  ;   {poll}
   0.01%  ││  0x00007f0c6326099b:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          ↘│  0x00007f0c6326099e:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.10%   │  0x00007f0c632609a5:   test   %r8d,%r8d
           ╰  0x00007f0c632609a8:   jl     0x00007f0c63260980
   0.00%      0x00007f0c632609aa:   jmp    0x00007f0c632608f4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%      0x00007f0c632609af:   test   %r10d,%r10d
              0x00007f0c632609b2:   jne    0x00007f0c6326121a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%      0x00007f0c632609b8:   movq   $0x0,0x38(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%      0x00007f0c632609c1:   mov    0x380(%r15),%r10
              0x00007f0c632609c8:   mov    (%r10),%r10                  ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Thread::currentThread@-3
                                                                        ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.07%      0x00007f0c632609cb:   cmpb   $0x0,0x40(%r15)
              0x00007f0c632609d0:   jne    0x00007f0c6326127f
              0x00007f0c632609d6:   mov    0x20(%rsp),%rdx
              0x00007f0c632609db:   mov    %rsi,%r9
   0.00%      0x00007f0c632609de:   mov    %r9,%rsi
   0.00%      0x00007f0c632609e1:   shr    $0x3,%rsi
              0x00007f0c632609e5:   mov    %esi,0x5c(%r10)
   0.01%      0x00007f0c632609e9:   mov    %r10,%rsi
              0x00007f0c632609ec:   xor    %r9,%rsi
              0x00007f0c632609ef:   test   $0xffffffffffe00000,%rsi
              0x00007f0c632609f6:   je     0x00007f0c6326123f
              0x00007f0c632609fc:   nopl   0x0(%rax)
              0x00007f0c63260a00:   test   %r9,%r9
              0x00007f0c63260a03:   je     0x00007f0c632612be
              0x00007f0c63260a09:   shr    $0x9,%r10
              0x00007f0c63260a0d:   movabs $0x7f0c7639a000,%rsi
              0x00007f0c63260a17:   nopw   0x0(%rax,%rax,1)
              0x00007f0c63260a20:   cmpb   $0x2,(%r10,%rsi,1)
....................................................................................................
  13.61%  <total for region 1>

....[Hottest Regions]...............................................................................
  13.61%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1434 
   9.68%               kernel  [unknown] 
   5.10%            libjvm.so  update_register_map1 
   4.43%               kernel  [unknown] 
   2.51%            libjvm.so  vframeStream::vframeStream 
   1.86%            libjvm.so  OopMapStream::find_next 
   1.56%            libjvm.so  OopMapStream::find_next 
   1.34%       jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 1567 
   1.29%       jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 1685 
   1.18%            libjvm.so  OopMapStream::find_next 
   1.14%               kernel  [unknown] 
   0.96%               kernel  [unknown] 
   0.92%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1596 
   0.89%               kernel  [unknown] 
   0.88%       jvmci, level 4  java.lang.VirtualThread$VThreadContinuation$1::run, version 2, compile id 1599 
   0.82%                       <unknown> 
   0.82%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1596 
   0.80%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f0be8084620::run, version 2, compile id 1550 
   0.78%            libjvm.so  methodHandle::~methodHandle 
   0.69%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1604 
  48.73%  <...other 1825 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  32.26%               kernel  [unknown] 
  14.57%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1434 
   5.11%            libjvm.so  update_register_map1 
   4.61%            libjvm.so  OopMapStream::find_next 
   3.18%            libjvm.so  vframeStream::vframeStream 
   1.90%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1596 
   1.79%       jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 1685 
   1.45%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1604 
   1.44%       jvmci, level 4  java.lang.VirtualThread$VThreadContinuation$1::run, version 2, compile id 1599 
   1.34%       jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 1567 
   1.22%                       <unknown> 
   1.22%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::addWorker, version 2, compile id 1554 
   1.12%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f0be8084620::run, version 2, compile id 1550 
   0.99%       jvmci, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 2, compile id 1585 
   0.86%       jvmci, level 4  java.util.concurrent.FutureTask::run, version 4, compile id 1716 
   0.79%       jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1562 
   0.78%            libjvm.so  methodHandle::~methodHandle 
   0.76%            libjvm.so  frame::sender 
   0.69%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::processWorkerExit, version 4, compile id 1760 
   0.69%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
  23.22%  <...other 618 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  36.86%       jvmci, level 4
  32.26%               kernel
  24.24%            libjvm.so
   3.39%   libpthread-2.31.so
   1.22%                     
   0.53%     Unknown, level 0
   0.40%               [vdso]
   0.39%         libc-2.31.so
   0.37%           ld-2.31.so
   0.16%  libjvmcicompiler.so
   0.10%         runtime stub
   0.03%          interpreter
   0.02%      perf-135379.map
   0.02%          c1, level 3
   0.01%       hsdis-amd64.so
   0.00%          c1, level 1
   0.00%          c1, level 2
   0.00%           libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 16.67% complete, ETA 00:34:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1005.299 us/op
# Warmup Iteration   2: 591.841 us/op
# Warmup Iteration   3: 579.956 us/op
# Warmup Iteration   4: 577.237 us/op
# Warmup Iteration   5: 577.238 us/op
Iteration   1: 591.974 us/op
Iteration   2: 578.261 us/op
Iteration   3: 579.406 us/op
Iteration   4: 577.990 us/op
Iteration   5: 577.298 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  580.986 ±(99.9%) 23.833 us/op [Average]
  (min, avg, max) = (577.298, 580.986, 591.974), stdev = 6.189
  CI (99.9%): [557.153, 604.818] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 353259 total address lines.
Perf output processed (skipped 60.758 seconds):
 Column 1: cycles (2662802 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  55.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.88%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.87%              kernel  [unknown] 
  20.88%              kernel  [unknown] 
   3.25%              kernel  [unknown] 
   2.46%              kernel  [unknown] 
   2.06%              kernel  [unknown] 
   1.81%              kernel  [unknown] 
   1.72%              kernel  [unknown] 
   1.26%              kernel  [unknown] 
   0.84%              kernel  [unknown] 
   0.68%              kernel  [unknown] 
   0.65%              kernel  [unknown] 
   0.58%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.40%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   5.49%  <...other 3755 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.54%              kernel  [unknown] 
   0.08%           libjvm.so  vframeStreamCommon::next 
   0.07%           libjvm.so  JVM_GetStackAccessControlContext 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.04%        libc-2.31.so  _int_free 
   0.04%        libc-2.31.so  malloc 
   0.04%           libjvm.so  InstanceKlass::protection_domain 
   0.04%        libc-2.31.so  _int_malloc 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.02%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::addWorker, version 4, compile id 1341 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%  libpthread-2.31.so  __lll_lock_wait 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.82%  <...other 642 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.54%              kernel
   0.83%           libjvm.so
   0.27%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.11%      jvmci, level 4
   0.02%          ld-2.31.so
   0.02%                    
   0.02%    Unknown, level 0
   0.01%              [vdso]
   0.00%          libjava.so
   0.00%        runtime stub
   0.00%         c1, level 3
   0.00%     perf-135455.map
   0.00%      hsdis-amd64.so
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 22.22% complete, ETA 00:34:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 73.766 us/op
# Warmup Iteration   2: 31.440 us/op
# Warmup Iteration   3: 30.982 us/op
# Warmup Iteration   4: 30.752 us/op
# Warmup Iteration   5: 30.726 us/op
Iteration   1: 30.891 us/op
Iteration   2: 30.765 us/op
Iteration   3: 30.746 us/op
Iteration   4: 30.772 us/op
Iteration   5: 30.810 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  30.797 ±(99.9%) 0.223 us/op [Average]
  (min, avg, max) = (30.746, 30.797, 30.891), stdev = 0.058
  CI (99.9%): [30.574, 31.020] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 392783 total address lines.
Perf output processed (skipped 60.760 seconds):
 Column 1: cycles (166597 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1450 

                                                                        ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                        ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
              0x00007f441b25e12a:   cmp    %rcx,%rax
              0x00007f441b25e12d:   je     0x00007f441b25ebff
              0x00007f441b25e133:   jmp    0x00007f441b25e100           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
              0x00007f441b25e135:   pause                               ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Thread::onSpinWait@-3
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.31%      0x00007f441b25e137:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
              0x00007f441b25e13e:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
              0x00007f441b25e141:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
              0x00007f441b25e145:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%  ╭   0x00007f441b25e148:   jmp    0x00007f441b25e17e           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          │   0x00007f441b25e14d:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f441b25e158:   data16 data16 xchg %ax,%ax
          │   0x00007f441b25e15c:   nopl   0x0(%rax)                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%  │↗  0x00007f441b25e160:   mov    %r11d,%r9d
   0.00%  ││  0x00007f441b25e163:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%  ││  0x00007f441b25e166:   cmp    $0x1,%r9d
          ││  0x00007f441b25e16a:   jl     0x00007f441b25e0d4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.08%  ││  0x00007f441b25e170:   pause                               ;* unwind (locked if synchronized)
          ││                                                            ; - java.lang.Thread::onSpinWait@-3
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  13.09%  ││  0x00007f441b25e172:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
          ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
          ││  0x00007f441b25e179:   test   %eax,(%rcx)                  ;   {poll}
   0.00%  ││  0x00007f441b25e17b:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          ↘│  0x00007f441b25e17e:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.11%   │  0x00007f441b25e185:   test   %r8d,%r8d
           ╰  0x00007f441b25e188:   jl     0x00007f441b25e160
              0x00007f441b25e18a:   jmp    0x00007f441b25e0d4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%      0x00007f441b25e18f:   test   %r10d,%r10d
              0x00007f441b25e192:   jne    0x00007f441b25ea92           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%      0x00007f441b25e198:   movq   $0x0,0x28(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%      0x00007f441b25e1a1:   mov    0x380(%r15),%rdx
              0x00007f441b25e1a8:   mov    (%rdx),%rdx                  ;* unwind (locked if synchronized)
                                                                        ; - java.lang.Thread::currentThread@-3
                                                                        ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.05%      0x00007f441b25e1ab:   cmpb   $0x0,0x40(%r15)
   0.00%      0x00007f441b25e1b0:   jne    0x00007f441b25eae5
              0x00007f441b25e1b6:   mov    0x10(%rsp),%r10
              0x00007f441b25e1bb:   mov    %rsi,%r11
   0.00%      0x00007f441b25e1be:   mov    %r11,%rsi
   0.00%      0x00007f441b25e1c1:   shr    $0x3,%rsi
              0x00007f441b25e1c5:   mov    %esi,0x5c(%rdx)
   0.00%      0x00007f441b25e1c8:   mov    %rdx,%rsi
              0x00007f441b25e1cb:   xor    %r11,%rsi
   0.00%      0x00007f441b25e1ce:   test   $0xffffffffffe00000,%rsi
              0x00007f441b25e1d5:   je     0x00007f441b25e20a
              0x00007f441b25e1db:   nopl   0x0(%rax,%rax,1)
              0x00007f441b25e1e0:   test   %r11,%r11
              0x00007f441b25e1e3:   je     0x00007f441b25e20a
              0x00007f441b25e1e9:   shr    $0x9,%rdx
              0x00007f441b25e1ed:   movabs $0x7f442ce10000,%rsi
              0x00007f441b25e1f7:   nopw   0x0(%rax,%rax,1)
              0x00007f441b25e200:   cmpb   $0x2,(%rdx,%rsi,1)
              0x00007f441b25e204:   jne    0x00007f441b25eb27           ;* unwind (locked if synchronized)
                                                                        ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
....................................................................................................
  13.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  10.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  13.67%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1450 
  10.02%              kernel  [unknown] 
   5.44%           libjvm.so  update_register_map1 
   4.64%              kernel  [unknown] 
   2.81%           libjvm.so  vframeStream::vframeStream 
   1.96%           libjvm.so  OopMapStream::find_next 
   1.67%           libjvm.so  OopMapStream::find_next 
   1.27%           libjvm.so  OopMapStream::find_next 
   1.24%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 7, compile id 1632 
   1.20%              kernel  [unknown] 
   1.05%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 1586 
   0.96%              kernel  [unknown] 
   0.92%              kernel  [unknown] 
   0.85%                      <unknown> 
   0.85%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1624 
   0.84%           libjvm.so  methodHandle::~methodHandle 
   0.82%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1623 
   0.80%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1623 
   0.76%      jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1577 
   0.67%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1631 
  47.59%  <...other 1538 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.55%              kernel  [unknown] 
  14.69%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1450 
   5.45%           libjvm.so  update_register_map1 
   4.89%           libjvm.so  OopMapStream::find_next 
   3.59%           libjvm.so  vframeStream::vframeStream 
   2.32%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1623 
   1.77%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 7, compile id 1632 
   1.58%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1624 
   1.40%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::addWorker, version 2, compile id 1570 
   1.34%                      <unknown> 
   1.27%      jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 1586 
   1.16%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1631 
   1.06%      jvmci, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 2, compile id 1599 
   0.96%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 4, compile id 1733 
   0.95%      jvmci, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 4, compile id 1736 
   0.84%           libjvm.so  methodHandle::~methodHandle 
   0.77%      jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1577 
   0.76%      jvmci, level 4  java.util.concurrent.ConcurrentHashMap::putVal, version 2, compile id 1358 
   0.75%           libjvm.so  frame::sender 
   0.73%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  20.19%  <...other 323 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  34.57%      jvmci, level 4
  33.55%              kernel
  25.01%           libjvm.so
   3.74%  libpthread-2.31.so
   1.34%                    
   0.53%    Unknown, level 0
   0.43%              [vdso]
   0.41%          ld-2.31.so
   0.29%        libc-2.31.so
   0.10%        runtime stub
   0.01%         c1, level 3
   0.01%    perf-1124383.map
   0.01%      hsdis-amd64.so
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 27.78% complete, ETA 00:30:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 943.463 us/op
# Warmup Iteration   2: 604.081 us/op
# Warmup Iteration   3: 583.876 us/op
# Warmup Iteration   4: 579.534 us/op
# Warmup Iteration   5: 579.593 us/op
Iteration   1: 582.521 us/op
Iteration   2: 581.685 us/op
Iteration   3: 580.744 us/op
Iteration   4: 580.459 us/op
Iteration   5: 582.595 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  581.601 ±(99.9%) 3.793 us/op [Average]
  (min, avg, max) = (580.459, 581.601, 582.595), stdev = 0.985
  CI (99.9%): [577.808, 585.394] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 338433 total address lines.
Perf output processed (skipped 60.556 seconds):
 Column 1: cycles (2654523 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  55.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.87%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.76%              kernel  [unknown] 
  20.87%              kernel  [unknown] 
   3.16%              kernel  [unknown] 
   2.40%              kernel  [unknown] 
   1.89%              kernel  [unknown] 
   1.80%              kernel  [unknown] 
   1.68%              kernel  [unknown] 
   1.41%              kernel  [unknown] 
   0.84%              kernel  [unknown] 
   0.69%              kernel  [unknown] 
   0.69%              kernel  [unknown] 
   0.56%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.40%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   5.61%  <...other 3613 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.53%              kernel  [unknown] 
   0.08%           libjvm.so  vframeStreamCommon::next 
   0.07%           libjvm.so  JVM_GetStackAccessControlContext 
   0.04%        libc-2.31.so  _int_free 
   0.04%           libjvm.so  InstanceKlass::protection_domain 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%        libc-2.31.so  malloc 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%        libc-2.31.so  _int_malloc 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.02%           libjvm.so  Method::validate_bci_from_bcp 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%  libpthread-2.31.so  __lll_lock_wait 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.83%  <...other 648 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.53%              kernel
   0.84%           libjvm.so
   0.26%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.11%      jvmci, level 4
   0.02%          ld-2.31.so
   0.02%    Unknown, level 0
   0.02%                    
   0.01%              [vdso]
   0.01%        runtime stub
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%    perf-1124455.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 33.33% complete, ETA 00:29:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 155.764 us/op
# Warmup Iteration   2: 41.557 us/op
# Warmup Iteration   3: 39.327 us/op
# Warmup Iteration   4: 39.222 us/op
# Warmup Iteration   5: 39.325 us/op
Iteration   1: 39.634 us/op
Iteration   2: 39.354 us/op
Iteration   3: 39.320 us/op
Iteration   4: 39.235 us/op
Iteration   5: 39.249 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  39.358 ±(99.9%) 0.624 us/op [Average]
  (min, avg, max) = (39.235, 39.358, 39.634), stdev = 0.162
  CI (99.9%): [38.734, 39.982] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 417490 total address lines.
Perf output processed (skipped 60.528 seconds):
 Column 1: cycles (250895 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  12.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1198 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x60]  (sp of caller)
                  0x00007f38b3253ac0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                  0x00007f38b3253ac4:   movabs $0x7f3837000000,%r12
                  0x00007f38b3253ace:   add    %r12,%r10
                  0x00007f38b3253ad1:   xor    %r12,%r12
                  0x00007f38b3253ad4:   cmp    %r10,%rax
                  0x00007f38b3253ad7:   jne    0x00007f38b2c2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f38b3253add:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007f38b3253ae0:   mov    %eax,-0x14000(%rsp)
   0.01%          0x00007f38b3253ae7:   sub    $0x58,%rsp
   0.00%          0x00007f38b3253aeb:   nop
                  0x00007f38b3253aec:   cmpl   $0x1,0x20(%r15)
                  0x00007f38b3253af4:   jne    0x00007f38b3254a23
                  0x00007f38b3253afa:   mov    %rbp,0x50(%rsp)
   0.00%          0x00007f38b3253aff:   mov    %rsi,0x20(%rsp)
   0.00%          0x00007f38b3253b04:   mov    %rdx,0x18(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
   0.00%          0x00007f38b3253b09:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007f38b3254a5b
                  0x00007f38b3253b0f:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%          0x00007f38b3253b13:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
                  0x00007f38b3253b19:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                  0x00007f38b3253b1f:   nop
                  0x00007f38b3253b20:   test   %r10d,%r10d
                  0x00007f38b3253b23:   jl     0x00007f38b32549b5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
   0.00%          0x00007f38b3253b29:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.07%          0x00007f38b3253b30:   mov    %eax,%r11d
                  0x00007f38b3253b33:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
   0.00%          0x00007f38b3253b3a:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                  0x00007f38b3253b41:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%          0x00007f38b3253b45:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                  0x00007f38b3253b48:   movabs $0xffff000000000000,%r8
                  0x00007f38b3253b52:   mov    %r10,%rax
                  0x00007f38b3253b55:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%          0x00007f38b3253b58:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
                  0x00007f38b3253b62:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                  0x00007f38b3253b65:   mov    %r11,%rcx
   0.00%          0x00007f38b3253b68:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007f38b3253b6b:   mov    %r10,%rax
                  0x00007f38b3253b6e:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.17%          0x00007f38b3253b77:   cmp    %r10,%rax
                  0x00007f38b3253b7a:   jne    0x00007f38b3254591           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                  0x00007f38b3253b80:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.00%          0x00007f38b3253b83:   cmp    $0x1,%rcx
                  0x00007f38b3253b87:   jl     0x00007f38b32542fe           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                  0x00007f38b3253b8d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                  0x00007f38b3253b93:   mov    %r10d,0x3c(%rsp)
   0.00%          0x00007f38b3253b98:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%          0x00007f38b3253b9c:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f38b3254a7e
                  0x00007f38b3253ba4:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                  0x00007f38b3253bab:   test   %r8d,%r8d
          ╭       0x00007f38b3253bae:   jl     0x00007f38b3253bdc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%  │  ↗ ↗  0x00007f38b3253bb4:   test   %r8d,%r8d
          │╭ │ │  0x00007f38b3253bb7:   jl     0x00007f38b3253c28           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
          ││ │ │  0x00007f38b3253bbd:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
          ││ │ │  0x00007f38b3253bc2:   mov    0x50(%rsp),%rbp
   0.00%  ││ │ │  0x00007f38b3253bc7:   add    $0x58,%rsp
   0.00%  ││ │ │  0x00007f38b3253bcb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007f38b3253bd2:   ja     0x00007f38b3254a33
          ││ │ │  0x00007f38b3253bd8:   vzeroupper 
   0.00%  ││ │ │  0x00007f38b3253bdb:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ↘│ │ │  0x00007f38b3253bdc:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.22%   │ │ │  0x00007f38b3253bde:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007f38b3253be5:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
           │ │ │  0x00007f38b3253be8:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007f38b3253bec:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │╭│ │  0x00007f38b3253bef:   jmp    0x00007f38b3253c1a           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007f38b3253bf4:   nopl   0x0(%rax,%rax,1)
           │││ │  0x00007f38b3253bfc:   data16 data16 xchg %ax,%ax          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%   │││↗│  0x00007f38b3253c00:   mov    %r11d,%r9d
   0.00%   │││││  0x00007f38b3253c03:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │││││  0x00007f38b3253c06:   cmp    $0x1,%r9d
           ││╰││  0x00007f38b3253c0a:   jl     0x00007f38b3253bb4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.07%   ││ ││  0x00007f38b3253c0c:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  10.32%   ││ ││  0x00007f38b3253c0e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
           ││ ││  0x00007f38b3253c15:   test   %eax,(%rcx)                  ;   {poll}
   0.01%   ││ ││  0x00007f38b3253c17:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007f38b3253c1a:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.09%   │  ││  0x00007f38b3253c21:   test   %r8d,%r8d
           │  ╰│  0x00007f38b3253c24:   jl     0x00007f38b3253c00
           │   ╰  0x00007f38b3253c26:   jmp    0x00007f38b3253bb4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   ↘      0x00007f38b3253c28:   test   %r10d,%r10d
                  0x00007f38b3253c2b:   jne    0x00007f38b325433e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.00%          0x00007f38b3253c31:   movq   $0x0,0x30(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%          0x00007f38b3253c3a:   mov    0x380(%r15),%r10
   0.00%          0x00007f38b3253c41:   mov    (%r10),%r10                  ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.06%          0x00007f38b3253c44:   cmpb   $0x0,0x40(%r15)
                  0x00007f38b3253c49:   jne    0x00007f38b3254387
                  0x00007f38b3253c4f:   mov    %rsi,%r8
                  0x00007f38b3253c52:   mov    %r8,%rsi
   0.00%          0x00007f38b3253c55:   shr    $0x3,%rsi
   0.00%          0x00007f38b3253c59:   mov    %esi,0x5c(%r10)
   0.01%          0x00007f38b3253c5d:   mov    %r10,%rsi
                  0x00007f38b3253c60:   xor    %r8,%rsi
                  0x00007f38b3253c63:   test   $0xffffffffffe00000,%rsi
                  0x00007f38b3253c6a:   je     0x00007f38b325437a
                  0x00007f38b3253c70:   test   %r8,%r8
                  0x00007f38b3253c73:   je     0x00007f38b32543ff
                  0x00007f38b3253c79:   shr    $0x9,%r10
                  0x00007f38b3253c7d:   movabs $0x7f38c5b8d000,%rsi
                  0x00007f38b3253c87:   cmpb   $0x2,(%r10,%rsi,1)
                  0x00007f38b3253c8c:   jne    0x00007f38b325441f
                  0x00007f38b3253c92:   mov    0x18(%rsp),%rdx
....................................................................................................
  11.09%  <total for region 2>

....[Hottest Regions]...............................................................................
  12.69%               kernel  [unknown] 
  11.09%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1198 
   5.90%               kernel  [unknown] 
   2.95%            libjvm.so  update_register_map1 
   1.74%            libjvm.so  vframeStream::vframeStream 
   1.52%            libjvm.so  ObjectMonitor::TrySpin 
   1.41%            libjvm.so  SpinPause 
   1.40%               kernel  [unknown] 
   1.28%               [vdso]  __vdso_clock_gettime 
   1.20%               kernel  [unknown] 
   1.07%               kernel  [unknown] 
   1.03%            libjvm.so  OopMapStream::find_next 
   0.92%            libjvm.so  OopMapStream::find_next 
   0.91%       jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 1559 
   0.82%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1719 
   0.79%               kernel  [unknown] 
   0.77%            libjvm.so  SafeFetch32_impl 
   0.72%       jvmci, level 4  java.lang.VirtualThread::parkNanos, version 4, compile id 1592 
   0.68%       jvmci, level 4  java.lang.VirtualThread::sleepNanos, version 2, compile id 1699 
   0.66%            libjvm.so  OopMapStream::find_next 
  50.43%  <...other 1414 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  39.72%               kernel  [unknown] 
  11.61%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1198 
   2.96%            libjvm.so  update_register_map1 
   2.61%            libjvm.so  OopMapStream::find_next 
   2.35%       jvmci, level 4  java.lang.VirtualThread::parkNanos, version 4, compile id 1592 
   2.20%            libjvm.so  vframeStream::vframeStream 
   1.63%            libjvm.so  ObjectMonitor::TrySpin 
   1.41%            libjvm.so  SpinPause 
   1.32%               [vdso]  __vdso_clock_gettime 
   1.26%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::addWorker, version 4, compile id 1635 
   1.23%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 3, compile id 1562 
   1.06%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.97%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1719 
   0.93%       jvmci, level 4  java.lang.VirtualThread$VThreadContinuation$1::run, version 2, compile id 1463 
   0.91%       jvmci, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 1559 
   0.88%                       <unknown> 
   0.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f3838084620::run, version 2, compile id 1700 
   0.80%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.79%       jvmci, level 4  java.lang.VirtualThread::sleepNanos, version 2, compile id 1699 
   0.78%       jvmci, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 4, compile id 1712 
  23.76%  <...other 369 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  39.72%               kernel
  31.82%       jvmci, level 4
  20.59%            libjvm.so
   4.33%   libpthread-2.31.so
   1.32%               [vdso]
   0.88%                     
   0.66%     Unknown, level 0
   0.37%         libc-2.31.so
   0.21%           ld-2.31.so
   0.06%         runtime stub
   0.03%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          interpreter
   0.00%          c1, level 3
   0.00%     perf-2113145.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 38.89% complete, ETA 00:26:24
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1583.442 us/op
# Warmup Iteration   2: 1034.711 us/op
# Warmup Iteration   3: 1015.432 us/op
# Warmup Iteration   4: 1014.258 us/op
# Warmup Iteration   5: 1014.806 us/op
Iteration   1: 1015.969 us/op
Iteration   2: 1014.978 us/op
Iteration   3: 1014.924 us/op
Iteration   4: 1016.539 us/op
Iteration   5: 1018.443 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1016.171 ±(99.9%) 5.552 us/op [Average]
  (min, avg, max) = (1014.924, 1016.171, 1018.443), stdev = 1.442
  CI (99.9%): [1010.618, 1021.723] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 338650 total address lines.
Perf output processed (skipped 60.664 seconds):
 Column 1: cycles (1667171 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  48.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.84%               kernel  [unknown] 
  27.90%               kernel  [unknown] 
   3.45%               kernel  [unknown] 
   3.13%               kernel  [unknown] 
   2.76%               kernel  [unknown] 
   1.93%               kernel  [unknown] 
   1.72%               kernel  [unknown] 
   1.30%               kernel  [unknown] 
   1.06%               kernel  [unknown] 
   0.78%               kernel  [unknown] 
   0.40%               kernel  [unknown] 
   0.37%               kernel  [unknown] 
   0.33%               kernel  [unknown] 
   0.30%               kernel  [unknown] 
   0.25%               kernel  [unknown] 
   0.24%               kernel  [unknown] 
   0.22%               kernel  [unknown] 
   0.18%               kernel  [unknown] 
   0.13%               kernel  [unknown] 
   0.12%               kernel  [unknown] 
   4.58%  <...other 3307 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.31%               kernel  [unknown] 
   0.08%            libjvm.so  ThreadsSMRSupport::free_list 
   0.06%         libc-2.31.so  _int_free 
   0.05%         libc-2.31.so  __memset_avx2_erms 
   0.04%            libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.04%         libc-2.31.so  _int_malloc 
   0.04%         libc-2.31.so  malloc 
   0.03%   libpthread-2.31.so  __pthread_mutex_lock 
   0.03%         libc-2.31.so  __vfprintf_internal 
   0.03%            libjvm.so  vframeStreamCommon::next 
   0.03%            libjvm.so  JVM_GetStackAccessControlContext 
   0.03%            libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.03%         libc-2.31.so  cfree@GLIBC_2.2.5 
   0.02%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.02%               [vdso]  __vdso_clock_gettime 
   0.02%         libc-2.31.so  malloc_consolidate 
   0.02%            libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.02%                       <unknown> 
   1.07%  <...other 655 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.31%               kernel
   0.95%            libjvm.so
   0.38%         libc-2.31.so
   0.17%   libpthread-2.31.so
   0.11%       jvmci, level 4
   0.02%               [vdso]
   0.02%                     
   0.02%           ld-2.31.so
   0.01%         runtime stub
   0.01%     Unknown, level 0
   0.00%          interpreter
   0.00%  libjvmcicompiler.so
   0.00%          c1, level 3
   0.00%     perf-2113217.map
   0.00%           libjava.so
   0.00%       hsdis-amd64.so
   0.00%          c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 44.44% complete, ETA 00:24:12
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 417.473 us/op
# Warmup Iteration   2: 135.219 us/op
# Warmup Iteration   3: 124.803 us/op
# Warmup Iteration   4: 124.735 us/op
# Warmup Iteration   5: 123.978 us/op
Iteration   1: 124.270 us/op
Iteration   2: 129.105 us/op
Iteration   3: 123.027 us/op
Iteration   4: 121.887 us/op
Iteration   5: 120.762 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  123.810 ±(99.9%) 12.454 us/op [Average]
  (min, avg, max) = (120.762, 123.810, 129.105), stdev = 3.234
  CI (99.9%): [111.356, 136.265] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 421263 total address lines.
Perf output processed (skipped 60.840 seconds):
 Column 1: cycles (282034 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1135 

                   0x00007f4403250452:   data16 nopw 0x0(%rax,%rax,1)
                   0x00007f440325045c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          ↗        0x00007f4403250460:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
          │                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          │        0x00007f4403250467:   test   %eax,(%rbx)                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                  ;   {poll}
   0.00%  │        0x00007f4403250469:   mov    %rax,%rcx
          │        0x00007f440325046c:   mov    %ecx,0xc(%rdx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%  │        0x00007f440325046f:   mov    %rcx,%rax
          │        0x00007f4403250472:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
          │        0x00007f4403250475:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
          │        0x00007f4403250478:   mov    %r11,%r10
          │        0x00007f440325047b:   or     %rax,%r10                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
          │        0x00007f440325047e:   mov    %rcx,%rax
          │        0x00007f4403250481:   lock cmpxchg %r10,0xd8(%rsi)        ;* unwind (locked if synchronized)
          │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
          │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.00%  │        0x00007f440325048a:   cmp    %rcx,%rax
          │        0x00007f440325048d:   je     0x00007f4403250b60
          ╰        0x00007f4403250493:   jmp    0x00007f4403250460           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%           0x00007f4403250495:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%           0x00007f440325049b:   mov    %r10d,0x34(%rsp)
   0.00%           0x00007f44032504a0:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%           0x00007f44032504a4:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f4403250d74
   0.00%           0x00007f44032504ac:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%           0x00007f44032504b3:   test   %r8d,%r8d
           ╭       0x00007f44032504b6:   jl     0x00007f44032504ee           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   │  ↗ ↗  0x00007f44032504bc:   nopl   0x0(%rax)
   0.01%   │  │ │  0x00007f44032504c0:   test   %r8d,%r8d
           │╭ │ │  0x00007f44032504c3:   jl     0x00007f440325054b           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
           ││ │ │  0x00007f44032504c9:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.00%   ││ │ │  0x00007f44032504ce:   mov    0x40(%rsp),%rbp
   0.00%   ││ │ │  0x00007f44032504d3:   add    $0x48,%rsp
           ││ │ │  0x00007f44032504d7:   nopw   0x0(%rax,%rax,1)
           ││ │ │  0x00007f44032504e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ││ │ │  0x00007f44032504e7:   ja     0x00007f4403250d06
   0.00%   ││ │ │  0x00007f44032504ed:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%   ↘│ │ │  0x00007f44032504ee:   pause                               ;* unwind (locked if synchronized)
            │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
            │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.39%    │ │ │  0x00007f44032504f0:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
            │ │ │  0x00007f44032504f7:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
            │ │ │  0x00007f44032504fa:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
            │ │ │  0x00007f44032504fe:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%    │╭│ │  0x00007f4403250501:   jmp    0x00007f440325053a           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │││ │  0x00007f4403250506:   data16 data16 nopw 0x0(%rax,%rax,1)
            │││ │  0x00007f4403250511:   data16 data16 xchg %ax,%ax
            │││ │  0x00007f4403250515:   data16 data16 nopw 0x0(%rax,%rax,1) ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%    │││↗│  0x00007f4403250520:   mov    %r11d,%r9d
   0.00%    │││││  0x00007f4403250523:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%    │││││  0x00007f4403250526:   cmp    $0x1,%r9d
            ││╰││  0x00007f440325052a:   jl     0x00007f44032504bc           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.11%    ││ ││  0x00007f440325052c:   pause                               ;* unwind (locked if synchronized)
            ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
            ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  16.70%    ││ ││  0x00007f440325052e:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [16]=Oop [24]=Oop }
            ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
            ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
   0.00%    ││ ││  0x00007f4403250535:   test   %eax,(%rcx)                  ;   {poll}
   0.01%    ││ ││  0x00007f4403250537:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │↘ ││  0x00007f440325053a:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.16%    │  ││  0x00007f4403250541:   test   %r8d,%r8d
            │  ╰│  0x00007f4403250544:   jl     0x00007f4403250520
   0.00%    │   ╰  0x00007f4403250546:   jmp    0x00007f44032504bc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.02%    ↘      0x00007f440325054b:   test   %r10d,%r10d
                   0x00007f440325054e:   jne    0x00007f44032507dd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%           0x00007f4403250554:   movq   $0x0,0x28(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%           0x00007f440325055d:   mov    0x380(%r15),%r10
   0.00%           0x00007f4403250564:   mov    (%r10),%r10                  ;* unwind (locked if synchronized)
                                                                             ; - java.lang.Thread::currentThread@-3
                                                                             ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.03%           0x00007f4403250567:   cmpb   $0x0,0x40(%r15)
   0.00%           0x00007f440325056c:   jne    0x00007f4403250830
                   0x00007f4403250572:   mov    %rsi,%rdx
                   0x00007f4403250575:   shr    $0x3,%rdx
   0.00%           0x00007f4403250579:   mov    %edx,0x5c(%r10)
   0.01%           0x00007f440325057d:   mov    %r10,%rdx
   0.00%           0x00007f4403250580:   xor    %rsi,%rdx
                   0x00007f4403250583:   test   $0xffffffffffe00000,%rdx
                   0x00007f440325058a:   je     0x00007f4403250823
                   0x00007f4403250590:   test   %rsi,%rsi
                   0x00007f4403250593:   je     0x00007f440325089f
                   0x00007f4403250599:   shr    $0x9,%r10
                   0x00007f440325059d:   movabs $0x7f44155d6000,%rdx
                   0x00007f44032505a7:   cmpb   $0x2,(%r10,%rdx,1)
                   0x00007f44032505ac:   jne    0x00007f44032508b8
                   0x00007f44032505b2:   mov    0x10(%rsp),%rdx
                   0x00007f44032505b7:   mov    %rsi,%r11                    ;* unwind (locked if synchronized)
....................................................................................................
  17.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  17.48%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1135 
  13.74%              kernel  [unknown] 
   6.35%              kernel  [unknown] 
   1.82%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1398 
   1.47%              kernel  [unknown] 
   1.26%           libjvm.so  update_register_map1 
   1.23%      jvmci, level 4  java.util.concurrent.ForkJoinPool::execute, version 2, compile id 1494 
   1.17%              kernel  [unknown] 
   1.13%              kernel  [unknown] 
   0.86%              kernel  [unknown] 
   0.83%              [vdso]  __vdso_clock_gettime 
   0.75%              kernel  [unknown] 
   0.71%           libjvm.so  vframeStream::vframeStream 
   0.67%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1664 
   0.67%              kernel  [unknown] 
   0.67%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1135 
   0.65%           libjvm.so  Parker::park 
   0.62%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.60%              kernel  [unknown] 
   0.59%  libpthread-2.31.so  __pthread_mutex_lock 
  46.73%  <...other 2026 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.77%              kernel  [unknown] 
  18.70%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 2, compile id 1135 
   2.08%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1398 
   1.26%           libjvm.so  update_register_map1 
   1.23%      jvmci, level 4  java.util.concurrent.ForkJoinPool::execute, version 2, compile id 1494 
   1.13%           libjvm.so  OopMapStream::find_next 
   1.05%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.01%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 8, compile id 1727 
   1.00%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.98%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 3, compile id 1607 
   0.92%           libjvm.so  vframeStream::vframeStream 
   0.87%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1664 
   0.83%              [vdso]  __vdso_clock_gettime 
   0.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f4388084620::run, version 2, compile id 1583 
   0.73%           libjvm.so  Parker::park 
   0.70%           libjvm.so  Unsafe_Park 
   0.62%      jvmci, level 4  java.lang.VirtualThread::scheduleUnpark, version 2, compile id 1627 
   0.60%  libpthread-2.31.so  __pthread_mutex_lock 
   0.59%      jvmci, level 4  java.lang.VirtualThread::sleepNanos, version 2, compile id 1592 
   0.56%                      <unknown> 
  20.60%  <...other 392 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  43.77%              kernel
  36.31%      jvmci, level 4
  11.49%           libjvm.so
   4.83%  libpthread-2.31.so
   1.02%        libc-2.31.so
   0.83%              [vdso]
   0.78%    Unknown, level 0
   0.56%                    
   0.26%          ld-2.31.so
   0.10%        runtime stub
   0.02%         c1, level 3
   0.01%    perf-2681854.map
   0.01%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 50.00% complete, ETA 00:21:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1591.204 us/op
# Warmup Iteration   2: 1047.484 us/op
# Warmup Iteration   3: 1032.699 us/op
# Warmup Iteration   4: 1021.591 us/op
# Warmup Iteration   5: 1024.120 us/op
Iteration   1: 1023.814 us/op
Iteration   2: 1022.126 us/op
Iteration   3: 1025.287 us/op
Iteration   4: 1022.222 us/op
Iteration   5: 1023.808 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1023.451 ±(99.9%) 5.055 us/op [Average]
  (min, avg, max) = (1022.126, 1023.451, 1025.287), stdev = 1.313
  CI (99.9%): [1018.396, 1028.507] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 338188 total address lines.
Perf output processed (skipped 60.619 seconds):
 Column 1: cycles (1697217 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  47.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  26.64%  <total for region 2>

....[Hottest Regions]...............................................................................
  47.74%              kernel  [unknown] 
  26.64%              kernel  [unknown] 
   3.18%              kernel  [unknown] 
   3.18%              kernel  [unknown] 
   2.61%              kernel  [unknown] 
   1.97%              kernel  [unknown] 
   1.68%              kernel  [unknown] 
   1.55%              kernel  [unknown] 
   1.40%              kernel  [unknown] 
   0.91%              kernel  [unknown] 
   0.76%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.50%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   5.54%  <...other 3202 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.17%              kernel  [unknown] 
   0.12%           libjvm.so  ThreadsSMRSupport::free_list 
   0.08%        libc-2.31.so  _int_free 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.05%        libc-2.31.so  _int_malloc 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.04%        libc-2.31.so  malloc 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%              [vdso]  __vdso_clock_gettime 
   1.06%  <...other 597 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.17%              kernel
   1.00%           libjvm.so
   0.47%        libc-2.31.so
   0.19%  libpthread-2.31.so
   0.10%      jvmci, level 4
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.02%                    
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%         interpreter
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%    perf-2681932.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 55.56% complete, ETA 00:19:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 182.994 us/op
# Warmup Iteration   2: 46.892 us/op
# Warmup Iteration   3: 43.637 us/op
# Warmup Iteration   4: 43.496 us/op
# Warmup Iteration   5: 43.299 us/op
Iteration   1: 43.857 us/op
Iteration   2: 43.698 us/op
Iteration   3: 43.599 us/op
Iteration   4: 42.852 us/op
Iteration   5: 43.445 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  43.490 ±(99.9%) 1.490 us/op [Average]
  (min, avg, max) = (42.852, 43.490, 43.857), stdev = 0.387
  CI (99.9%): [42.000, 44.980] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 420839 total address lines.
Perf output processed (skipped 60.507 seconds):
 Column 1: cycles (717576 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 3, compile id 1220 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x40]  (sp of caller)
                  0x00007f6e9f2558a0:   mov    0x8(%rsi),%r10d
                  0x00007f6e9f2558a4:   movabs $0x7f6e23000000,%r12
                  0x00007f6e9f2558ae:   add    %r12,%r10
                  0x00007f6e9f2558b1:   xor    %r12,%r12
                  0x00007f6e9f2558b4:   cmp    %r10,%rax
                  0x00007f6e9f2558b7:   jne    0x00007f6e9ec2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f6e9f2558bd:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007f6e9f2558c0:   mov    %eax,-0x14000(%rsp)
   0.01%          0x00007f6e9f2558c7:   sub    $0x38,%rsp
                  0x00007f6e9f2558cb:   nop
                  0x00007f6e9f2558cc:   cmpl   $0x1,0x20(%r15)
                  0x00007f6e9f2558d4:   jne    0x00007f6e9f25609f
   0.00%          0x00007f6e9f2558da:   mov    %rbp,0x30(%rsp)
   0.00%          0x00007f6e9f2558df:   mov    %rsi,0x8(%rsp)
   0.00%          0x00007f6e9f2558e4:   mov    %rdx,(%rsp)                  ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
   0.00%          0x00007f6e9f2558e8:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007f6e9f2560da
   0.01%          0x00007f6e9f2558ee:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%          0x00007f6e9f2558f2:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
   0.00%          0x00007f6e9f2558f8:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                  0x00007f6e9f2558fe:   xchg   %ax,%ax
   0.00%          0x00007f6e9f255900:   test   %r10d,%r10d
                  0x00007f6e9f255903:   jl     0x00007f6e9f255fde           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
   0.00%          0x00007f6e9f255909:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.15%          0x00007f6e9f255910:   mov    %eax,%r11d
   0.00%          0x00007f6e9f255913:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
   0.00%          0x00007f6e9f25591a:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.00%          0x00007f6e9f255921:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%          0x00007f6e9f255925:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                  0x00007f6e9f255928:   movabs $0xffff000000000000,%r8
   0.00%          0x00007f6e9f255932:   mov    %r10,%rax
                  0x00007f6e9f255935:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%          0x00007f6e9f255938:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
                  0x00007f6e9f255942:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
   0.00%          0x00007f6e9f255945:   mov    %r11,%rcx
                  0x00007f6e9f255948:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007f6e9f25594b:   mov    %r10,%rax
                  0x00007f6e9f25594e:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.39%          0x00007f6e9f255957:   cmp    %r10,%rax
                  0x00007f6e9f25595a:   jne    0x00007f6e9f255ef1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%          0x00007f6e9f255960:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.00%          0x00007f6e9f255963:   cmp    $0x1,%rcx
                  0x00007f6e9f255967:   jl     0x00007f6e9f255b65           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
   0.00%          0x00007f6e9f25596d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                  0x00007f6e9f255973:   mov    %r10d,0x24(%rsp)
   0.00%          0x00007f6e9f255978:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.01%          0x00007f6e9f25597c:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f6e9f2560fd
   0.00%          0x00007f6e9f255984:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%          0x00007f6e9f25598b:   test   %r8d,%r8d
          ╭       0x00007f6e9f25598e:   jl     0x00007f6e9f2559b9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%  │  ↗ ↗  0x00007f6e9f255994:   test   %r8d,%r8d
          │╭ │ │  0x00007f6e9f255997:   jl     0x00007f6e9f255a08           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
   0.00%  ││ │ │  0x00007f6e9f25599d:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.00%  ││ │ │  0x00007f6e9f2559a2:   mov    0x30(%rsp),%rbp
   0.00%  ││ │ │  0x00007f6e9f2559a7:   add    $0x38,%rsp
          ││ │ │  0x00007f6e9f2559ab:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007f6e9f2559b2:   ja     0x00007f6e9f2560af
   0.00%  ││ │ │  0x00007f6e9f2559b8:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%  ↘│ │ │  0x00007f6e9f2559b9:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.45%   │ │ │  0x00007f6e9f2559bb:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007f6e9f2559c2:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
   0.00%   │ │ │  0x00007f6e9f2559c5:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007f6e9f2559c9:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │╭│ │  0x00007f6e9f2559cc:   jmp    0x00007f6e9f2559fa           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007f6e9f2559d1:   data16 data16 nopw 0x0(%rax,%rax,1)
           │││ │  0x00007f6e9f2559dc:   data16 data16 xchg %ax,%ax          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%   │││↗│  0x00007f6e9f2559e0:   mov    %r11d,%r9d
   0.00%   │││││  0x00007f6e9f2559e3:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │││││  0x00007f6e9f2559e6:   cmp    $0x1,%r9d
           ││╰││  0x00007f6e9f2559ea:   jl     0x00007f6e9f255994           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.10%   ││ ││  0x00007f6e9f2559ec:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  15.10%   ││ ││  0x00007f6e9f2559ee:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
   0.00%   ││ ││  0x00007f6e9f2559f5:   test   %eax,(%rcx)                  ;   {poll}
   0.01%   ││ ││  0x00007f6e9f2559f7:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007f6e9f2559fa:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.27%   │  ││  0x00007f6e9f255a01:   test   %r8d,%r8d
           │  ╰│  0x00007f6e9f255a04:   jl     0x00007f6e9f2559e0
   0.02%   │   ╰  0x00007f6e9f255a06:   jmp    0x00007f6e9f255994           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   ↘      0x00007f6e9f255a08:   test   %r10d,%r10d
                  0x00007f6e9f255a0b:   jne    0x00007f6e9f255bc5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%          0x00007f6e9f255a11:   movq   $0x0,0x18(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%          0x00007f6e9f255a1a:   mov    0x380(%r15),%r10
                  0x00007f6e9f255a21:   mov    (%r10),%r10                  ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.06%          0x00007f6e9f255a24:   cmpb   $0x0,0x40(%r15)
   0.00%          0x00007f6e9f255a29:   jne    0x00007f6e9f255def
                  0x00007f6e9f255a2f:   mov    %rsi,%rcx
                  0x00007f6e9f255a32:   mov    %rcx,%rsi
   0.00%          0x00007f6e9f255a35:   shr    $0x3,%rsi
   0.00%          0x00007f6e9f255a39:   mov    %esi,0x5c(%r10)
   0.01%          0x00007f6e9f255a3d:   mov    %r10,%rsi
   0.00%          0x00007f6e9f255a40:   xor    %rcx,%rsi
   0.00%          0x00007f6e9f255a43:   test   $0xffffffffffe00000,%rsi
                  0x00007f6e9f255a4a:   je     0x00007f6e9f255de7
                  0x00007f6e9f255a50:   test   %rcx,%rcx
                  0x00007f6e9f255a53:   je     0x00007f6e9f255e5f
                  0x00007f6e9f255a59:   shr    $0x9,%r10
                  0x00007f6e9f255a5d:   movabs $0x7f6eb0aba000,%rsi
                  0x00007f6e9f255a67:   cmpb   $0x2,(%r10,%rsi,1)
                  0x00007f6e9f255a6c:   jne    0x00007f6e9f255e67
                  0x00007f6e9f255a72:   mov    %rcx,%rsi                    ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  16.65%  <total for region 1>

....[Hottest Regions]...............................................................................
  16.65%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 3, compile id 1220 
   9.30%               kernel  [unknown] 
   4.41%               kernel  [unknown] 
   2.55%            libjvm.so  update_register_map1 
   2.34%               kernel  [unknown] 
   2.34%       jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1477 
   1.70%            libjvm.so  vframeStream::vframeStream 
   1.59%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1799 
   1.20%       jvmci, level 4  java.util.concurrent.ForkJoinPool::execute, version 2, compile id 1480 
   1.06%               [vdso]  __vdso_clock_gettime 
   0.93%            libjvm.so  OopMapStream::find_next 
   0.93%       jvmci, level 4  java.lang.VirtualThread::runContinuation, version 4, compile id 1706 
   0.81%               kernel  [unknown] 
   0.76%            libjvm.so  OopMapStream::find_next 
   0.73%               kernel  [unknown] 
   0.71%       jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::offer, version 2, compile id 1652 
   0.64%            libjvm.so  Parker::park 
   0.62%               kernel  [unknown] 
   0.61%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1605 
   0.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f6e24084620::run, version 2, compile id 1669 
  49.52%  <...other 2170 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.61%               kernel  [unknown] 
  17.33%       jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 3, compile id 1220 
   2.78%       jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1477 
   2.56%            libjvm.so  update_register_map1 
   2.28%            libjvm.so  OopMapStream::find_next 
   2.05%            libjvm.so  vframeStream::vframeStream 
   1.95%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1605 
   1.74%       jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1799 
   1.21%       jvmci, level 4  java.util.concurrent.ForkJoinPool::execute, version 2, compile id 1480 
   1.13%       jvmci, level 4  java.lang.VirtualThread::parkNanos, version 2, compile id 1593 
   1.09%       jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1786 
   1.06%               [vdso]  __vdso_clock_gettime 
   0.98%       jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1540 
   0.94%       jvmci, level 4  java.lang.VirtualThread::runContinuation, version 4, compile id 1706 
   0.87%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 4, compile id 1683 
   0.85%       jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::take, version 4, compile id 1689 
   0.81%       jvmci, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 4, compile id 1717 
   0.81%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.81%       jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::offer, version 2, compile id 1652 
   0.79%       jvmci, level 4  java.lang.VirtualThread$VThreadContinuation$1::run, version 2, compile id 1653 
  24.35%  <...other 696 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  41.72%       jvmci, level 4
  33.61%               kernel
  17.28%            libjvm.so
   3.44%   libpthread-2.31.so
   1.25%         libc-2.31.so
   1.06%               [vdso]
   0.71%                     
   0.56%     Unknown, level 0
   0.21%           ld-2.31.so
   0.07%         runtime stub
   0.03%  libjvmcicompiler.so
   0.03%     perf-3245557.map
   0.01%          interpreter
   0.01%          c1, level 3
   0.00%           libjava.so
   0.00%       hsdis-amd64.so
   0.00%          c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 61.11% complete, ETA 00:16:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1044.485 us/op
# Warmup Iteration   2: 628.230 us/op
# Warmup Iteration   3: 615.106 us/op
# Warmup Iteration   4: 613.905 us/op
# Warmup Iteration   5: 612.047 us/op
Iteration   1: 619.025 us/op
Iteration   2: 611.669 us/op
Iteration   3: 612.942 us/op
Iteration   4: 611.217 us/op
Iteration   5: 611.491 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  613.269 ±(99.9%) 12.650 us/op [Average]
  (min, avg, max) = (611.217, 613.269, 619.025), stdev = 3.285
  CI (99.9%): [600.619, 625.919] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 340945 total address lines.
Perf output processed (skipped 60.592 seconds):
 Column 1: cycles (3243877 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  49.16%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  24.42%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.16%              kernel  [unknown] 
  24.42%              kernel  [unknown] 
   3.71%              kernel  [unknown] 
   3.67%              kernel  [unknown] 
   2.68%              kernel  [unknown] 
   2.24%              kernel  [unknown] 
   1.82%              kernel  [unknown] 
   1.41%              kernel  [unknown] 
   0.86%              kernel  [unknown] 
   0.65%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.40%              kernel  [unknown] 
   0.38%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   5.71%  <...other 3581 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.51%              kernel  [unknown] 
   0.07%           libjvm.so  vframeStreamCommon::next 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.05%           libjvm.so  ThreadsSMRSupport::free_list 
   0.05%        libc-2.31.so  malloc 
   0.05%        libc-2.31.so  _int_malloc 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.04%        libc-2.31.so  _int_free 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%  libpthread-2.31.so  __lll_lock_wait 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%           libjvm.so  vframeStream::vframeStream 
   0.02%           libjvm.so  Method::validate_bci_from_bcp 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.80%  <...other 639 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.51%              kernel
   0.84%           libjvm.so
   0.30%        libc-2.31.so
   0.19%  libpthread-2.31.so
   0.09%      jvmci, level 4
   0.02%          ld-2.31.so
   0.01%                    
   0.01%              [vdso]
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%          libjava.so
   0.00%    perf-3245628.map
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 66.67% complete, ETA 00:14:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 153.467 us/op
# Warmup Iteration   2: 39.806 us/op
# Warmup Iteration   3: 38.044 us/op
# Warmup Iteration   4: 37.849 us/op
# Warmup Iteration   5: 37.854 us/op
Iteration   1: 38.044 us/op
Iteration   2: 37.536 us/op
Iteration   3: 37.558 us/op
Iteration   4: 37.563 us/op
Iteration   5: 37.857 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  37.712 ±(99.9%) 0.878 us/op [Average]
  (min, avg, max) = (37.536, 37.712, 38.044), stdev = 0.228
  CI (99.9%): [36.834, 38.589] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 402652 total address lines.
Perf output processed (skipped 60.493 seconds):
 Column 1: cycles (248099 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  12.74%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1509 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x70]  (sp of caller)
                  0x00007f8c7726ce80:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                  0x00007f8c7726ce84:   movabs $0x7f8bfb000000,%r12
                  0x00007f8c7726ce8e:   add    %r12,%r10
                  0x00007f8c7726ce91:   xor    %r12,%r12
                  0x00007f8c7726ce94:   cmp    %r10,%rax
                  0x00007f8c7726ce97:   jne    0x00007f8c76c2f080           ;   {runtime_call ic_miss_stub}
                  0x00007f8c7726ce9d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007f8c7726cea0:   mov    %eax,-0x14000(%rsp)
   0.00%          0x00007f8c7726cea7:   sub    $0x68,%rsp
                  0x00007f8c7726ceab:   nop
                  0x00007f8c7726ceac:   cmpl   $0x1,0x20(%r15)
                  0x00007f8c7726ceb4:   jne    0x00007f8c7726e028
   0.00%          0x00007f8c7726ceba:   mov    %rbp,0x60(%rsp)
   0.00%          0x00007f8c7726cebf:   mov    %rsi,0x28(%rsp)
   0.00%          0x00007f8c7726cec4:   mov    %rdx,0x20(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [32]=Oop [40]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
                  0x00007f8c7726cec9:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007f8c7726e060
   0.00%          0x00007f8c7726cecf:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                  0x00007f8c7726ced3:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
                  0x00007f8c7726ced9:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                  0x00007f8c7726cedf:   nop
   0.00%          0x00007f8c7726cee0:   test   %r10d,%r10d
                  0x00007f8c7726cee3:   jl     0x00007f8c7726df4b           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                  0x00007f8c7726cee9:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.07%          0x00007f8c7726cef0:   mov    %eax,%r11d
                  0x00007f8c7726cef3:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                  0x00007f8c7726cefa:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                  0x00007f8c7726cf01:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%          0x00007f8c7726cf05:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                  0x00007f8c7726cf08:   movabs $0xffff000000000000,%r8
   0.00%          0x00007f8c7726cf12:   mov    %r10,%rax
                  0x00007f8c7726cf15:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%          0x00007f8c7726cf18:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
                  0x00007f8c7726cf22:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                  0x00007f8c7726cf25:   mov    %r11,%rcx
                  0x00007f8c7726cf28:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007f8c7726cf2b:   mov    %r10,%rax
                  0x00007f8c7726cf2e:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.21%          0x00007f8c7726cf37:   cmp    %r10,%rax
                  0x00007f8c7726cf3a:   jne    0x00007f8c7726da5d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%          0x00007f8c7726cf40:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.00%          0x00007f8c7726cf43:   cmp    $0x1,%rcx
                  0x00007f8c7726cf47:   jl     0x00007f8c7726d15e           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                  0x00007f8c7726cf4d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                  0x00007f8c7726cf53:   mov    %r10d,0x4c(%rsp)
                  0x00007f8c7726cf58:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [32]=Oop [40]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%          0x00007f8c7726cf5c:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f8c7726e083
   0.00%          0x00007f8c7726cf64:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%          0x00007f8c7726cf6b:   test   %r8d,%r8d
          ╭       0x00007f8c7726cf6e:   jl     0x00007f8c7726cf9c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%  │  ↗ ↗  0x00007f8c7726cf74:   test   %r8d,%r8d
          │╭ │ │  0x00007f8c7726cf77:   jl     0x00007f8c7726cfe8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
          ││ │ │  0x00007f8c7726cf7d:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.00%  ││ │ │  0x00007f8c7726cf82:   mov    0x60(%rsp),%rbp
   0.00%  ││ │ │  0x00007f8c7726cf87:   add    $0x68,%rsp
          ││ │ │  0x00007f8c7726cf8b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007f8c7726cf92:   ja     0x00007f8c7726e038
          ││ │ │  0x00007f8c7726cf98:   vzeroupper 
   0.00%  ││ │ │  0x00007f8c7726cf9b:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ↘│ │ │  0x00007f8c7726cf9c:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.25%   │ │ │  0x00007f8c7726cf9e:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007f8c7726cfa5:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
           │ │ │  0x00007f8c7726cfa8:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007f8c7726cfac:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │╭│ │  0x00007f8c7726cfaf:   jmp    0x00007f8c7726cfda           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007f8c7726cfb4:   nopl   0x0(%rax,%rax,1)
           │││ │  0x00007f8c7726cfbc:   data16 data16 xchg %ax,%ax          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%   │││↗│  0x00007f8c7726cfc0:   mov    %r11d,%r9d
           │││││  0x00007f8c7726cfc3:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │││││  0x00007f8c7726cfc6:   cmp    $0x1,%r9d
           ││╰││  0x00007f8c7726cfca:   jl     0x00007f8c7726cf74           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.08%   ││ ││  0x00007f8c7726cfcc:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  10.91%   ││ ││  0x00007f8c7726cfce:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [32]=Oop [40]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
   0.00%   ││ ││  0x00007f8c7726cfd5:   test   %eax,(%rcx)                  ;   {poll}
   0.01%   ││ ││  0x00007f8c7726cfd7:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007f8c7726cfda:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.09%   │  ││  0x00007f8c7726cfe1:   test   %r8d,%r8d
           │  ╰│  0x00007f8c7726cfe4:   jl     0x00007f8c7726cfc0
           │   ╰  0x00007f8c7726cfe6:   jmp    0x00007f8c7726cf74           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   ↘      0x00007f8c7726cfe8:   test   %r10d,%r10d
                  0x00007f8c7726cfeb:   jne    0x00007f8c7726d145           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.00%          0x00007f8c7726cff1:   movq   $0x0,0x40(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%          0x00007f8c7726cffa:   mov    0x380(%r15),%rdx
   0.01%          0x00007f8c7726d001:   mov    (%rdx),%rdx                  ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.05%          0x00007f8c7726d004:   cmpb   $0x0,0x40(%r15)
                  0x00007f8c7726d009:   jne    0x00007f8c7726d849
                  0x00007f8c7726d00f:   mov    %rsi,%r10
                  0x00007f8c7726d012:   mov    %r10,%rsi
   0.00%          0x00007f8c7726d015:   shr    $0x3,%rsi
   0.00%          0x00007f8c7726d019:   mov    %esi,0x5c(%rdx)
   0.01%          0x00007f8c7726d01c:   mov    %rdx,%rsi
                  0x00007f8c7726d01f:   xor    %r10,%rsi
                  0x00007f8c7726d022:   test   $0xffffffffffe00000,%rsi
                  0x00007f8c7726d029:   je     0x00007f8c7726d83f
                  0x00007f8c7726d02f:   test   %r10,%r10
                  0x00007f8c7726d032:   je     0x00007f8c7726d885
                  0x00007f8c7726d038:   shr    $0x9,%rdx
                  0x00007f8c7726d03c:   movabs $0x7f8c6accc000,%rsi
                  0x00007f8c7726d046:   cmpb   $0x2,(%rdx,%rsi,1)
                  0x00007f8c7726d04a:   jne    0x00007f8c7726d91a
                  0x00007f8c7726d050:   mov    0x20(%rsp),%r11              ;* unwind (locked if synchronized)
....................................................................................................
  11.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  12.74%              kernel  [unknown] 
  11.74%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1509 
   5.91%              kernel  [unknown] 
   3.18%           libjvm.so  update_register_map1 
   1.82%           libjvm.so  vframeStream::vframeStream 
   1.31%              kernel  [unknown] 
   1.27%              [vdso]  __vdso_clock_gettime 
   1.20%           libjvm.so  SpinPause 
   1.16%              kernel  [unknown] 
   1.11%           libjvm.so  OopMapStream::find_next 
   1.10%              kernel  [unknown] 
   1.03%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1591 
   0.95%           libjvm.so  OopMapStream::find_next 
   0.89%      jvmci, level 4  java.lang.VirtualThread::parkNanos, version 4, compile id 1614 
   0.81%      jvmci, level 4  java.lang.VirtualThread::scheduleUnpark, version 4, compile id 1629 
   0.76%              kernel  [unknown] 
   0.74%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1749 
   0.73%           libjvm.so  OopMapStream::find_next 
   0.72%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.71%      jvmci, level 4  java.lang.VirtualThread::scheduleUnpark, version 4, compile id 1629 
  50.12%  <...other 1542 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  39.45%              kernel  [unknown] 
  12.30%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1509 
   3.19%           libjvm.so  update_register_map1 
   2.79%           libjvm.so  OopMapStream::find_next 
   2.25%           libjvm.so  vframeStream::vframeStream 
   1.76%      jvmci, level 4  java.lang.VirtualThread::scheduleUnpark, version 4, compile id 1629 
   1.51%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1591 
   1.30%              [vdso]  __vdso_clock_gettime 
   1.23%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1592 
   1.21%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::addWorker, version 2, compile id 1576 
   1.20%           libjvm.so  SpinPause 
   1.18%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.13%      jvmci, level 4  java.lang.VirtualThread::parkNanos, version 4, compile id 1614 
   1.00%      jvmci, level 4  java.lang.VirtualThread$VThreadContinuation$1::run, version 2, compile id 1605 
   0.98%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1749 
   0.95%                      <unknown> 
   0.89%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1550 
   0.84%           libjvm.so  ObjectMonitor::TrySpin 
   0.81%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.80%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1615 
  23.24%  <...other 329 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  39.45%              kernel
  32.43%      jvmci, level 4
  20.03%           libjvm.so
   4.47%  libpthread-2.31.so
   1.30%              [vdso]
   0.95%                    
   0.61%    Unknown, level 0
   0.44%        libc-2.31.so
   0.25%          ld-2.31.so
   0.04%        runtime stub
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-4181553.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 72.22% complete, ETA 00:11:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1468.605 us/op
# Warmup Iteration   2: 973.063 us/op
# Warmup Iteration   3: 958.748 us/op
# Warmup Iteration   4: 960.635 us/op
# Warmup Iteration   5: 960.753 us/op
Iteration   1: 959.349 us/op
Iteration   2: 957.674 us/op
Iteration   3: 959.865 us/op
Iteration   4: 958.170 us/op
Iteration   5: 959.717 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  958.955 ±(99.9%) 3.763 us/op [Average]
  (min, avg, max) = (957.674, 958.955, 959.865), stdev = 0.977
  CI (99.9%): [955.192, 962.718] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 341248 total address lines.
Perf output processed (skipped 60.809 seconds):
 Column 1: cycles (1752851 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  49.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.40%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.60%              kernel  [unknown] 
  27.40%              kernel  [unknown] 
   3.57%              kernel  [unknown] 
   2.81%              kernel  [unknown] 
   2.75%              kernel  [unknown] 
   1.96%              kernel  [unknown] 
   1.65%              kernel  [unknown] 
   1.26%              kernel  [unknown] 
   0.93%              kernel  [unknown] 
   0.79%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.36%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   4.60%  <...other 3305 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.38%              kernel  [unknown] 
   0.08%           libjvm.so  ThreadsSMRSupport::free_list 
   0.07%        libc-2.31.so  _int_free 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%        libc-2.31.so  _int_malloc 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%        libc-2.31.so  malloc 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.03%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.02%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%        libc-2.31.so  __malloc_arena_thread_freeres 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.98%  <...other 613 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.38%              kernel
   0.86%           libjvm.so
   0.40%        libc-2.31.so
   0.17%  libpthread-2.31.so
   0.11%      jvmci, level 4
   0.02%                    
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%        runtime stub
   0.01%    Unknown, level 0
   0.00%         interpreter
   0.00%    perf-4181625.map
   0.00%         c1, level 3
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
   0.00%       libdl-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 77.78% complete, ETA 00:09:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 633.627 us/op
# Warmup Iteration   2: 196.295 us/op
# Warmup Iteration   3: 176.905 us/op
# Warmup Iteration   4: 180.315 us/op
# Warmup Iteration   5: 173.098 us/op
Iteration   1: 173.930 us/op
Iteration   2: 178.274 us/op
Iteration   3: 170.919 us/op
Iteration   4: 168.986 us/op
Iteration   5: 174.831 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  173.388 ±(99.9%) 13.846 us/op [Average]
  (min, avg, max) = (168.986, 173.388, 178.274), stdev = 3.596
  CI (99.9%): [159.542, 187.234] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 418458 total address lines.
Perf output processed (skipped 60.718 seconds):
 Column 1: cycles (257952 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1343 

                  # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                  #           [sp+0x60]  (sp of caller)
                  0x00007fec4325c060:   mov    0x8(%rsi),%r10d
                  0x00007fec4325c064:   movabs $0x7febc7000000,%r12
                  0x00007fec4325c06e:   add    %r12,%r10
                  0x00007fec4325c071:   xor    %r12,%r12
                  0x00007fec4325c074:   cmp    %r10,%rax
                  0x00007fec4325c077:   jne    0x00007fec42c2f080           ;   {runtime_call ic_miss_stub}
                  0x00007fec4325c07d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007fec4325c080:   mov    %eax,-0x14000(%rsp)
   0.00%          0x00007fec4325c087:   sub    $0x58,%rsp
   0.00%          0x00007fec4325c08b:   nop
   0.00%          0x00007fec4325c08c:   cmpl   $0x0,0x20(%r15)
                  0x00007fec4325c094:   jne    0x00007fec4325cbad
   0.00%          0x00007fec4325c09a:   mov    %rbp,0x50(%rsp)
   0.00%          0x00007fec4325c09f:   mov    %rsi,0x20(%rsp)
   0.00%          0x00007fec4325c0a4:   mov    %rdx,0x18(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
                                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
                  0x00007fec4325c0a9:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007fec4325cbe6
   0.00%          0x00007fec4325c0af:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%          0x00007fec4325c0b3:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
   0.00%          0x00007fec4325c0b9:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
   0.00%          0x00007fec4325c0bf:   nop
                  0x00007fec4325c0c0:   test   %r10d,%r10d
                  0x00007fec4325c0c3:   jl     0x00007fec4325ca75           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
   0.00%          0x00007fec4325c0c9:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.09%          0x00007fec4325c0d0:   mov    %eax,%r11d
                  0x00007fec4325c0d3:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                  0x00007fec4325c0da:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.00%          0x00007fec4325c0e1:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%          0x00007fec4325c0e5:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                  0x00007fec4325c0e8:   movabs $0xffff000000000000,%r8
                  0x00007fec4325c0f2:   mov    %r10,%rax
                  0x00007fec4325c0f5:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%          0x00007fec4325c0f8:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
                  0x00007fec4325c102:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                  0x00007fec4325c105:   mov    %r11,%rcx
   0.00%          0x00007fec4325c108:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%          0x00007fec4325c10b:   mov    %r10,%rax
                  0x00007fec4325c10e:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.29%          0x00007fec4325c117:   cmp    %r10,%rax
                  0x00007fec4325c11a:   jne    0x00007fec4325c8fe           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%          0x00007fec4325c120:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.00%          0x00007fec4325c123:   cmp    $0x1,%rcx
                  0x00007fec4325c127:   jl     0x00007fec4325c33a           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                  0x00007fec4325c12d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%          0x00007fec4325c133:   mov    %r10d,0x44(%rsp)
   0.00%          0x00007fec4325c138:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%          0x00007fec4325c13c:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007fec4325cc0d
   0.00%          0x00007fec4325c144:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                  0x00007fec4325c14b:   test   %r8d,%r8d
          ╭       0x00007fec4325c14e:   jl     0x00007fec4325c179           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%  │  ↗ ↗  0x00007fec4325c154:   test   %r8d,%r8d
          │╭ │ │  0x00007fec4325c157:   jl     0x00007fec4325c1c8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
   0.00%  ││ │ │  0x00007fec4325c15d:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.00%  ││ │ │  0x00007fec4325c162:   mov    0x50(%rsp),%rbp
   0.00%  ││ │ │  0x00007fec4325c167:   add    $0x58,%rsp
          ││ │ │  0x00007fec4325c16b:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │ │  0x00007fec4325c172:   ja     0x00007fec4325cbbd
   0.00%  ││ │ │  0x00007fec4325c178:   ret                                 ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ↘│ │ │  0x00007fec4325c179:   pause                               ;* unwind (locked if synchronized)
           │ │ │                                                            ; - java.lang.Thread::onSpinWait@-3
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.45%   │ │ │  0x00007fec4325c17b:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
           │ │ │  0x00007fec4325c182:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
           │ │ │  0x00007fec4325c185:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
           │ │ │  0x00007fec4325c189:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │╭│ │  0x00007fec4325c18c:   jmp    0x00007fec4325c1ba           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │││ │  0x00007fec4325c191:   data16 data16 nopw 0x0(%rax,%rax,1)
           │││ │  0x00007fec4325c19c:   data16 data16 xchg %ax,%ax          ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%   │││↗│  0x00007fec4325c1a0:   mov    %r11d,%r9d
   0.00%   │││││  0x00007fec4325c1a3:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%   │││││  0x00007fec4325c1a6:   cmp    $0x1,%r9d
           ││╰││  0x00007fec4325c1aa:   jl     0x00007fec4325c154           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.13%   ││ ││  0x00007fec4325c1ac:   pause                               ;* unwind (locked if synchronized)
           ││ ││                                                            ; - java.lang.Thread::onSpinWait@-3
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  18.58%   ││ ││  0x00007fec4325c1ae:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [24]=Oop [32]=Oop }
           ││ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
           ││ ││  0x00007fec4325c1b5:   test   %eax,(%rcx)                  ;   {poll}
   0.01%   ││ ││  0x00007fec4325c1b7:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │↘ ││  0x00007fec4325c1ba:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │  ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.22%   │  ││  0x00007fec4325c1c1:   test   %r8d,%r8d
           │  ╰│  0x00007fec4325c1c4:   jl     0x00007fec4325c1a0
   0.01%   │   ╰  0x00007fec4325c1c6:   jmp    0x00007fec4325c154           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.02%   ↘      0x00007fec4325c1c8:   test   %r10d,%r10d
                  0x00007fec4325c1cb:   jne    0x00007fec4325c454           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%          0x00007fec4325c1d1:   movq   $0x0,0x38(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.02%          0x00007fec4325c1da:   mov    0x380(%r15),%r10
                  0x00007fec4325c1e1:   mov    (%r10),%r10                  ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.03%          0x00007fec4325c1e4:   cmpb   $0x0,0x40(%r15)
   0.00%          0x00007fec4325c1e9:   jne    0x00007fec4325c55f
                  0x00007fec4325c1ef:   mov    %rsi,%rcx
                  0x00007fec4325c1f2:   mov    %rcx,%rsi
   0.00%          0x00007fec4325c1f5:   shr    $0x3,%rsi
   0.00%          0x00007fec4325c1f9:   mov    %esi,0x5c(%r10)
   0.01%          0x00007fec4325c1fd:   mov    %r10,%rsi
   0.00%          0x00007fec4325c200:   xor    %rcx,%rsi
   0.00%          0x00007fec4325c203:   test   $0xffffffffffe00000,%rsi
                  0x00007fec4325c20a:   je     0x00007fec4325c599
                  0x00007fec4325c210:   test   %rcx,%rcx
                  0x00007fec4325c213:   je     0x00007fec4325c5a5
                  0x00007fec4325c219:   shr    $0x9,%r10
                  0x00007fec4325c21d:   movabs $0x7fec36eef000,%rsi
                  0x00007fec4325c227:   cmpb   $0x2,(%r10,%rsi,1)
                  0x00007fec4325c22c:   jne    0x00007fec4325c5ad
                  0x00007fec4325c232:   mov    %rcx,%rsi                    ;* unwind (locked if synchronized)
                                                                            ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  19.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.43%  <total for region 2>

....[Hottest Regions]...............................................................................
  19.93%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1343 
  13.43%              kernel  [unknown] 
   6.21%              kernel  [unknown] 
   2.15%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1708 
   2.09%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 12, compile id 1657 
   1.47%              kernel  [unknown] 
   1.35%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 6, compile id 1729 
   1.28%              kernel  [unknown] 
   1.19%              kernel  [unknown] 
   1.00%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1754 
   0.94%           libjvm.so  update_register_map1 
   0.82%              kernel  [unknown] 
   0.79%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.74%              kernel  [unknown] 
   0.70%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1343 
   0.67%              kernel  [unknown] 
   0.66%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.63%           libjvm.so  Parker::park 
   0.60%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
  42.78%  <...other 1481 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.46%              kernel  [unknown] 
  20.84%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1343 
   2.77%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1708 
   2.41%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 12, compile id 1657 
   1.63%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 6, compile id 1729 
   1.25%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.00%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::push, version 2, compile id 1754 
   0.94%           libjvm.so  update_register_map1 
   0.94%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.88%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::lambda$synchronizedWork$2, version 2, compile id 1584 
   0.84%           libjvm.so  OopMapStream::find_next 
   0.79%      jvmci, level 4  java.lang.VirtualThread::scheduleUnpark, version 2, compile id 1585 
   0.68%           libjvm.so  vframeStream::vframeStream 
   0.67%           libjvm.so  Unsafe_Park 
   0.66%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.66%           libjvm.so  Parker::park 
   0.62%      jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1638 
   0.61%  libpthread-2.31.so  __pthread_mutex_lock 
   0.56%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 8, compile id 1737 
   0.56%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
  17.23%  <...other 298 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  43.46%              kernel
  38.85%      jvmci, level 4
   9.89%           libjvm.so
   4.73%  libpthread-2.31.so
   1.16%        libc-2.31.so
   0.66%    Unknown, level 0
   0.56%              [vdso]
   0.36%                    
   0.23%          ld-2.31.so
   0.09%        runtime stub
   0.01%     perf-591503.map
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 83.33% complete, ETA 00:07:06
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1548.699 us/op
# Warmup Iteration   2: 1051.869 us/op
# Warmup Iteration   3: 1016.325 us/op
# Warmup Iteration   4: 1014.684 us/op
# Warmup Iteration   5: 1015.795 us/op
Iteration   1: 1022.359 us/op
Iteration   2: 1016.335 us/op
Iteration   3: 1014.837 us/op
Iteration   4: 1016.641 us/op
Iteration   5: 1015.973 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1017.229 ±(99.9%) 11.352 us/op [Average]
  (min, avg, max) = (1014.837, 1017.229, 1022.359), stdev = 2.948
  CI (99.9%): [1005.877, 1028.581] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 335252 total address lines.
Perf output processed (skipped 60.574 seconds):
 Column 1: cycles (1700738 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  47.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  26.83%  <total for region 2>

....[Hottest Regions]...............................................................................
  47.75%              kernel  [unknown] 
  26.83%              kernel  [unknown] 
   4.32%              kernel  [unknown] 
   2.80%              kernel  [unknown] 
   2.65%              kernel  [unknown] 
   1.99%              kernel  [unknown] 
   1.55%              kernel  [unknown] 
   1.41%              kernel  [unknown] 
   1.39%              kernel  [unknown] 
   0.73%              kernel  [unknown] 
   0.56%              kernel  [unknown] 
   0.54%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   5.28%  <...other 3327 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.16%              kernel  [unknown] 
   0.13%           libjvm.so  ThreadsSMRSupport::free_list 
   0.07%        libc-2.31.so  _int_free 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.06%        libc-2.31.so  _int_malloc 
   0.05%        libc-2.31.so  malloc 
   0.05%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.04%        libc-2.31.so  malloc_consolidate 
   0.03%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%                      <unknown> 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   1.03%  <...other 623 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.16%              kernel
   0.98%           libjvm.so
   0.48%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.10%      jvmci, level 4
   0.03%                    
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%     perf-591575.map
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 88.89% complete, ETA 00:04:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 243.214 us/op
# Warmup Iteration   2: 55.259 us/op
# Warmup Iteration   3: 49.376 us/op
# Warmup Iteration   4: 49.221 us/op
# Warmup Iteration   5: 48.815 us/op
Iteration   1: 48.759 us/op
Iteration   2: 48.708 us/op
Iteration   3: 48.848 us/op
Iteration   4: 49.451 us/op
Iteration   5: 49.109 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  48.975 ±(99.9%) 1.185 us/op [Average]
  (min, avg, max) = (48.708, 48.975, 49.451), stdev = 0.308
  CI (99.9%): [47.790, 50.160] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 437817 total address lines.
Perf output processed (skipped 60.741 seconds):
 Column 1: cycles (632262 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1404 

                    # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                    #           [sp+0x40]  (sp of caller)
                    0x00007f7e5f261aa0:   mov    0x8(%rsi),%r10d
                    0x00007f7e5f261aa4:   movabs $0x7f7de3000000,%r12
                    0x00007f7e5f261aae:   add    %r12,%r10
                    0x00007f7e5f261ab1:   xor    %r12,%r12
                    0x00007f7e5f261ab4:   cmp    %r10,%rax
                    0x00007f7e5f261ab7:   jne    0x00007f7e5ec2f080           ;   {runtime_call ic_miss_stub}
                    0x00007f7e5f261abd:   data16 xchg %ax,%ax
                  [Verified Entry Point]
   0.00%            0x00007f7e5f261ac0:   mov    %eax,-0x14000(%rsp)
   0.00%            0x00007f7e5f261ac7:   sub    $0x38,%rsp
   0.00%            0x00007f7e5f261acb:   nop
                    0x00007f7e5f261acc:   cmpl   $0x1,0x20(%r15)
                    0x00007f7e5f261ad4:   jne    0x00007f7e5f262384
   0.00%            0x00007f7e5f261ada:   mov    %rbp,0x30(%rsp)
   0.00%            0x00007f7e5f261adf:   mov    %rsi,0x8(%rsp)
   0.00%            0x00007f7e5f261ae4:   mov    %rdx,(%rsp)                  ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
                                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@0 (line 1859)
                    0x00007f7e5f261ae8:   mov    0xa8(%rdx),%eax              ; implicit exception: dispatches to 0x00007f7e5f2623bc
   0.01%            0x00007f7e5f261aee:   mov    0x30(%rsi),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.01%            0x00007f7e5f261af2:   lea    0x10000(%rax),%eax           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@12 (line 1861)
   0.00%            0x00007f7e5f261af8:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                    0x00007f7e5f261afe:   xchg   %ax,%ax
                    0x00007f7e5f261b00:   test   %r10d,%r10d
                    0x00007f7e5f261b03:   jl     0x00007f7e5f26233a           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
   0.00%            0x00007f7e5f261b09:   mov    0xd8(%rsi),%r10              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
   0.17%            0x00007f7e5f261b10:   mov    %eax,%r11d
   0.00%            0x00007f7e5f261b13:   or     $0x80000000,%r11d            ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                    0x00007f7e5f261b1a:   mov    %r11d,0xa8(%rdx)             ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.00%            0x00007f7e5f261b21:   mov    %r10d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%            0x00007f7e5f261b25:   mov    %eax,%r11d                   ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                    0x00007f7e5f261b28:   movabs $0xffff000000000000,%r8
                    0x00007f7e5f261b32:   mov    %r10,%rax
   0.00%            0x00007f7e5f261b35:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
   0.00%            0x00007f7e5f261b38:   movabs $0xffffffff00000000,%r9      ;*ldc2_w {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@68 (line 1869)
                    0x00007f7e5f261b42:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
                    0x00007f7e5f261b45:   mov    %r11,%rcx
   0.00%            0x00007f7e5f261b48:   or     %rax,%rcx                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
   0.00%            0x00007f7e5f261b4b:   mov    %r10,%rax
                    0x00007f7e5f261b4e:   lock cmpxchg %rcx,0xd8(%rsi)        ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
                                                                              ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.49%            0x00007f7e5f261b57:   cmp    %r10,%rax
          ╭         0x00007f7e5f261b5a:   jne    0x00007f7e5f261bc9           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%  │         0x00007f7e5f261b60:   and    %r8,%rcx                     ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
   0.00%  │         0x00007f7e5f261b63:   cmp    $0x1,%rcx
          │         0x00007f7e5f261b67:   jl     0x00007f7e5f261d9a           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
          │         0x00007f7e5f261b6d:   mov    $0x0,%r10d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%  │         0x00007f7e5f261b73:   mov    %r10d,0x24(%rsp)
   0.00%  │         0x00007f7e5f261b78:   mov    0x34(%rsi),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
          │                                                                   ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.01%  │         0x00007f7e5f261b7c:   mov    0xc(,%r11,8),%r11d           ; implicit exception: dispatches to 0x00007f7e5f2623df
   0.01%  │         0x00007f7e5f261b84:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%  │         0x00007f7e5f261b8b:   test   %r8d,%r8d
          │╭        0x00007f7e5f261b8e:   jl     0x00007f7e5f261bf5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.02%  ││   ↗ ↗  0x00007f7e5f261b94:   test   %r8d,%r8d
          ││╭  │ │  0x00007f7e5f261b97:   jl     0x00007f7e5f261c4f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
   0.00%  │││  │ │  0x00007f7e5f261b9d:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@320 (line 1911)
   0.00%  │││  │ │  0x00007f7e5f261ba2:   mov    0x30(%rsp),%rbp
   0.01%  │││  │ │  0x00007f7e5f261ba7:   add    $0x38,%rsp
   0.00%  │││  │ │  0x00007f7e5f261bab:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  │ │  0x00007f7e5f261bb2:   ja     0x00007f7e5f262394
   0.01%  │││  │ │  0x00007f7e5f261bb8:   ret    
          │││  │ │  0x00007f7e5f261bb9:   nopl   0x0(%rax)                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │││↗ │ │  0x00007f7e5f261bc0:   mov    0x458(%r15),%rbx             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
          ││││ │ │                                                            ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││││ │ │                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.00%  ││││ │ │  0x00007f7e5f261bc7:   test   %eax,(%rbx)                  ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││││ │ │                                                            ;   {poll}
   0.00%  ↘│││ │ │  0x00007f7e5f261bc9:   mov    %rax,%rcx
   0.00%   │││ │ │  0x00007f7e5f261bcc:   mov    %ecx,0xc(%rdx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
   0.00%   │││ │ │  0x00007f7e5f261bcf:   mov    %rcx,%rax
           │││ │ │  0x00007f7e5f261bd2:   add    %r8,%rax                     ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │││ │ │  0x00007f7e5f261bd5:   and    %r9,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │││ │ │  0x00007f7e5f261bd8:   mov    %r11,%r10
           │││ │ │  0x00007f7e5f261bdb:   or     %rax,%r10                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │││ │ │  0x00007f7e5f261bde:   mov    %rcx,%rax
           │││ │ │  0x00007f7e5f261be1:   lock cmpxchg %r10,0xd8(%rsi)        ;* unwind (locked if synchronized)
           │││ │ │                                                            ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │││ │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.01%   │││ │ │  0x00007f7e5f261bea:   cmp    %rcx,%rax
           │││ │ │  0x00007f7e5f261bed:   je     0x00007f7e5f2621b1
   0.00%   ││╰ │ │  0x00007f7e5f261bf3:   jmp    0x00007f7e5f261bc0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
   0.00%   ↘│  │ │  0x00007f7e5f261bf5:   pause                               ;* unwind (locked if synchronized)
            │  │ │                                                            ; - java.lang.Thread::onSpinWait@-3
            │  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   0.58%    │  │ │  0x00007f7e5f261bf7:   and    $0xffff,%r11d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
            │  │ │  0x00007f7e5f261bfe:   shl    %r11d                        ;*ishl {reexecute=0 rethrow=0 return_oop=0}
            │  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
            │  │ │  0x00007f7e5f261c01:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
            │  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
            │  │ │  0x00007f7e5f261c05:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │  │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%    │ ╭│ │  0x00007f7e5f261c08:   jmp    0x00007f7e5f261c3e           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │ ││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │ ││ │  0x00007f7e5f261c0d:   data16 data16 nopw 0x0(%rax,%rax,1)
            │ ││ │  0x00007f7e5f261c18:   data16 data16 xchg %ax,%ax
            │ ││ │  0x00007f7e5f261c1c:   nopl   0x0(%rax)                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ ││ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%    │ ││↗│  0x00007f7e5f261c20:   mov    %r11d,%r9d
   0.00%    │ ││││  0x00007f7e5f261c23:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ ││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%    │ ││││  0x00007f7e5f261c26:   cmp    $0x1,%r9d
            │ │╰││  0x00007f7e5f261c2a:   jl     0x00007f7e5f261b94           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.10%    │ │ ││  0x00007f7e5f261c30:   pause                               ;* unwind (locked if synchronized)
            │ │ ││                                                            ; - java.lang.Thread::onSpinWait@-3
            │ │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
  16.99%    │ │ ││  0x00007f7e5f261c32:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rdx=Oop rsi=Oop [0]=Oop [8]=Oop }
            │ │ ││                                                            ;*dup {reexecute=1 rethrow=0 return_oop=0}
            │ │ ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@176 (line 1880)
   0.00%    │ │ ││  0x00007f7e5f261c39:   test   %eax,(%rcx)                  ;   {poll}
   0.01%    │ │ ││  0x00007f7e5f261c3b:   mov    %r9d,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │ ↘ ││  0x00007f7e5f261c3e:   mov    0xa8(%rdx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.42%    │   ││  0x00007f7e5f261c45:   test   %r8d,%r8d
            │   ╰│  0x00007f7e5f261c48:   jl     0x00007f7e5f261c20
   0.03%    │    ╰  0x00007f7e5f261c4a:   jmp    0x00007f7e5f261b94           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.01%    ↘       0x00007f7e5f261c4f:   test   %r10d,%r10d
                    0x00007f7e5f261c52:   jne    0x00007f7e5f261f07           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.01%            0x00007f7e5f261c58:   movq   $0x0,0x18(%rsp)              ;*lstore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@215 (line 1883)
   0.01%            0x00007f7e5f261c61:   mov    0x380(%r15),%rdx
   0.00%            0x00007f7e5f261c68:   mov    (%rdx),%rdx                  ;* unwind (locked if synchronized)
                                                                              ; - java.lang.Thread::currentThread@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
   0.07%            0x00007f7e5f261c6b:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007f7e5f261c70:   jne    0x00007f7e5f261f72
                    0x00007f7e5f261c76:   mov    (%rsp),%r10
                    0x00007f7e5f261c7a:   mov    %rsi,%r11
   0.00%            0x00007f7e5f261c7d:   mov    %r11,%rsi
   0.00%            0x00007f7e5f261c80:   shr    $0x3,%rsi
   0.00%            0x00007f7e5f261c84:   mov    %esi,0x5c(%rdx)
   0.01%            0x00007f7e5f261c87:   mov    %rdx,%rsi
   0.00%            0x00007f7e5f261c8a:   xor    %r11,%rsi
   0.00%            0x00007f7e5f261c8d:   test   $0xffffffffffe00000,%rsi
                    0x00007f7e5f261c94:   je     0x00007f7e5f261cca
                    0x00007f7e5f261c9a:   nopw   0x0(%rax,%rax,1)
                    0x00007f7e5f261ca0:   test   %r11,%r11
                    0x00007f7e5f261ca3:   je     0x00007f7e5f261cca
                    0x00007f7e5f261ca9:   shr    $0x9,%rdx
                    0x00007f7e5f261cad:   movabs $0x7f7e71687000,%rsi
                    0x00007f7e5f261cb7:   nopw   0x0(%rax,%rax,1)
                    0x00007f7e5f261cc0:   cmpb   $0x2,(%rdx,%rsi,1)
                    0x00007f7e5f261cc4:   jne    0x00007f7e5f261fae           ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
....................................................................................................
  19.06%  <total for region 1>

....[Hottest Regions]...............................................................................
  19.06%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1404 
   9.19%              kernel  [unknown] 
   4.30%              kernel  [unknown] 
   3.22%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 1625 
   2.91%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 6, compile id 1782 
   2.16%              kernel  [unknown] 
   2.12%           libjvm.so  update_register_map1 
   1.76%      jvmci, level 4  java.util.concurrent.ForkJoinPool::execute, version 2, compile id 1441 
   1.43%      jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::delayedExecute, version 2, compile id 1605 
   1.33%           libjvm.so  vframeStream::vframeStream 
   1.19%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 6, compile id 1792 
   0.84%              [vdso]  __vdso_clock_gettime 
   0.79%              kernel  [unknown] 
   0.75%      jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::take, version 6, compile id 1672 
   0.75%           libjvm.so  OopMapStream::find_next 
   0.72%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.72%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1556 
   0.71%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 4, compile id 1624 
   0.67%      jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1449 
   0.66%              kernel  [unknown] 
  44.72%  <...other 1965 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  31.64%              kernel  [unknown] 
  19.78%      jvmci, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 4, compile id 1404 
   3.81%      jvmci, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 1625 
   3.12%      jvmci, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 6, compile id 1782 
   2.12%           libjvm.so  update_register_map1 
   1.87%           libjvm.so  OopMapStream::find_next 
   1.78%      jvmci, level 4  java.util.concurrent.ForkJoinPool::execute, version 2, compile id 1441 
   1.63%           libjvm.so  vframeStream::vframeStream 
   1.60%      jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::delayedExecute, version 2, compile id 1605 
   1.23%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 4, compile id 1624 
   1.19%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 6, compile id 1792 
   1.16%      jvmci, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 1449 
   0.95%      jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::take, version 6, compile id 1672 
   0.90%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 6, compile id 1754 
   0.84%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f7de4084620::run, version 2, compile id 1563 
   0.84%              [vdso]  __vdso_clock_gettime 
   0.83%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.77%      jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1556 
   0.74%      jvmci, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 3, compile id 1670 
   0.73%        libc-2.31.so  __memmove_sse2_unaligned_erms 
  22.44%  <...other 433 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  46.93%      jvmci, level 4
  31.64%              kernel
  14.40%           libjvm.so
   3.34%  libpthread-2.31.so
   1.35%        libc-2.31.so
   0.84%              [vdso]
   0.65%                    
   0.52%    Unknown, level 0
   0.20%          ld-2.31.so
   0.09%        runtime stub
   0.02%    perf-1159800.map
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 94.44% complete, ETA 00:02:21
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 969.357 us/op
# Warmup Iteration   2: 616.220 us/op
# Warmup Iteration   3: 601.882 us/op
# Warmup Iteration   4: 597.389 us/op
# Warmup Iteration   5: 597.038 us/op
Iteration   1: 600.083 us/op
Iteration   2: 598.340 us/op
Iteration   3: 599.971 us/op
Iteration   4: 598.012 us/op
Iteration   5: 599.999 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  599.281 ±(99.9%) 3.913 us/op [Average]
  (min, avg, max) = (598.012, 599.281, 600.083), stdev = 1.016
  CI (99.9%): [595.368, 603.194] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 334720 total address lines.
Perf output processed (skipped 60.438 seconds):
 Column 1: cycles (3299832 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  50.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  23.61%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.83%              kernel  [unknown] 
  23.61%              kernel  [unknown] 
   3.69%              kernel  [unknown] 
   3.52%              kernel  [unknown] 
   2.44%              kernel  [unknown] 
   2.36%              kernel  [unknown] 
   1.94%              kernel  [unknown] 
   1.35%              kernel  [unknown] 
   0.68%              kernel  [unknown] 
   0.63%              kernel  [unknown] 
   0.62%              kernel  [unknown] 
   0.55%              kernel  [unknown] 
   0.50%              kernel  [unknown] 
   0.38%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   5.32%  <...other 3551 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.63%              kernel  [unknown] 
   0.09%           libjvm.so  vframeStreamCommon::next 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.04%        libc-2.31.so  _int_free 
   0.04%        libc-2.31.so  malloc 
   0.03%        libc-2.31.so  _int_malloc 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%           libjvm.so  ThreadsSMRSupport::free_list 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%           libjvm.so  Method::validate_bci_from_bcp 
   0.02%  libpthread-2.31.so  __lll_lock_wait 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.02%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.76%  <...other 618 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.63%              kernel
   0.78%           libjvm.so
   0.26%        libc-2.31.so
   0.16%  libpthread-2.31.so
   0.10%      jvmci, level 4
   0.02%          ld-2.31.so
   0.02%                    
   0.01%              [vdso]
   0.01%    Unknown, level 0
   0.00%        runtime stub
   0.00%          libjava.so
   0.00%    perf-1159873.map
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%         interpreter
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:43:17

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

Benchmark                                                (backoffType)  (cpuLoadFactor)      (lockType)  (threadType)  Mode  Cnt     Score    Error  Units
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2     OBJECT_LOCK       VIRTUAL  avgt    5    31.485 ±  0.244  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2     OBJECT_LOCK      PLATFORM  avgt    5   587.215 ±  4.765  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2  REENTRANT_LOCK       VIRTUAL  avgt    5    32.371 ±  0.580  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2  REENTRANT_LOCK      PLATFORM  avgt    5   580.986 ± 23.833  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2         NO_LOCK       VIRTUAL  avgt    5    30.797 ±  0.223  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2         NO_LOCK      PLATFORM  avgt    5   581.601 ±  3.793  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2         NO_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2     OBJECT_LOCK       VIRTUAL  avgt    5    39.358 ±  0.624  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2     OBJECT_LOCK      PLATFORM  avgt    5  1016.171 ±  5.552  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2  REENTRANT_LOCK       VIRTUAL  avgt    5   123.810 ± 12.454  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2  REENTRANT_LOCK      PLATFORM  avgt    5  1023.451 ±  5.055  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2         NO_LOCK       VIRTUAL  avgt    5    43.490 ±  1.490  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2         NO_LOCK      PLATFORM  avgt    5   613.269 ± 12.650  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2         NO_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2     OBJECT_LOCK       VIRTUAL  avgt    5    37.712 ±  0.878  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2     OBJECT_LOCK      PLATFORM  avgt    5   958.955 ±  3.763  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2  REENTRANT_LOCK       VIRTUAL  avgt    5   173.388 ± 13.846  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2  REENTRANT_LOCK      PLATFORM  avgt    5  1017.229 ± 11.352  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2         NO_LOCK       VIRTUAL  avgt    5    48.975 ±  1.185  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2         NO_LOCK      PLATFORM  avgt    5   599.281 ±  3.913  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2         NO_LOCK      PLATFORM  avgt            NaN             ---
