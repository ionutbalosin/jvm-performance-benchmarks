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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:30:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 110.986 us/op
# Warmup Iteration   2: 30.846 us/op
# Warmup Iteration   3: 30.779 us/op
# Warmup Iteration   4: 30.763 us/op
# Warmup Iteration   5: 30.736 us/op
Iteration   1: 32.022 us/op
Iteration   2: 30.889 us/op
Iteration   3: 30.892 us/op
Iteration   4: 30.876 us/op
Iteration   5: 30.934 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  31.123 ±(99.9%) 1.938 us/op [Average]
  (min, avg, max) = (30.876, 31.123, 32.022), stdev = 0.503
  CI (99.9%): [29.185, 33.060] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 282384 total address lines.
Perf output processed (skipped 56.343 seconds):
 Column 1: cycles (165511 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1135 

                            0x00007f490c709fc0:   jne    0x00007f490c70a49d           ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@222 (line 1886)
                                                                                      ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                            0x00007f490c709fc6:   test   %r13d,%r13d
                            0x00007f490c709fc9:   jl     0x00007f490c70a78c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@225 (line 1886)
                                                                                      ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                            0x00007f490c709fcf:   mov    0x18(%rsp),%r8
                            0x00007f490c709fd4:   jmp    0x00007f490c70a311           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%                    0x00007f490c709fd9:   nopl   0x0(%rax)
                            0x00007f490c709fe0:   cmpb   $0x0,0x40(%r15)
   0.01%                    0x00007f490c709fe5:   jne    0x00007f490c70a637
   0.00%                    0x00007f490c709feb:   mov    (%rsp),%r8
                            0x00007f490c709fef:   mov    %r12d,(%r8)                  ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@270 (line 1897)
                                                                                      ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ╭                 0x00007f490c709ff2:   jmp    0x00007f490c709ff9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                           ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │  ↗ ↗  ↗↗↗↗  ↗   0x00007f490c709ff4:   mov    0x30(%rsp),%r8               ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@273 (line 1898)
          │  │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘  │ │  ││││  │   0x00007f490c709ff9:   mov    0x20(%rsp),%r10              ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
             │ │  ││││  │   0x00007f490c709ffe:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop [24]=Oop [56]=Oop r8=Derived_oop_[56] }
             │ │  ││││  │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@50 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a005:   test   %eax,(%r11)                  ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@50 (line 1809)
             │ │  ││││  │                                                             ;   {poll}
   0.00%     │ │  ││││  │   0x00007f490c70a008:   mov    0x10(%rsp),%ebp
             │ │  ││││  │   0x00007f490c70a00c:   xor    %ebx,%ebx
             │ │  ││││  │   0x00007f490c70a00e:   mov    0x38(%rsp),%r13
             │ │  ││││  │   0x00007f490c70a013:   mov    0x18(%rsp),%rcx
             │ │  ││││  │   0x00007f490c70a018:   mov    0x40(%rsp),%r11d
             │ │  ││││  │   0x00007f490c70a01d:   mov    0x28(%rsp),%r9
             │ │  ││││  │   0x00007f490c70a022:   mov    %r13,0x38(%rsp)
   0.00%     │ │  ││││  │   0x00007f490c70a027:   mov    %rcx,(%rsp)
             │ │  ││││  │   0x00007f490c70a02b:   mov    %r10,0x8(%rsp)
             │ │  ││││  │   0x00007f490c70a030:   mov    %r11d,0x40(%rsp)
             │ │  ││││  │   0x00007f490c70a035:   mov    %r8,0x30(%rsp)
   0.00%     │ │  ││││  │   0x00007f490c70a03a:   mov    %r9,0x28(%rsp)               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
            ↗│ │  ││││  │   0x00007f490c70a03f:   mov    %ebp,%r10d
            ││ │  ││││  │   0x00007f490c70a042:   shl    $0xd,%r10d
   0.00%    ││ │  ││││  │   0x00007f490c70a046:   xor    %ebp,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
   0.00%    ││ │  ││││  │   0x00007f490c70a049:   mov    %r10d,%r8d
            ││ │  ││││  │   0x00007f490c70a04c:   shr    $0x11,%r8d
   0.00%    ││ │  ││││  │   0x00007f490c70a050:   xor    %r10d,%r8d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%    ││ │  ││││  │   0x00007f490c70a053:   mov    %r8d,%r10d
            ││ │  ││││  │   0x00007f490c70a056:   shl    $0x5,%r10d
   0.00%    ││ │  ││││  │   0x00007f490c70a05a:   xor    %r8d,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
   0.00%    ││ │  ││││  │   0x00007f490c70a05d:   mov    %r10d,0x10(%rsp)
   0.00%    ││ │  ││││  │   0x00007f490c70a062:   mov    (%rsp),%r10
   0.00%    ││ │  ││││  │   0x00007f490c70a066:   test   %r10,%r10
            ││ │  ││││  │   0x00007f490c70a069:   je     0x00007f490c70a6c7           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
            ││ │  ││││  │   0x00007f490c70a06f:   mov    %r10,%rsi
            ││ │  ││││  │   0x00007f490c70a072:   mov    0x8(%rsp),%rdx
   0.00%    ││ │  ││││  │   0x00007f490c70a077:   mov    %ebx,%ecx
   0.00%    ││ │  ││││  │   0x00007f490c70a079:   mov    0x10(%rsp),%r8d
   0.01%    ││ │  ││││  │   0x00007f490c70a07e:   nop
            ││ │  ││││  │   0x00007f490c70a07f:   call   0x00007f490c6fbf20           ; ImmutableOopMap {[0]=Oop [8]=Oop [56]=Oop [48]=Derived_oop_[56] }
            ││ │  ││││  │                                                             ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
            ││ │  ││││  │                                                             ;   {optimized virtual_call}
   0.00%    ││ │  ││││  │   0x00007f490c70a084:   nopl   0x4000474(%rax,%rax,1)       ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
            ││ │  ││││  │                                                             ;   {other}
   0.02%    ││ │  ││││  │   0x00007f490c70a08c:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [8]=Oop [56]=Oop [48]=Derived_oop_[56] }
            ││ │  ││││  │                                                             ;*ifge {reexecute=1 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%    ││ │  ││││  │   0x00007f490c70a093:   test   %eax,(%r10)                  ;   {poll}
   0.01%    ││ │  ││││  │   0x00007f490c70a096:   test   %eax,%eax
           ╭││ │  ││││  │   0x00007f490c70a098:   jl     0x00007f490c70a0a2           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%   │││ │  ││││  │   0x00007f490c70a09a:   mov    %eax,%ebx
           │││ │  ││││  │   0x00007f490c70a09c:   mov    0x10(%rsp),%ebp
   0.00%   │╰│ │  ││││  │   0x00007f490c70a0a0:   jmp    0x00007f490c70a03f
           ↘ │ │  ││││  │   0x00007f490c70a0a2:   mov    0x8(%rsp),%r8
   0.00%     │ │  ││││  │   0x00007f490c70a0a7:   mov    0xa8(%r8),%r10d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a0ae:   mov    (%rsp),%r9
   0.00%     │ │  ││││  │   0x00007f490c70a0b2:   mov    0x30(%r9),%r11d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a0b6:   test   %r11d,%r11d
             │ │  ││││  │   0x00007f490c70a0b9:   jl     0x00007f490c70a6e4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     │ │  ││││  │   0x00007f490c70a0bf:   mov    %r8,0x20(%rsp)
   0.00%     │ │  ││││  │   0x00007f490c70a0c4:   mov    %r9,0x18(%rsp)
             │ │  ││││  │   0x00007f490c70a0c9:   mov    0xd8(%r9),%rcx               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.07%     │ │  ││││  │   0x00007f490c70a0d0:   mov    %rcx,%r8
             │ │  ││││  │   0x00007f490c70a0d3:   movabs $0xffff000000000000,%r11
             │ │  ││││  │   0x00007f490c70a0dd:   add    %r11,%r8
             │ │  ││││  │   0x00007f490c70a0e0:   movabs $0xffffffff00000000,%r11
             │ │  ││││  │   0x00007f490c70a0ea:   and    %r11,%r8
   0.00%     │ │  ││││  │   0x00007f490c70a0ed:   add    $0x10000,%r10d
             │ │  ││││  │   0x00007f490c70a0f4:   mov    %ecx,%r11d
             │ │  ││││  │   0x00007f490c70a0f7:   and    $0x7fffffff,%r10d            ;*iand {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │  ││││  │   0x00007f490c70a0fe:   movslq %r10d,%r9                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a101:   or     %r9,%r8                      ;*lor {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │  ││││  │   0x00007f490c70a104:   or     $0x80000000,%r10d
             │ │  ││││  │   0x00007f490c70a10b:   mov    0x8(%rsp),%rbx
             │ │  ││││  │   0x00007f490c70a110:   mov    %r10d,0xa8(%rbx)
   0.00%     │ │  ││││  │   0x00007f490c70a117:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.17%     │ │  ││││  │   0x00007f490c70a11d:   mov    %rbx,%r10
             │ │  ││││  │   0x00007f490c70a120:   mov    %r11d,0xc(%r10)
             │ │  ││││  │   0x00007f490c70a124:   mov    (%rsp),%r10
   0.00%     │ │  ││││  │   0x00007f490c70a128:   mov    %rcx,%rax
             │ │  ││││  │   0x00007f490c70a12b:   lock cmpxchg %r8,0xd8(%r10)
   0.12%     │ │  ││││  │   0x00007f490c70a134:   mov    %rax,%rbx                    ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │  ││││  │   0x00007f490c70a137:   cmp    %rax,%rcx
   0.00%     │ │  ││││  │   0x00007f490c70a13a:   nopw   0x0(%rax,%rax,1)
             │ │  ││││  │   0x00007f490c70a140:   jne    0x00007f490c70a533           ;*lload {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a146:   movabs $0xffff000000000000,%r10
   0.00%     │ │  ││││  │   0x00007f490c70a150:   test   %r8,%r10
             │ │  ││││  │   0x00007f490c70a153:   jle    0x00007f490c70a3de           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a159:   xor    %r10d,%r10d
             │ │  ││││  │   0x00007f490c70a15c:   mov    0x18(%rsp),%r8
             │ │  ││││  │   0x00007f490c70a161:   mov    %r10d,%ecx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │  ││││  │   0x00007f490c70a164:   mov    0x34(%r8),%r11d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a168:   mov    %r8,0x18(%rsp)
   0.00%     │ │  ││││  │   0x00007f490c70a16d:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f490c70a854
             │ │  ││││  │   0x00007f490c70a172:   mov    0x20(%rsp),%r10
             │ │  ││││  │   0x00007f490c70a177:   mov    0xa8(%r10),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │   0x00007f490c70a17e:   xchg   %ax,%ax
   0.00%     │ │  ││││  │   0x00007f490c70a180:   test   %r10d,%r10d
             ╰ │  ││││  │   0x00007f490c70a183:   jge    0x00007f490c709ff4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
               │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │  ││││  │   0x00007f490c70a189:   movzwl %r8w,%r8d
               │  ││││  │   0x00007f490c70a18d:   shl    %r8d
   0.00%       │  ││││  │   0x00007f490c70a190:   or     $0xf,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
               │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
               │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │  ││││  │                                                             ;   {no_reloc}
               │  ││││  │   0x00007f490c70a194:   mov    %r8d,%r10d
   0.00%       │  ││││  │   0x00007f490c70a197:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │  ││││  │   0x00007f490c70a19a:   nopw   0x0(%rax,%rax,1)
   0.00%       │  ││││  │   0x00007f490c70a1a0:   test   %r10d,%r10d
              ╭│  ││││  │   0x00007f490c70a1a3:   jle    0x00007f490c70a291           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││  ││││  │   0x00007f490c70a1a9:   add    $0xfffffffe,%r8d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││↗ ││││  │   0x00007f490c70a1ad:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.30%      │││ ││││  │   0x00007f490c70a1af:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [48]=Derived_oop_[56] }
              │││ ││││  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │││ ││││  │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │││ ││││  │   0x00007f490c70a1b6:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
              │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │││ ││││  │                                                             ;   {poll}
              │││ ││││  │   0x00007f490c70a1b9:   mov    0x20(%rsp),%r11
              │││ ││││  │   0x00007f490c70a1be:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │││ ││││  │   0x00007f490c70a1c5:   test   %r11d,%r11d
              │╰│ ││││  │   0x00007f490c70a1c8:   jge    0x00007f490c709ff4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │ │ ││││  │   0x00007f490c70a1ce:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │ │ ││││  │   0x00007f490c70a1d1:   cmp    %r8d,%r10d
              │ ╰ ││││  │   0x00007f490c70a1d4:   jg     0x00007f490c70a1ad           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │   ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │   ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │   ││││  │   0x00007f490c70a1d6:   cmp    $0x3,%r10d
   0.00%      │   ││││  │   0x00007f490c70a1da:   nopw   0x0(%rax,%rax,1)
              │  ╭││││  │   0x00007f490c70a1e0:   jle    0x00007f490c70a262
              │  │││││  │   0x00007f490c70a1e6:   data16 nopw 0x0(%rax,%rax,1)        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  │││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │  │││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │  │││││↗ │   0x00007f490c70a1f0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
              │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.30%      │  ││││││ │   0x00007f490c70a1f2:   mov    0x20(%rsp),%r11
              │  ││││││ │   0x00007f490c70a1f7:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │  ││││││ │   0x00007f490c70a1fe:   xchg   %ax,%ax
              │  ││││││ │   0x00007f490c70a200:   test   %r8d,%r8d
              │  │╰││││ │   0x00007f490c70a203:   jge    0x00007f490c709ff4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%      │  │ ││││ │   0x00007f490c70a209:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
              │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.20%      │  │ ││││ │   0x00007f490c70a20b:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │  │ ││││ │   0x00007f490c70a212:   test   %r11d,%r11d
              │  │ ╰│││ │   0x00007f490c70a215:   jge    0x00007f490c709ff4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │  │││ │   0x00007f490c70a21b:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
              │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.26%      │  │  │││ │   0x00007f490c70a21d:   mov    0x20(%rsp),%r11
              │  │  │││ │   0x00007f490c70a222:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │  │  │││ │   0x00007f490c70a229:   test   %r8d,%r8d
              │  │  ╰││ │   0x00007f490c70a22c:   jge    0x00007f490c709ff4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │   ││ │   0x00007f490c70a232:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   3.29%      │  │   ││ │   0x00007f490c70a234:   mov    0x458(%r15),%r9
              │  │   ││ │   0x00007f490c70a23b:   mov    0xa8(%r11),%r8d
   0.00%      │  │   ││ │   0x00007f490c70a242:   lea    -0x3(%r10),%r11d             ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [48]=Derived_oop_[56] }
              │  │   ││ │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │  │   ││ │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │   ││ │   0x00007f490c70a246:   test   %eax,(%r9)                   ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │   ││ │                                                             ;   {poll}
   0.02%      │  │   ││ │   0x00007f490c70a249:   test   %r8d,%r8d
              │  │   ╰│ │   0x00007f490c70a24c:   jge    0x00007f490c709ff4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │    │ │   0x00007f490c70a252:   add    $0xfffffffc,%r10d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │    │ │   0x00007f490c70a256:   cmp    $0x3,%r10d
              │  │    │ │   0x00007f490c70a25a:   nopw   0x0(%rax,%rax,1)
   0.02%      │  │    ╰ │   0x00007f490c70a260:   jg     0x00007f490c70a1f0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │  │      │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │  │      │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  ↘      │   0x00007f490c70a262:   test   %r10d,%r10d
              │        ╭│   0x00007f490c70a265:   jle    0x00007f490c70a291
              │        ││   0x00007f490c70a267:   nop                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │        ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │        ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        ││↗  0x00007f490c70a268:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.30%      │        │││  0x00007f490c70a26a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[24]=Oop [32]=Oop [56]=Oop [48]=Derived_oop_[56] }
              │        │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │        │││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │││  0x00007f490c70a271:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
              │        │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │││                                                            ;   {poll}
              │        │││  0x00007f490c70a274:   mov    0x20(%rsp),%r11
              │        │││  0x00007f490c70a279:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │        │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │        │││  0x00007f490c70a280:   test   %r11d,%r11d
              │        │╰│  0x00007f490c70a283:   jge    0x00007f490c709ff4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │ │  0x00007f490c70a289:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │ │  0x00007f490c70a28c:   test   %r10d,%r10d
              │        │ ╰  0x00007f490c70a28f:   jg     0x00007f490c70a268           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │        │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
              │        │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ↘        ↘    0x00007f490c70a291:   mov    %ecx,%ebx
   0.00%                    0x00007f490c70a293:   test   %ecx,%ecx
                            0x00007f490c70a295:   jne    0x00007f490c70a47a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                                      ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                            0x00007f490c70a29b:   xor    %ebx,%ebx
                            0x00007f490c70a29d:   xor    %eax,%eax                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                            0x00007f490c70a29f:   nop
   0.00%                    0x00007f490c70a2a0:   cmpb   $0x0,0x40(%r15)
                            0x00007f490c70a2a5:   jne    0x00007f490c70a5e7
                            0x00007f490c70a2ab:   mov    0x30(%rsp),%r10
                            0x00007f490c70a2b0:   mov    %ebx,0x14(%rsp)
                            0x00007f490c70a2b4:   mov    %rax,0x30(%rsp)
   0.00%                    0x00007f490c70a2b9:   mov    %r10,%r8
                            0x00007f490c70a2bc:   mov    %r10,(%rsp)
                            0x00007f490c70a2c0:   mov    0x18(%rsp),%r10
   0.00%                    0x00007f490c70a2c5:   mov    %r10,%r11
   0.00%                    0x00007f490c70a2c8:   shr    $0x3,%r11
                            0x00007f490c70a2cc:   mov    (%rsp),%r10
   0.00%                    0x00007f490c70a2d0:   mov    %r11d,(%r10)
   0.00%                    0x00007f490c70a2d3:   mov    0x18(%rsp),%r10
                            0x00007f490c70a2d8:   xor    %r8,%r10
                            0x00007f490c70a2db:   shr    $0x15,%r10
                            0x00007f490c70a2df:   nop
                            0x00007f490c70a2e0:   test   %r10,%r10
                            0x00007f490c70a2e3:   je     0x00007f490c70a2ff
                            0x00007f490c70a2e5:   shr    $0x9,%r8
                            0x00007f490c70a2e9:   movabs $0x7f491d75c000,%rdi
                            0x00007f490c70a2f3:   add    %r8,%rdi
                            0x00007f490c70a2f6:   cmpb   $0x2,(%rdi)
                            0x00007f490c70a2f9:   jne    0x00007f490c70a679           ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  14.21%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  10.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  14.21%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1135 
  10.02%              kernel  [unknown] 
   5.64%           libjvm.so  update_register_map1 
   4.59%              kernel  [unknown] 
   2.78%           libjvm.so  vframeStream::vframeStream 
   2.07%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1126 
   2.06%           libjvm.so  OopMapStream::find_next 
   1.62%           libjvm.so  OopMapStream::find_next 
   1.23%           libjvm.so  OopMapStream::find_next 
   1.21%              kernel  [unknown] 
   0.99%              kernel  [unknown] 
   0.94%                      <unknown> 
   0.89%              kernel  [unknown] 
   0.80%           libjvm.so  methodHandle::~methodHandle 
   0.74%              kernel  [unknown] 
   0.69%         c2, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 3, compile id 1153 
   0.67%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1126 
   0.64%         c2, level 4  java.util.concurrent.ThreadPoolExecutor$Worker::run, version 2, compile id 988 
   0.62%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f489402b798::accept, version 2, compile id 923 
   0.62%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1059 
  46.97%  <...other 1506 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.68%              kernel  [unknown] 
  14.80%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1135 
   5.64%           libjvm.so  update_register_map1 
   4.92%           libjvm.so  OopMapStream::find_next 
   3.52%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f489402b798::accept, version 2, compile id 923 
   3.44%           libjvm.so  vframeStream::vframeStream 
   3.27%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1126 
   3.14%         c2, level 4  java.util.concurrent.ThreadPoolExecutor$Worker::run, version 2, compile id 988 
   1.24%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1059 
   1.17%         c2, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 3, compile id 1153 
   1.03%                      <unknown> 
   1.01%         c2, level 4  java.lang.VirtualThread::run, version 2, compile id 997 
   0.89%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.80%           libjvm.so  methodHandle::~methodHandle 
   0.77%           libjvm.so  frame::sender 
   0.75%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::processWorkerExit, version 4, compile id 1219 
   0.71%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 823 
   0.68%         c2, level 4  java.util.concurrent.ConcurrentHashMap::putVal, version 2, compile id 843 
   0.66%         c2, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 3, compile id 1199 
   0.65%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  17.26%  <...other 463 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  35.00%         c2, level 4
  33.68%              kernel
  24.79%           libjvm.so
   3.62%  libpthread-2.31.so
   1.03%                    
   0.72%    Unknown, level 0
   0.41%              [vdso]
   0.27%        libc-2.31.so
   0.25%          ld-2.31.so
   0.11%        runtime stub
   0.05%          libjava.so
   0.04%         interpreter
   0.01%         c1, level 3
   0.01%    perf-3160002.map
   0.01%      hsdis-amd64.so
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 5.56% complete, ETA 00:31:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1104.075 us/op
# Warmup Iteration   2: 582.613 us/op
# Warmup Iteration   3: 566.643 us/op
# Warmup Iteration   4: 565.348 us/op
# Warmup Iteration   5: 565.206 us/op
Iteration   1: 570.114 us/op
Iteration   2: 561.519 us/op
Iteration   3: 562.890 us/op
Iteration   4: 561.750 us/op
Iteration   5: 563.609 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  563.977 ±(99.9%) 13.612 us/op [Average]
  (min, avg, max) = (561.519, 563.977, 570.114), stdev = 3.535
  CI (99.9%): [550.365, 577.588] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 251814 total address lines.
Perf output processed (skipped 56.232 seconds):
 Column 1: cycles (2740313 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  55.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  21.44%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.19%              kernel  [unknown] 
  21.44%              kernel  [unknown] 
   3.05%              kernel  [unknown] 
   2.39%              kernel  [unknown] 
   2.00%              kernel  [unknown] 
   1.84%              kernel  [unknown] 
   1.70%              kernel  [unknown] 
   1.36%              kernel  [unknown] 
   0.79%              kernel  [unknown] 
   0.70%              kernel  [unknown] 
   0.65%              kernel  [unknown] 
   0.64%              kernel  [unknown] 
   0.49%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.41%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   5.50%  <...other 3460 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.62%              kernel  [unknown] 
   0.06%           libjvm.so  vframeStreamCommon::next 
   0.05%           libjvm.so  JVM_GetStackAccessControlContext 
   0.04%        libc-2.31.so  malloc 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  _int_free 
   0.04%           libjvm.so  Method::validate_bci_from_bcp 
   0.03%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::execute, version 2, compile id 800 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.02%  libpthread-2.31.so  __lll_lock_wait_private 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.78%  <...other 644 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.62%              kernel
   0.75%           libjvm.so
   0.28%        libc-2.31.so
   0.20%  libpthread-2.31.so
   0.08%         c2, level 4
   0.02%          ld-2.31.so
   0.02%    Unknown, level 0
   0.01%              [vdso]
   0.01%                    
   0.00%        runtime stub
   0.00%          libjava.so
   0.00%    perf-3160082.map
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 11.11% complete, ETA 00:39:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 130.698 us/op
# Warmup Iteration   2: 31.210 us/op
# Warmup Iteration   3: 31.103 us/op
# Warmup Iteration   4: 31.041 us/op
# Warmup Iteration   5: 31.161 us/op
Iteration   1: 32.319 us/op
Iteration   2: 31.442 us/op
Iteration   3: 31.568 us/op
Iteration   4: 31.262 us/op
Iteration   5: 31.617 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  31.642 ±(99.9%) 1.551 us/op [Average]
  (min, avg, max) = (31.262, 31.642, 32.319), stdev = 0.403
  CI (99.9%): [30.091, 33.192] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 288076 total address lines.
Perf output processed (skipped 56.257 seconds):
 Column 1: cycles (170151 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1151 

                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716a1c:   xor    %r9d,%r9d
                   0x00007fa3e8716a1f:   mov    (%rsp),%r11                  ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716a23:   mov    0x34(%r11),%r10d             ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716a27:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fa3e87171f4
   0.00%           0x00007fa3e8716a2c:   mov    0xa8(%rbp),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007fa3e8716a33:   test   %r10d,%r10d
                   0x00007fa3e8716a36:   jge    0x00007fa3e8716d22           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716a3c:   movzwl %r8w,%r8d
   0.00%           0x00007fa3e8716a40:   shl    %r8d
   0.00%           0x00007fa3e8716a43:   or     $0xf,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007fa3e8716a47:   mov    %r8d,%ecx
                   0x00007fa3e8716a4a:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716a4c:   test   %ecx,%ecx
          ╭        0x00007fa3e8716a4e:   jle    0x00007fa3e8716b1d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │        0x00007fa3e8716a54:   add    $0xfffffffe,%r8d
   0.00%  │        0x00007fa3e8716a58:   mov    %r11,%rbx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │↗       0x00007fa3e8716a5b:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.30%  ││       0x00007fa3e8716a5d:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbx=Oop rbp=Oop [40]=Oop [16]=Derived_oop_[40] }
          ││                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007fa3e8716a64:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││                                                                 ;   {poll}
          ││       0x00007fa3e8716a67:   mov    0xa8(%rbp),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007fa3e8716a6e:   test   %r10d,%r10d
          ││       0x00007fa3e8716a71:   jge    0x00007fa3e8716d1f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││       0x00007fa3e8716a77:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007fa3e8716a79:   cmp    %r8d,%ecx
          │╰       0x00007fa3e8716a7c:   jg     0x00007fa3e8716a5b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │        0x00007fa3e8716a7e:   xchg   %ax,%ax
          │        0x00007fa3e8716a80:   cmp    $0x3,%ecx
          │ ╭      0x00007fa3e8716a83:   jle    0x00007fa3e8716af2
   0.00%  │ │      0x00007fa3e8716a89:   nopl   0x0(%rax)                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │ │↗     0x00007fa3e8716a90:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.33%  │ ││     0x00007fa3e8716a92:   mov    0xa8(%rbp),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │ ││     0x00007fa3e8716a99:   test   %r10d,%r10d
          │ ││     0x00007fa3e8716a9c:   nopl   0x0(%rax)
          │ ││     0x00007fa3e8716aa0:   jge    0x00007fa3e8716d1f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%  │ ││     0x00007fa3e8716aa6:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.17%  │ ││     0x00007fa3e8716aa8:   mov    0xa8(%rbp),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │ ││     0x00007fa3e8716aaf:   test   %r11d,%r11d
          │ ││     0x00007fa3e8716ab2:   jge    0x00007fa3e8716d1f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007fa3e8716ab8:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.27%  │ ││     0x00007fa3e8716aba:   mov    0xa8(%rbp),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │ ││     0x00007fa3e8716ac1:   test   %r10d,%r10d
          │ ││     0x00007fa3e8716ac4:   jge    0x00007fa3e8716d1f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007fa3e8716aca:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   3.28%  │ ││     0x00007fa3e8716acc:   mov    0x458(%r15),%r8
          │ ││     0x00007fa3e8716ad3:   mov    0xa8(%rbp),%r11d
   0.00%  │ ││     0x00007fa3e8716ada:   lea    -0x3(%rcx),%r10d             ; ImmutableOopMap {rbx=Oop rbp=Oop [40]=Oop [16]=Derived_oop_[40] }
          │ ││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007fa3e8716ade:   test   %eax,(%r8)                   ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││                                                               ;   {poll}
   0.02%  │ ││     0x00007fa3e8716ae1:   test   %r11d,%r11d
          │ ││     0x00007fa3e8716ae4:   jge    0x00007fa3e8716d1f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007fa3e8716aea:   add    $0xfffffffc,%ecx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007fa3e8716aed:   cmp    $0x3,%ecx
          │ │╰     0x00007fa3e8716af0:   jg     0x00007fa3e8716a90           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ↘      0x00007fa3e8716af2:   test   %ecx,%ecx
          │   ╭    0x00007fa3e8716af4:   jle    0x00007fa3e8716b1a
   0.00%  │   │    0x00007fa3e8716af6:   xchg   %ax,%ax                      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   │↗   0x00007fa3e8716af8:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.31%  │   ││   0x00007fa3e8716afa:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbx=Oop rbp=Oop [40]=Oop [16]=Derived_oop_[40] }
          │   ││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   ││                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││   0x00007fa3e8716b01:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││                                                             ;   {poll}
          │   ││   0x00007fa3e8716b04:   mov    0xa8(%rbp),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││   0x00007fa3e8716b0b:   test   %r11d,%r11d
          │   ││   0x00007fa3e8716b0e:   jge    0x00007fa3e8716d1f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │   ││   0x00007fa3e8716b14:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││   0x00007fa3e8716b16:   test   %ecx,%ecx
          │   │╰   0x00007fa3e8716b18:   jg     0x00007fa3e8716af8           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ↘    0x00007fa3e8716b1a:   mov    %rbx,%r11                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘        0x00007fa3e8716b1d:   data16 xchg %ax,%ax
   0.00%           0x00007fa3e8716b20:   test   %r9d,%r9d
                   0x00007fa3e8716b23:   jne    0x00007fa3e8716e58           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716b29:   xor    %ebx,%ebx
                   0x00007fa3e8716b2b:   xor    %edx,%edx                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%           0x00007fa3e8716b2d:   cmpb   $0x0,0x40(%r15)
   0.00%           0x00007fa3e8716b32:   jne    0x00007fa3e8717005
                   0x00007fa3e8716b38:   mov    0x10(%rsp),%r8
   0.00%           0x00007fa3e8716b3d:   mov    %r11,%r10
                   0x00007fa3e8716b40:   shr    $0x3,%r10
   0.00%           0x00007fa3e8716b44:   mov    %r10d,(%r8)
                   0x00007fa3e8716b47:   mov    %r8,%r10
   0.00%           0x00007fa3e8716b4a:   mov    %r11,%r9
                   0x00007fa3e8716b4d:   xor    %r10,%r9
   0.00%           0x00007fa3e8716b50:   shr    $0x15,%r9
   0.00%           0x00007fa3e8716b54:   test   %r9,%r9
                ╭  0x00007fa3e8716b57:   je     0x00007fa3e8716b73
                │  0x00007fa3e8716b59:   shr    $0x9,%r10
                │  0x00007fa3e8716b5d:   movabs $0x7fa3fa57e000,%rdi
                │  0x00007fa3e8716b67:   add    %r10,%rdi
                │  0x00007fa3e8716b6a:   cmpb   $0x2,(%rdi)
                │  0x00007fa3e8716b6d:   jne    0x00007fa3e8716876           ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ↘  0x00007fa3e8716b73:   mov    0x30(%r11),%r9d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@222 (line 1886)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%           0x00007fa3e8716b77:   test   %r9d,%r9d
   0.00%           0x00007fa3e8716b7a:   nopw   0x0(%rax,%rax,1)
   0.00%           0x00007fa3e8716b80:   jl     0x00007fa3e8717129
   0.00%           0x00007fa3e8716b86:   movl   $0xffffffff,0xa4(%rbp)
                   0x00007fa3e8716b90:   lock addl $0x0,-0x40(%rsp)          ;*putfield access {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@232 (line 1888)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.11%           0x00007fa3e8716b96:   mov    0xa8(%rbp),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@236 (line 1889)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716b9d:   data16 xchg %ax,%ax
                   0x00007fa3e8716ba0:   test   %r9d,%r9d
                   0x00007fa3e8716ba3:   jge    0x00007fa3e8716f3d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@239 (line 1889)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007fa3e8716ba9:   test   %ebx,%ebx
                   0x00007fa3e8716bab:   jne    0x00007fa3e8716da5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@243 (line 1890)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007fa3e8716bb1:   mov    0x18(%rsp),%rcx
                   0x00007fa3e8716bb6:   movabs $0x7fa36f029b98,%r10         ;   {metadata(&apos;java/lang/BaseVirtualThread&apos;)}
                   0x00007fa3e8716bc0:   cmp    %r10,%rcx
                   0x00007fa3e8716bc3:   jne    0x00007fa3e8716d4c
                   0x00007fa3e8716bc9:   mov    0x8(%rsp),%r9d
....................................................................................................
  13.86%  <total for region 1>

....[Hottest Regions]...............................................................................
  13.86%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1151 
  10.00%              kernel  [unknown] 
   5.45%           libjvm.so  update_register_map1 
   4.60%              kernel  [unknown] 
   2.44%           libjvm.so  vframeStream::vframeStream 
   2.06%           libjvm.so  OopMapStream::find_next 
   1.55%           libjvm.so  OopMapStream::find_next 
   1.29%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1121 
   1.25%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1121 
   1.24%           libjvm.so  OopMapStream::find_next 
   1.12%              kernel  [unknown] 
   0.99%              kernel  [unknown] 
   0.90%              kernel  [unknown] 
   0.89%                      <unknown> 
   0.80%           libjvm.so  methodHandle::~methodHandle 
   0.76%         c2, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 5, compile id 1171 
   0.67%              kernel  [unknown] 
   0.66%         c2, level 4  java.lang.VirtualThread::run, version 2, compile id 1014 
   0.63%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1121 
   0.61%         c2, level 4  java.util.concurrent.FutureTask::run, version 4, compile id 1246 
  48.24%  <...other 1792 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.54%              kernel  [unknown] 
  14.83%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1151 
   5.45%           libjvm.so  update_register_map1 
   4.85%           libjvm.so  OopMapStream::find_next 
   3.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007fa37002b798::accept, version 2, compile id 935 
   3.28%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1121 
   3.12%           libjvm.so  vframeStream::vframeStream 
   2.94%         c2, level 4  java.lang.VirtualThread::run, version 2, compile id 1014 
   1.32%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1081 
   1.28%         c2, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 5, compile id 1171 
   1.05%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::processWorkerExit, version 4, compile id 1233 
   1.02%                      <unknown> 
   0.95%         c2, level 4  java.util.concurrent.FutureTask::run, version 4, compile id 1246 
   0.80%           libjvm.so  methodHandle::~methodHandle 
   0.71%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.71%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.70%         c2, level 4  java.util.concurrent.ConcurrentHashMap::putVal, version 2, compile id 845 
   0.69%           libjvm.so  frame::sender 
   0.67%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 847 
   0.61%         c2, level 4  java.util.concurrent.LinkedBlockingQueue::take, version 3, compile id 1218 
  18.21%  <...other 556 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  35.41%         c2, level 4
  33.54%              kernel
  24.61%           libjvm.so
   3.49%  libpthread-2.31.so
   1.02%                    
   0.75%    Unknown, level 0
   0.38%        libc-2.31.so
   0.38%              [vdso]
   0.24%          ld-2.31.so
   0.10%        runtime stub
   0.04%         interpreter
   0.03%          libjava.so
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%    perf-4167753.map
   0.00%        libjimage.so
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 16.67% complete, ETA 00:33:39
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1127.088 us/op
# Warmup Iteration   2: 568.993 us/op
# Warmup Iteration   3: 561.853 us/op
# Warmup Iteration   4: 560.811 us/op
# Warmup Iteration   5: 571.330 us/op
Iteration   1: 567.774 us/op
Iteration   2: 559.551 us/op
Iteration   3: 559.407 us/op
Iteration   4: 561.499 us/op
Iteration   5: 566.943 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  563.035 ±(99.9%) 15.569 us/op [Average]
  (min, avg, max) = (559.407, 563.035, 567.774), stdev = 4.043
  CI (99.9%): [547.466, 578.603] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 258439 total address lines.
Perf output processed (skipped 56.474 seconds):
 Column 1: cycles (3319596 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  55.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  21.34%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.08%              kernel  [unknown] 
  21.34%              kernel  [unknown] 
   3.19%              kernel  [unknown] 
   2.67%              kernel  [unknown] 
   1.91%              kernel  [unknown] 
   1.83%              kernel  [unknown] 
   1.76%              kernel  [unknown] 
   1.38%              kernel  [unknown] 
   0.80%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.65%              kernel  [unknown] 
   0.62%              kernel  [unknown] 
   0.48%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.37%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   5.50%  <...other 3484 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.57%              kernel  [unknown] 
   0.06%           libjvm.so  vframeStreamCommon::next 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.04%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007fd37802b798::accept, version 2, compile id 803 
   0.04%        libc-2.31.so  malloc 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  _int_free 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.02%  libpthread-2.31.so  __lll_lock_wait 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.78%  <...other 692 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.57%              kernel
   0.78%           libjvm.so
   0.28%        libc-2.31.so
   0.19%  libpthread-2.31.so
   0.11%         c2, level 4
   0.02%          ld-2.31.so
   0.02%    Unknown, level 0
   0.01%              [vdso]
   0.01%                    
   0.00%        runtime stub
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-4167827.map
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 22.22% complete, ETA 00:34:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 111.410 us/op
# Warmup Iteration   2: 30.521 us/op
# Warmup Iteration   3: 30.436 us/op
# Warmup Iteration   4: 30.864 us/op
# Warmup Iteration   5: 30.464 us/op
Iteration   1: 30.522 us/op
Iteration   2: 30.413 us/op
Iteration   3: 30.461 us/op
Iteration   4: 30.894 us/op
Iteration   5: 30.475 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  30.553 ±(99.9%) 0.750 us/op [Average]
  (min, avg, max) = (30.413, 30.553, 30.894), stdev = 0.195
  CI (99.9%): [29.804, 31.303] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 277428 total address lines.
Perf output processed (skipped 56.291 seconds):
 Column 1: cycles (166234 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1111 

                           0x00007f6584709985:   xchg   %ax,%ax
                           0x00007f6584709987:   call   0x00007f65840c9f00           ; ImmutableOopMap {rbp=Oop [48]=Oop }
                                                                                     ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                                                     ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@225 (line 1886)
                                                                                     ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                                                                     ;   {runtime_call UncommonTrapBlob}
                           0x00007f658470998c:   nopl   0x30003fc(%rax,%rax,1)       ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                                                                                     ;   {other}
                           0x00007f6584709994:   cmpb   $0x0,0x40(%r15)
   0.00%                   0x00007f6584709999:   jne    0x00007f6584709f7f
                           0x00007f658470999f:   mov    0x18(%rsp),%rbx
                           0x00007f65847099a4:   mov    %r12d,(%rbx)                 ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                                     ; - java.util.concurrent.ForkJoinPool::awaitWork@270 (line 1897)
                                                                                     ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ╭                0x00007f65847099a7:   jmp    0x00007f65847099ae           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                          ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ↗ ↗  ↗↗↗↗  ↗   0x00007f65847099a9:   mov    0x18(%rsp),%rbx              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@273 (line 1898)
          │ │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘ │ │  ││││  │   0x00007f65847099ae:   mov    0x30(%rsp),%r10              ;*invokevirtual awaitWork {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │  ││││  │   0x00007f65847099b3:   xor    %eax,%eax
            │ │  ││││  │   0x00007f65847099b5:   mov    %r10,%rbp
            │ │  ││││  │   0x00007f65847099b8:   mov    %rbx,0x18(%rsp)
   0.00%   ↗│ │  ││││  │   0x00007f65847099bd:   mov    %eax,0xc(%rsp)
   0.00%   ││ │  ││││  │   0x00007f65847099c1:   mov    0x8(%rsp),%ebx               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%   ││ │  ││││  │   0x00007f65847099c5:   mov    %ebx,%r10d
           ││ │  ││││  │   0x00007f65847099c8:   shl    $0xd,%r10d
   0.00%   ││ │  ││││  │   0x00007f65847099cc:   xor    %ebx,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
           ││ │  ││││  │   0x00007f65847099cf:   mov    %r10d,%r8d
   0.00%   ││ │  ││││  │   0x00007f65847099d2:   shr    $0x11,%r8d
           ││ │  ││││  │   0x00007f65847099d6:   xor    %r10d,%r8d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%   ││ │  ││││  │   0x00007f65847099d9:   mov    %r8d,%r10d
           ││ │  ││││  │   0x00007f65847099dc:   shl    $0x5,%r10d
   0.00%   ││ │  ││││  │   0x00007f65847099e0:   xor    %r8d,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
           ││ │  ││││  │   0x00007f65847099e3:   mov    %r10d,0x8(%rsp)
   0.00%   ││ │  ││││  │   0x00007f65847099e8:   mov    0x10(%rsp),%rsi
           ││ │  ││││  │   0x00007f65847099ed:   mov    %rbp,%rdx
   0.00%   ││ │  ││││  │   0x00007f65847099f0:   mov    0xc(%rsp),%ecx
   0.00%   ││ │  ││││  │   0x00007f65847099f4:   mov    %r10d,%r8d
   0.00%   ││ │  ││││  │   0x00007f65847099f7:   call   0x00007f65840c4380           ; ImmutableOopMap {rbp=Oop [4]=NarrowOop [16]=Oop [40]=Oop [24]=Derived_oop_[40] }
           ││ │  ││││  │                                                             ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
           ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           ││ │  ││││  │                                                             ;   {optimized virtual_call}
   0.00%   ││ │  ││││  │   0x00007f65847099fc:   nopl   0x400046c(%rax,%rax,1)       ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
           ││ │  ││││  │                                                             ;   {other}
   0.00%   ││ │  ││││  │   0x00007f6584709a04:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop [4]=NarrowOop [16]=Oop [40]=Oop [24]=Derived_oop_[40] }
           ││ │  ││││  │                                                             ;*ifge {reexecute=1 rethrow=0 return_oop=0}
           ││ │  ││││  │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%   ││ │  ││││  │   0x00007f6584709a0b:   test   %eax,(%r10)                  ;   {poll}
   0.00%   ││ │  ││││  │   0x00007f6584709a0e:   test   %eax,%eax
           ╰│ │  ││││  │   0x00007f6584709a10:   jge    0x00007f65847099bd           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
            │ │  ││││  │   0x00007f6584709a12:   mov    %rbp,%r10
            │ │  ││││  │   0x00007f6584709a15:   data16 data16 nopw 0x0(%rax,%rax,1)
            │ │  ││││  │   0x00007f6584709a20:   mov    0xa8(%rbp),%r8d              ; implicit exception: dispatches to 0x00007f658470a158
   0.00%    │ │  ││││  │   0x00007f6584709a27:   mov    %rbp,0x30(%rsp)              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │  ││││  │   0x00007f6584709a2c:   mov    0x10(%rsp),%r10
   0.00%    │ │  ││││  │   0x00007f6584709a31:   mov    0x30(%r10),%r11d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │  ││││  │   0x00007f6584709a35:   test   %r11d,%r11d
            │ │  ││││  │   0x00007f6584709a38:   jl     0x00007f658470a00d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │  ││││  │   0x00007f6584709a3e:   mov    0xd8(%r10),%r11              ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.09%    │ │  ││││  │   0x00007f6584709a45:   mov    %r11,%r9
            │ │  ││││  │   0x00007f6584709a48:   movabs $0xffff000000000000,%r10
            │ │  ││││  │   0x00007f6584709a52:   add    %r10,%r9
   0.00%    │ │  ││││  │   0x00007f6584709a55:   movabs $0xffffffff00000000,%r10
            │ │  ││││  │   0x00007f6584709a5f:   and    %r10,%r9
   0.00%    │ │  ││││  │   0x00007f6584709a62:   add    $0x10000,%r8d
            │ │  ││││  │   0x00007f6584709a69:   mov    %r11d,%r10d
            │ │  ││││  │   0x00007f6584709a6c:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │  ││││  │   0x00007f6584709a73:   movslq %r8d,%rcx                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │  ││││  │   0x00007f6584709a76:   or     %rcx,%r9                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │  ││││  │   0x00007f6584709a79:   or     $0x80000000,%r8d
            │ │  ││││  │   0x00007f6584709a80:   mov    %r8d,0xa8(%rbp)
            │ │  ││││  │   0x00007f6584709a87:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.14%    │ │  ││││  │   0x00007f6584709a8d:   mov    %r10d,0xc(%rbp)
            │ │  ││││  │   0x00007f6584709a91:   mov    0x10(%rsp),%r10
            │ │  ││││  │   0x00007f6584709a96:   mov    %r11,%rax
   0.00%    │ │  ││││  │   0x00007f6584709a99:   lock cmpxchg %r9,0xd8(%r10)
   0.14%    │ │  ││││  │   0x00007f6584709aa2:   mov    %rax,%r8                     ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │  ││││  │   0x00007f6584709aa5:   cmp    %rax,%r11
            │ │  ││││  │   0x00007f6584709aa8:   jne    0x00007f6584709ea3           ;*lload {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │  ││││  │   0x00007f6584709aae:   movabs $0xffff000000000000,%r10
            │ │  ││││  │   0x00007f6584709ab8:   test   %r9,%r10
            │ │  ││││  │   0x00007f6584709abb:   nopl   0x0(%rax,%rax,1)
            │ │  ││││  │   0x00007f6584709ac0:   jle    0x00007f6584709d2d           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │  ││││  │   0x00007f6584709ac6:   xor    %r10d,%r10d
            │ │  ││││  │   0x00007f6584709ac9:   mov    0x10(%rsp),%r8
            │ │  ││││  │   0x00007f6584709ace:   mov    %r10d,%r9d                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │  ││││  │   0x00007f6584709ad1:   mov    %r8,0x10(%rsp)
            │ │  ││││  │   0x00007f6584709ad6:   mov    0x34(%r8),%r10d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │  ││││  │   0x00007f6584709ada:   nopw   0x0(%rax,%rax,1)
   0.00%    │ │  ││││  │   0x00007f6584709ae0:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f658470a17c
            │ │  ││││  │   0x00007f6584709ae5:   mov    0x30(%rsp),%r10
   0.00%    │ │  ││││  │   0x00007f6584709aea:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │  ││││  │   0x00007f6584709af1:   test   %r8d,%r8d
            ╰ │  ││││  │   0x00007f6584709af4:   jge    0x00007f65847099a9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │  ││││  │   0x00007f6584709afa:   movzwl %r11w,%r10d
              │  ││││  │   0x00007f6584709afe:   shl    %r10d
   0.00%      │  ││││  │   0x00007f6584709b01:   or     $0xf,%r10d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
              │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
              │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  ││││  │   0x00007f6584709b05:   mov    %r10d,%r11d
   0.00%      │  ││││  │   0x00007f6584709b08:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  ││││  │                                                             ;   {no_reloc}
              │  ││││  │   0x00007f6584709b0b:   test   %r11d,%r11d
             ╭│  ││││  │   0x00007f6584709b0e:   jle    0x00007f6584709bf5           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
             ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     ││  ││││  │   0x00007f6584709b14:   add    $0xfffffffe,%r10d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             ││↗ ││││  │   0x00007f6584709b18:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.27%     │││ ││││  │   0x00007f6584709b1a:   mov    0x458(%r15),%r8              ; ImmutableOopMap {[4]=NarrowOop [16]=Oop [40]=Oop [24]=Derived_oop_[40] [48]=Oop }
             │││ ││││  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
             │││ ││││  │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
             │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │││ ││││  │   0x00007f6584709b21:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
             │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │││ ││││  │                                                             ;   {poll}
             │││ ││││  │   0x00007f6584709b24:   mov    0x30(%rsp),%r8
             │││ ││││  │   0x00007f6584709b29:   mov    0xa8(%r8),%r8d               ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     │││ ││││  │   0x00007f6584709b30:   test   %r8d,%r8d
             │╰│ ││││  │   0x00007f6584709b33:   jge    0x00007f65847099a9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │ ││││  │   0x00007f6584709b39:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │ ││││  │   0x00007f6584709b3c:   nopl   0x0(%rax)
             │ │ ││││  │   0x00007f6584709b40:   cmp    %r10d,%r11d
             │ ╰ ││││  │   0x00007f6584709b43:   jg     0x00007f6584709b18           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │   ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
             │   ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │   ││││  │   0x00007f6584709b45:   cmp    $0x3,%r11d
             │  ╭││││  │   0x00007f6584709b49:   jle    0x00007f6584709bc6
             │  │││││  │   0x00007f6584709b4f:   nop                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │  │││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │  │││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%     │  │││││↗ │   0x00007f6584709b50:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
             │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.26%     │  ││││││ │   0x00007f6584709b52:   mov    0x30(%rsp),%r10
             │  ││││││ │   0x00007f6584709b57:   mov    0xa8(%r10),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │  ││││││ │   0x00007f6584709b5e:   xchg   %ax,%ax
             │  ││││││ │   0x00007f6584709b60:   test   %r10d,%r10d
             │  │╰││││ │   0x00007f6584709b63:   jge    0x00007f65847099a9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%     │  │ ││││ │   0x00007f6584709b69:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
             │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.24%     │  │ ││││ │   0x00007f6584709b6b:   mov    0x30(%rsp),%r10
             │  │ ││││ │   0x00007f6584709b70:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │  │ ││││ │   0x00007f6584709b77:   test   %r8d,%r8d
   0.00%     │  │ ││││ │   0x00007f6584709b7a:   nopw   0x0(%rax,%rax,1)
   0.02%     │  │ ╰│││ │   0x00007f6584709b80:   jge    0x00007f65847099a9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │  │  │││ │   0x00007f6584709b86:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
             │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.32%     │  │  │││ │   0x00007f6584709b88:   mov    0xa8(%r10),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │  │  │││ │   0x00007f6584709b8f:   test   %r10d,%r10d
             │  │  ╰││ │   0x00007f6584709b92:   jge    0x00007f65847099a9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │  │   ││ │   0x00007f6584709b98:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   3.26%     │  │   ││ │   0x00007f6584709b9a:   mov    0x458(%r15),%rcx
             │  │   ││ │   0x00007f6584709ba1:   mov    0x30(%rsp),%r10
             │  │   ││ │   0x00007f6584709ba6:   mov    0xa8(%r10),%r8d
   0.00%     │  │   ││ │   0x00007f6584709bad:   lea    -0x3(%r11),%r10d             ; ImmutableOopMap {[4]=NarrowOop [16]=Oop [40]=Oop [24]=Derived_oop_[40] [48]=Oop }
             │  │   ││ │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
             │  │   ││ │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
             │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     │  │   ││ │   0x00007f6584709bb1:   test   %eax,(%rcx)                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │  │   ││ │                                                             ;   {poll}
   0.00%     │  │   ││ │   0x00007f6584709bb3:   test   %r8d,%r8d
             │  │   ╰│ │   0x00007f6584709bb6:   jge    0x00007f65847099a9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │  │    │ │   0x00007f6584709bbc:   add    $0xfffffffc,%r11d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │  │    │ │   0x00007f6584709bc0:   cmp    $0x3,%r11d
             │  │    ╰ │   0x00007f6584709bc4:   jg     0x00007f6584709b50           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │  │      │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
             │  │      │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │  ↘      │   0x00007f6584709bc6:   test   %r11d,%r11d
             │        ╭│   0x00007f6584709bc9:   jle    0x00007f6584709bf5
             │        ││   0x00007f6584709bcb:   nop                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │        ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │        ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │        ││↗  0x00007f6584709bcc:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.29%     │        │││  0x00007f6584709bce:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[4]=NarrowOop [16]=Oop [40]=Oop [24]=Derived_oop_[40] [48]=Oop }
             │        │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
             │        │││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
             │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │        │││  0x00007f6584709bd5:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │        │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
             │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │        │││                                                            ;   {poll}
             │        │││  0x00007f6584709bd8:   mov    0x30(%rsp),%r10
             │        │││  0x00007f6584709bdd:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │        │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │        │││  0x00007f6584709be4:   test   %r8d,%r8d
             │        │╰│  0x00007f6584709be7:   jge    0x00007f65847099a9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │        │ │  0x00007f6584709bed:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │        │ │  0x00007f6584709bf0:   test   %r11d,%r11d
             │        │ ╰  0x00007f6584709bf3:   jg     0x00007f6584709bcc           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │        │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
             │        │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             ↘        ↘    0x00007f6584709bf5:   test   %r9d,%r9d
                           0x00007f6584709bf8:   jne    0x00007f6584709de5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                                     ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                   0x00007f6584709bfe:   xor    %ebp,%ebp
                           0x00007f6584709c00:   xor    %r10d,%r10d
                           0x00007f6584709c03:   mov    %ebp,0xc(%rsp)
                           0x00007f6584709c07:   mov    %r10,0x38(%rsp)              ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%                   0x00007f6584709c0c:   cmpb   $0x0,0x40(%r15)
                           0x00007f6584709c11:   jne    0x00007f6584709f3f
                           0x00007f6584709c17:   mov    0x18(%rsp),%r10
                           0x00007f6584709c1c:   mov    0x4(%rsp),%r11d
   0.00%                   0x00007f6584709c21:   mov    %r11d,(%r10)
                           0x00007f6584709c24:   mov    0x10(%rsp),%r10
                           0x00007f6584709c29:   mov    0x18(%rsp),%r11
                           0x00007f6584709c2e:   xor    %r11,%r10
   0.00%                   0x00007f6584709c31:   shr    $0x15,%r10
                           0x00007f6584709c35:   test   %r10,%r10
                           0x00007f6584709c38:   je     0x00007f6584709c54
                           0x00007f6584709c3a:   shr    $0x9,%r11
                           0x00007f6584709c3e:   movabs $0x7f6577546000,%rdi
                           0x00007f6584709c48:   add    %r11,%rdi
                           0x00007f6584709c4b:   cmpb   $0x2,(%rdi)
                           0x00007f6584709c4e:   jne    0x00007f6584709fbf           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                                     ; - java.util.concurrent.ForkJoinPool::awaitWork@221 (line 1886)
                                                                                     ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                   0x00007f6584709c54:   mov    0x10(%rsp),%r10
....................................................................................................
  14.19%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  10.39%  <total for region 2>

....[Hottest Regions]...............................................................................
  14.19%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1111 
  10.39%              kernel  [unknown] 
   5.63%           libjvm.so  update_register_map1 
   4.66%              kernel  [unknown] 
   2.72%           libjvm.so  vframeStream::vframeStream 
   2.06%           libjvm.so  OopMapStream::find_next 
   1.61%           libjvm.so  OopMapStream::find_next 
   1.44%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 957 
   1.25%           libjvm.so  OopMapStream::find_next 
   1.23%              kernel  [unknown] 
   1.06%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 957 
   0.96%              kernel  [unknown] 
   0.91%              kernel  [unknown] 
   0.90%                      <unknown> 
   0.90%           libjvm.so  methodHandle::~methodHandle 
   0.70%              kernel  [unknown] 
   0.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f650402b798::accept, version 2, compile id 910 
   0.66%         c2, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 7, compile id 1151 
   0.60%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f650402b798::accept, version 2, compile id 910 
   0.59%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 995 
  46.87%  <...other 1408 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.34%              kernel  [unknown] 
  14.81%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1111 
   5.63%           libjvm.so  update_register_map1 
   4.92%           libjvm.so  OopMapStream::find_next 
   3.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f650402b798::accept, version 2, compile id 910 
   3.42%           libjvm.so  vframeStream::vframeStream 
   3.20%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 957 
   2.64%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 995 
   1.13%         c2, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 7, compile id 1151 
   1.10%         c2, level 4  java.lang.VirtualThread::run, version 2, compile id 979 
   0.97%                      <unknown> 
   0.97%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::tryTerminate, version 2, compile id 977 
   0.90%           libjvm.so  methodHandle::~methodHandle 
   0.85%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.78%           libjvm.so  frame::sender 
   0.72%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.72%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 845 
   0.71%         c2, level 4  java.util.concurrent.ConcurrentHashMap::putVal, version 2, compile id 872 
   0.69%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::processWorkerExit, version 4, compile id 1196 
   0.57%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
  17.23%  <...other 424 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  34.34%              kernel
  34.20%         c2, level 4
  24.93%           libjvm.so
   3.72%  libpthread-2.31.so
   0.97%                    
   0.77%    Unknown, level 0
   0.45%              [vdso]
   0.28%        libc-2.31.so
   0.18%          ld-2.31.so
   0.12%        runtime stub
   0.02%          libjava.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%     perf-985019.map
   0.00%         c1, level 3
   0.00%         c1, level 1
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 27.78% complete, ETA 00:30:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1057.285 us/op
# Warmup Iteration   2: 562.967 us/op
# Warmup Iteration   3: 563.503 us/op
# Warmup Iteration   4: 563.241 us/op
# Warmup Iteration   5: 562.350 us/op
Iteration   1: 575.465 us/op
Iteration   2: 562.382 us/op
Iteration   3: 563.275 us/op
Iteration   4: 562.399 us/op
Iteration   5: 563.784 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  565.461 ±(99.9%) 21.657 us/op [Average]
  (min, avg, max) = (562.382, 565.461, 575.465), stdev = 5.624
  CI (99.9%): [543.804, 587.118] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 248861 total address lines.
Perf output processed (skipped 56.249 seconds):
 Column 1: cycles (2727301 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  55.07%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  21.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.07%              kernel  [unknown] 
  21.57%              kernel  [unknown] 
   3.12%              kernel  [unknown] 
   2.36%              kernel  [unknown] 
   1.84%              kernel  [unknown] 
   1.80%              kernel  [unknown] 
   1.69%              kernel  [unknown] 
   1.32%              kernel  [unknown] 
   0.84%              kernel  [unknown] 
   0.77%              kernel  [unknown] 
   0.68%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.49%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.41%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   5.57%  <...other 3511 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.59%              kernel  [unknown] 
   0.07%           libjvm.so  vframeStreamCommon::next 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.04%        libc-2.31.so  malloc 
   0.04%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.04%        libc-2.31.so  _int_free 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.02%  libpthread-2.31.so  __lll_lock_wait 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::addWorker, version 2, compile id 833 
   0.78%  <...other 658 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.59%              kernel
   0.78%           libjvm.so
   0.28%        libc-2.31.so
   0.20%  libpthread-2.31.so
   0.08%         c2, level 4
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.01%              [vdso]
   0.01%                    
   0.00%        runtime stub
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%     perf-985098.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 33.33% complete, ETA 00:29:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 218.658 us/op
# Warmup Iteration   2: 40.001 us/op
# Warmup Iteration   3: 38.277 us/op
# Warmup Iteration   4: 39.119 us/op
# Warmup Iteration   5: 39.442 us/op
Iteration   1: 38.769 us/op
Iteration   2: 38.927 us/op
Iteration   3: 39.029 us/op
Iteration   4: 39.285 us/op
Iteration   5: 39.331 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  39.068 ±(99.9%) 0.917 us/op [Average]
  (min, avg, max) = (38.769, 39.068, 39.331), stdev = 0.238
  CI (99.9%): [38.151, 39.985] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 292473 total address lines.
Perf output processed (skipped 56.041 seconds):
 Column 1: cycles (250726 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  12.90%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1180 

                          0x00007f5238722ed2:   jmp    0x00007f5238723193
             ↗  ↗↗↗↗  ↗   0x00007f5238722ed7:   mov    %r8,%r11                     ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ↗ │  ││││  │   0x00007f5238722eda:   mov    0x8(%rsp),%r8d
           │ │  ││││  │   0x00007f5238722edf:   mov    0x10(%rsp),%rcx
           │ │  ││││  │   0x00007f5238722ee4:   mov    0x18(%rsp),%rdx
           │ │  ││││  │   0x00007f5238722ee9:   jmp    0x00007f5238723333
           │ │  ││││  │   0x00007f5238722eee:   xchg   %ax,%ax
          ↗│ │  ││││  │   0x00007f5238722ef0:   mov    0x20(%rsp),%r13d
   0.00%  ││ │  ││││  │   0x00007f5238722ef5:   mov    %eax,%ebx
   0.00%  ││ │  ││││  │   0x00007f5238722ef7:   mov    %rbp,%r11
          ││ │  ││││  │   0x00007f5238722efa:   mov    (%rsp),%rbp
   0.00%  ││ │  ││││  │   0x00007f5238722efe:   mov    0x8(%rsp),%r8d
          ││ │  ││││  │   0x00007f5238722f03:   mov    0x10(%rsp),%rcx
   0.00%  ││ │  ││││  │   0x00007f5238722f08:   mov    0x18(%rsp),%rdx
          ││ │  ││││  │   0x00007f5238722f0d:   mov    0x28(%rsp),%r9               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%  ││ │  ││││  │   0x00007f5238722f12:   mov    %r13d,%r10d
   0.00%  ││ │  ││││  │   0x00007f5238722f15:   shl    $0xd,%r10d
   0.00%  ││ │  ││││  │   0x00007f5238722f19:   xor    %r13d,%r10d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
   0.00%  ││ │  ││││  │   0x00007f5238722f1c:   mov    %r10d,%edi
   0.00%  ││ │  ││││  │   0x00007f5238722f1f:   shr    $0x11,%edi
          ││ │  ││││  │   0x00007f5238722f22:   xor    %r10d,%edi                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%  ││ │  ││││  │   0x00007f5238722f25:   mov    %edi,%r10d
          ││ │  ││││  │   0x00007f5238722f28:   shl    $0x5,%r10d
   0.00%  ││ │  ││││  │   0x00007f5238722f2c:   mov    %r10d,%r13d
   0.00%  ││ │  ││││  │   0x00007f5238722f2f:   xor    %edi,%r13d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
   0.00%  ││ │  ││││  │   0x00007f5238722f32:   test   %r11,%r11
          ││ │  ││││  │   0x00007f5238722f35:   je     0x00007f52387236c5           ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          ││ │  ││││  │   0x00007f5238722f3b:   mov    %r13d,0x20(%rsp)
   0.00%  ││ │  ││││  │   0x00007f5238722f40:   mov    %rdx,0x18(%rsp)
          ││ │  ││││  │   0x00007f5238722f45:   mov    %rcx,0x10(%rsp)
   0.00%  ││ │  ││││  │   0x00007f5238722f4a:   mov    %r8d,0x8(%rsp)
          ││ │  ││││  │   0x00007f5238722f4f:   mov    %rbp,(%rsp)
   0.00%  ││ │  ││││  │   0x00007f5238722f53:   mov    %r11,%rbp
          ││ │  ││││  │   0x00007f5238722f56:   mov    %r9,0x28(%rsp)
   0.00%  ││ │  ││││  │   0x00007f5238722f5b:   mov    %ebx,%ecx                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
          ││ │  ││││  │   0x00007f5238722f5d:   mov    %r11,%rsi
   0.00%  ││ │  ││││  │   0x00007f5238722f60:   mov    (%rsp),%rdx
   0.00%  ││ │  ││││  │   0x00007f5238722f64:   mov    %r13d,%r8d
   0.00%  ││ │  ││││  │   0x00007f5238722f67:   call   0x00007f52380c4380           ; ImmutableOopMap {rbp=Oop [0]=Oop [40]=Oop [16]=Derived_oop_[40] }
          ││ │  ││││  │                                                             ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          ││ │  ││││  │                                                             ;   {optimized virtual_call}
   0.00%  ││ │  ││││  │   0x00007f5238722f6c:   nopl   0x3dc(%rax,%rax,1)           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
          ││ │  ││││  │                                                             ;   {other}
   0.00%  ││ │  ││││  │   0x00007f5238722f74:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop [0]=Oop [40]=Oop [16]=Derived_oop_[40] }
          ││ │  ││││  │                                                             ;*ifge {reexecute=1 rethrow=0 return_oop=0}
          ││ │  ││││  │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%  ││ │  ││││  │   0x00007f5238722f7b:   test   %eax,(%r10)                  ;   {poll}
   0.00%  ││ │  ││││  │   0x00007f5238722f7e:   xchg   %ax,%ax
   0.00%  ││ │  ││││  │   0x00007f5238722f80:   test   %eax,%eax
          ╰│ │  ││││  │   0x00007f5238722f82:   jge    0x00007f5238722ef0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
           │ │  ││││  │   0x00007f5238722f88:   mov    (%rsp),%r11
   0.00%   │ │  ││││  │   0x00007f5238722f8c:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │  ││││  │   0x00007f5238722f93:   mov    0x30(%rbp),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │  ││││  │   0x00007f5238722f97:   test   %r10d,%r10d
           │ │  ││││  │   0x00007f5238722f9a:   nopw   0x0(%rax,%rax,1)
   0.00%   │ │  ││││  │   0x00007f5238722fa0:   jl     0x00007f52387236e0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │  ││││  │   0x00007f5238722fa6:   mov    %r11,0x30(%rsp)
           │ │  ││││  │   0x00007f5238722fab:   mov    %rbp,(%rsp)
           │ │  ││││  │   0x00007f5238722faf:   mov    0xd8(%rbp),%rcx              ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.05%   │ │  ││││  │   0x00007f5238722fb6:   mov    %rcx,%r10
   0.00%   │ │  ││││  │   0x00007f5238722fb9:   movabs $0xffff000000000000,%r11
           │ │  ││││  │   0x00007f5238722fc3:   add    %r11,%r10
   0.00%   │ │  ││││  │   0x00007f5238722fc6:   movabs $0xffffffff00000000,%r11
   0.00%   │ │  ││││  │   0x00007f5238722fd0:   and    %r11,%r10
   0.00%   │ │  ││││  │   0x00007f5238722fd3:   add    $0x10000,%r8d
           │ │  ││││  │   0x00007f5238722fda:   mov    %ecx,%r11d
           │ │  ││││  │   0x00007f5238722fdd:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │  ││││  │   0x00007f5238722fe4:   movslq %r8d,%r9                     ;*i2l {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │  ││││  │   0x00007f5238722fe7:   or     %r9,%r10                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │  ││││  │   0x00007f5238722fea:   or     $0x80000000,%r8d
           │ │  ││││  │   0x00007f5238722ff1:   mov    0x30(%rsp),%rbx
           │ │  ││││  │   0x00007f5238722ff6:   mov    %r8d,0xa8(%rbx)
   0.00%   │ │  ││││  │   0x00007f5238722ffd:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.13%   │ │  ││││  │   0x00007f5238723003:   mov    %r11d,0xc(%rbx)
           │ │  ││││  │   0x00007f5238723007:   mov    %rbp,%r11
           │ │  ││││  │   0x00007f523872300a:   mov    %rcx,%rax
   0.00%   │ │  ││││  │   0x00007f523872300d:   lock cmpxchg %r10,0xd8(%r11)
   0.12%   │ │  ││││  │   0x00007f5238723016:   mov    %rax,%r8                     ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │  ││││  │   0x00007f5238723019:   cmp    %rax,%rcx
   0.00%   │ │  ││││  │   0x00007f523872301c:   nopl   0x0(%rax)
           │ │  ││││  │   0x00007f5238723020:   jne    0x00007f5238723573           ;*lload {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │  ││││  │   0x00007f5238723026:   movabs $0xffff000000000000,%r11
           │ │  ││││  │   0x00007f5238723030:   test   %r10,%r11
           │ │  ││││  │   0x00007f5238723033:   jle    0x00007f523872343d           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │  ││││  │   0x00007f5238723039:   xor    %r9d,%r9d
           │ │  ││││  │   0x00007f523872303c:   mov    (%rsp),%r11
           │ │  ││││  │   0x00007f5238723040:   mov    0x30(%rsp),%rbp              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │  ││││  │   0x00007f5238723045:   mov    0x34(%r11),%r8d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │  ││││  │   0x00007f5238723049:   mov    0xc(%r12,%r8,8),%ecx         ; implicit exception: dispatches to 0x00007f5238723828
           │ │  ││││  │   0x00007f523872304e:   mov    0xa8(%rbp),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           │ │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │  ││││  │   0x00007f5238723055:   test   %r8d,%r8d
           ╰ │  ││││  │   0x00007f5238723058:   jge    0x00007f5238722eda           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │  ││││  │   0x00007f523872305e:   movzwl %cx,%r10d
   0.00%     │  ││││  │   0x00007f5238723062:   shl    %r10d
             │  ││││  │   0x00007f5238723065:   or     $0xf,%r10d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │  ││││  │   0x00007f5238723069:   mov    %r10d,%ecx
             │  ││││  │   0x00007f523872306c:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │  ││││  │   0x00007f523872306e:   test   %ecx,%ecx
            ╭│  ││││  │   0x00007f5238723070:   jle    0x00007f5238723140           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││  ││││  │   0x00007f5238723076:   add    $0xfffffffe,%r10d
            ││  ││││  │   0x00007f523872307a:   mov    %r11,%r8                     ;   {no_reloc}
   0.00%    ││  ││││  │   0x00007f523872307d:   mov    %r9d,%ebx                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││  ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││↗ ││││  │   0x00007f5238723080:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.24%    │││ ││││  │   0x00007f5238723082:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r8=Oop rbp=Oop [40]=Oop [16]=Derived_oop_[40] }
            │││ ││││  │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │││ ││││  │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │││ ││││  │   0x00007f5238723089:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │││ ││││  │                                                             ;   {poll}
            │││ ││││  │   0x00007f523872308c:   mov    0xa8(%rbp),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │││ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │││ ││││  │   0x00007f5238723093:   test   %r9d,%r9d
            │╰│ ││││  │   0x00007f5238723096:   jge    0x00007f5238722ed7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │ ││││  │   0x00007f523872309c:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │ │ ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │ ││││  │   0x00007f523872309e:   xchg   %ax,%ax
            │ │ ││││  │   0x00007f52387230a0:   cmp    %r10d,%ecx
            │ ╰ ││││  │   0x00007f52387230a3:   jg     0x00007f5238723080           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │   ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │   ││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │   ││││  │   0x00007f52387230a5:   cmp    $0x3,%ecx
            │  ╭││││  │   0x00007f52387230a8:   jle    0x00007f5238723112
   0.00%    │  │││││  │   0x00007f52387230ae:   xchg   %ax,%ax                      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │  │││││  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │  │││││  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │││││↗ │   0x00007f52387230b0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.69%    │  ││││││ │   0x00007f52387230b2:   mov    0xa8(%rbp),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  ││││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  ││││││ │   0x00007f52387230b9:   test   %r11d,%r11d
   0.00%    │  ││││││ │   0x00007f52387230bc:   nopl   0x0(%rax)
            │  │╰││││ │   0x00007f52387230c0:   jge    0x00007f5238722ed7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%    │  │ ││││ │   0x00007f52387230c6:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.55%    │  │ ││││ │   0x00007f52387230c8:   mov    0xa8(%rbp),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  │ ││││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  │ ││││ │   0x00007f52387230cf:   test   %r10d,%r10d
            │  │ ╰│││ │   0x00007f52387230d2:   jge    0x00007f5238722ed7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │  │││ │   0x00007f52387230d8:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.59%    │  │  │││ │   0x00007f52387230da:   mov    0xa8(%rbp),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  │  │││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  │  │││ │   0x00007f52387230e1:   test   %r11d,%r11d
            │  │  ╰││ │   0x00007f52387230e4:   jge    0x00007f5238722ed7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │   ││ │   0x00007f52387230ea:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   2.62%    │  │   ││ │   0x00007f52387230ec:   mov    0x458(%r15),%r11
   0.00%    │  │   ││ │   0x00007f52387230f3:   mov    0xa8(%rbp),%r10d
   0.00%    │  │   ││ │   0x00007f52387230fa:   lea    -0x3(%rcx),%r9d              ; ImmutableOopMap {r8=Oop rbp=Oop [40]=Oop [16]=Derived_oop_[40] }
            │  │   ││ │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │  │   ││ │                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │   ││ │   0x00007f52387230fe:   test   %eax,(%r11)                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  │   ││ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │   ││ │                                                             ;   {poll}
   0.01%    │  │   ││ │   0x00007f5238723101:   test   %r10d,%r10d
            │  │   ╰│ │   0x00007f5238723104:   jge    0x00007f5238722ed7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │    │ │   0x00007f523872310a:   add    $0xfffffffc,%ecx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │  │    │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │    │ │   0x00007f523872310d:   cmp    $0x3,%ecx
            │  │    ╰ │   0x00007f5238723110:   jg     0x00007f52387230b0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │  │      │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │  │      │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  ↘      │   0x00007f5238723112:   test   %ecx,%ecx
            │        ╭│   0x00007f5238723114:   jle    0x00007f523872313a
   0.00%    │        ││   0x00007f5238723116:   xchg   %ax,%ax                      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │        ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │        ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │        ││↗  0x00007f5238723118:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.25%    │        │││  0x00007f523872311a:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop rbp=Oop [40]=Oop [16]=Derived_oop_[40] }
            │        │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │        │││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │        │││  0x00007f5238723121:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │        │││                                                            ;   {poll}
            │        │││  0x00007f5238723124:   mov    0xa8(%rbp),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │        │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │        │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │        │││  0x00007f523872312b:   test   %r10d,%r10d
            │        │╰│  0x00007f523872312e:   jge    0x00007f5238722ed7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │        │ │  0x00007f5238723134:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │        │ │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │        │ │  0x00007f5238723136:   test   %ecx,%ecx
            │        │ ╰  0x00007f5238723138:   jg     0x00007f5238723118           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │        │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │        │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │        ↘    0x00007f523872313a:   mov    %r8,%r11
            │             0x00007f523872313d:   mov    %ebx,%r9d                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                       ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
            │                                                                       ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ↘             0x00007f5238723140:   test   %r9d,%r9d
                          0x00007f5238723143:   jne    0x00007f5238723487           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          0x00007f5238723149:   xor    %ebx,%ebx
                          0x00007f523872314b:   xor    %eax,%eax                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                          0x00007f523872314d:   cmpb   $0x0,0x40(%r15)
   0.00%                  0x00007f5238723152:   jne    0x00007f5238723637
                          0x00007f5238723158:   mov    0x10(%rsp),%rcx
   0.00%                  0x00007f523872315d:   mov    %r11,%r8
                          0x00007f5238723160:   shr    $0x3,%r8
   0.00%                  0x00007f5238723164:   mov    %r8d,(%rcx)
   0.00%                  0x00007f5238723167:   mov    %rcx,%r10
                          0x00007f523872316a:   mov    %r11,%r8
                          0x00007f523872316d:   xor    %r10,%r8
   0.00%                  0x00007f5238723170:   shr    $0x15,%r8
   0.00%                  0x00007f5238723174:   test   %r8,%r8
                          0x00007f5238723177:   je     0x00007f5238723193
                          0x00007f5238723179:   shr    $0x9,%r10
                          0x00007f523872317d:   movabs $0x7f5249ecf000,%rdi
                          0x00007f5238723187:   add    %r10,%rdi
                          0x00007f523872318a:   cmpb   $0x2,(%rdi)
                          0x00007f523872318d:   jne    0x00007f5238722e76           ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          0x00007f5238723193:   mov    0x30(%r11),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  11.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  12.90%              kernel  [unknown] 
  11.36%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1180 
   6.00%              kernel  [unknown] 
   3.16%           libjvm.so  update_register_map1 
   1.79%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1235 
   1.51%           libjvm.so  SpinPause 
   1.46%           libjvm.so  vframeStream::vframeStream 
   1.37%              [vdso]  __vdso_clock_gettime 
   1.30%              kernel  [unknown] 
   1.14%              kernel  [unknown] 
   1.13%           libjvm.so  OopMapStream::find_next 
   1.12%           libjvm.so  ObjectMonitor::TrySpin 
   1.07%              kernel  [unknown] 
   0.92%           libjvm.so  OopMapStream::find_next 
   0.79%              kernel  [unknown] 
   0.75%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.73%         c2, level 4  java.util.concurrent.FutureTask::run, version 3, compile id 1261 
   0.73%           libjvm.so  SafeFetch32_impl 
   0.70%           libjvm.so  OopMapStream::find_next 
   0.65%           libjvm.so  Parker::park 
  49.41%  <...other 1288 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  39.46%              kernel  [unknown] 
  11.81%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1180 
   3.17%           libjvm.so  update_register_map1 
   2.76%           libjvm.so  OopMapStream::find_next 
   2.76%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 6, compile id 1235 
   2.65%         c2, level 4  java.util.concurrent.FutureTask::run, version 3, compile id 1261 
   2.06%           libjvm.so  vframeStream::vframeStream 
   1.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f51c002b798::accept, version 2, compile id 902 
   1.76%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::schedule, version 2, compile id 999 
   1.59%         c2, level 4  java.util.concurrent.ThreadPoolExecutor$Worker::run, version 2, compile id 1021 
   1.51%           libjvm.so  SpinPause 
   1.41%           libjvm.so  ObjectMonitor::TrySpin 
   1.37%              [vdso]  __vdso_clock_gettime 
   1.24%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.92%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::getTask, version 4, compile id 1221 
   0.84%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.80%         c2, level 4  java.lang.VirtualThread::run, version 2, compile id 1027 
   0.78%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1229 
   0.73%           libjvm.so  SafeFetch32_impl 
   0.71%                      <unknown> 
  19.72%  <...other 297 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  39.46%              kernel
  31.31%         c2, level 4
  21.00%           libjvm.so
   4.51%  libpthread-2.31.so
   1.37%              [vdso]
   0.87%    Unknown, level 0
   0.71%                    
   0.41%        libc-2.31.so
   0.17%          ld-2.31.so
   0.10%         c1, level 1
   0.07%        runtime stub
   0.01%          libjava.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%         c1, level 2
   0.00%    perf-1998849.map
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 38.89% complete, ETA 00:26:05
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1570.973 us/op
# Warmup Iteration   2: 1010.568 us/op
# Warmup Iteration   3: 1004.569 us/op
# Warmup Iteration   4: 1006.128 us/op
# Warmup Iteration   5: 1006.384 us/op
Iteration   1: 1014.116 us/op
Iteration   2: 1002.379 us/op
Iteration   3: 1002.537 us/op
Iteration   4: 1003.315 us/op
Iteration   5: 1005.374 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1005.544 ±(99.9%) 19.015 us/op [Average]
  (min, avg, max) = (1002.379, 1005.544, 1014.116), stdev = 4.938
  CI (99.9%): [986.530, 1024.559] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 234224 total address lines.
Perf output processed (skipped 56.115 seconds):
 Column 1: cycles (1695125 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  47.79%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  28.61%  <total for region 2>

....[Hottest Regions]...............................................................................
  47.79%              kernel  [unknown] 
  28.61%              kernel  [unknown] 
   3.70%              kernel  [unknown] 
   3.05%              kernel  [unknown] 
   2.83%              kernel  [unknown] 
   1.93%              kernel  [unknown] 
   1.82%              kernel  [unknown] 
   1.30%              kernel  [unknown] 
   0.89%              kernel  [unknown] 
   0.80%              kernel  [unknown] 
   0.37%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   4.65%  <...other 3091 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.31%              kernel  [unknown] 
   0.10%           libjvm.so  ThreadsSMRSupport::free_list 
   0.06%        libc-2.31.so  _int_free 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.05%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  malloc 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.04%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  ThreadsList::remove_thread 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.98%  <...other 598 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.31%              kernel
   0.95%           libjvm.so
   0.42%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.06%         c2, level 4
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%                    
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%         interpreter
   0.00%          libjava.so
   0.00%    perf-1998929.map
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 44.44% complete, ETA 00:23:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 811.736 us/op
# Warmup Iteration   2: 125.842 us/op
# Warmup Iteration   3: 122.558 us/op
# Warmup Iteration   4: 129.709 us/op
# Warmup Iteration   5: 124.001 us/op
Iteration   1: 127.064 us/op
Iteration   2: 124.904 us/op
Iteration   3: 123.268 us/op
Iteration   4: 126.419 us/op
Iteration   5: 124.666 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  125.264 ±(99.9%) 5.789 us/op [Average]
  (min, avg, max) = (123.268, 125.264, 127.064), stdev = 1.503
  CI (99.9%): [119.475, 131.054] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 316394 total address lines.
Perf output processed (skipped 55.979 seconds):
 Column 1: cycles (279506 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1156 

                                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                              0x00007fba4c6fd590:   mov    %rbp,%r8
                              0x00007fba4c6fd593:   mov    (%rsp),%r9
                              0x00007fba4c6fd597:   mov    0x40(%rsp),%edi
                              0x00007fba4c6fd59b:   mov    0x10(%rsp),%rdx
                              0x00007fba4c6fd5a0:   mov    0x18(%rsp),%ecx              ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.concurrent.locks.LockSupport::park@23 (line 373)
                                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                      0x00007fba4c6fd5a4:   xor    %ebp,%ebp
   0.00%                      0x00007fba4c6fd5a6:   mov    %r8,0x10(%rsp)
   0.00%                      0x00007fba4c6fd5ab:   mov    %edi,0x40(%rsp)
   0.00%                      0x00007fba4c6fd5af:   mov    %rdx,0x18(%rsp)
   0.00%                      0x00007fba4c6fd5b4:   mov    %ecx,0xc(%rsp)
   0.00%                      0x00007fba4c6fd5b8:   mov    %r12d,0xa4(%r9)
   0.00%                      0x00007fba4c6fd5bf:   mov    %r9,(%rsp)
   0.00%                      0x00007fba4c6fd5c3:   lock addl $0x0,-0x40(%rsp)          ;*putfield access {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@259 (line 1895)
                                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.39%                      0x00007fba4c6fd5c9:   mov    0xa8(%r9),%r10d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@263 (line 1896)
                                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                      0x00007fba4c6fd5d0:   test   %r10d,%r10d
                              0x00007fba4c6fd5d3:   jl     0x00007fba4c6fda49           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                              0x00007fba4c6fd5d9:   nopl   0x0(%rax)
   0.00%                      0x00007fba4c6fd5e0:   cmpb   $0x0,0x40(%r15)
                              0x00007fba4c6fd5e5:   jne    0x00007fba4c6fdc10
                              0x00007fba4c6fd5eb:   mov    0x48(%rsp),%rbx
                              0x00007fba4c6fd5f0:   mov    %r12d,(%rbx)                 ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@270 (line 1897)
                                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ╭                   0x00007fba4c6fd5f3:   jmp    0x00007fba4c6fd5fa           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │  ↗ ↗  ↗↗↗↗  ↗     0x00007fba4c6fd5f5:   mov    0x48(%rsp),%rbx              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@273 (line 1898)
          │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘  │ │  ││││  │     0x00007fba4c6fd5fa:   mov    (%rsp),%r11                  ;*invokevirtual awaitWork {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │  ││││  │     0x00007fba4c6fd5fe:   xor    %eax,%eax
             │ │  ││││  │     0x00007fba4c6fd600:   mov    %eax,0xc(%rsp)
   0.00%     │ │  ││││  │     0x00007fba4c6fd604:   mov    0x8(%rsp),%r13d
   0.00%     │ │  ││││  │     0x00007fba4c6fd609:   mov    %r11,%rbp
             │ │  ││││  │     0x00007fba4c6fd60c:   mov    %rbx,0x48(%rsp)              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%     │ │  ││││  │     0x00007fba4c6fd611:   mov    %r13d,%r11d
   0.00%     │ │  ││││  │     0x00007fba4c6fd614:   shl    $0xd,%r11d
   0.00%     │ │  ││││  │     0x00007fba4c6fd618:   xor    %r13d,%r11d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
             │ │  ││││  │     0x00007fba4c6fd61b:   mov    %r11d,%r10d
   0.00%     │ │  ││││  │     0x00007fba4c6fd61e:   shr    $0x11,%r10d
   0.00%     │ │  ││││  │     0x00007fba4c6fd622:   xor    %r11d,%r10d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%     │ │  ││││  │     0x00007fba4c6fd625:   mov    %r10d,%r11d
             │ │  ││││  │     0x00007fba4c6fd628:   shl    $0x5,%r11d
             │ │  ││││  │     0x00007fba4c6fd62c:   xor    %r10d,%r11d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
   0.00%     │ │  ││││  │     0x00007fba4c6fd62f:   mov    %r11d,0x8(%rsp)
   0.00%     │ │  ││││  │     0x00007fba4c6fd634:   mov    0x10(%rsp),%rsi
             │ │  ││││  │     0x00007fba4c6fd639:   mov    %rbp,%rdx
             │ │  ││││  │     0x00007fba4c6fd63c:   mov    0xc(%rsp),%ecx
   0.00%     │ │  ││││  │     0x00007fba4c6fd640:   mov    %r11d,%r8d
   0.00%     │ │  ││││  │     0x00007fba4c6fd643:   call   0x00007fba4c669620           ; ImmutableOopMap {rbp=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
             │ │  ││││  │                                                               ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
             │ │  ││││  │                                                               ;   {optimized virtual_call}
   0.00%     │ │  ││││  │     0x00007fba4c6fd648:   nopl   0x1000438(%rax,%rax,1)       ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
             │ │  ││││  │                                                               ;   {other}
   0.01%     │ │  ││││  │     0x00007fba4c6fd650:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
             │ │  ││││  │                                                               ;*ifge {reexecute=1 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.01%     │ │  ││││  │     0x00007fba4c6fd657:   test   %eax,(%r10)                  ;   {poll}
   0.01%     │ │  ││││  │     0x00007fba4c6fd65a:   test   %eax,%eax
   0.00%     │ │  ││││  │     0x00007fba4c6fd65c:   nopl   0x0(%rax)
             │ │  ││││  │     0x00007fba4c6fd660:   jge    0x00007fba4c6fd532           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%     │ │  ││││  │     0x00007fba4c6fd666:   mov    %rbp,%r11
   0.00%     │ │  ││││  │     0x00007fba4c6fd669:   mov    0xa8(%rbp),%r8d              ; implicit exception: dispatches to 0x00007fba4c6fddd8
             │ │  ││││  │                                                               ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │     0x00007fba4c6fd670:   mov    0x10(%rsp),%r9
   0.00%     │ │  ││││  │     0x00007fba4c6fd675:   mov    0x30(%r9),%r10d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     │ │  ││││  │     0x00007fba4c6fd679:   test   %r10d,%r10d
   0.00%     │ │  ││││  │     0x00007fba4c6fd67c:   nopl   0x0(%rax)
   0.00%     │ │  ││││  │     0x00007fba4c6fd680:   jl     0x00007fba4c6fdca5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │     0x00007fba4c6fd686:   mov    %rbp,(%rsp)
   0.00%     │ │  ││││  │     0x00007fba4c6fd68a:   mov    0xd8(%r9),%rcx               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.08%     │ │  ││││  │     0x00007fba4c6fd691:   mov    %rcx,%r11
             │ │  ││││  │     0x00007fba4c6fd694:   movabs $0xffff000000000000,%r10
   0.00%     │ │  ││││  │     0x00007fba4c6fd69e:   add    %r10,%r11
   0.00%     │ │  ││││  │     0x00007fba4c6fd6a1:   movabs $0xffffffff00000000,%r10
             │ │  ││││  │     0x00007fba4c6fd6ab:   and    %r10,%r11
   0.00%     │ │  ││││  │     0x00007fba4c6fd6ae:   add    $0x10000,%r8d
   0.00%     │ │  ││││  │     0x00007fba4c6fd6b5:   mov    %ecx,%r10d
             │ │  ││││  │     0x00007fba4c6fd6b8:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │  ││││  │     0x00007fba4c6fd6bf:   movslq %r8d,%r9                     ;*i2l {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │     0x00007fba4c6fd6c2:   or     %r9,%r11                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │     0x00007fba4c6fd6c5:   or     $0x80000000,%r8d
             │ │  ││││  │     0x00007fba4c6fd6cc:   mov    %r8d,0xa8(%rbp)
             │ │  ││││  │     0x00007fba4c6fd6d3:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.17%     │ │  ││││  │     0x00007fba4c6fd6d9:   mov    %r10d,0xc(%rbp)
             │ │  ││││  │     0x00007fba4c6fd6dd:   mov    0x10(%rsp),%r10
             │ │  ││││  │     0x00007fba4c6fd6e2:   mov    %rcx,%rax
   0.00%     │ │  ││││  │     0x00007fba4c6fd6e5:   lock cmpxchg %r11,0xd8(%r10)
   0.20%     │ │  ││││  │     0x00007fba4c6fd6ee:   mov    %rax,%rbx                    ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │  ││││  │     0x00007fba4c6fd6f1:   cmp    %rax,%rcx
             │ │  ││││  │     0x00007fba4c6fd6f4:   jne    0x00007fba4c6fdae3           ;*lload {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │     0x00007fba4c6fd6fa:   movabs $0xffff000000000000,%r10
             │ │  ││││  │     0x00007fba4c6fd704:   test   %r11,%r10
           ╭ │ │  ││││  │     0x00007fba4c6fd707:   jg     0x00007fba4c6fd755           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │ │  ││││  │     0x00007fba4c6fd70d:   mov    0x10(%rsp),%rsi
   0.00%   │ │ │  ││││  │     0x00007fba4c6fd712:   mov    $0x1,%edx
   0.00%   │ │ │  ││││  │     0x00007fba4c6fd717:   call   0x00007fba4c64e840           ; ImmutableOopMap {[0]=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
           │ │ │  ││││  │                                                               ;*invokevirtual hasTasks {reexecute=0 rethrow=0 return_oop=0}
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │ │  ││││  │                                                               ;   {optimized virtual_call}
           │ │ │  ││││  │     0x00007fba4c6fd71c:   nopl   0x300050c(%rax,%rax,1)       ;*invokevirtual hasTasks {reexecute=0 rethrow=0 return_oop=0}
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │ │  ││││  │                                                               ;   {other}
   0.00%   │ │ │  ││││  │     0x00007fba4c6fd724:   test   %eax,%eax
           │ │ │  ││││  │     0x00007fba4c6fd726:   jne    0x00007fba4c6fdaa4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@104 (line 1872)
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │ │  ││││  │     0x00007fba4c6fd72c:   mov    (%rsp),%r11                  ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@119 (line 1872)
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ │ │  ││││  │     0x00007fba4c6fd730:   mov    0x10(%rsp),%r8
           │ │ │  ││││  │     0x00007fba4c6fd735:   mov    0x30(%r8),%r10d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@125 (line 1874)
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │ │  ││││  │     0x00007fba4c6fd739:   test   %r10d,%r10d
   0.00%   │ │ │  ││││  │     0x00007fba4c6fd73c:   nopl   0x0(%rax)
   0.00%   │ │ │  ││││  │     0x00007fba4c6fd740:   jne    0x00007fba4c6fdd2c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@128 (line 1874)
           │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ │ │  ││││  │     0x00007fba4c6fd746:   mov    $0x1,%r10d
           │ │ │  ││││  │     0x00007fba4c6fd74c:   mov    %r11,(%rsp)
   0.00%   │ │ │  ││││  │     0x00007fba4c6fd750:   mov    %r10d,%ecx
           │╭│ │  ││││  │     0x00007fba4c6fd753:   jmp    0x00007fba4c6fd760
   0.00%   ↘││ │  ││││  │     0x00007fba4c6fd755:   xor    %r10d,%r10d
            ││ │  ││││  │     0x00007fba4c6fd758:   mov    0x10(%rsp),%r8
   0.00%    ││ │  ││││  │     0x00007fba4c6fd75d:   mov    %r10d,%ecx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            ││ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
            ││ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ↘│ │  ││││  │     0x00007fba4c6fd760:   mov    0x34(%r8),%r11d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │     0x00007fba4c6fd764:   mov    %r8,0x10(%rsp)
   0.00%     │ │  ││││  │     0x00007fba4c6fd769:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fba4c6fddfc
   0.00%     │ │  ││││  │     0x00007fba4c6fd76e:   mov    (%rsp),%r11
             │ │  ││││  │     0x00007fba4c6fd772:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │  ││││  │     0x00007fba4c6fd779:   test   %r11d,%r11d
   0.00%     │ │  ││││  │     0x00007fba4c6fd77c:   nopl   0x0(%rax)
   0.00%     ╰ │  ││││  │     0x00007fba4c6fd780:   jge    0x00007fba4c6fd5f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
               │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │  ││││  │     0x00007fba4c6fd786:   movzwl %r10w,%r8d
               │  ││││  │     0x00007fba4c6fd78a:   shl    %r8d
   0.00%       │  ││││  │     0x00007fba4c6fd78d:   or     $0xf,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
               │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
               │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │  ││││  │     0x00007fba4c6fd791:   mov    %r8d,%r10d
               │  ││││  │     0x00007fba4c6fd794:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │  ││││  │     0x00007fba4c6fd797:   test   %r10d,%r10d
   0.00%       │  ││││  │     0x00007fba4c6fd79a:   nopw   0x0(%rax,%rax,1)
   0.00%      ╭│  ││││  │     0x00007fba4c6fd7a0:   jle    0x00007fba4c6fd885           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││  ││││  │     0x00007fba4c6fd7a6:   add    $0xfffffffe,%r8d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││↗ ││││  │     0x00007fba4c6fd7aa:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.39%      │││ ││││  │     0x00007fba4c6fd7ac:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
              │││ ││││  │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │││ ││││  │                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │││ ││││  │     0x00007fba4c6fd7b3:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
              │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │││ ││││  │                                                               ;   {poll}
              │││ ││││  │     0x00007fba4c6fd7b6:   mov    (%rsp),%r11
              │││ ││││  │     0x00007fba4c6fd7ba:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │││ ││││  │     0x00007fba4c6fd7c1:   test   %r11d,%r11d
              │╰│ ││││  │     0x00007fba4c6fd7c4:   jge    0x00007fba4c6fd5f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │ │ ││││  │     0x00007fba4c6fd7ca:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │ │ ││││  │     0x00007fba4c6fd7cd:   cmp    %r8d,%r10d
              │ ╰ ││││  │     0x00007fba4c6fd7d0:   jg     0x00007fba4c6fd7aa           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │   ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │   ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │   ││││  │     0x00007fba4c6fd7d2:   cmp    $0x3,%r10d
              │  ╭││││  │     0x00007fba4c6fd7d6:   jle    0x00007fba4c6fd850
   0.00%      │  │││││  │     0x00007fba4c6fd7dc:   nopl   0x0(%rax)                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  │││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │  │││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │  │││││↗ │     0x00007fba4c6fd7e0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
              │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.99%      │  ││││││ │     0x00007fba4c6fd7e2:   mov    (%rsp),%r11
              │  ││││││ │     0x00007fba4c6fd7e6:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      │  ││││││ │     0x00007fba4c6fd7ed:   test   %r11d,%r11d
              │  │╰││││ │     0x00007fba4c6fd7f0:   jge    0x00007fba4c6fd5f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      │  │ ││││ │     0x00007fba4c6fd7f6:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
              │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.06%      │  │ ││││ │     0x00007fba4c6fd7f8:   mov    (%rsp),%r11
              │  │ ││││ │     0x00007fba4c6fd7fc:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      │  │ ││││ │     0x00007fba4c6fd803:   test   %r8d,%r8d
              │  │ ╰│││ │     0x00007fba4c6fd806:   jge    0x00007fba4c6fd5f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      │  │  │││ │     0x00007fba4c6fd80c:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
              │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.06%      │  │  │││ │     0x00007fba4c6fd80e:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      │  │  │││ │     0x00007fba4c6fd815:   test   %r11d,%r11d
              │  │  ╰││ │     0x00007fba4c6fd818:   jge    0x00007fba4c6fd5f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │  │   ││ │     0x00007fba4c6fd81e:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   4.04%      │  │   ││ │     0x00007fba4c6fd820:   mov    0x458(%r15),%r9
              │  │   ││ │     0x00007fba4c6fd827:   mov    (%rsp),%r11
              │  │   ││ │     0x00007fba4c6fd82b:   mov    0xa8(%r11),%r8d
   0.01%      │  │   ││ │     0x00007fba4c6fd832:   lea    -0x3(%r10),%r11d             ; ImmutableOopMap {[0]=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
              │  │   ││ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │  │   ││ │                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%      │  │   ││ │     0x00007fba4c6fd836:   test   %eax,(%r9)                   ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │   ││ │                                                               ;   {poll}
              │  │   ││ │     0x00007fba4c6fd839:   test   %r8d,%r8d
   0.01%      │  │   ││ │     0x00007fba4c6fd83c:   nopl   0x0(%rax)
              │  │   ╰│ │     0x00007fba4c6fd840:   jge    0x00007fba4c6fd5f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%      │  │    │ │     0x00007fba4c6fd846:   add    $0xfffffffc,%r10d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  │    │ │     0x00007fba4c6fd84a:   cmp    $0x3,%r10d
              │  │    ╰ │     0x00007fba4c6fd84e:   jg     0x00007fba4c6fd7e0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │  │      │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │  │      │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │  ↘      │     0x00007fba4c6fd850:   test   %r10d,%r10d
              │        ╭│     0x00007fba4c6fd853:   jle    0x00007fba4c6fd885
              │        ││     0x00007fba4c6fd855:   data16 xchg %ax,%ax                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │        ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │        ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │        ││↗    0x00007fba4c6fd858:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.37%      │        │││    0x00007fba4c6fd85a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
              │        │││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
              │        │││                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │││    0x00007fba4c6fd861:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
              │        │││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
              │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │││                                                              ;   {poll}
              │        │││    0x00007fba4c6fd864:   mov    (%rsp),%r11
              │        │││    0x00007fba4c6fd868:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              │        │││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │        │││    0x00007fba4c6fd86f:   test   %r8d,%r8d
              │        │╰│    0x00007fba4c6fd872:   jge    0x00007fba4c6fd5f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │ │    0x00007fba4c6fd878:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │        │ │    0x00007fba4c6fd87b:   nopl   0x0(%rax,%rax,1)
              │        │ │    0x00007fba4c6fd880:   test   %r10d,%r10d
              │        │ ╰    0x00007fba4c6fd883:   jg     0x00007fba4c6fd858           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              │        │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
              │        │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ↘        ↘      0x00007fba4c6fd885:   test   %ecx,%ecx
                          ╭   0x00007fba4c6fd887:   je     0x00007fba4c6fd8ab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                          │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │   0x00007fba4c6fd889:   mov    %ecx,%ebx
                          │   0x00007fba4c6fd88b:   movabs $0x7fba629d2b10,%r10
                          │   0x00007fba4c6fd895:   call   *%r10
                          │   0x00007fba4c6fd898:   nopl   0x0(%rax,%rax,1)             ;*invokestatic currentTimeMillis {reexecute=0 rethrow=0 return_oop=0}
                          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@207 (line 1883)
                          │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │                                                             ;   {other}
                          │   0x00007fba4c6fd8a0:   mov    0x10(%rsp),%r10
   0.00%                  │   0x00007fba4c6fd8a5:   add    0x20(%r10),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                          │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@210 (line 1883)
                          │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                  │╭  0x00007fba4c6fd8a9:   jmp    0x00007fba4c6fd8af
                          ↘│  0x00007fba4c6fd8ab:   xor    %ebx,%ebx
                           │  0x00007fba4c6fd8ad:   xor    %eax,%eax                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                           │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                           ↘  0x00007fba4c6fd8af:   cmpb   $0x0,0x40(%r15)
   0.00%                      0x00007fba4c6fd8b4:   jne    0x00007fba4c6fdbc8
                              0x00007fba4c6fd8ba:   mov    %ebx,0xc(%rsp)
   0.00%                      0x00007fba4c6fd8be:   mov    %rax,0x20(%rsp)
   0.00%                      0x00007fba4c6fd8c3:   mov    0x48(%rsp),%r10
   0.00%                      0x00007fba4c6fd8c8:   mov    0x44(%rsp),%r11d
                              0x00007fba4c6fd8cd:   mov    %r11d,(%r10)
   0.00%                      0x00007fba4c6fd8d0:   mov    0x10(%rsp),%r10
   0.00%                      0x00007fba4c6fd8d5:   mov    0x48(%rsp),%r11
                              0x00007fba4c6fd8da:   xor    %r11,%r10
   0.00%                      0x00007fba4c6fd8dd:   shr    $0x15,%r10
   0.00%                      0x00007fba4c6fd8e1:   test   %r10,%r10
                              0x00007fba4c6fd8e4:   je     0x00007fba4c6fd906
                              0x00007fba4c6fd8e6:   shr    $0x9,%r11
                              0x00007fba4c6fd8ea:   movabs $0x7fba40b3f000,%rdi
                              0x00007fba4c6fd8f4:   add    %r11,%rdi
                              0x00007fba4c6fd8f7:   cmpb   $0x2,(%rdi)
                              0x00007fba4c6fd8fa:   nopw   0x0(%rax,%rax,1)
                              0x00007fba4c6fd900:   jne    0x00007fba4c6fdc50           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.concurrent.ForkJoinPool::awaitWork@221 (line 1886)
                                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                      0x00007fba4c6fd906:   mov    0x10(%rsp),%r8
....................................................................................................
  18.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  14.04%  <total for region 2>

....[Hottest Regions]...............................................................................
  18.02%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1156 
  14.04%              kernel  [unknown] 
   6.49%              kernel  [unknown] 
   2.52%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 14, compile id 1270 
   1.47%              kernel  [unknown] 
   1.27%              kernel  [unknown] 
   1.27%           libjvm.so  update_register_map1 
   1.18%              kernel  [unknown] 
   0.89%              [vdso]  __vdso_clock_gettime 
   0.88%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1220 
   0.88%              kernel  [unknown] 
   0.79%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007fb9d402b9c8::run, version 2, compile id 1250 
   0.77%              kernel  [unknown] 
   0.67%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.67%              kernel  [unknown] 
   0.65%           libjvm.so  vframeStream::vframeStream 
   0.62%           libjvm.so  Parker::park 
   0.61%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.59%  libpthread-2.31.so  __pthread_mutex_lock 
  45.13%  <...other 1802 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  44.27%              kernel  [unknown] 
  18.27%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1156 
   3.58%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 14, compile id 1270 
   1.92%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::execute, version 2, compile id 980 
   1.27%           libjvm.so  update_register_map1 
   1.19%         c2, level 4  java.lang.VirtualThread::unpark, version 4, compile id 1059 
   1.13%           libjvm.so  OopMapStream::find_next 
   1.11%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.05%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1220 
   0.99%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.91%           libjvm.so  vframeStream::vframeStream 
   0.89%              [vdso]  __vdso_clock_gettime 
   0.81%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007fb9d402b9c8::run, version 2, compile id 1250 
   0.75%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::getTask, version 5, compile id 977 
   0.73%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::delayedExecute, version 2, compile id 1019 
   0.71%           libjvm.so  Parker::park 
   0.69%           libjvm.so  Unsafe_Park 
   0.59%  libpthread-2.31.so  __pthread_mutex_lock 
   0.57%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.55%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
  18.01%  <...other 555 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  44.27%              kernel
  35.90%         c2, level 4
  11.32%           libjvm.so
   4.89%  libpthread-2.31.so
   1.12%        libc-2.31.so
   0.92%    Unknown, level 0
   0.89%              [vdso]
   0.33%                    
   0.15%          ld-2.31.so
   0.12%        runtime stub
   0.05%          libjava.so
   0.01%         c1, level 3
   0.01%    perf-2573933.map
   0.01%         interpreter
   0.01%      hsdis-amd64.so
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 50.00% complete, ETA 00:21:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1619.910 us/op
# Warmup Iteration   2: 1040.493 us/op
# Warmup Iteration   3: 1015.424 us/op
# Warmup Iteration   4: 1016.553 us/op
# Warmup Iteration   5: 1037.420 us/op
Iteration   1: 1014.691 us/op
Iteration   2: 1012.840 us/op
Iteration   3: 1011.998 us/op
Iteration   4: 1013.108 us/op
Iteration   5: 1021.322 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1014.792 ±(99.9%) 14.549 us/op [Average]
  (min, avg, max) = (1011.998, 1014.792, 1021.322), stdev = 3.778
  CI (99.9%): [1000.243, 1029.341] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 242917 total address lines.
Perf output processed (skipped 56.356 seconds):
 Column 1: cycles (1706139 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  46.93%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.02%  <total for region 2>

....[Hottest Regions]...............................................................................
  46.93%              kernel  [unknown] 
  27.02%              kernel  [unknown] 
   3.78%              kernel  [unknown] 
   3.44%              kernel  [unknown] 
   2.98%              kernel  [unknown] 
   1.90%              kernel  [unknown] 
   1.89%              kernel  [unknown] 
   1.52%              kernel  [unknown] 
   1.19%              kernel  [unknown] 
   0.75%              kernel  [unknown] 
   0.56%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.36%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   5.43%  <...other 3110 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.19%              kernel  [unknown] 
   0.10%           libjvm.so  ThreadsSMRSupport::free_list 
   0.08%        libc-2.31.so  _int_free 
   0.06%        libc-2.31.so  _int_malloc 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.04%        libc-2.31.so  malloc 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.02%                      <unknown> 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%        libc-2.31.so  __malloc_arena_thread_freeres 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   1.06%  <...other 614 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.19%              kernel
   0.97%           libjvm.so
   0.47%        libc-2.31.so
   0.20%  libpthread-2.31.so
   0.08%         c2, level 4
   0.02%                    
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%         interpreter
   0.00%    perf-2574007.map
   0.00%         c1, level 3
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 55.56% complete, ETA 00:18:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 983.566 us/op
# Warmup Iteration   2: 45.116 us/op
# Warmup Iteration   3: 44.679 us/op
# Warmup Iteration   4: 43.088 us/op
# Warmup Iteration   5: 44.641 us/op
Iteration   1: 43.476 us/op
Iteration   2: 43.806 us/op
Iteration   3: 43.712 us/op
Iteration   4: 43.697 us/op
Iteration   5: 43.699 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  43.678 ±(99.9%) 0.469 us/op [Average]
  (min, avg, max) = (43.476, 43.678, 43.806), stdev = 0.122
  CI (99.9%): [43.209, 44.147] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 317489 total address lines.
Perf output processed (skipped 56.160 seconds):
 Column 1: cycles (734878 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1094 

                                                                                 ; - java.util.concurrent.locks.LockSupport::park@9 (line 369)
                                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                       0x00007f5e746eee04:   movabs $0x7f5df7000000,%r8
                       0x00007f5e746eee0e:   add    %rcx,%r8
                       0x00007f5e746eee11:   mov    0x40(%r8),%r9
          ╭            0x00007f5e746eee15:   jmp    0x00007f5e746eee41
          │  ↗         0x00007f5e746eee17:   mov    %rdi,%r11
          │  │         0x00007f5e746eee1a:   jmp    0x00007f5e746ef1f8
          │  │         0x00007f5e746eee1f:   nop
   0.00%  │↗ │         0x00007f5e746eee20:   mov    0x14(%rsp),%r13d
   0.00%  ││ │         0x00007f5e746eee25:   mov    %eax,%ebx
   0.00%  ││ │         0x00007f5e746eee27:   mov    %rbp,%r10
   0.00%  ││ │         0x00007f5e746eee2a:   mov    (%rsp),%r11
   0.00%  ││ │         0x00007f5e746eee2e:   mov    0x8(%rsp),%rsi
   0.00%  ││ │         0x00007f5e746eee33:   mov    0x10(%rsp),%ecx
   0.00%  ││ │         0x00007f5e746eee37:   mov    0x18(%rsp),%r9
   0.00%  ││ │         0x00007f5e746eee3c:   mov    0x28(%rsp),%r14              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%  ↘│ │         0x00007f5e746eee41:   mov    %r13d,%r8d
   0.00%   │ │         0x00007f5e746eee44:   shl    $0xd,%r8d
   0.00%   │ │         0x00007f5e746eee48:   xor    %r13d,%r8d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
   0.00%   │ │         0x00007f5e746eee4b:   mov    %r8d,%edx
           │ │         0x00007f5e746eee4e:   shr    $0x11,%edx
   0.00%   │ │         0x00007f5e746eee51:   xor    %r8d,%edx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%   │ │         0x00007f5e746eee54:   mov    %edx,%r8d
   0.00%   │ │         0x00007f5e746eee57:   shl    $0x5,%r8d
   0.00%   │ │         0x00007f5e746eee5b:   xor    %edx,%r8d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
   0.00%   │ │         0x00007f5e746eee5e:   xchg   %ax,%ax
   0.00%   │ │         0x00007f5e746eee60:   test   %r10,%r10
           │ │         0x00007f5e746eee63:   je     0x00007f5e746ef647           ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   │ │         0x00007f5e746eee69:   mov    %r8d,0x14(%rsp)
   0.00%   │ │         0x00007f5e746eee6e:   mov    %r9,0x18(%rsp)
   0.00%   │ │         0x00007f5e746eee73:   mov    %ecx,0x10(%rsp)
   0.00%   │ │         0x00007f5e746eee77:   mov    %rsi,0x8(%rsp)
   0.00%   │ │         0x00007f5e746eee7c:   mov    %r11,(%rsp)
   0.00%   │ │         0x00007f5e746eee80:   mov    %r10,%rbp
   0.00%   │ │         0x00007f5e746eee83:   mov    %r14,0x28(%rsp)
   0.00%   │ │         0x00007f5e746eee88:   mov    %ebx,%ecx                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%   │ │         0x00007f5e746eee8a:   mov    %r10,%rsi
   0.00%   │ │         0x00007f5e746eee8d:   mov    %r11,%rdx
   0.00%   │ │         0x00007f5e746eee90:   data16 xchg %ax,%ax
   0.00%   │ │         0x00007f5e746eee93:   call   0x00007f5e740c4380           ; ImmutableOopMap {rbp=Oop [0]=Oop [40]=Oop [8]=Derived_oop_[40] }
           │ │                                                                   ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           │ │                                                                   ;   {optimized virtual_call}
   0.02%   │ │         0x00007f5e746eee98:   nopl   0x388(%rax,%rax,1)           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
           │ │                                                                   ;   {other}
   0.00%   │ │         0x00007f5e746eeea0:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop [0]=Oop [40]=Oop [8]=Derived_oop_[40] }
           │ │                                                                   ;*ifge {reexecute=1 rethrow=0 return_oop=0}
           │ │                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.01%   │ │         0x00007f5e746eeea7:   test   %eax,(%r10)                  ;   {poll}
   0.01%   │ │         0x00007f5e746eeeaa:   test   %eax,%eax
           ╰ │         0x00007f5e746eeeac:   jge    0x00007f5e746eee20           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%     │         0x00007f5e746eeeb2:   mov    (%rsp),%r11
   0.00%     │         0x00007f5e746eeeb6:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     │         0x00007f5e746eeebd:   mov    %rbp,%r9
   0.00%     │         0x00007f5e746eeec0:   mov    0x30(%r9),%r10d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eeec4:   test   %r10d,%r10d
             │         0x00007f5e746eeec7:   jl     0x00007f5e746ef664           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │         0x00007f5e746eeecd:   mov    %r11,%rbp
   0.00%     │         0x00007f5e746eeed0:   mov    %r9,(%rsp)
   0.00%     │         0x00007f5e746eeed4:   mov    0xd8(%r9),%rbx               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.15%     │         0x00007f5e746eeedb:   mov    %rbx,%r11
             │         0x00007f5e746eeede:   movabs $0xffff000000000000,%r10
   0.00%     │         0x00007f5e746eeee8:   add    %r10,%r11
   0.00%     │         0x00007f5e746eeeeb:   movabs $0xffffffff00000000,%r10
             │         0x00007f5e746eeef5:   and    %r10,%r11
   0.00%     │         0x00007f5e746eeef8:   add    $0x10000,%r8d
   0.00%     │         0x00007f5e746eeeff:   mov    %ebx,%r10d
             │         0x00007f5e746eef02:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │         0x00007f5e746eef09:   movslq %r8d,%r9                     ;*i2l {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef0c:   or     %r9,%r11                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef0f:   or     $0x80000000,%r8d
             │         0x00007f5e746eef16:   mov    %r8d,0xa8(%rbp)
   0.00%     │         0x00007f5e746eef1d:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.25%     │         0x00007f5e746eef23:   mov    %r10d,0xc(%rbp)
             │         0x00007f5e746eef27:   mov    (%rsp),%r10
             │         0x00007f5e746eef2b:   mov    %rbx,%rax
   0.00%     │         0x00007f5e746eef2e:   lock cmpxchg %r11,0xd8(%r10)
   0.32%     │         0x00007f5e746eef37:   mov    %rax,%rcx                    ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef3a:   nopw   0x0(%rax,%rax,1)
   0.00%     │         0x00007f5e746eef40:   cmp    %rax,%rbx
             │         0x00007f5e746eef43:   jne    0x00007f5e746ef3d3           ;*lload {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef49:   movabs $0xffff000000000000,%r10
   0.00%     │         0x00007f5e746eef53:   test   %r11,%r10
             │         0x00007f5e746eef56:   jle    0x00007f5e746ef2f6           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │         0x00007f5e746eef5c:   xor    %ecx,%ecx
   0.00%     │         0x00007f5e746eef5e:   mov    (%rsp),%r10
   0.00%     │         0x00007f5e746eef62:   mov    %rbp,%r11                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef65:   mov    0x34(%r10),%r9d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     │         0x00007f5e746eef69:   mov    0xc(%r12,%r9,8),%ebx         ; implicit exception: dispatches to 0x00007f5e746ef7bc
   0.01%     │         0x00007f5e746eef6e:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef75:   test   %r8d,%r8d
             │         0x00007f5e746eef78:   jge    0x00007f5e746ef1fb           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef7e:   movzwl %bx,%r9d
   0.00%     │         0x00007f5e746eef82:   shl    %r9d
   0.00%     │         0x00007f5e746eef85:   or     $0xf,%r9d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef89:   mov    %r9d,%r8d
             │         0x00007f5e746eef8c:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │         0x00007f5e746eef8f:   test   %r8d,%r8d
            ╭│         0x00007f5e746eef92:   jle    0x00007f5e746ef06d           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││         0x00007f5e746eef98:   add    $0xfffffffe,%r9d
   0.00%    ││         0x00007f5e746eef9c:   mov    %r10,%rbx
            ││         0x00007f5e746eef9f:   mov    %r11,%rdi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││↗        0x00007f5e746eefa2:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.43%    │││        0x00007f5e746eefa4:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbx=Oop rdi=Oop [40]=Oop [8]=Derived_oop_[40] }
            │││                                                                  ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │││                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │││                                                                  ;   {no_reloc}
            │││        0x00007f5e746eefab:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │││                                                                  ;   {poll}
            │││        0x00007f5e746eefae:   mov    0xa8(%rdi),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │││        0x00007f5e746eefb5:   test   %r11d,%r11d
            │╰│        0x00007f5e746eefb8:   jge    0x00007f5e746eee17           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │        0x00007f5e746eefbe:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │ │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │        0x00007f5e746eefc1:   cmp    %r9d,%r8d
            │ ╰        0x00007f5e746eefc4:   jg     0x00007f5e746eefa2           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │          0x00007f5e746eefc6:   cmp    $0x3,%r8d
            │  ╭       0x00007f5e746eefca:   jle    0x00007f5e746ef037           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │  │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  │↗      0x00007f5e746eefd0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.78%    │  ││      0x00007f5e746eefd2:   mov    %rdi,%r11
            │  ││      0x00007f5e746eefd5:   mov    0xa8(%rdi),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%    │  ││      0x00007f5e746eefdc:   nopl   0x0(%rax)
            │  ││      0x00007f5e746eefe0:   test   %r10d,%r10d
            │  ││      0x00007f5e746eefe3:   jge    0x00007f5e746ef1f8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%    │  ││      0x00007f5e746eefe9:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.74%    │  ││      0x00007f5e746eefeb:   mov    0xa8(%rdi),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%    │  ││      0x00007f5e746eeff2:   test   %r10d,%r10d
            │  ││      0x00007f5e746eeff5:   jge    0x00007f5e746ef1f8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  ││      0x00007f5e746eeffb:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.75%    │  ││      0x00007f5e746eeffd:   mov    0xa8(%rdi),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%    │  ││      0x00007f5e746ef004:   test   %r10d,%r10d
            │  ││      0x00007f5e746ef007:   jge    0x00007f5e746ef1f8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  ││      0x00007f5e746ef00d:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   3.68%    │  ││      0x00007f5e746ef00f:   mov    0x458(%r15),%r9
            │  ││      0x00007f5e746ef016:   mov    0xa8(%rdi),%r10d
   0.03%    │  ││      0x00007f5e746ef01d:   lea    -0x3(%r8),%r11d              ; ImmutableOopMap {rbx=Oop rdi=Oop [40]=Oop [8]=Derived_oop_[40] }
            │  ││                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │  ││                                                                ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  ││      0x00007f5e746ef021:   test   %eax,(%r9)                   ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  ││                                                                ;   {poll}
   0.02%    │  ││      0x00007f5e746ef024:   test   %r10d,%r10d
            │  ││      0x00007f5e746ef027:   jge    0x00007f5e746ef1f5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  ││      0x00007f5e746ef02d:   add    $0xfffffffc,%r8d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │  ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  ││      0x00007f5e746ef031:   cmp    $0x3,%r8d
            │  │╰      0x00007f5e746ef035:   jg     0x00007f5e746eefd0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │  │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │  │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  ↘       0x00007f5e746ef037:   test   %r8d,%r8d
            │    ╭     0x00007f5e746ef03a:   jle    0x00007f5e746ef067           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │    │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    │↗    0x00007f5e746ef03c:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.29%    │    ││    0x00007f5e746ef03e:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbx=Oop rdi=Oop [40]=Oop [8]=Derived_oop_[40] }
            │    ││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │    ││                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │    ││    0x00007f5e746ef045:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │    ││                                                              ;   {poll}
            │    ││    0x00007f5e746ef048:   mov    %rdi,%r11
            │    ││    0x00007f5e746ef04b:   mov    0xa8(%rdi),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    ││    0x00007f5e746ef052:   test   %r9d,%r9d
            │    ││    0x00007f5e746ef055:   jge    0x00007f5e746ef1f8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │    ││    0x00007f5e746ef05b:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │    ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │    ││    0x00007f5e746ef05e:   xchg   %ax,%ax
            │    ││    0x00007f5e746ef060:   test   %r8d,%r8d
            │    │╰    0x00007f5e746ef063:   jg     0x00007f5e746ef03c           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │    │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │    │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │    │ ╭   0x00007f5e746ef065:   jmp    0x00007f5e746ef06a
            │    ↘ │   0x00007f5e746ef067:   mov    %rdi,%r11
            │      ↘   0x00007f5e746ef06a:   mov    %rbx,%r10                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
            │                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ↘          0x00007f5e746ef06d:   test   %ecx,%ecx
                       0x00007f5e746ef06f:   jne    0x00007f5e746ef390           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                       0x00007f5e746ef075:   xor    %ebx,%ebx
   0.00%               0x00007f5e746ef077:   xor    %eax,%eax                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%               0x00007f5e746ef079:   nopl   0x0(%rax)
                       0x00007f5e746ef080:   cmpb   $0x0,0x40(%r15)
   0.00%               0x00007f5e746ef085:   jne    0x00007f5e746ef532
   0.00%               0x00007f5e746ef08b:   mov    %r11,0x20(%rsp)
   0.00%               0x00007f5e746ef090:   mov    %ebx,0x30(%rsp)
                       0x00007f5e746ef094:   mov    %rax,0x48(%rsp)
                       0x00007f5e746ef099:   mov    %r10,%r8
   0.00%               0x00007f5e746ef09c:   shr    $0x3,%r8
   0.00%               0x00007f5e746ef0a0:   mov    %r10,(%rsp)
                       0x00007f5e746ef0a4:   mov    0x8(%rsp),%r10
                       0x00007f5e746ef0a9:   mov    %r8d,(%r10)
   0.00%               0x00007f5e746ef0ac:   mov    (%rsp),%r11
   0.00%               0x00007f5e746ef0b0:   xor    %r10,%r11
   0.00%               0x00007f5e746ef0b3:   shr    $0x15,%r11
   0.00%               0x00007f5e746ef0b7:   test   %r11,%r11
                    ╭  0x00007f5e746ef0ba:   je     0x00007f5e746ef0d6
                    │  0x00007f5e746ef0bc:   shr    $0x9,%r10
                    │  0x00007f5e746ef0c0:   movabs $0x7f5e6833f000,%rdi
                    │  0x00007f5e746ef0ca:   add    %r10,%rdi
                    │  0x00007f5e746ef0cd:   cmpb   $0x2,(%rdi)
                    │  0x00007f5e746ef0d0:   jne    0x00007f5e746ef5d5           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                    │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@221 (line 1886)
                    │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            ↘  0x00007f5e746ef0d6:   mov    (%rsp),%r10
                       0x00007f5e746ef0da:   mov    0x30(%r10),%r11d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@222 (line 1886)
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%               0x00007f5e746ef0de:   xchg   %ax,%ax
                       0x00007f5e746ef0e0:   test   %r11d,%r11d
                       0x00007f5e746ef0e3:   jl     0x00007f5e746ef6f2
   0.00%               0x00007f5e746ef0e9:   mov    0x20(%rsp),%r11
                       0x00007f5e746ef0ee:   movl   $0xffffffff,0xa4(%r11)
   0.00%               0x00007f5e746ef0f9:   lock addl $0x0,-0x40(%rsp)          ;*putfield access {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@232 (line 1888)
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.14%               0x00007f5e746ef0ff:   mov    0xa8(%r11),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@236 (line 1889)
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%               0x00007f5e746ef106:   test   %r9d,%r9d
                       0x00007f5e746ef109:   jge    0x00007f5e746ef4d5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@239 (line 1889)
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                       0x00007f5e746ef10f:   mov    0x30(%rsp),%r8d
   0.00%               0x00007f5e746ef114:   test   %r8d,%r8d
                       0x00007f5e746ef117:   jne    0x00007f5e746ef333           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@243 (line 1890)
                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                       0x00007f5e746ef11d:   mov    0x18(%rsp),%r9
                       0x00007f5e746ef122:   movabs $0x7f5df7029b98,%rcx         ;   {metadata(&apos;java/lang/BaseVirtualThread&apos;)}
                       0x00007f5e746ef12c:   cmp    %rcx,%r9
                       0x00007f5e746ef12f:   jne    0x00007f5e746ef2b8
                       0x00007f5e746ef135:   mov    0x10(%rsp),%ecx
                       0x00007f5e746ef139:   nopl   0x0(%rax)
                       0x00007f5e746ef140:   cmp    $0x2a0e8,%ecx                ;   {metadata(&apos;java/lang/VirtualThread&apos;)}
....................................................................................................
  16.92%  <total for region 1>

....[Hottest Regions]...............................................................................
  16.92%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1094 
   9.22%              kernel  [unknown] 
   4.34%              kernel  [unknown] 
   3.43%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 8, compile id 1271 
   2.54%           libjvm.so  update_register_map1 
   2.39%              kernel  [unknown] 
   1.62%           libjvm.so  vframeStream::vframeStream 
   1.13%              [vdso]  __vdso_clock_gettime 
   0.95%           libjvm.so  OopMapStream::find_next 
   0.94%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1274 
   0.84%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1274 
   0.79%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1239 
   0.78%              kernel  [unknown] 
   0.77%         c2, level 4  java.lang.VirtualThread::unpark, version 2, compile id 911 
   0.73%           libjvm.so  OopMapStream::find_next 
   0.72%              kernel  [unknown] 
   0.69%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::getTask, version 6, compile id 1231 
   0.64%           libjvm.so  Parker::park 
   0.58%           libjvm.so  OopMapStream::find_next 
   0.57%              kernel  [unknown] 
  49.39%  <...other 1657 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.32%              kernel  [unknown] 
  17.36%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1094 
   3.43%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 8, compile id 1271 
   2.54%           libjvm.so  update_register_map1 
   2.30%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1040 
   2.27%           libjvm.so  OopMapStream::find_next 
   2.25%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 4, compile id 1274 
   1.96%           libjvm.so  vframeStream::vframeStream 
   1.60%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::getTask, version 6, compile id 1231 
   1.37%         c2, level 4  java.lang.VirtualThread::unpark, version 2, compile id 911 
   1.30%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::execute, version 2, compile id 966 
   1.25%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007f5df802b9c8::run, version 2, compile id 1302 
   1.13%              [vdso]  __vdso_clock_gettime 
   0.99%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 882 
   0.94%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1239 
   0.87%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.86%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::offer, version 5, compile id 1189 
   0.77%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.73%         c2, level 4  java.lang.VirtualThread::getAndClearInterrupt, version 2, compile id 719 
   0.72%           libjvm.so  Parker::park 
  22.03%  <...other 461 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  42.20%         c2, level 4
  33.32%              kernel
  16.78%           libjvm.so
   3.58%  libpthread-2.31.so
   1.34%        libc-2.31.so
   1.13%              [vdso]
   0.73%    Unknown, level 0
   0.65%                    
   0.14%          ld-2.31.so
   0.08%        runtime stub
   0.02%          libjava.so
   0.01%         c1, level 1
   0.00%         interpreter
   0.00%      hsdis-amd64.so
   0.00%    perf-3140399.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 61.11% complete, ETA 00:16:13
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1017.446 us/op
# Warmup Iteration   2: 586.478 us/op
# Warmup Iteration   3: 585.128 us/op
# Warmup Iteration   4: 584.813 us/op
# Warmup Iteration   5: 595.611 us/op
Iteration   1: 592.228 us/op
Iteration   2: 587.835 us/op
Iteration   3: 586.131 us/op
Iteration   4: 590.214 us/op
Iteration   5: 590.204 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  589.323 ±(99.9%) 9.116 us/op [Average]
  (min, avg, max) = (586.131, 589.323, 592.228), stdev = 2.367
  CI (99.9%): [580.207, 598.438] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 249216 total address lines.
Perf output processed (skipped 56.272 seconds):
 Column 1: cycles (3375717 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  48.08%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  25.00%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.08%              kernel  [unknown] 
  25.00%              kernel  [unknown] 
   4.14%              kernel  [unknown] 
   2.47%              kernel  [unknown] 
   2.23%              kernel  [unknown] 
   1.93%              kernel  [unknown] 
   1.75%              kernel  [unknown] 
   1.52%              kernel  [unknown] 
   1.16%              kernel  [unknown] 
   1.04%              kernel  [unknown] 
   0.84%              kernel  [unknown] 
   0.81%              kernel  [unknown] 
   0.70%              kernel  [unknown] 
   0.41%              kernel  [unknown] 
   0.38%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   6.12%  <...other 3577 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.41%              kernel  [unknown] 
   0.07%           libjvm.so  ThreadsSMRSupport::free_list 
   0.06%        libc-2.31.so  malloc 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.06%        libc-2.31.so  _int_malloc 
   0.05%           libjvm.so  vframeStreamCommon::next 
   0.05%  libpthread-2.31.so  __pthread_mutex_lock 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%        libc-2.31.so  _int_free 
   0.04%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.04%  libpthread-2.31.so  __lll_lock_wait 
   0.04%           libjvm.so  Method::validate_bci_from_bcp 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.03%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::execute, version 2, compile id 808 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.81%  <...other 706 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.41%              kernel
   0.90%           libjvm.so
   0.36%        libc-2.31.so
   0.20%  libpthread-2.31.so
   0.06%         c2, level 4
   0.03%          ld-2.31.so
   0.01%              [vdso]
   0.01%    Unknown, level 0
   0.01%                    
   0.00%        runtime stub
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-3140473.map
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 66.67% complete, ETA 00:14:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 574.245 us/op
# Warmup Iteration   2: 40.234 us/op
# Warmup Iteration   3: 38.916 us/op
# Warmup Iteration   4: 38.206 us/op
# Warmup Iteration   5: 38.456 us/op
Iteration   1: 38.280 us/op
Iteration   2: 38.705 us/op
Iteration   3: 38.376 us/op
Iteration   4: 38.311 us/op
Iteration   5: 38.774 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  38.489 ±(99.9%) 0.895 us/op [Average]
  (min, avg, max) = (38.280, 38.489, 38.774), stdev = 0.232
  CI (99.9%): [37.594, 39.384] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 311279 total address lines.
Perf output processed (skipped 56.493 seconds):
 Column 1: cycles (250418 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  12.78%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1216 

                     0x00007fdac873fc25:   add    %r11,%r10
                     0x00007fdac873fc28:   mov    0x40(%r10),%r10
                     0x00007fdac873fc2c:   mov    %r13,0x38(%rsp)
                     0x00007fdac873fc31:   mov    %r9,0x10(%rsp)
                     0x00007fdac873fc36:   mov    %rdi,%rbp
                     0x00007fdac873fc39:   mov    %r11d,0x40(%rsp)
                     0x00007fdac873fc3e:   mov    %rcx,0x48(%rsp)
                     0x00007fdac873fc43:   mov    %r8d,0x44(%rsp)
                     0x00007fdac873fc48:   mov    %r10,0x18(%rsp)
          ╭          0x00007fdac873fc4d:   jmp    0x00007fdac873fc67
   0.00%  │↗         0x00007fdac873fc4f:   mov    %rbp,%r10
          ││         0x00007fdac873fc52:   mov    0x48(%rsp),%r11
   0.00%  ││         0x00007fdac873fc57:   mov    %eax,0xc(%rsp)
          ││         0x00007fdac873fc5b:   mov    0x8(%rsp),%ebx
          ││         0x00007fdac873fc5f:   mov    %r10,%rbp
          ││         0x00007fdac873fc62:   mov    %r11,0x48(%rsp)              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%  ↘│         0x00007fdac873fc67:   mov    %ebx,%r10d
   0.00%   │         0x00007fdac873fc6a:   shl    $0xd,%r10d
           │         0x00007fdac873fc6e:   xor    %ebx,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
           │         0x00007fdac873fc71:   mov    %r10d,%r8d
   0.00%   │         0x00007fdac873fc74:   shr    $0x11,%r8d
   0.00%   │         0x00007fdac873fc78:   xor    %r10d,%r8d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
           │         0x00007fdac873fc7b:   mov    %r8d,%r10d
   0.00%   │         0x00007fdac873fc7e:   shl    $0x5,%r10d
   0.00%   │         0x00007fdac873fc82:   xor    %r8d,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
           │         0x00007fdac873fc85:   mov    %r10d,0x8(%rsp)
           │         0x00007fdac873fc8a:   mov    0x10(%rsp),%rsi
           │         0x00007fdac873fc8f:   mov    %rbp,%rdx
   0.00%   │         0x00007fdac873fc92:   mov    0xc(%rsp),%ecx
           │         0x00007fdac873fc96:   mov    %r10d,%r8d
   0.00%   │         0x00007fdac873fc99:   xchg   %ax,%ax
           │         0x00007fdac873fc9b:   call   0x00007fdac8731080           ; ImmutableOopMap {rbp=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
           │                                                                   ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           │                                                                   ;   {optimized virtual_call}
   0.00%   │         0x00007fdac873fca0:   nopl   0x390(%rax,%rax,1)           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
           │                                                                   ;   {other}
   0.00%   │         0x00007fdac873fca8:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
           │                                                                   ;*ifge {reexecute=1 rethrow=0 return_oop=0}
           │                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%   │         0x00007fdac873fcaf:   test   %eax,(%r10)                  ;   {poll}
   0.00%   │         0x00007fdac873fcb2:   test   %eax,%eax
           ╰         0x00007fdac873fcb4:   jge    0x00007fdac873fc4f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                     0x00007fdac873fcb6:   mov    %rbp,%r8
                     0x00007fdac873fcb9:   nopl   0x0(%rax)
   0.00%             0x00007fdac873fcc0:   mov    0xa8(%rbp),%r10d             ; implicit exception: dispatches to 0x00007fdac87404ec
                                                                               ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fcc7:   mov    0x10(%rsp),%r9
                     0x00007fdac873fccc:   mov    0x30(%r9),%r11d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fcd0:   test   %r11d,%r11d
                     0x00007fdac873fcd3:   jl     0x00007fdac87403b7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fcd9:   mov    %rbp,(%rsp)
                     0x00007fdac873fcdd:   mov    0xd8(%r9),%rcx               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.06%             0x00007fdac873fce4:   mov    %rcx,%r8
                     0x00007fdac873fce7:   movabs $0xffff000000000000,%r11
                     0x00007fdac873fcf1:   add    %r11,%r8
   0.00%             0x00007fdac873fcf4:   movabs $0xffffffff00000000,%r11
                     0x00007fdac873fcfe:   and    %r11,%r8
   0.00%             0x00007fdac873fd01:   add    $0x10000,%r10d
                     0x00007fdac873fd08:   mov    %ecx,%r11d
                     0x00007fdac873fd0b:   and    $0x7fffffff,%r10d            ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873fd12:   movslq %r10d,%r9                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fd15:   or     %r9,%r8                      ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fd18:   or     $0x80000000,%r10d
                     0x00007fdac873fd1f:   mov    %r10d,0xa8(%rbp)
                     0x00007fdac873fd26:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.13%             0x00007fdac873fd2c:   mov    %r11d,0xc(%rbp)
                     0x00007fdac873fd30:   mov    0x10(%rsp),%r10
                     0x00007fdac873fd35:   mov    %rcx,%rax
                     0x00007fdac873fd38:   lock cmpxchg %r8,0xd8(%r10)
   0.14%             0x00007fdac873fd41:   mov    %rax,%rbx                    ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873fd44:   cmp    %rax,%rcx
                     0x00007fdac873fd47:   jne    0x00007fdac8740223           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fd4d:   movabs $0xffff000000000000,%r10
                     0x00007fdac873fd57:   test   %r8,%r10
                     0x00007fdac873fd5a:   nopw   0x0(%rax,%rax,1)
                     0x00007fdac873fd60:   jle    0x00007fdac8740119           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fd66:   xor    %r10d,%r10d
                     0x00007fdac873fd69:   mov    0x10(%rsp),%r8
                     0x00007fdac873fd6e:   mov    %r10d,%ebx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873fd71:   mov    0x34(%r8),%r10d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fd75:   mov    %r8,0x10(%rsp)
   0.00%             0x00007fdac873fd7a:   nopw   0x0(%rax,%rax,1)
                     0x00007fdac873fd80:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fdac8740510
   0.00%             0x00007fdac873fd85:   mov    (%rsp),%r10
   0.00%             0x00007fdac873fd89:   mov    0xa8(%r10),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873fd90:   test   %r10d,%r10d
                     0x00007fdac873fd93:   jge    0x00007fdac8740095           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873fd99:   movzwl %r8w,%r11d
   0.00%             0x00007fdac873fd9d:   shl    %r11d
   0.00%             0x00007fdac873fda0:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873fda4:   mov    %r11d,%r10d
   0.00%             0x00007fdac873fda7:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873fdaa:   test   %r10d,%r10d
            ╭        0x00007fdac873fdad:   jle    0x00007fdac873fe91           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │                                                                  ;   {no_reloc}
            │        0x00007fdac873fdb3:   add    $0xfffffffe,%r11d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │↗       0x00007fdac873fdb7:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.25%    ││       0x00007fdac873fdb9:   mov    0x458(%r15),%r8              ; ImmutableOopMap {[0]=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
            ││                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
            ││                                                                 ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││       0x00007fdac873fdc0:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││                                                                 ;   {poll}
            ││       0x00007fdac873fdc3:   mov    (%rsp),%r8
            ││       0x00007fdac873fdc7:   mov    0xa8(%r8),%r9d               ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││       0x00007fdac873fdce:   test   %r9d,%r9d
            ││       0x00007fdac873fdd1:   jge    0x00007fdac8740095           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││       0x00007fdac873fdd7:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││       0x00007fdac873fdda:   nopw   0x0(%rax,%rax,1)
            ││       0x00007fdac873fde0:   cmp    %r11d,%r10d
            │╰       0x00007fdac873fde3:   jg     0x00007fdac873fdb7           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │        0x00007fdac873fde5:   cmp    $0x3,%r10d
            │ ╭      0x00007fdac873fde9:   jle    0x00007fdac873fe5b
            │ │      0x00007fdac873fdef:   nop                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │↗     0x00007fdac873fdf0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.64%    │ ││     0x00007fdac873fdf2:   mov    (%rsp),%r11
            │ ││     0x00007fdac873fdf6:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    │ ││     0x00007fdac873fdfd:   data16 xchg %ax,%ax
            │ ││     0x00007fdac873fe00:   test   %r8d,%r8d
            │ ││     0x00007fdac873fe03:   jge    0x00007fdac8740095           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%    │ ││     0x00007fdac873fe09:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.70%    │ ││     0x00007fdac873fe0b:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    │ ││     0x00007fdac873fe12:   test   %r11d,%r11d
            │ ││     0x00007fdac873fe15:   jge    0x00007fdac8740095           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ ││     0x00007fdac873fe1b:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.66%    │ ││     0x00007fdac873fe1d:   mov    (%rsp),%r11
            │ ││     0x00007fdac873fe21:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ ││     0x00007fdac873fe28:   test   %r8d,%r8d
            │ ││     0x00007fdac873fe2b:   jge    0x00007fdac8740095           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ ││     0x00007fdac873fe31:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   2.67%    │ ││     0x00007fdac873fe33:   mov    0x458(%r15),%r8
            │ ││     0x00007fdac873fe3a:   mov    0xa8(%r11),%r11d
   0.01%    │ ││     0x00007fdac873fe41:   lea    -0x3(%r10),%r9d              ; ImmutableOopMap {[0]=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
            │ ││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │ ││                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ ││     0x00007fdac873fe45:   test   %eax,(%r8)                   ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ ││                                                               ;   {poll}
   0.02%    │ ││     0x00007fdac873fe48:   test   %r11d,%r11d
            │ ││     0x00007fdac873fe4b:   jge    0x00007fdac8740095           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ ││     0x00007fdac873fe51:   add    $0xfffffffc,%r10d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ ││     0x00007fdac873fe55:   cmp    $0x3,%r10d
            │ │╰     0x00007fdac873fe59:   jg     0x00007fdac873fdf0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ ↘      0x00007fdac873fe5b:   nopl   0x0(%rax,%rax,1)
   0.00%    │        0x00007fdac873fe60:   test   %r10d,%r10d
            │   ╭    0x00007fdac873fe63:   jle    0x00007fdac873fe91
            │   │    0x00007fdac873fe65:   data16 xchg %ax,%ax                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │   │↗   0x00007fdac873fe68:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.23%    │   ││   0x00007fdac873fe6a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [16]=Oop [56]=Oop [72]=Derived_oop_[56] [68]=NarrowOop }
            │   ││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │   ││                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │   ││   0x00007fdac873fe71:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │   ││                                                             ;   {poll}
            │   ││   0x00007fdac873fe74:   mov    (%rsp),%r11
            │   ││   0x00007fdac873fe78:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │   ││   0x00007fdac873fe7f:   nop
            │   ││   0x00007fdac873fe80:   test   %r11d,%r11d
            │   ││   0x00007fdac873fe83:   jge    0x00007fdac8740095           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │   ││   0x00007fdac873fe89:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │   ││   0x00007fdac873fe8c:   test   %r10d,%r10d
            │   │╰   0x00007fdac873fe8f:   jg     0x00007fdac873fe68           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
            │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ↘   ↘    0x00007fdac873fe91:   test   %ebx,%ebx
                     0x00007fdac873fe93:   jne    0x00007fdac8740165           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873fe99:   xor    %ebx,%ebx
                     0x00007fdac873fe9b:   xor    %eax,%eax                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                     0x00007fdac873fe9d:   data16 xchg %ax,%ax
   0.00%             0x00007fdac873fea0:   cmpb   $0x0,0x40(%r15)
   0.00%             0x00007fdac873fea5:   jne    0x00007fdac87402d3
   0.00%             0x00007fdac873feab:   mov    %ebx,0xc(%rsp)
                     0x00007fdac873feaf:   mov    %rax,0x20(%rsp)
   0.00%             0x00007fdac873feb4:   mov    0x48(%rsp),%r11
                     0x00007fdac873feb9:   mov    0x44(%rsp),%r10d
                     0x00007fdac873febe:   mov    %r10d,(%r11)
   0.00%             0x00007fdac873fec1:   mov    0x10(%rsp),%r10
   0.00%             0x00007fdac873fec6:   xor    %r11,%r10
                     0x00007fdac873fec9:   shr    $0x15,%r10
   0.00%             0x00007fdac873fecd:   test   %r10,%r10
                  ╭  0x00007fdac873fed0:   je     0x00007fdac873feec
                  │  0x00007fdac873fed2:   shr    $0x9,%r11
                  │  0x00007fdac873fed6:   movabs $0x7fdad91b3000,%rdi
                  │  0x00007fdac873fee0:   add    %r11,%rdi
                  │  0x00007fdac873fee3:   cmpb   $0x2,(%rdi)
                  │  0x00007fdac873fee6:   jne    0x00007fdac8740365           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                  │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@221 (line 1886)
                  │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%          ↘  0x00007fdac873feec:   mov    0x10(%rsp),%r8
   0.00%             0x00007fdac873fef1:   mov    0x30(%r8),%r10d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@222 (line 1886)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%             0x00007fdac873fef5:   test   %r10d,%r10d
                     0x00007fdac873fef8:   jl     0x00007fdac8740413
   0.00%             0x00007fdac873fefe:   mov    (%rsp),%r9
   0.00%             0x00007fdac873ff02:   movl   $0xffffffff,0xa4(%r9)
   0.01%             0x00007fdac873ff0d:   lock addl $0x0,-0x40(%rsp)          ;*putfield access {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@232 (line 1888)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.11%             0x00007fdac873ff13:   mov    0xa8(%r9),%r11d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@236 (line 1889)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873ff1a:   nopw   0x0(%rax,%rax,1)
                     0x00007fdac873ff20:   test   %r11d,%r11d
                     0x00007fdac873ff23:   jge    0x00007fdac874028a           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@239 (line 1889)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fdac873ff29:   mov    0xc(%rsp),%ebx
                     0x00007fdac873ff2d:   test   %ebx,%ebx
                     0x00007fdac873ff2f:   jne    0x00007fdac87400dd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@243 (line 1890)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fdac873ff35:   mov    0x18(%rsp),%rdx
                     0x00007fdac873ff3a:   movabs $0x7fda4f029b98,%r10         ;   {metadata(&apos;java/lang/BaseVirtualThread&apos;)}
   0.00%             0x00007fdac873ff44:   cmp    %r10,%rdx
                     0x00007fdac873ff47:   jne    0x00007fdac87400a5
                     0x00007fdac873ff4d:   mov    0x40(%rsp),%ecx
                     0x00007fdac873ff51:   cmp    $0x2a0e8,%ecx                ;   {metadata(&apos;java/lang/VirtualThread&apos;)}
                     0x00007fdac873ff57:   jne    0x00007fdac87404d4
                     0x00007fdac873ff5d:   mov    0x38(%rsp),%rdi              ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.lang.System$2::parkVirtualThread@5 (line 2638)
                                                                               ; - jdk.internal.misc.VirtualThreads::park@3 (line 54)
                                                                               ; - java.util.concurrent.locks.LockSupport::park@9 (line 369)
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
....................................................................................................
  11.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  12.78%              kernel  [unknown] 
  11.74%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1216 
   5.78%              kernel  [unknown] 
   3.19%           libjvm.so  update_register_map1 
   1.55%           libjvm.so  vframeStream::vframeStream 
   1.49%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 1189 
   1.49%         c2, level 4  java.util.concurrent.ThreadPoolExecutor$Worker::run, version 2, compile id 1055 
   1.37%              kernel  [unknown] 
   1.33%           libjvm.so  SpinPause 
   1.29%              [vdso]  __vdso_clock_gettime 
   1.25%           libjvm.so  OopMapStream::find_next 
   1.23%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 1189 
   1.15%              kernel  [unknown] 
   1.09%              kernel  [unknown] 
   1.07%         c2, level 4  java.lang.VirtualThread::scheduleUnpark, version 2, compile id 992 
   0.96%           libjvm.so  OopMapStream::find_next 
   0.77%              kernel  [unknown] 
   0.72%           libjvm.so  OopMapStream::find_next 
   0.72%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.66%           libjvm.so  ObjectMonitor::TrySpin 
  48.36%  <...other 1284 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  39.64%              kernel  [unknown] 
  12.15%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1216 
   4.06%         c2, level 4  java.util.concurrent.ThreadPoolExecutor$Worker::run, version 2, compile id 1055 
   3.19%           libjvm.so  update_register_map1 
   2.93%           libjvm.so  OopMapStream::find_next 
   2.78%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 1189 
   2.16%           libjvm.so  vframeStream::vframeStream 
   1.80%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark$$Lambda.0x00007fda5002b798::accept, version 2, compile id 929 
   1.45%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::offer, version 2, compile id 966 
   1.33%           libjvm.so  SpinPause 
   1.29%              [vdso]  __vdso_clock_gettime 
   1.14%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.10%         c2, level 4  java.lang.VirtualThread::scheduleUnpark, version 2, compile id 992 
   1.07%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::getTask, version 6, compile id 1239 
   0.94%           libjvm.so  ObjectMonitor::TrySpin 
   0.86%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1245 
   0.85%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.78%         c2, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 870 
   0.74%         c2, level 4  java.lang.VirtualThread::run, version 2, compile id 1053 
   0.72%         c2, level 4  java.util.concurrent.ConcurrentHashMap::replaceNode, version 3, compile id 1279 
  18.99%  <...other 303 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  39.64%              kernel
  31.93%         c2, level 4
  20.54%           libjvm.so
   4.33%  libpthread-2.31.so
   1.29%              [vdso]
   0.80%    Unknown, level 0
   0.65%                    
   0.46%        libc-2.31.so
   0.19%          ld-2.31.so
   0.09%         c1, level 1
   0.07%        runtime stub
   0.02%          libjava.so
   0.00%         interpreter
   0.00%    perf-4116893.map
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 72.22% complete, ETA 00:11:43
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1416.190 us/op
# Warmup Iteration   2: 953.417 us/op
# Warmup Iteration   3: 943.593 us/op
# Warmup Iteration   4: 945.338 us/op
# Warmup Iteration   5: 944.313 us/op
Iteration   1: 949.150 us/op
Iteration   2: 941.894 us/op
Iteration   3: 943.220 us/op
Iteration   4: 942.575 us/op
Iteration   5: 944.028 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  944.173 ±(99.9%) 11.135 us/op [Average]
  (min, avg, max) = (941.894, 944.173, 949.150), stdev = 2.892
  CI (99.9%): [933.039, 955.308] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 237529 total address lines.
Perf output processed (skipped 56.246 seconds):
 Column 1: cycles (1777901 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  48.49%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.90%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.49%              kernel  [unknown] 
  27.90%              kernel  [unknown] 
   3.40%              kernel  [unknown] 
   3.06%              kernel  [unknown] 
   3.06%              kernel  [unknown] 
   1.78%              kernel  [unknown] 
   1.77%              kernel  [unknown] 
   1.37%              kernel  [unknown] 
   0.82%              kernel  [unknown] 
   0.79%              kernel  [unknown] 
   0.41%              kernel  [unknown] 
   0.40%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   4.82%  <...other 3239 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.31%              kernel  [unknown] 
   0.09%           libjvm.so  ThreadsSMRSupport::free_list 
   0.06%        libc-2.31.so  _int_free 
   0.06%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  malloc 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.03%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 906 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.02%                      <unknown> 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.98%  <...other 637 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.31%              kernel
   0.96%           libjvm.so
   0.39%        libc-2.31.so
   0.17%  libpthread-2.31.so
   0.09%         c2, level 4
   0.02%                    
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%    perf-4116965.map
   0.00%         interpreter
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 77.78% complete, ETA 00:09:26
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1044.448 us/op
# Warmup Iteration   2: 188.027 us/op
# Warmup Iteration   3: 173.230 us/op
# Warmup Iteration   4: 171.431 us/op
# Warmup Iteration   5: 171.890 us/op
Iteration   1: 171.175 us/op
Iteration   2: 175.746 us/op
Iteration   3: 169.453 us/op
Iteration   4: 171.803 us/op
Iteration   5: 174.751 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  172.585 ±(99.9%) 10.021 us/op [Average]
  (min, avg, max) = (169.453, 172.585, 175.746), stdev = 2.602
  CI (99.9%): [162.564, 182.606] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 298288 total address lines.
Perf output processed (skipped 56.181 seconds):
 Column 1: cycles (259169 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1167 

                                                                                          ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                0x00007f67586fe588:   mov    %rbp,%r8
                                0x00007f67586fe58b:   mov    0x20(%rsp),%r9
                                0x00007f67586fe590:   mov    0x48(%rsp),%edi
                                0x00007f67586fe594:   mov    0x18(%rsp),%rdx
                                0x00007f67586fe599:   mov    0xc(%rsp),%ecx               ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.util.concurrent.locks.LockSupport::park@23 (line 373)
                                                                                          ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                        0x00007f67586fe59d:   xor    %ebp,%ebp
   0.00%                        0x00007f67586fe59f:   mov    %r8,0x18(%rsp)
   0.00%                        0x00007f67586fe5a4:   mov    %edi,0x48(%rsp)
   0.00%                        0x00007f67586fe5a8:   mov    %rdx,0x30(%rsp)
   0.00%                        0x00007f67586fe5ad:   mov    %ecx,(%rsp)
   0.00%                        0x00007f67586fe5b0:   mov    %r12d,0xa4(%r9)
   0.00%                        0x00007f67586fe5b7:   mov    %r9,0x20(%rsp)
                                0x00007f67586fe5bc:   lock addl $0x0,-0x40(%rsp)          ;*putfield access {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.util.concurrent.ForkJoinPool::awaitWork@259 (line 1895)
                                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.42%                        0x00007f67586fe5c2:   mov    0xa8(%r9),%r11d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.util.concurrent.ForkJoinPool::awaitWork@263 (line 1896)
                                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                        0x00007f67586fe5c9:   test   %r11d,%r11d
                                0x00007f67586fe5cc:   jl     0x00007f67586fea9f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                                0x00007f67586fe5d2:   cmpb   $0x0,0x40(%r15)
   0.00%                        0x00007f67586fe5d7:   jne    0x00007f67586fec30
                                0x00007f67586fe5dd:   mov    0x50(%rsp),%r8
                                0x00007f67586fe5e2:   mov    %r12d,(%r8)                  ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                                          ; - java.util.concurrent.ForkJoinPool::awaitWork@270 (line 1897)
                                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ╭                     0x00007f67586fe5e5:   jmp    0x00007f67586fe5ec           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%  │    ↗ ↗  ↗↗↗↗  ↗     0x00007f67586fe5e7:   mov    0x50(%rsp),%r8               ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │    │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@273 (line 1898)
          │    │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%  ↘    │ │  ││││  │     0x00007f67586fe5ec:   mov    0x20(%rsp),%r10              ;*invokevirtual awaitWork {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe5f1:   xor    %eax,%eax
            ↗  │ │  ││││  │     0x00007f67586fe5f3:   mov    %eax,0xc(%rsp)
   0.00%    │  │ │  ││││  │     0x00007f67586fe5f7:   mov    0x10(%rsp),%ebx
   0.00%    │  │ │  ││││  │     0x00007f67586fe5fb:   mov    %r10,%rbp
   0.00%    │  │ │  ││││  │     0x00007f67586fe5fe:   mov    %r8,0x50(%rsp)               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%    │  │ │  ││││  │     0x00007f67586fe603:   mov    %ebx,%r10d
            │  │ │  ││││  │     0x00007f67586fe606:   shl    $0xd,%r10d
   0.00%    │  │ │  ││││  │     0x00007f67586fe60a:   xor    %ebx,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
            │  │ │  ││││  │     0x00007f67586fe60d:   mov    %r10d,%r8d
   0.00%    │  │ │  ││││  │     0x00007f67586fe610:   shr    $0x11,%r8d
            │  │ │  ││││  │     0x00007f67586fe614:   xor    %r10d,%r8d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%    │  │ │  ││││  │     0x00007f67586fe617:   mov    %r8d,%r10d
            │  │ │  ││││  │     0x00007f67586fe61a:   shl    $0x5,%r10d
   0.00%    │  │ │  ││││  │     0x00007f67586fe61e:   xor    %r8d,%r10d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
   0.00%    │  │ │  ││││  │     0x00007f67586fe621:   mov    %r10d,0x10(%rsp)
   0.00%    │  │ │  ││││  │     0x00007f67586fe626:   mov    0x18(%rsp),%rsi
            │  │ │  ││││  │     0x00007f67586fe62b:   mov    %rbp,%rdx
            │  │ │  ││││  │     0x00007f67586fe62e:   mov    0xc(%rsp),%ecx
            │  │ │  ││││  │     0x00007f67586fe632:   mov    %r10d,%r8d
   0.00%    │  │ │  ││││  │     0x00007f67586fe635:   xchg   %ax,%ax
            │  │ │  ││││  │     0x00007f67586fe637:   call   0x00007f6758698060           ; ImmutableOopMap {rbp=Oop [24]=Oop [64]=Oop [80]=Derived_oop_[64] [76]=NarrowOop }
            │  │ │  ││││  │                                                               ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
            │  │ │  ││││  │                                                               ;   {optimized virtual_call}
   0.02%    │  │ │  ││││  │     0x00007f67586fe63c:   nopl   0x100042c(%rax,%rax,1)       ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
            │  │ │  ││││  │                                                               ;   {other}
   0.00%    │  │ │  ││││  │     0x00007f67586fe644:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop [24]=Oop [64]=Oop [80]=Derived_oop_[64] [76]=NarrowOop }
            │  │ │  ││││  │                                                               ;*ifge {reexecute=1 rethrow=0 return_oop=0}
            │  │ │  ││││  │                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.02%    │  │ │  ││││  │     0x00007f67586fe64b:   test   %eax,(%r10)                  ;   {poll}
   0.01%    │  │ │  ││││  │     0x00007f67586fe64e:   test   %eax,%eax
           ╭│  │ │  ││││  │     0x00007f67586fe650:   jl     0x00007f67586fe65c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││  │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%   ││  │ │  ││││  │     0x00007f67586fe652:   mov    %rbp,%r10
   0.00%   ││  │ │  ││││  │     0x00007f67586fe655:   mov    0x50(%rsp),%r8
   0.00%   │╰  │ │  ││││  │     0x00007f67586fe65a:   jmp    0x00007f67586fe5f3
           ↘   │ │  ││││  │     0x00007f67586fe65c:   mov    %rbp,%r8
               │ │  ││││  │     0x00007f67586fe65f:   nop
               │ │  ││││  │     0x00007f67586fe660:   mov    0xa8(%rbp),%r10d             ; implicit exception: dispatches to 0x00007f67586fee5c
               │ │  ││││  │                                                               ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe667:   mov    0x18(%rsp),%r9
               │ │  ││││  │     0x00007f67586fe66c:   mov    0x30(%r9),%r11d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%       │ │  ││││  │     0x00007f67586fe670:   test   %r11d,%r11d
               │ │  ││││  │     0x00007f67586fe673:   jl     0x00007f67586fecc6           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe679:   mov    %rbp,0x20(%rsp)
               │ │  ││││  │     0x00007f67586fe67e:   mov    0xd8(%r9),%rcx               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.12%       │ │  ││││  │     0x00007f67586fe685:   mov    %rcx,%r8
               │ │  ││││  │     0x00007f67586fe688:   movabs $0xffff000000000000,%r11
   0.00%       │ │  ││││  │     0x00007f67586fe692:   add    %r11,%r8
   0.00%       │ │  ││││  │     0x00007f67586fe695:   movabs $0xffffffff00000000,%r11
               │ │  ││││  │     0x00007f67586fe69f:   and    %r11,%r8
   0.00%       │ │  ││││  │     0x00007f67586fe6a2:   add    $0x10000,%r10d
   0.00%       │ │  ││││  │     0x00007f67586fe6a9:   mov    %ecx,%r11d
               │ │  ││││  │     0x00007f67586fe6ac:   and    $0x7fffffff,%r10d            ;*iand {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │ │  ││││  │     0x00007f67586fe6b3:   movslq %r10d,%r9                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe6b6:   or     %r9,%r8                      ;*lor {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe6b9:   or     $0x80000000,%r10d
               │ │  ││││  │     0x00007f67586fe6c0:   mov    %r10d,0xa8(%rbp)
               │ │  ││││  │     0x00007f67586fe6c7:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.16%       │ │  ││││  │     0x00007f67586fe6cd:   mov    %r11d,0xc(%rbp)
               │ │  ││││  │     0x00007f67586fe6d1:   mov    0x18(%rsp),%r10
               │ │  ││││  │     0x00007f67586fe6d6:   mov    %rcx,%rax
   0.00%       │ │  ││││  │     0x00007f67586fe6d9:   lock cmpxchg %r8,0xd8(%r10)
   0.25%       │ │  ││││  │     0x00007f67586fe6e2:   mov    %rax,%rbx                    ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │ │  ││││  │     0x00007f67586fe6e5:   cmp    %rax,%rcx
               │ │  ││││  │     0x00007f67586fe6e8:   jne    0x00007f67586feb03           ;*lload {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe6ee:   movabs $0xffff000000000000,%r10
               │ │  ││││  │     0x00007f67586fe6f8:   test   %r8,%r10
               │ │  ││││  │     0x00007f67586fe6fb:   nopl   0x0(%rax,%rax,1)
   0.00%     ╭ │ │  ││││  │     0x00007f67586fe700:   jg     0x00007f67586fe74f           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │ │  ││││  │     0x00007f67586fe706:   mov    0x18(%rsp),%rsi
             │ │ │  ││││  │     0x00007f67586fe70b:   mov    $0x1,%edx
             │ │ │  ││││  │     0x00007f67586fe710:   data16 xchg %ax,%ax
             │ │ │  ││││  │     0x00007f67586fe713:   call   0x00007f67586fef53           ; ImmutableOopMap {[24]=Oop [32]=Oop [64]=Oop [80]=Derived_oop_[64] [76]=NarrowOop }
             │ │ │  ││││  │                                                               ;*invokevirtual hasTasks {reexecute=0 rethrow=0 return_oop=0}
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │ │  ││││  │                                                               ;   {optimized virtual_call}
             │ │ │  ││││  │     0x00007f67586fe718:   nopl   0x3000508(%rax,%rax,1)       ;*invokevirtual hasTasks {reexecute=0 rethrow=0 return_oop=0}
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ │ │  ││││  │                                                               ;   {other}
   0.00%     │ │ │  ││││  │     0x00007f67586fe720:   test   %eax,%eax
             │ │ │  ││││  │     0x00007f67586fe722:   jne    0x00007f67586fea5d           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@104 (line 1872)
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │ │  ││││  │     0x00007f67586fe728:   mov    0x20(%rsp),%r10              ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@119 (line 1872)
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │ │  ││││  │     0x00007f67586fe72d:   mov    0x18(%rsp),%r8
   0.00%     │ │ │  ││││  │     0x00007f67586fe732:   mov    0x30(%r8),%r11d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@125 (line 1874)
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │ │  ││││  │     0x00007f67586fe736:   test   %r11d,%r11d
             │ │ │  ││││  │     0x00007f67586fe739:   jne    0x00007f67586fed80           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@128 (line 1874)
             │ │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │ │ │  ││││  │     0x00007f67586fe73f:   mov    $0x1,%r11d
   0.00%     │ │ │  ││││  │     0x00007f67586fe745:   mov    %r10,0x20(%rsp)
             │ │ │  ││││  │     0x00007f67586fe74a:   mov    %r11d,%ecx
             │╭│ │  ││││  │     0x00007f67586fe74d:   jmp    0x00007f67586fe75a
   0.00%     ↘││ │  ││││  │     0x00007f67586fe74f:   xor    %r10d,%r10d
              ││ │  ││││  │     0x00007f67586fe752:   mov    0x18(%rsp),%r8
              ││ │  ││││  │     0x00007f67586fe757:   mov    %r10d,%ecx                   ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
              ││ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
              ││ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ↘│ │  ││││  │     0x00007f67586fe75a:   mov    0x34(%r8),%r10d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe75e:   mov    %r8,0x18(%rsp)
               │ │  ││││  │     0x00007f67586fe763:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f67586fee88
   0.00%       │ │  ││││  │     0x00007f67586fe768:   mov    0x20(%rsp),%r10
   0.00%       │ │  ││││  │     0x00007f67586fe76d:   mov    0xa8(%r10),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
               │ │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ │  ││││  │     0x00007f67586fe774:   test   %r10d,%r10d
               ╰ │  ││││  │     0x00007f67586fe777:   jge    0x00007f67586fe5e7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                 │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                 │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                 │  ││││  │     0x00007f67586fe77d:   movzwl %r8w,%r11d
   0.00%         │  ││││  │     0x00007f67586fe781:   shl    %r11d
   0.00%         │  ││││  │     0x00007f67586fe784:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                 │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                 │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  ││││  │     0x00007f67586fe788:   mov    %r11d,%r10d
                 │  ││││  │     0x00007f67586fe78b:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                 │  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  ││││  │     0x00007f67586fe78e:   test   %r10d,%r10d
                ╭│  ││││  │     0x00007f67586fe791:   jle    0x00007f67586fe871           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ││  ││││  │     0x00007f67586fe797:   add    $0xfffffffe,%r11d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                ││  ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ││↗ ││││  │     0x00007f67586fe79b:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.48%        │││ ││││  │     0x00007f67586fe79d:   mov    0x458(%r15),%r8              ; ImmutableOopMap {[24]=Oop [32]=Oop [64]=Oop [80]=Derived_oop_[64] [76]=NarrowOop }
                │││ ││││  │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
                │││ ││││  │                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │││ ││││  │     0x00007f67586fe7a4:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │││ ││││  │                                                               ;   {poll}
                │││ ││││  │     0x00007f67586fe7a7:   mov    0x20(%rsp),%r8
                │││ ││││  │     0x00007f67586fe7ac:   mov    0xa8(%r8),%r9d               ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                │││ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │││ ││││  │     0x00007f67586fe7b3:   test   %r9d,%r9d
                │╰│ ││││  │     0x00007f67586fe7b6:   jge    0x00007f67586fe5e7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │ │ ││││  │     0x00007f67586fe7bc:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                │ │ ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │ │ ││││  │     0x00007f67586fe7bf:   nop
                │ │ ││││  │     0x00007f67586fe7c0:   cmp    %r11d,%r10d
                │ ╰ ││││  │     0x00007f67586fe7c3:   jg     0x00007f67586fe79b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │   ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │   ││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │   ││││  │     0x00007f67586fe7c5:   cmp    $0x3,%r10d
                │  ╭││││  │     0x00007f67586fe7c9:   jle    0x00007f67586fe842
                │  │││││  │     0x00007f67586fe7cf:   nop                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │  │││││  │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                │  │││││  │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │  │││││↗ │     0x00007f67586fe7d0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.59%        │  ││││││ │     0x00007f67586fe7d2:   mov    0x20(%rsp),%r11
                │  ││││││ │     0x00007f67586fe7d7:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                │  ││││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%        │  ││││││ │     0x00007f67586fe7de:   xchg   %ax,%ax
                │  ││││││ │     0x00007f67586fe7e0:   test   %r8d,%r8d
                │  │╰││││ │     0x00007f67586fe7e3:   jge    0x00007f67586fe5e7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%        │  │ ││││ │     0x00007f67586fe7e9:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.53%        │  │ ││││ │     0x00007f67586fe7eb:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                │  │ ││││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%        │  │ ││││ │     0x00007f67586fe7f2:   test   %r11d,%r11d
                │  │ ╰│││ │     0x00007f67586fe7f5:   jge    0x00007f67586fe5e7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │  │  │││ │     0x00007f67586fe7fb:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.53%        │  │  │││ │     0x00007f67586fe7fd:   mov    0x20(%rsp),%r11
                │  │  │││ │     0x00007f67586fe802:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                │  │  │││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%        │  │  │││ │     0x00007f67586fe809:   test   %r8d,%r8d
                │  │  ╰││ │     0x00007f67586fe80c:   jge    0x00007f67586fe5e7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │  │   ││ │     0x00007f67586fe812:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   4.61%        │  │   ││ │     0x00007f67586fe814:   mov    0x458(%r15),%r8
                │  │   ││ │     0x00007f67586fe81b:   mov    0xa8(%r11),%r11d
   0.03%        │  │   ││ │     0x00007f67586fe822:   lea    -0x3(%r10),%r9d              ; ImmutableOopMap {[24]=Oop [32]=Oop [64]=Oop [80]=Derived_oop_[64] [76]=NarrowOop }
                │  │   ││ │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
                │  │   ││ │                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │  │   ││ │     0x00007f67586fe826:   test   %eax,(%r8)                   ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                │  │   ││ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │  │   ││ │                                                               ;   {poll}
   0.03%        │  │   ││ │     0x00007f67586fe829:   test   %r11d,%r11d
                │  │   ╰│ │     0x00007f67586fe82c:   jge    0x00007f67586fe5e7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │  │    │ │     0x00007f67586fe832:   add    $0xfffffffc,%r10d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                │  │    │ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │  │    │ │     0x00007f67586fe836:   cmp    $0x3,%r10d
                │  │    │ │     0x00007f67586fe83a:   nopw   0x0(%rax,%rax,1)
   0.03%        │  │    ╰ │     0x00007f67586fe840:   jg     0x00007f67586fe7d0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │  │      │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │  │      │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │  ↘      │     0x00007f67586fe842:   test   %r10d,%r10d
                │        ╭│     0x00007f67586fe845:   jle    0x00007f67586fe871
   0.00%        │        ││     0x00007f67586fe847:   nop                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │        ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                │        ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │        ││↗    0x00007f67586fe848:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.38%        │        │││    0x00007f67586fe84a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[24]=Oop [32]=Oop [64]=Oop [80]=Derived_oop_[64] [76]=NarrowOop }
                │        │││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
                │        │││                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │        │││    0x00007f67586fe851:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                │        │││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │        │││                                                              ;   {poll}
                │        │││    0x00007f67586fe854:   mov    0x20(%rsp),%r11
                │        │││    0x00007f67586fe859:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                │        │││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                │        │││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%        │        │││    0x00007f67586fe860:   test   %r11d,%r11d
                │        │╰│    0x00007f67586fe863:   jge    0x00007f67586fe5e7           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │        │ │    0x00007f67586fe869:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                │        │ │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │        │ │    0x00007f67586fe86c:   test   %r10d,%r10d
                │        │ ╰    0x00007f67586fe86f:   jg     0x00007f67586fe848           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                │        │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                │        │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                ↘        ↘      0x00007f67586fe871:   test   %ecx,%ecx
                            ╭   0x00007f67586fe873:   je     0x00007f67586fe897           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                            │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                            │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                            │   0x00007f67586fe875:   mov    %ecx,%ebx
   0.00%                    │   0x00007f67586fe877:   movabs $0x7f676fb51b10,%r10
                            │   0x00007f67586fe881:   call   *%r10
                            │   0x00007f67586fe884:   nopl   0x0(%rax,%rax,1)             ;*invokestatic currentTimeMillis {reexecute=0 rethrow=0 return_oop=0}
                            │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@207 (line 1883)
                            │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                            │                                                             ;   {other}
                            │   0x00007f67586fe88c:   mov    0x18(%rsp),%r10
   0.00%                    │   0x00007f67586fe891:   add    0x20(%r10),%rax              ;*ladd {reexecute=0 rethrow=0 return_oop=0}
                            │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@210 (line 1883)
                            │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                    │╭  0x00007f67586fe895:   jmp    0x00007f67586fe89b
   0.00%                    ↘│  0x00007f67586fe897:   xor    %ebx,%ebx
                             │  0x00007f67586fe899:   xor    %eax,%eax                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                             │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                             ↘  0x00007f67586fe89b:   nopl   0x0(%rax,%rax,1)
                                0x00007f67586fe8a0:   cmpb   $0x0,0x40(%r15)
   0.00%                        0x00007f67586fe8a5:   jne    0x00007f67586febe8
   0.00%                        0x00007f67586fe8ab:   mov    %ebx,(%rsp)
                                0x00007f67586fe8ae:   mov    %rax,0x28(%rsp)
                                0x00007f67586fe8b3:   mov    0x50(%rsp),%r11
   0.00%                        0x00007f67586fe8b8:   mov    0x4c(%rsp),%r10d
                                0x00007f67586fe8bd:   mov    %r10d,(%r11)
   0.00%                        0x00007f67586fe8c0:   mov    0x18(%rsp),%r10
   0.00%                        0x00007f67586fe8c5:   xor    %r11,%r10
   0.00%                        0x00007f67586fe8c8:   shr    $0x15,%r10
                                0x00007f67586fe8cc:   test   %r10,%r10
                                0x00007f67586fe8cf:   je     0x00007f67586fe8eb
                                0x00007f67586fe8d1:   shr    $0x9,%r11
                                0x00007f67586fe8d5:   movabs $0x7f67695bb000,%rdi
                                0x00007f67586fe8df:   add    %r11,%rdi
                                0x00007f67586fe8e2:   cmpb   $0x2,(%rdi)
                                0x00007f67586fe8e5:   jne    0x00007f67586fec78           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                                          ; - java.util.concurrent.ForkJoinPool::awaitWork@221 (line 1886)
                                                                                          ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                        0x00007f67586fe8eb:   mov    0x18(%rsp),%r8
....................................................................................................
  20.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.60%  <total for region 2>

....[Hottest Regions]...............................................................................
  20.48%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1167 
  13.60%              kernel  [unknown] 
   6.34%              kernel  [unknown] 
   2.79%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 10, compile id 1247 
   2.48%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1222 
   1.53%              kernel  [unknown] 
   1.26%              kernel  [unknown] 
   1.18%              kernel  [unknown] 
   1.09%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 2, compile id 1240 
   0.93%           libjvm.so  update_register_map1 
   0.85%              kernel  [unknown] 
   0.78%              kernel  [unknown] 
   0.74%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.67%              kernel  [unknown] 
   0.66%           libjvm.so  Parker::park 
   0.65%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.62%              kernel  [unknown] 
   0.59%  libpthread-2.31.so  __pthread_mutex_lock 
   0.59%              kernel  [unknown] 
   0.57%              kernel  [unknown] 
  41.62%  <...other 1222 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  43.19%              kernel  [unknown] 
  20.77%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1167 
   3.00%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1222 
   2.79%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 10, compile id 1247 
   1.50%         c2, level 4  java.lang.VirtualThread::unpark, version 4, compile id 1221 
   1.29%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 2, compile id 1240 
   1.20%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::getTask, version 4, compile id 961 
   1.13%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::schedule, version 2, compile id 1016 
   1.11%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::execute, version 2, compile id 995 
   1.11%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.93%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.93%           libjvm.so  update_register_map1 
   0.87%           libjvm.so  OopMapStream::find_next 
   0.76%           libjvm.so  Parker::park 
   0.74%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.68%           libjvm.so  vframeStream::vframeStream 
   0.67%           libjvm.so  Unsafe_Park 
   0.61%  libpthread-2.31.so  __pthread_mutex_lock 
   0.58%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1059 
   0.57%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
  15.58%  <...other 273 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  43.19%              kernel
  39.22%         c2, level 4
   9.89%           libjvm.so
   4.66%  libpthread-2.31.so
   1.17%        libc-2.31.so
   0.75%    Unknown, level 0
   0.55%              [vdso]
   0.29%                    
   0.14%          ld-2.31.so
   0.09%        runtime stub
   0.02%          libjava.so
   0.01%         interpreter
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%     perf-537436.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 83.33% complete, ETA 00:06:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1569.324 us/op
# Warmup Iteration   2: 1020.488 us/op
# Warmup Iteration   3: 1006.164 us/op
# Warmup Iteration   4: 1005.890 us/op
# Warmup Iteration   5: 1009.490 us/op
Iteration   1: 1022.401 us/op
Iteration   2: 1005.003 us/op
Iteration   3: 1004.162 us/op
Iteration   4: 1004.295 us/op
Iteration   5: 1005.578 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1008.288 ±(99.9%) 30.459 us/op [Average]
  (min, avg, max) = (1004.162, 1008.288, 1022.401), stdev = 7.910
  CI (99.9%): [977.828, 1038.747] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 234955 total address lines.
Perf output processed (skipped 56.082 seconds):
 Column 1: cycles (1735711 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  46.99%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.15%  <total for region 2>

....[Hottest Regions]...............................................................................
  46.99%              kernel  [unknown] 
  27.15%              kernel  [unknown] 
   4.01%              kernel  [unknown] 
   3.39%              kernel  [unknown] 
   2.94%              kernel  [unknown] 
   1.98%              kernel  [unknown] 
   1.84%              kernel  [unknown] 
   1.53%              kernel  [unknown] 
   1.14%              kernel  [unknown] 
   0.75%              kernel  [unknown] 
   0.56%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.39%              kernel  [unknown] 
   0.39%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   5.17%  <...other 3023 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.24%              kernel  [unknown] 
   0.11%           libjvm.so  ThreadsSMRSupport::free_list 
   0.08%        libc-2.31.so  _int_free 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.06%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.06%        libc-2.31.so  _int_malloc 
   0.05%        libc-2.31.so  malloc 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.02%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   0.96%  <...other 607 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.24%              kernel
   0.94%           libjvm.so
   0.48%        libc-2.31.so
   0.20%  libpthread-2.31.so
   0.07%         c2, level 4
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.01%                    
   0.01%        runtime stub
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%     perf-537508.map
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 88.89% complete, ETA 00:04:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1596.608 us/op
# Warmup Iteration   2: 59.067 us/op
# Warmup Iteration   3: 47.183 us/op
# Warmup Iteration   4: 47.434 us/op
# Warmup Iteration   5: 47.890 us/op
Iteration   1: 47.648 us/op
Iteration   2: 47.288 us/op
Iteration   3: 47.097 us/op
Iteration   4: 46.707 us/op
Iteration   5: 46.725 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  47.093 ±(99.9%) 1.528 us/op [Average]
  (min, avg, max) = (46.707, 47.093, 47.648), stdev = 0.397
  CI (99.9%): [45.565, 48.621] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 340148 total address lines.
Perf output processed (skipped 56.120 seconds):
 Column 1: cycles (559691 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1054 

                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                                                              ;   {other}
                    0x00007f22b86de14c:   mov    %rbx,%r10
                    0x00007f22b86de14f:   mov    %rbp,%r11
                    0x00007f22b86de152:   mov    %r13,%r8
                    0x00007f22b86de155:   mov    %r14d,%ebx
                    0x00007f22b86de158:   mov    (%rsp),%rdx
                    0x00007f22b86de15c:   nopl   0x0(%rax)
                    0x00007f22b86de160:   jmp    0x00007f22b86de409
                    0x00007f22b86de165:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%  ↗         0x00007f22b86de170:   mov    0x20(%rsp),%r13d
   0.01%  │         0x00007f22b86de175:   mov    %eax,%ebx
   0.00%  │         0x00007f22b86de177:   mov    %rbp,%r10
          │         0x00007f22b86de17a:   mov    (%rsp),%r11
   0.00%  │         0x00007f22b86de17e:   mov    0x8(%rsp),%ebp
   0.00%  │         0x00007f22b86de182:   mov    0x10(%rsp),%r8
   0.00%  │         0x00007f22b86de187:   mov    0x18(%rsp),%rcx
   0.00%  │         0x00007f22b86de18c:   mov    0x28(%rsp),%rdi              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%  │         0x00007f22b86de191:   mov    %r13d,%edx
   0.00%  │         0x00007f22b86de194:   shl    $0xd,%edx
   0.00%  │         0x00007f22b86de197:   xor    %r13d,%edx                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
   0.00%  │         0x00007f22b86de19a:   mov    %edx,%r9d
   0.00%  │         0x00007f22b86de19d:   shr    $0x11,%r9d
   0.00%  │         0x00007f22b86de1a1:   xor    %edx,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%  │         0x00007f22b86de1a4:   mov    %r9d,%r13d
          │         0x00007f22b86de1a7:   shl    $0x5,%r13d
   0.00%  │         0x00007f22b86de1ab:   xor    %r9d,%r13d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
   0.00%  │         0x00007f22b86de1ae:   test   %r10,%r10
          │         0x00007f22b86de1b1:   je     0x00007f22b86de91f           ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │         0x00007f22b86de1b7:   mov    %r13d,0x20(%rsp)
   0.00%  │         0x00007f22b86de1bc:   mov    %rcx,0x18(%rsp)
   0.00%  │         0x00007f22b86de1c1:   mov    %r8,0x10(%rsp)
   0.00%  │         0x00007f22b86de1c6:   mov    %ebp,0x8(%rsp)
   0.01%  │         0x00007f22b86de1ca:   mov    %r11,(%rsp)
   0.00%  │         0x00007f22b86de1ce:   mov    %r10,%rbp
   0.00%  │         0x00007f22b86de1d1:   mov    %rdi,0x28(%rsp)
   0.00%  │         0x00007f22b86de1d6:   mov    %ebx,%ecx                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%  │         0x00007f22b86de1d8:   mov    %r10,%rsi
   0.00%  │         0x00007f22b86de1db:   mov    %r11,%rdx
   0.00%  │         0x00007f22b86de1de:   mov    %r13d,%r8d
   0.00%  │         0x00007f22b86de1e1:   xchg   %ax,%ax
   0.00%  │         0x00007f22b86de1e3:   call   0x00007f22b86891a0           ; ImmutableOopMap {rbp=Oop [0]=Oop [40]=Oop [16]=Derived_oop_[40] }
          │                                                                   ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │                                                                   ;   {optimized virtual_call}
   0.01%  │         0x00007f22b86de1e8:   nopl   0x3d8(%rax,%rax,1)           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
          │                                                                   ;   {other}
   0.00%  │         0x00007f22b86de1f0:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rbp=Oop [0]=Oop [40]=Oop [16]=Derived_oop_[40] }
          │                                                                   ;*ifge {reexecute=1 rethrow=0 return_oop=0}
          │                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.01%  │         0x00007f22b86de1f7:   test   %eax,(%r10)                  ;   {poll}
   0.01%  │         0x00007f22b86de1fa:   test   %eax,%eax
   0.00%  │         0x00007f22b86de1fc:   nopl   0x0(%rax)
   0.00%  ╰         0x00007f22b86de200:   jge    0x00007f22b86de170           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%            0x00007f22b86de206:   mov    (%rsp),%r10
   0.00%            0x00007f22b86de20a:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%            0x00007f22b86de211:   mov    0x30(%rbp),%r11d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007f22b86de215:   test   %r11d,%r11d
                    0x00007f22b86de218:   jl     0x00007f22b86de945           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f22b86de21e:   mov    %r10,0x30(%rsp)
   0.00%            0x00007f22b86de223:   mov    %rbp,(%rsp)
   0.00%            0x00007f22b86de227:   mov    0xd8(%rbp),%r11              ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.23%            0x00007f22b86de22e:   mov    %r11,%r9
   0.00%            0x00007f22b86de231:   movabs $0xffff000000000000,%r10
                    0x00007f22b86de23b:   add    %r10,%r9
   0.00%            0x00007f22b86de23e:   movabs $0xffffffff00000000,%r10
                    0x00007f22b86de248:   and    %r10,%r9
   0.01%            0x00007f22b86de24b:   add    $0x10000,%r8d
                    0x00007f22b86de252:   mov    %r11d,%r10d
   0.00%            0x00007f22b86de255:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f22b86de25c:   movslq %r8d,%rcx                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007f22b86de25f:   or     %rcx,%r9                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f22b86de262:   or     $0x80000000,%r8d
                    0x00007f22b86de269:   mov    0x30(%rsp),%rbx
                    0x00007f22b86de26e:   mov    %r8d,0xa8(%rbx)
   0.01%            0x00007f22b86de275:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.43%            0x00007f22b86de27b:   mov    %r10d,0xc(%rbx)
                    0x00007f22b86de27f:   mov    %rbp,%r10
                    0x00007f22b86de282:   mov    %r11,%rax
   0.00%            0x00007f22b86de285:   lock cmpxchg %r9,0xd8(%r10)
   0.44%            0x00007f22b86de28e:   mov    %rax,%r8                     ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f22b86de291:   cmp    %rax,%r11
                    0x00007f22b86de294:   jne    0x00007f22b86de813           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f22b86de29a:   movabs $0xffff000000000000,%r10
   0.00%            0x00007f22b86de2a4:   test   %r9,%r10
                    0x00007f22b86de2a7:   jle    0x00007f22b86de55a           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f22b86de2ad:   xor    %r9d,%r9d
   0.00%            0x00007f22b86de2b0:   mov    (%rsp),%r10
   0.00%            0x00007f22b86de2b4:   mov    0x30(%rsp),%r11              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f22b86de2b9:   mov    0x34(%r10),%r8d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007f22b86de2bd:   data16 xchg %ax,%ax
   0.00%            0x00007f22b86de2c0:   mov    0xc(%r12,%r8,8),%ecx         ; implicit exception: dispatches to 0x00007f22b86dea94
   0.01%            0x00007f22b86de2c5:   mov    0xa8(%r11),%ebx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007f22b86de2cc:   test   %ebx,%ebx
                    0x00007f22b86de2ce:   jge    0x00007f22b86de51c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f22b86de2d4:   movzwl %cx,%ebx
   0.00%            0x00007f22b86de2d7:   shl    %ebx
   0.00%            0x00007f22b86de2d9:   or     $0xf,%ebx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f22b86de2dc:   mov    %ebx,%ecx
                    0x00007f22b86de2de:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f22b86de2e0:   test   %ecx,%ecx
           ╭        0x00007f22b86de2e2:   jle    0x00007f22b86de3b4           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007f22b86de2e8:   add    $0xfffffffe,%ebx
   0.00%   │        0x00007f22b86de2eb:   mov    %r11,%rdi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │↗       0x00007f22b86de2ee:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.61%   ││       0x00007f22b86de2f0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop rdi=Oop [40]=Oop [16]=Derived_oop_[40] }
           ││                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
           ││                                                                 ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ││                                                                 ;   {no_reloc}
   0.00%   ││       0x00007f22b86de2f7:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ││                                                                 ;   {poll}
           ││       0x00007f22b86de2fa:   mov    0xa8(%rdi),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%   ││       0x00007f22b86de301:   test   %r8d,%r8d
           ││       0x00007f22b86de304:   jge    0x00007f22b86de887           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   ││       0x00007f22b86de30a:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ││       0x00007f22b86de30c:   cmp    %ebx,%ecx
           │╰       0x00007f22b86de30e:   jg     0x00007f22b86de2ee           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f22b86de310:   cmp    $0x3,%ecx
           │ ╭      0x00007f22b86de313:   jle    0x00007f22b86de382
           │ │      0x00007f22b86de319:   nopl   0x0(%rax)                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%   │ │↗     0x00007f22b86de320:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.34%   │ ││     0x00007f22b86de322:   mov    %rdi,%r11
   0.00%   │ ││     0x00007f22b86de325:   mov    0xa8(%rdi),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.09%   │ ││     0x00007f22b86de32c:   test   %r8d,%r8d
           │ ││     0x00007f22b86de32f:   jge    0x00007f22b86de51c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ ││     0x00007f22b86de335:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.28%   │ ││     0x00007f22b86de337:   mov    0xa8(%rdi),%ebx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.10%   │ ││     0x00007f22b86de33d:   data16 xchg %ax,%ax
           │ ││     0x00007f22b86de340:   test   %ebx,%ebx
           │ ││     0x00007f22b86de342:   jge    0x00007f22b86de51c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ ││     0x00007f22b86de348:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   4.20%   │ ││     0x00007f22b86de34a:   mov    0xa8(%rdi),%ebx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.09%   │ ││     0x00007f22b86de350:   test   %ebx,%ebx
           │ ││     0x00007f22b86de352:   jge    0x00007f22b86de51c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ ││     0x00007f22b86de358:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   4.12%   │ ││     0x00007f22b86de35a:   mov    0x458(%r15),%r11
   0.00%   │ ││     0x00007f22b86de361:   mov    0xa8(%rdi),%ebx
   0.07%   │ ││     0x00007f22b86de367:   lea    -0x3(%rcx),%r8d              ; ImmutableOopMap {r10=Oop rdi=Oop [40]=Oop [16]=Derived_oop_[40] }
           │ ││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ ││                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ ││     0x00007f22b86de36b:   test   %eax,(%r11)                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ ││                                                               ;   {poll}
   0.02%   │ ││     0x00007f22b86de36e:   test   %ebx,%ebx
           │ ││     0x00007f22b86de370:   jge    0x00007f22b86de519           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ ││     0x00007f22b86de376:   add    $0xfffffffc,%ecx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │ ││     0x00007f22b86de379:   cmp    $0x3,%ecx
           │ ││     0x00007f22b86de37c:   nopl   0x0(%rax)
   0.03%   │ │╰     0x00007f22b86de380:   jg     0x00007f22b86de320           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
           │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │ ↘      0x00007f22b86de382:   test   %ecx,%ecx
           │   ╭    0x00007f22b86de384:   jle    0x00007f22b86de3b1
           │   │    0x00007f22b86de386:   xchg   %ax,%ax                      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │   │↗   0x00007f22b86de388:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.28%   │   ││   0x00007f22b86de38a:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop rdi=Oop [40]=Oop [16]=Derived_oop_[40] }
           │   ││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │   ││                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │   ││   0x00007f22b86de391:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │   ││                                                             ;   {poll}
           │   ││   0x00007f22b86de394:   mov    %rdi,%r11
           │   ││   0x00007f22b86de397:   mov    0xa8(%rdi),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%   │   ││   0x00007f22b86de39e:   xchg   %ax,%ax
           │   ││   0x00007f22b86de3a0:   test   %r8d,%r8d
           │   ││   0x00007f22b86de3a3:   jge    0x00007f22b86de51c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │   ││   0x00007f22b86de3a9:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │   ││   0x00007f22b86de3ab:   test   %ecx,%ecx
           │   │╰   0x00007f22b86de3ad:   jg     0x00007f22b86de388           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
           │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │   │ ╭  0x00007f22b86de3af:   jmp    0x00007f22b86de3b4
           │   ↘ │  0x00007f22b86de3b1:   mov    %rdi,%r11                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           │     │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
           │     │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ↘     ↘  0x00007f22b86de3b4:   test   %r9d,%r9d
                    0x00007f22b86de3b7:   jne    0x00007f22b86de72c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f22b86de3bd:   xor    %ebx,%ebx
   0.00%            0x00007f22b86de3bf:   xor    %edx,%edx                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%            0x00007f22b86de3c1:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007f22b86de3c6:   jne    0x00007f22b86de88f
   0.00%            0x00007f22b86de3cc:   mov    0x10(%rsp),%r8
   0.00%            0x00007f22b86de3d1:   mov    %r10,%r9
   0.00%            0x00007f22b86de3d4:   shr    $0x3,%r9
                    0x00007f22b86de3d8:   mov    %r9d,(%r8)
   0.00%            0x00007f22b86de3db:   mov    %r8,%r9
                    0x00007f22b86de3de:   mov    %r10,%rcx
   0.00%            0x00007f22b86de3e1:   xor    %r9,%rcx
                    0x00007f22b86de3e4:   shr    $0x15,%rcx
                    0x00007f22b86de3e8:   test   %rcx,%rcx
                    0x00007f22b86de3eb:   je     0x00007f22b86de409
                    0x00007f22b86de3ed:   shr    $0x9,%r9
                    0x00007f22b86de3f1:   movabs $0x7f22acb3f000,%rdi
                    0x00007f22b86de3fb:   add    %r9,%rdi
                    0x00007f22b86de3fe:   xchg   %ax,%ax
                    0x00007f22b86de400:   cmpb   $0x2,(%rdi)
                    0x00007f22b86de403:   jne    0x00007f22b86de0f8           ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  19.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  19.56%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1054 
   8.98%              kernel  [unknown] 
   4.61%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 8, compile id 1286 
   4.26%              kernel  [unknown] 
   2.26%           libjvm.so  update_register_map1 
   2.11%              kernel  [unknown] 
   1.63%         c2, level 4  java.lang.VirtualThread::unpark, version 2, compile id 917 
   1.38%           libjvm.so  vframeStream::vframeStream 
   1.29%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 2, compile id 1285 
   0.84%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 2, compile id 1285 
   0.83%           libjvm.so  OopMapStream::find_next 
   0.83%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::offer, version 6, compile id 1253 
   0.82%              [vdso]  __vdso_clock_gettime 
   0.79%              kernel  [unknown] 
   0.75%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.68%         c2, level 4  java.lang.VirtualThread::unpark, version 2, compile id 917 
   0.64%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::finishPoll, version 3, compile id 1171 
   0.64%           libjvm.so  OopMapStream::find_next 
   0.64%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::take, version 4, compile id 1179 
   0.62%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 2, compile id 1285 
  45.84%  <...other 1647 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  30.87%              kernel  [unknown] 
  20.28%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 1, compile id 1054 
   4.61%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 8, compile id 1286 
   2.76%         c2, level 4  java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec, version 2, compile id 1285 
   2.38%         c2, level 4  java.lang.VirtualThread::unpark, version 2, compile id 917 
   2.26%           libjvm.so  update_register_map1 
   1.99%           libjvm.so  OopMapStream::find_next 
   1.94%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 5, compile id 1210 
   1.71%           libjvm.so  vframeStream::vframeStream 
   1.56%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::offer, version 6, compile id 1253 
   1.37%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 7, compile id 1256 
   1.15%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 864 
   1.04%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::execute, version 2, compile id 981 
   0.96%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::take, version 4, compile id 1179 
   0.88%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::schedule, version 4, compile id 1243 
   0.85%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.85%              [vdso]  __vdso_clock_gettime 
   0.75%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.71%         c2, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::finishPoll, version 3, compile id 1171 
   0.70%         c2, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1239 
  20.38%  <...other 422 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  47.52%         c2, level 4
  30.87%              kernel
  14.63%           libjvm.so
   3.39%  libpthread-2.31.so
   1.36%        libc-2.31.so
   0.85%              [vdso]
   0.67%    Unknown, level 0
   0.46%                    
   0.15%          ld-2.31.so
   0.08%        runtime stub
   0.01%          libjava.so
   0.00%         interpreter
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%         c1, level 1
   0.00%    perf-1110908.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 94.44% complete, ETA 00:02:19
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 997.787 us/op
# Warmup Iteration   2: 581.262 us/op
# Warmup Iteration   3: 578.041 us/op
# Warmup Iteration   4: 577.290 us/op
# Warmup Iteration   5: 576.956 us/op
Iteration   1: 586.054 us/op
Iteration   2: 578.344 us/op
Iteration   3: 579.369 us/op
Iteration   4: 578.053 us/op
Iteration   5: 581.903 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  580.745 ±(99.9%) 12.833 us/op [Average]
  (min, avg, max) = (578.053, 580.745, 586.054), stdev = 3.333
  CI (99.9%): [567.911, 593.578] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 237515 total address lines.
Perf output processed (skipped 56.291 seconds):
 Column 1: cycles (3404562 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  50.33%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  23.99%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.33%              kernel  [unknown] 
  23.99%              kernel  [unknown] 
   3.77%              kernel  [unknown] 
   3.71%              kernel  [unknown] 
   2.33%              kernel  [unknown] 
   2.06%              kernel  [unknown] 
   1.94%              kernel  [unknown] 
   1.43%              kernel  [unknown] 
   0.74%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.59%              kernel  [unknown] 
   0.36%              kernel  [unknown] 
   0.33%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   5.26%  <...other 3336 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.61%              kernel  [unknown] 
   0.07%           libjvm.so  vframeStreamCommon::next 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.05%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  malloc 
   0.04%        libc-2.31.so  _int_free 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.04%           libjvm.so  Method::validate_bci_from_bcp 
   0.04%           libjvm.so  InstanceKlass::protection_domain 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%           libjvm.so  ThreadsSMRSupport::free_list 
   0.03%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.03%        libc-2.31.so  __memset_avx2_erms 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%         c2, level 4  java.util.concurrent.ThreadPoolExecutor::execute, version 2, compile id 797 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%  libpthread-2.31.so  __lll_lock_wait_private 
   0.02%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.72%  <...other 628 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.61%              kernel
   0.81%           libjvm.so
   0.29%        libc-2.31.so
   0.17%  libpthread-2.31.so
   0.06%         c2, level 4
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.01%    Unknown, level 0
   0.01%                    
   0.00%        runtime stub
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%    perf-1110980.map
   0.00%         interpreter
   0.00%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:42:33

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
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2     OBJECT_LOCK       VIRTUAL  avgt    5    31.123 ±  1.938  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2     OBJECT_LOCK      PLATFORM  avgt    5   563.977 ± 13.612  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2  REENTRANT_LOCK       VIRTUAL  avgt    5    31.642 ±  1.551  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2  REENTRANT_LOCK      PLATFORM  avgt    5   563.035 ± 15.569  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2         NO_LOCK       VIRTUAL  avgt    5    30.553 ±  0.750  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2         NO_LOCK      PLATFORM  avgt    5   565.461 ± 21.657  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2         NO_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2     OBJECT_LOCK       VIRTUAL  avgt    5    39.068 ±  0.917  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2     OBJECT_LOCK      PLATFORM  avgt    5  1005.544 ± 19.015  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2  REENTRANT_LOCK       VIRTUAL  avgt    5   125.264 ±  5.789  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2  REENTRANT_LOCK      PLATFORM  avgt    5  1014.792 ± 14.549  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2         NO_LOCK       VIRTUAL  avgt    5    43.678 ±  0.469  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2         NO_LOCK      PLATFORM  avgt    5   589.323 ±  9.116  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2         NO_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2     OBJECT_LOCK       VIRTUAL  avgt    5    38.489 ±  0.895  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2     OBJECT_LOCK      PLATFORM  avgt    5   944.173 ± 11.135  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2  REENTRANT_LOCK       VIRTUAL  avgt    5   172.585 ± 10.021  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2  REENTRANT_LOCK      PLATFORM  avgt    5  1008.288 ± 30.459  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2         NO_LOCK       VIRTUAL  avgt    5    47.093 ±  1.528  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2         NO_LOCK      PLATFORM  avgt    5   580.745 ± 12.833  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2         NO_LOCK      PLATFORM  avgt            NaN             ---
