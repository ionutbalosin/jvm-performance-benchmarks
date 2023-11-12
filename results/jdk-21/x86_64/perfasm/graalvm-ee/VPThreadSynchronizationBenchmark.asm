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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:30:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 110.089 us/op
# Warmup Iteration   2: 45.450 us/op
# Warmup Iteration   3: 30.550 us/op
# Warmup Iteration   4: 30.121 us/op
# Warmup Iteration   5: 30.153 us/op
Iteration   1: 30.370 us/op
Iteration   2: 30.003 us/op
Iteration   3: 30.007 us/op
Iteration   4: 30.079 us/op
Iteration   5: 30.114 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  30.115 ±(99.9%) 0.579 us/op [Average]
  (min, avg, max) = (30.003, 30.115, 30.370), stdev = 0.150
  CI (99.9%): [29.536, 30.693] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 459151 total address lines.
Perf output processed (skipped 60.801 seconds):
 Column 1: cycles (168270 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1645 

                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f143aea4ddc:   mov    0x120(%rsp),%r8
          ╭         0x00007f143aea4de4:   jmp    0x00007f143aea4e0c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │         0x00007f143aea4de9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │         0x00007f143aea4df4:   data16 data16 xchg %ax,%ax
          │         0x00007f143aea4df8:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗        0x00007f143aea4e00:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rbx=Oop r10=Oop [124]=NarrowOop [136]=Oop [152]=Oop [160]=Oop }
          ││                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││        0x00007f143aea4e07:   test   %eax,(%rcx)                  ;   {poll}
   0.00%  ││        0x00007f143aea4e09:   mov    %rax,%rsi                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘│        0x00007f143aea4e0c:   mov    %esi,0xc(%rbx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f143aea4e0f:   mov    %rsi,%rcx
           │        0x00007f143aea4e12:   add    0xe0(%rsp),%rcx              ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f143aea4e1a:   mov    %rcx,%rax
   0.00%   │        0x00007f143aea4e1d:   and    %r8,%rax                     ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f143aea4e20:   mov    %rax,%rdi
           │        0x00007f143aea4e23:   or     %rdx,%rdi                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f143aea4e26:   mov    %rsi,%rax
   0.00%   │        0x00007f143aea4e29:   lock cmpxchg %rdi,0xd8(%r10)        ;* unwind (locked if synchronized)
           │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.20%   │        0x00007f143aea4e32:   cmp    %rsi,%rax
           ╰        0x00007f143aea4e35:   jne    0x00007f143aea4e00           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4e37:   and    0xe0(%rsp),%rcx              ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4e3f:   nop
                    0x00007f143aea4e40:   cmp    $0x1,%rcx
                    0x00007f143aea4e44:   jl     0x00007f143aeadd3a           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f143aea4e4a:   mov    0x34(%r10),%eax              ; ImmutableOopMap {rbx=Oop r10=Oop [124]=NarrowOop [136]=Oop [152]=Oop [160]=Oop }
                                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4e4e:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f143aeb0ec5
   0.00%            0x00007f143aea4e55:   mov    $0x0,%r11d
                    0x00007f143aea4e5b:   mov    %r11d,0xbc(%rsp)
   0.00%            0x00007f143aea4e63:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4e6a:   test   %r8d,%r8d
                    0x00007f143aea4e6d:   jge    0x00007f143aeae2de           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4e73:   and    $0xffff,%eax                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f143aea4e79:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4e7b:   or     $0xf,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4e7e:   lea    -0x2(%rax),%r9d
   0.00%    ╭       0x00007f143aea4e82:   jmp    0x00007f143aea4eb4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │       0x00007f143aea4e87:   data16 data16 nopw 0x0(%rax,%rax,1)
            │       0x00007f143aea4e92:   data16 data16 xchg %ax,%ax
            │       0x00007f143aea4e96:   data16 nopw 0x0(%rax,%rax,1)        ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │↗      0x00007f143aea4ea0:   pause                               ;* unwind (locked if synchronized)
            ││                                                                ; - java.lang.Thread::onSpinWait@-3
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.62%    ││      0x00007f143aea4ea2:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││      0x00007f143aea4ea9:   test   %r8d,%r8d
            ││      0x00007f143aea4eac:   jge    0x00007f143aeae552           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││      0x00007f143aea4eb2:   mov    %ecx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ↘│      0x00007f143aea4eb4:   mov    %eax,%ecx
   0.00%     │      0x00007f143aea4eb6:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │      0x00007f143aea4eb8:   cmp    %ecx,%r9d
             ╰      0x00007f143aea4ebb:   jle    0x00007f143aea4ea0
   0.00%            0x00007f143aea4ebd:   mov    %r8d,%r9d
   0.00%            0x00007f143aea4ec0:   mov    %eax,%r8d
   0.00%      ╭     0x00007f143aea4ec3:   jmp    0x00007f143aea4f31
              │     0x00007f143aea4ec8:   data16 data16 nopw 0x0(%rax,%rax,1)
              │     0x00007f143aea4ed3:   data16 data16 xchg %ax,%ax
              │     0x00007f143aea4ed7:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │↗    0x00007f143aea4ee0:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.12%      ││    0x00007f143aea4ee2:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f143aea4ee9:   test   %r9d,%r9d
              ││    0x00007f143aea4eec:   jge    0x00007f143aeae0cb           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007f143aea4ef2:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.11%      ││    0x00007f143aea4ef4:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f143aea4efb:   nopl   0x0(%rax,%rax,1)
              ││    0x00007f143aea4f00:   test   %r9d,%r9d
              ││    0x00007f143aea4f03:   jge    0x00007f143aeae0f9           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││                                                              ;   {no_reloc}
              ││    0x00007f143aea4f09:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.02%      ││    0x00007f143aea4f0b:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f143aea4f12:   test   %r9d,%r9d
              ││    0x00007f143aea4f15:   jge    0x00007f143aeae0fe           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007f143aea4f1b:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.08%      ││    0x00007f143aea4f1d:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f143aea4f24:   test   %r9d,%r9d
              ││    0x00007f143aea4f27:   jge    0x00007f143aeae103           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007f143aea4f2d:   lea    -0x4(%r8),%r8d
   0.00%      ↘│    0x00007f143aea4f31:   mov    %r8d,%ecx
   0.02%       │    0x00007f143aea4f34:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │    0x00007f143aea4f36:   cmp    $0x5,%ecx
               ╰    0x00007f143aea4f39:   jge    0x00007f143aea4ee0
                ╭   0x00007f143aea4f3b:   jmp    0x00007f143aea4f60           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │↗  0x00007f143aea4f40:   pause                               ;* unwind (locked if synchronized)
                ││                                                            ; - java.lang.Thread::onSpinWait@-3
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.28%        ││  0x00007f143aea4f42:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ││  0x00007f143aea4f49:   test   %r9d,%r9d
                ││  0x00007f143aea4f4c:   jge    0x00007f143aeae55a           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                ││  0x00007f143aea4f52:   data16 nopw 0x0(%rax,%rax,1)
                ││  0x00007f143aea4f5c:   data16 data16 xchg %ax,%ax
   0.01%        ↘│  0x00007f143aea4f60:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                 │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  0x00007f143aea4f63:   cmp    $0x1,%r8d
                 ╰  0x00007f143aea4f67:   jge    0x00007f143aea4f40           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4f69:   test   %r9d,%r9d
                    0x00007f143aea4f6c:   jge    0x00007f143aeae05b           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f143aea4f72:   test   %r11d,%r11d
                    0x00007f143aea4f75:   jne    0x00007f143aeadf32           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f143aea4f7b:   movq   $0x0,0xa8(%rsp)
                    0x00007f143aea4f87:   mov    0x380(%r15),%rsi
                    0x00007f143aea4f8e:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                              ; - java.lang.Thread::currentThread@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%            0x00007f143aea4f91:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007f143aea4f96:   jne    0x00007f143aeadf51
                    0x00007f143aea4f9c:   mov    0x7c(%rsp),%r8d
                    0x00007f143aea4fa1:   mov    %r8d,0x5c(%rdx)
   0.01%            0x00007f143aea4fa5:   mov    %rdx,%rsi
                    0x00007f143aea4fa8:   xor    %r10,%rsi
                    0x00007f143aea4fab:   test   $0xffffffffffe00000,%rsi
                    0x00007f143aea4fb2:   je     0x00007f143aeadf86
                    0x00007f143aea4fb8:   nopl   0x0(%rax,%rax,1)
                    0x00007f143aea4fc0:   test   %r10,%r10
                    0x00007f143aea4fc3:   je     0x00007f143aeae00e
                    0x00007f143aea4fc9:   mov    0xf0(%rsp),%r11
                    0x00007f143aea4fd1:   shr    $0x9,%rdx                    ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  14.58%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  10.59%  <total for region 2>

....[Hottest Regions]...............................................................................
  14.58%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1645 
  10.59%              kernel  [unknown] 
   5.50%           libjvm.so  update_register_map1 
   4.79%              kernel  [unknown] 
   2.35%           libjvm.so  vframeStream::vframeStream 
   2.01%           libjvm.so  OopMapStream::find_next 
   1.68%           libjvm.so  OopMapStream::find_next 
   1.54%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1645 
   1.33%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1645 
   1.27%           libjvm.so  OopMapStream::find_next 
   1.20%              kernel  [unknown] 
   1.05%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1552 
   1.02%              kernel  [unknown] 
   0.97%              kernel  [unknown] 
   0.91%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1550 
   0.86%                      <unknown> 
   0.84%           libjvm.so  methodHandle::~methodHandle 
   0.71%              kernel  [unknown] 
   0.68%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1550 
   0.64%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1550 
  45.49%  <...other 1573 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.92%              kernel  [unknown] 
  20.28%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1645 
   5.51%           libjvm.so  update_register_map1 
   4.96%           libjvm.so  OopMapStream::find_next 
   3.83%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1550 
   3.22%           libjvm.so  vframeStream::vframeStream 
   2.86%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1601 
   1.54%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1552 
   1.15%                      <unknown> 
   0.97%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::tryTerminate, version 4, compile id 1681 
   0.84%           libjvm.so  methodHandle::~methodHandle 
   0.83%      jvmci, level 4  java.util.concurrent.Executors::newFixedThreadPool, version 2, compile id 1597 
   0.77%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.71%           libjvm.so  frame::sender 
   0.69%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.60%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.58%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject::awaitNanos, version 5, compile id 1656 
   0.57%           libjvm.so  Unsafe_Park 
   0.54%      jvmci, level 4  java.util.concurrent.ConcurrentHashMap$KeySetView::add, version 2, compile id 1531 
   0.53%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::processWorkerExit, version 4, compile id 1682 
  14.10%  <...other 333 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  34.92%              kernel
  34.06%      jvmci, level 4
  24.59%           libjvm.so
   3.57%  libpthread-2.31.so
   1.15%                    
   0.54%    Unknown, level 0
   0.44%              [vdso]
   0.41%          ld-2.31.so
   0.27%        libc-2.31.so
   0.03%         interpreter
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
   0.00%    perf-3347921.map
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 5.56% complete, ETA 00:33:29
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1155.350 us/op
# Warmup Iteration   2: 619.640 us/op
# Warmup Iteration   3: 578.085 us/op
# Warmup Iteration   4: 575.797 us/op
# Warmup Iteration   5: 573.758 us/op
Iteration   1: 589.219 us/op
Iteration   2: 576.698 us/op
Iteration   3: 575.532 us/op
Iteration   4: 575.216 us/op
Iteration   5: 576.171 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  578.567 ±(99.9%) 23.035 us/op [Average]
  (min, avg, max) = (575.216, 578.567, 589.219), stdev = 5.982
  CI (99.9%): [555.532, 601.602] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 375344 total address lines.
Perf output processed (skipped 60.682 seconds):
 Column 1: cycles (2682698 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  55.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.74%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.94%               kernel  [unknown] 
  20.74%               kernel  [unknown] 
   3.19%               kernel  [unknown] 
   2.39%               kernel  [unknown] 
   1.92%               kernel  [unknown] 
   1.78%               kernel  [unknown] 
   1.69%               kernel  [unknown] 
   1.38%               kernel  [unknown] 
   0.85%               kernel  [unknown] 
   0.66%               kernel  [unknown] 
   0.65%               kernel  [unknown] 
   0.62%               kernel  [unknown] 
   0.57%               kernel  [unknown] 
   0.45%               kernel  [unknown] 
   0.36%               kernel  [unknown] 
   0.32%               kernel  [unknown] 
   0.30%               kernel  [unknown] 
   0.28%               kernel  [unknown] 
   0.22%               kernel  [unknown] 
   0.19%               kernel  [unknown] 
   5.51%  <...other 3678 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.53%               kernel  [unknown] 
   0.07%            libjvm.so  JVM_GetStackAccessControlContext 
   0.06%            libjvm.so  vframeStreamCommon::next 
   0.04%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.04%         libc-2.31.so  _int_malloc 
   0.04%         libc-2.31.so  _int_free 
   0.04%         libc-2.31.so  malloc 
   0.04%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1355 
   0.04%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%            libjvm.so  InstanceKlass::protection_domain 
   0.03%            libjvm.so  Method::validate_bci_from_bcp 
   0.03%   libpthread-2.31.so  __pthread_mutex_lock 
   0.03%            libjvm.so  vframeStream::vframeStream 
   0.03%         libc-2.31.so  malloc_consolidate 
   0.02%   libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%            libjvm.so  ThreadsSMRSupport::free_list 
   0.02%   libpthread-2.31.so  __lll_lock_wait 
   0.02%            libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%         libc-2.31.so  __memset_avx2_erms 
   0.82%  <...other 736 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.53%               kernel
   0.84%            libjvm.so
   0.28%         libc-2.31.so
   0.19%   libpthread-2.31.so
   0.09%       jvmci, level 4
   0.02%           ld-2.31.so
   0.02%                     
   0.02%     Unknown, level 0
   0.01%               [vdso]
   0.01%  libjvmcicompiler.so
   0.00%           libjava.so
   0.00%         runtime stub
   0.00%     perf-3347996.map
   0.00%       hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 11.11% complete, ETA 00:39:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 132.915 us/op
# Warmup Iteration   2: 44.037 us/op
# Warmup Iteration   3: 31.864 us/op
# Warmup Iteration   4: 30.499 us/op
# Warmup Iteration   5: 30.542 us/op
Iteration   1: 30.677 us/op
Iteration   2: 30.450 us/op
Iteration   3: 30.503 us/op
Iteration   4: 30.461 us/op
Iteration   5: 30.562 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  30.531 ±(99.9%) 0.358 us/op [Average]
  (min, avg, max) = (30.450, 30.531, 30.677), stdev = 0.093
  CI (99.9%): [30.173, 30.888] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 480945 total address lines.
Perf output processed (skipped 60.983 seconds):
 Column 1: cycles (165990 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1682 

                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f7966ea3080:   lea    -0x2(%r11),%edx
          ╭        0x00007f7966ea3084:   jmp    0x00007f7966ea3138           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │        0x00007f7966ea3089:   data16 data16 nopw 0x0(%rax,%rax,1)
          │        0x00007f7966ea3094:   data16 data16 xchg %ax,%ax
          │        0x00007f7966ea3098:   nopl   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%  │↗       0x00007f7966ea30a0:   pause                               ;* unwind (locked if synchronized)
          ││                                                                 ; - java.lang.Thread::onSpinWait@-3
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.98%  ││       0x00007f7966ea30a2:   mov    0xa8(%rbx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││       0x00007f7966ea30a8:   test   %edi,%edi
          ││       0x00007f7966ea30aa:   jge    0x00007f7966ea85d0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007f7966ea30b0:   pause                               ;* unwind (locked if synchronized)
          ││                                                                 ; - java.lang.Thread::onSpinWait@-3
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.00%  ││       0x00007f7966ea30b2:   mov    0xa8(%rbx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││       0x00007f7966ea30b8:   test   %edi,%edi
          ││       0x00007f7966ea30ba:   jge    0x00007f7966ea85d0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007f7966ea30c0:   pause                               ;* unwind (locked if synchronized)
          ││                                                                 ; - java.lang.Thread::onSpinWait@-3
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.91%  ││       0x00007f7966ea30c2:   mov    0xa8(%rbx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││       0x00007f7966ea30c8:   test   %edi,%edi
          ││       0x00007f7966ea30ca:   jge    0x00007f7966ea85d0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007f7966ea30d0:   pause                               ;* unwind (locked if synchronized)
          ││                                                                 ; - java.lang.Thread::onSpinWait@-3
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.05%  ││       0x00007f7966ea30d2:   mov    0xa8(%rbx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││       0x00007f7966ea30d8:   test   %edi,%edi
          ││       0x00007f7966ea30da:   jge    0x00007f7966ea85d0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007f7966ea30e0:   lea    -0x4(%r11),%r11d
          ││       0x00007f7966ea30e4:   nopl   0x0(%rax,%rax,1)
   0.02%  ││       0x00007f7966ea30ec:   data16 data16 xchg %ax,%ax
   0.00%  ││   ↗   0x00007f7966ea30f0:   mov    %r11d,%edx
          ││   │   0x00007f7966ea30f3:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          ││   │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││   │   0x00007f7966ea30f5:   cmp    $0x5,%edx
          │╰   │   0x00007f7966ea30f8:   jge    0x00007f7966ea30a0
   0.00%  │ ╭  │   0x00007f7966ea30fa:   jmp    0x00007f7966ea3110
          │ │  │   0x00007f7966ea30ff:   nop                                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │ │  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │ │ ↗│   0x00007f7966ea3100:   pause                               ;* unwind (locked if synchronized)
          │ │ ││                                                             ; - java.lang.Thread::onSpinWait@-3
          │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.19%  │ │ ││   0x00007f7966ea3102:   mov    0xa8(%rbx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ │ ││                                                             ;   {no_reloc}
   0.00%  │ │ ││   0x00007f7966ea3108:   test   %edi,%edi
          │ │ ││   0x00007f7966ea310a:   jge    0x00007f7966ea85d0           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ↘ ││   0x00007f7966ea3110:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││   0x00007f7966ea3113:   cmp    $0x1,%r11d
          │  ╭││   0x00007f7966ea3117:   jl     0x00007f7966ea3146
   0.01%  │  │╰│   0x00007f7966ea311d:   jmp    0x00007f7966ea3100
          │  │ │   0x00007f7966ea311f:   nop                                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │  │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │  │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │  │ │↗  0x00007f7966ea3120:   pause                               ;* unwind (locked if synchronized)
          │  │ ││                                                            ; - java.lang.Thread::onSpinWait@-3
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.59%  │  │ ││  0x00007f7966ea3122:   mov    0xa8(%rbx),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │  │ ││  0x00007f7966ea3129:   test   %r11d,%r11d
          │  │ ││  0x00007f7966ea312c:   jge    0x00007f7966ea8a85           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │  │ ││  0x00007f7966ea3132:   mov    %r11d,%edi
          │  │ ││  0x00007f7966ea3135:   mov    %esi,%r11d                   ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘  │ ││  0x00007f7966ea3138:   mov    %r11d,%esi
             │ ││  0x00007f7966ea313b:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │ ││  0x00007f7966ea313d:   data16 xchg %ax,%ax
   0.00%     │ ││  0x00007f7966ea3140:   cmp    %esi,%edx
             │ ╰│  0x00007f7966ea3142:   jg     0x00007f7966ea30f0
   0.00%     │  ╰  0x00007f7966ea3144:   jmp    0x00007f7966ea3120           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
             │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     ↘     0x00007f7966ea3146:   test   %edi,%edi
                   0x00007f7966ea3148:   jge    0x00007f7966ea85ad           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f7966ea314e:   test   %r8d,%r8d
                   0x00007f7966ea3151:   jne    0x00007f7966ea822f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f7966ea3157:   movq   $0x0,0x90(%rsp)
   0.00%           0x00007f7966ea3163:   mov    0x380(%r15),%rsi
   0.00%           0x00007f7966ea316a:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                             ; - java.lang.Thread::currentThread@-3
                                                                             ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%           0x00007f7966ea316d:   cmpb   $0x0,0x40(%r15)
   0.00%           0x00007f7966ea3172:   jne    0x00007f7966ea84f1
                   0x00007f7966ea3178:   mov    0x7c(%rsp),%r8d
                   0x00007f7966ea317d:   mov    %r8d,0x5c(%rdx)
   0.00%           0x00007f7966ea3181:   mov    %rdx,%rsi
   0.00%           0x00007f7966ea3184:   xor    %r10,%rsi
                   0x00007f7966ea3187:   test   $0xffffffffffe00000,%rsi
                   0x00007f7966ea318e:   je     0x00007f7966ea8526
                   0x00007f7966ea3194:   test   %r10,%r10
                   0x00007f7966ea3197:   je     0x00007f7966ea856f
                   0x00007f7966ea319d:   mov    0xe8(%rsp),%r11
                   0x00007f7966ea31a5:   shr    $0x9,%rdx
                   0x00007f7966ea31a9:   cmpb   $0x2,(%rdx,%r11,1)
                   0x00007f7966ea31ae:   jne    0x00007f7966ea857c           ;* unwind (locked if synchronized)
                                                                             ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                             ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  13.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  10.18%  <total for region 2>

....[Hottest Regions]...............................................................................
  13.84%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1682 
  10.18%              kernel  [unknown] 
   5.83%           libjvm.so  update_register_map1 
   4.66%              kernel  [unknown] 
   2.87%           libjvm.so  vframeStream::vframeStream 
   2.10%           libjvm.so  OopMapStream::find_next 
   1.72%           libjvm.so  OopMapStream::find_next 
   1.54%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1682 
   1.32%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1682 
   1.27%           libjvm.so  OopMapStream::find_next 
   1.20%              kernel  [unknown] 
   1.13%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1583 
   0.94%              kernel  [unknown] 
   0.93%                      <unknown> 
   0.89%              kernel  [unknown] 
   0.81%           libjvm.so  methodHandle::~methodHandle 
   0.77%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1682 
   0.77%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1572 
   0.75%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 3, compile id 1657 
   0.68%              kernel  [unknown] 
  45.81%  <...other 1689 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.16%              kernel  [unknown] 
  19.80%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1682 
   5.84%           libjvm.so  update_register_map1 
   5.08%           libjvm.so  OopMapStream::find_next 
   4.21%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1572 
   3.61%           libjvm.so  vframeStream::vframeStream 
   2.30%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 3, compile id 1657 
   1.63%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1583 
   1.34%                      <unknown> 
   1.05%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::tryTerminate, version 4, compile id 1736 
   0.81%           libjvm.so  methodHandle::~methodHandle 
   0.79%           libjvm.so  frame::sender 
   0.79%      jvmci, level 4  java.util.concurrent.ForkJoinPool::poolSubmit, version 4, compile id 1687 
   0.75%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.75%      jvmci, level 4  java.util.concurrent.Executors::newFixedThreadPool, version 3, compile id 1638 
   0.71%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.60%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::processWorkerExit, version 4, compile id 1737 
   0.57%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject::awaitNanos, version 4, compile id 1700 
   0.56%           libjvm.so  Parker::park 
   0.55%      jvmci, level 4  java.util.concurrent.ConcurrentHashMap$KeySetView::add, version 2, compile id 1553 
  14.10%  <...other 347 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  34.16%              kernel
  34.03%      jvmci, level 4
  25.47%           libjvm.so
   3.54%  libpthread-2.31.so
   1.34%                    
   0.43%              [vdso]
   0.38%    Unknown, level 0
   0.36%          ld-2.31.so
   0.24%        libc-2.31.so
   0.03%         interpreter
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
   0.01%     perf-134811.map
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 16.67% complete, ETA 00:34:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1108.683 us/op
# Warmup Iteration   2: 636.070 us/op
# Warmup Iteration   3: 589.205 us/op
# Warmup Iteration   4: 586.034 us/op
# Warmup Iteration   5: 587.314 us/op
Iteration   1: 595.990 us/op
Iteration   2: 588.511 us/op
Iteration   3: 587.284 us/op
Iteration   4: 587.555 us/op
Iteration   5: 589.416 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  589.751 ±(99.9%) 13.815 us/op [Average]
  (min, avg, max) = (587.284, 589.751, 595.990), stdev = 3.588
  CI (99.9%): [575.936, 603.566] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 373084 total address lines.
Perf output processed (skipped 60.516 seconds):
 Column 1: cycles (3156156 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  56.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.52%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.30%              kernel  [unknown] 
  20.52%              kernel  [unknown] 
   3.07%              kernel  [unknown] 
   2.35%              kernel  [unknown] 
   1.87%              kernel  [unknown] 
   1.82%              kernel  [unknown] 
   1.69%              kernel  [unknown] 
   1.39%              kernel  [unknown] 
   0.80%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.57%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.36%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   5.60%  <...other 3839 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.52%              kernel  [unknown] 
   0.07%           libjvm.so  vframeStreamCommon::next 
   0.07%           libjvm.so  JVM_GetStackAccessControlContext 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.04%        libc-2.31.so  _int_free 
   0.04%           libjvm.so  InstanceKlass::protection_domain 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  malloc 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1343 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.02%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%  libpthread-2.31.so  __lll_lock_wait 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%                      <unknown> 
   0.83%  <...other 632 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.52%              kernel
   0.86%           libjvm.so
   0.27%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.10%      jvmci, level 4
   0.02%                    
   0.02%          ld-2.31.so
   0.02%    Unknown, level 0
   0.01%              [vdso]
   0.00%          libjava.so
   0.00%        runtime stub
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%     perf-134878.map
   0.00%         interpreter
   0.00%        libjimage.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 22.22% complete, ETA 00:35:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 125.419 us/op
# Warmup Iteration   2: 41.182 us/op
# Warmup Iteration   3: 30.367 us/op
# Warmup Iteration   4: 29.991 us/op
# Warmup Iteration   5: 29.973 us/op
Iteration   1: 30.324 us/op
Iteration   2: 29.975 us/op
Iteration   3: 30.060 us/op
Iteration   4: 29.974 us/op
Iteration   5: 30.026 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  30.072 ±(99.9%) 0.560 us/op [Average]
  (min, avg, max) = (29.974, 30.072, 30.324), stdev = 0.145
  CI (99.9%): [29.512, 30.632] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 454506 total address lines.
Perf output processed (skipped 60.999 seconds):
 Column 1: cycles (171278 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1704 

                    0x00007f8882e567e9:   mov    %esi,%ecx
                    0x00007f8882e567eb:   mov    %r11,%rsi
                    0x00007f8882e567ee:   call   0x00007f88828ebd00           ;   {runtime_call Stub&lt;write_barrier_pre(Object)void&gt;}
                    0x00007f8882e567f3:   nop
                    0x00007f8882e567f4:   mov    %r11,0x50(%rsp)
                    0x00007f8882e567f9:   jmp    0x00007f8882e56720           ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::compareAndSetReference@-3
                                                                              ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                              ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%            0x00007f8882e567fe:   mov    0x88(%rsp),%rdx
   0.00%            0x00007f8882e56806:   mov    0x90(%rsp),%r10
                    0x00007f8882e5680e:   mov    $0x10000,%eax
                    0x00007f8882e56813:   add    0xa8(%rdx),%eax              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007f8882e56819:   mov    0x30(%r10),%r11d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e5681d:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e56823:   test   %r11d,%r11d
                    0x00007f8882e56826:   jl     0x00007f8882e5cdf3           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e5682c:   mov    0x130(%rsp),%r9
   0.00%            0x00007f8882e56834:   mov    %rdx,%rbx
                    0x00007f8882e56837:   mov    0xd8(%r10),%r11              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.11%            0x00007f8882e5683e:   mov    %eax,%r8d
                    0x00007f8882e56841:   or     $0x80000000,%r8d             ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e56848:   mov    %r8d,0xa8(%rbx)
                    0x00007f8882e5684f:   lock addl $0x0,(%rsp)               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.13%            0x00007f8882e56854:   mov    %eax,%r8d                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e56857:   mov    0x120(%rsp),%rdi
                    0x00007f8882e5685f:   mov    0x128(%rsp),%rcx
   0.00%  ╭         0x00007f8882e56867:   jmp    0x00007f8882e5688c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │         0x00007f8882e5686c:   data16 data16 nopw 0x0(%rax,%rax,1)
          │         0x00007f8882e56877:   data16 data16 xchg %ax,%ax
          │         0x00007f8882e5687b:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗        0x00007f8882e56880:   mov    0x458(%r15),%rdx             ; ImmutableOopMap {rbx=Oop r10=Oop [112]=Oop [124]=NarrowOop [136]=Oop [144]=Oop }
          ││                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││        0x00007f8882e56887:   test   %eax,(%rdx)                  ;   {poll}
          ││        0x00007f8882e56889:   mov    %rax,%r11                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘│        0x00007f8882e5688c:   mov    %r11d,0xc(%rbx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f8882e56890:   mov    %r11,%rdx
           │        0x00007f8882e56893:   add    %rcx,%rdx                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007f8882e56896:   mov    %rdx,%rax
           │        0x00007f8882e56899:   and    %rdi,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f8882e5689c:   mov    %rax,%rsi
           │        0x00007f8882e5689f:   or     %r8,%rsi                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%   │        0x00007f8882e568a2:   mov    %r11,%rax
           │        0x00007f8882e568a5:   lock cmpxchg %rsi,0xd8(%r10)        ;* unwind (locked if synchronized)
           │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.24%   │        0x00007f8882e568ae:   cmp    %r11,%rax
           ╰        0x00007f8882e568b1:   jne    0x00007f8882e56880           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e568b3:   and    %rcx,%rdx                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e568b6:   cmp    $0x1,%rdx
                    0x00007f8882e568ba:   jl     0x00007f8882e5be19           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e568c0:   mov    0x34(%r10),%eax              ; ImmutableOopMap {rbx=Oop r10=Oop [112]=Oop [124]=NarrowOop [136]=Oop [144]=Oop }
                                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e568c4:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f8882e5e459
   0.00%            0x00007f8882e568cb:   mov    $0x0,%r11d
   0.00%            0x00007f8882e568d1:   mov    0xd8(%rsp),%rbp
                    0x00007f8882e568d9:   mov    %r11d,0xac(%rsp)
                    0x00007f8882e568e1:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e568e8:   test   %r8d,%r8d
                    0x00007f8882e568eb:   jge    0x00007f8882e5c53d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e568f1:   and    $0xffff,%eax                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e568f7:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e568f9:   or     $0xf,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e568fc:   lea    -0x2(%rax),%r9d
   0.00%    ╭       0x00007f8882e56900:   jmp    0x00007f8882e56934           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │       0x00007f8882e56905:   data16 data16 nopw 0x0(%rax,%rax,1)
            │       0x00007f8882e56910:   data16 data16 xchg %ax,%ax
            │       0x00007f8882e56914:   nopl   0x0(%rax,%rax,1)
            │       0x00007f8882e5691c:   data16 data16 xchg %ax,%ax          ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │↗      0x00007f8882e56920:   pause                               ;* unwind (locked if synchronized)
            ││                                                                ; - java.lang.Thread::onSpinWait@-3
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.61%    ││      0x00007f8882e56922:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││      0x00007f8882e56929:   test   %r8d,%r8d
            ││      0x00007f8882e5692c:   jge    0x00007f8882e5c65a           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││      0x00007f8882e56932:   mov    %edx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ↘│      0x00007f8882e56934:   mov    %eax,%edx
   0.00%     │      0x00007f8882e56936:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │      0x00007f8882e56938:   cmp    %edx,%r9d
             ╰      0x00007f8882e5693b:   jle    0x00007f8882e56920
                    0x00007f8882e5693d:   mov    %r8d,%r9d
                    0x00007f8882e56940:   mov    %eax,%r8d
   0.00%      ╭     0x00007f8882e56943:   jmp    0x00007f8882e569b1
              │     0x00007f8882e56948:   data16 data16 nopw 0x0(%rax,%rax,1)
              │     0x00007f8882e56953:   data16 data16 xchg %ax,%ax
              │     0x00007f8882e56957:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │↗    0x00007f8882e56960:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.19%      ││    0x00007f8882e56962:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f8882e56969:   test   %r9d,%r9d
              ││    0x00007f8882e5696c:   jge    0x00007f8882e5c293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007f8882e56972:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.16%      ││    0x00007f8882e56974:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f8882e5697b:   nopl   0x0(%rax,%rax,1)
              ││    0x00007f8882e56980:   test   %r9d,%r9d
              ││    0x00007f8882e56983:   jge    0x00007f8882e5c293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││                                                              ;   {no_reloc}
   0.00%      ││    0x00007f8882e56989:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.09%      ││    0x00007f8882e5698b:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f8882e56992:   test   %r9d,%r9d
              ││    0x00007f8882e56995:   jge    0x00007f8882e5c293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007f8882e5699b:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.17%      ││    0x00007f8882e5699d:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f8882e569a4:   test   %r9d,%r9d
              ││    0x00007f8882e569a7:   jge    0x00007f8882e5c293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007f8882e569ad:   lea    -0x4(%r8),%r8d
              ↘│    0x00007f8882e569b1:   mov    %r8d,%edx
   0.03%       │    0x00007f8882e569b4:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │    0x00007f8882e569b6:   cmp    $0x5,%edx
               ╰    0x00007f8882e569b9:   jge    0x00007f8882e56960
   0.00%        ╭   0x00007f8882e569bb:   jmp    0x00007f8882e569e0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                │↗  0x00007f8882e569c0:   pause                               ;* unwind (locked if synchronized)
                ││                                                            ; - java.lang.Thread::onSpinWait@-3
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.25%        ││  0x00007f8882e569c2:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%        ││  0x00007f8882e569c9:   test   %r9d,%r9d
                ││  0x00007f8882e569cc:   jge    0x00007f8882e5c293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                ││  0x00007f8882e569d2:   data16 nopw 0x0(%rax,%rax,1)
                ││  0x00007f8882e569dc:   data16 data16 xchg %ax,%ax
   0.01%        ↘│  0x00007f8882e569e0:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                 │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  0x00007f8882e569e3:   cmp    $0x1,%r8d
                 ╰  0x00007f8882e569e7:   jge    0x00007f8882e569c0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e569e9:   test   %r9d,%r9d
                    0x00007f8882e569ec:   jge    0x00007f8882e5c270           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f8882e569f2:   test   %r11d,%r11d
                    0x00007f8882e569f5:   jne    0x00007f8882e5bdfa           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f8882e569fb:   movq   $0x0,0x98(%rsp)
   0.00%            0x00007f8882e56a07:   mov    0x380(%r15),%rsi
                    0x00007f8882e56a0e:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                              ; - java.lang.Thread::currentThread@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%            0x00007f8882e56a11:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007f8882e56a16:   jne    0x00007f8882e5c0cb
                    0x00007f8882e56a1c:   mov    0x7c(%rsp),%r11d
                    0x00007f8882e56a21:   mov    %r11d,0x5c(%rdx)
   0.01%            0x00007f8882e56a25:   mov    %rdx,%rsi
   0.00%            0x00007f8882e56a28:   xor    %r10,%rsi
                    0x00007f8882e56a2b:   test   $0xffffffffffe00000,%rsi
                    0x00007f8882e56a32:   je     0x00007f8882e56a5f
                    0x00007f8882e56a38:   nopl   0x0(%rax,%rax,1)
                    0x00007f8882e56a40:   test   %r10,%r10
                    0x00007f8882e56a43:   je     0x00007f8882e56a5f
                    0x00007f8882e56a49:   mov    0x130(%rsp),%rsi
                    0x00007f8882e56a51:   shr    $0x9,%rdx                    ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
....................................................................................................
  15.11%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  10.58%  <total for region 2>

....[Hottest Regions]...............................................................................
  15.11%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1704 
  10.58%              kernel  [unknown] 
   5.61%           libjvm.so  update_register_map1 
   4.88%              kernel  [unknown] 
   2.76%           libjvm.so  vframeStream::vframeStream 
   2.03%           libjvm.so  OopMapStream::find_next 
   1.63%           libjvm.so  OopMapStream::find_next 
   1.30%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1704 
   1.22%              kernel  [unknown] 
   1.21%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1704 
   1.19%           libjvm.so  OopMapStream::find_next 
   1.09%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1593 
   1.05%              kernel  [unknown] 
   1.00%              kernel  [unknown] 
   0.86%                      <unknown> 
   0.84%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1586 
   0.81%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1586 
   0.75%           libjvm.so  methodHandle::~methodHandle 
   0.65%      jvmci, level 4  java.util.concurrent.ForkJoinPool::poolSubmit, version 2, compile id 1573 
   0.64%              kernel  [unknown] 
  44.78%  <...other 1613 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  35.28%              kernel  [unknown] 
  20.48%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1704 
   5.61%           libjvm.so  update_register_map1 
   4.84%           libjvm.so  OopMapStream::find_next 
   3.49%           libjvm.so  vframeStream::vframeStream 
   3.24%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1586 
   2.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1649 
   1.58%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1593 
   1.48%                      <unknown> 
   0.99%      jvmci, level 4  java.util.concurrent.Executors::newFixedThreadPool, version 2, compile id 1651 
   0.98%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::tryTerminate, version 4, compile id 1746 
   0.76%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.75%           libjvm.so  methodHandle::~methodHandle 
   0.72%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.67%           libjvm.so  frame::sender 
   0.65%      jvmci, level 4  java.util.concurrent.ForkJoinPool::poolSubmit, version 2, compile id 1573 
   0.59%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.59%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject::awaitNanos, version 4, compile id 1724 
   0.59%           libjvm.so  Unsafe_Park 
   0.53%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::processWorkerExit, version 4, compile id 1747 
  13.75%  <...other 346 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  35.28%              kernel
  33.73%      jvmci, level 4
  24.14%           libjvm.so
   3.63%  libpthread-2.31.so
   1.48%                    
   0.51%    Unknown, level 0
   0.44%          ld-2.31.so
   0.44%              [vdso]
   0.29%        libc-2.31.so
   0.02%         interpreter
   0.02%         c1, level 3
   0.01%      hsdis-amd64.so
   0.01%    perf-1098555.map
   0.00%         c1, level 1
   0.00%      libz.so.1.2.11
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = NONE, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 27.78% complete, ETA 00:31:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1195.041 us/op
# Warmup Iteration   2: 593.691 us/op
# Warmup Iteration   3: 583.179 us/op
# Warmup Iteration   4: 579.389 us/op
# Warmup Iteration   5: 580.330 us/op
Iteration   1: 585.635 us/op
Iteration   2: 586.252 us/op
Iteration   3: 586.176 us/op
Iteration   4: 585.920 us/op
Iteration   5: 593.379 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  587.473 ±(99.9%) 12.748 us/op [Average]
  (min, avg, max) = (585.635, 587.473, 593.379), stdev = 3.311
  CI (99.9%): [574.724, 600.221] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 377949 total address lines.
Perf output processed (skipped 61.333 seconds):
 Column 1: cycles (2654966 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  55.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  20.65%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.83%              kernel  [unknown] 
  20.65%              kernel  [unknown] 
   3.30%              kernel  [unknown] 
   2.47%              kernel  [unknown] 
   2.06%              kernel  [unknown] 
   1.74%              kernel  [unknown] 
   1.67%              kernel  [unknown] 
   1.32%              kernel  [unknown] 
   0.84%              kernel  [unknown] 
   0.70%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.57%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.42%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   5.67%  <...other 3627 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.48%              kernel  [unknown] 
   0.07%           libjvm.so  JVM_GetStackAccessControlContext 
   0.06%           libjvm.so  vframeStreamCommon::next 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1376 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.04%        libc-2.31.so  _int_free 
   0.04%           libjvm.so  InstanceKlass::protection_domain 
   0.04%        libc-2.31.so  _int_malloc 
   0.03%        libc-2.31.so  malloc 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%           libjvm.so  ThreadsSMRSupport::free_list 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%                      <unknown> 
   0.86%  <...other 622 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.48%              kernel
   0.86%           libjvm.so
   0.28%        libc-2.31.so
   0.20%  libpthread-2.31.so
   0.10%      jvmci, level 4
   0.02%                    
   0.02%          ld-2.31.so
   0.02%    Unknown, level 0
   0.01%              [vdso]
   0.01%          libjava.so
   0.00%        runtime stub
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%    perf-1098624.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 33.33% complete, ETA 00:29:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 349.436 us/op
# Warmup Iteration   2: 64.162 us/op
# Warmup Iteration   3: 39.706 us/op
# Warmup Iteration   4: 38.099 us/op
# Warmup Iteration   5: 37.889 us/op
Iteration   1: 37.538 us/op
Iteration   2: 37.328 us/op
Iteration   3: 37.203 us/op
Iteration   4: 37.454 us/op
Iteration   5: 37.887 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  37.482 ±(99.9%) 0.999 us/op [Average]
  (min, avg, max) = (37.203, 37.482, 37.887), stdev = 0.259
  CI (99.9%): [36.483, 38.481] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 507384 total address lines.
Perf output processed (skipped 61.022 seconds):
 Column 1: cycles (249408 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.27%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1745 

                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fc25aeaa13f:   mov    0x108(%rsp),%rdx
          ╭          0x00007fc25aeaa147:   jmp    0x00007fc25aeaa16c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │          0x00007fc25aeaa14c:   data16 data16 nopw 0x0(%rax,%rax,1)
          │          0x00007fc25aeaa157:   data16 data16 xchg %ax,%ax
          │          0x00007fc25aeaa15b:   nopl   0x0(%rax,%rax,1)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗         0x00007fc25aeaa160:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rbx=Oop r11=Oop [116]=NarrowOop [120]=Oop [136]=Oop [144]=Oop }
          ││                                                                   ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││         0x00007fc25aeaa167:   test   %eax,(%rsi)                  ;   {poll}
   0.00%  ││         0x00007fc25aeaa169:   mov    %rax,%r8                     ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘│         0x00007fc25aeaa16c:   mov    %r8d,0xc(%rbx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fc25aeaa170:   mov    %r8,%rsi
           │         0x00007fc25aeaa173:   add    0xd0(%rsp),%rsi              ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fc25aeaa17b:   mov    %rsi,%rax
   0.00%   │         0x00007fc25aeaa17e:   and    %rdx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fc25aeaa181:   mov    %rax,%rbp
           │         0x00007fc25aeaa184:   or     %rdi,%rbp                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │         0x00007fc25aeaa187:   mov    %r8,%rax
   0.00%   │         0x00007fc25aeaa18a:   lock cmpxchg %rbp,0xd8(%r11)        ;* unwind (locked if synchronized)
           │                                                                   ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                   ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.16%   │         0x00007fc25aeaa193:   cmp    %r8,%rax
           ╰         0x00007fc25aeaa196:   jne    0x00007fc25aeaa160           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa198:   and    0xd0(%rsp),%rsi              ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa1a0:   cmp    $0x1,%rsi
                     0x00007fc25aeaa1a4:   jl     0x00007fc25aeafdf4           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fc25aeaa1aa:   mov    0x34(%r11),%r8d              ; ImmutableOopMap {rbx=Oop r11=Oop [116]=NarrowOop [120]=Oop [136]=Oop [144]=Oop }
                                                                               ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa1ae:   mov    0xc(,%r8,8),%r8d             ; implicit exception: dispatches to 0x00007fc25aeb3164
   0.00%             0x00007fc25aeaa1b6:   mov    $0x0,%r10d
   0.00%             0x00007fc25aeaa1bc:   mov    %r10d,0xac(%rsp)
   0.00%             0x00007fc25aeaa1c4:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa1cb:   test   %r9d,%r9d
                     0x00007fc25aeaa1ce:   jge    0x00007fc25aeb0156           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fc25aeaa1d4:   and    $0xffff,%r8d                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa1db:   shl    %r8d                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa1de:   or     $0xf,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa1e2:   lea    -0x2(%r8),%edi
   0.00%    ╭        0x00007fc25aeaa1e6:   jmp    0x00007fc25aeaa2d8           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │        0x00007fc25aeaa1eb:   data16 data16 nopw 0x0(%rax,%rax,1)
            │        0x00007fc25aeaa1f6:   data16 data16 xchg %ax,%ax
            │        0x00007fc25aeaa1fa:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%    │↗       0x00007fc25aeaa200:   pause                               ;* unwind (locked if synchronized)
            ││                                                                 ; - java.lang.Thread::onSpinWait@-3
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.47%    ││       0x00007fc25aeaa202:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    ││       0x00007fc25aeaa209:   test   %r9d,%r9d
            ││       0x00007fc25aeaa20c:   jge    0x00007fc25aeb0156           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││       0x00007fc25aeaa212:   pause                               ;* unwind (locked if synchronized)
            ││                                                                 ; - java.lang.Thread::onSpinWait@-3
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.44%    ││       0x00007fc25aeaa214:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    ││       0x00007fc25aeaa21b:   nopl   0x0(%rax,%rax,1)
            ││       0x00007fc25aeaa220:   test   %r9d,%r9d
            ││       0x00007fc25aeaa223:   jge    0x00007fc25aeb0156           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││       0x00007fc25aeaa229:   pause                               ;* unwind (locked if synchronized)
            ││                                                                 ; - java.lang.Thread::onSpinWait@-3
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.50%    ││       0x00007fc25aeaa22b:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││       0x00007fc25aeaa232:   test   %r9d,%r9d
            ││       0x00007fc25aeaa235:   jge    0x00007fc25aeb0156           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││       0x00007fc25aeaa23b:   pause                               ;* unwind (locked if synchronized)
            ││                                                                 ; - java.lang.Thread::onSpinWait@-3
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.43%    ││       0x00007fc25aeaa23d:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    ││       0x00007fc25aeaa244:   test   %r9d,%r9d
            ││       0x00007fc25aeaa247:   jge    0x00007fc25aeb0156           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││       0x00007fc25aeaa24d:   lea    -0x4(%r8),%r8d
            ││       0x00007fc25aeaa251:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.02%    ││       0x00007fc25aeaa25c:   data16 data16 xchg %ax,%ax
   0.00%    ││   ↗   0x00007fc25aeaa260:   mov    %r8d,%edi
   0.00%    ││   │   0x00007fc25aeaa263:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││   │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││   │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││   │   0x00007fc25aeaa265:   cmp    $0x5,%edi                    ;   {no_reloc}
            │╰   │   0x00007fc25aeaa268:   jge    0x00007fc25aeaa200
   0.00%    │ ╭  │   0x00007fc25aeaa26a:   jmp    0x00007fc25aeaa2a0
            │ │  │   0x00007fc25aeaa26f:   data16 data16 nopw 0x0(%rax,%rax,1)
            │ │  │   0x00007fc25aeaa27a:   data16 data16 xchg %ax,%ax
            │ │  │   0x00007fc25aeaa27e:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │ │  │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │ │  │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │ ↗│   0x00007fc25aeaa280:   pause                               ;* unwind (locked if synchronized)
            │ │ ││                                                             ; - java.lang.Thread::onSpinWait@-3
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.00%    │ │ ││   0x00007fc25aeaa282:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │ │ ││   0x00007fc25aeaa289:   test   %r9d,%r9d
            │ │ ││   0x00007fc25aeaa28c:   jge    0x00007fc25aeb0156           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │ │ ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │ │ ││   0x00007fc25aeaa292:   data16 nopw 0x0(%rax,%rax,1)
            │ │ ││   0x00007fc25aeaa29c:   data16 data16 xchg %ax,%ax
   0.01%    │ ↘ ││   0x00007fc25aeaa2a0:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │   ││   0x00007fc25aeaa2a3:   cmp    $0x1,%r8d
            │  ╭││   0x00007fc25aeaa2a7:   jl     0x00007fc25aeaa2ea
            │  │╰│   0x00007fc25aeaa2ad:   jmp    0x00007fc25aeaa280
            │  │ │   0x00007fc25aeaa2af:   data16 data16 nopw 0x0(%rax,%rax,1)
            │  │ │   0x00007fc25aeaa2ba:   data16 data16 xchg %ax,%ax
            │  │ │   0x00007fc25aeaa2be:   xchg   %ax,%ax                      ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │  │ │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │  │ │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  │ │↗  0x00007fc25aeaa2c0:   pause                               ;* unwind (locked if synchronized)
            │  │ ││                                                            ; - java.lang.Thread::onSpinWait@-3
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.48%    │  │ ││  0x00007fc25aeaa2c2:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │  │ ││  0x00007fc25aeaa2c9:   test   %r8d,%r8d
            │  │ ││  0x00007fc25aeaa2cc:   jge    0x00007fc25aeb062b           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │  │ ││  0x00007fc25aeaa2d2:   mov    %r8d,%r9d
            │  │ ││  0x00007fc25aeaa2d5:   mov    %esi,%r8d                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │  │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ↘  │ ││  0x00007fc25aeaa2d8:   mov    %r8d,%esi
               │ ││  0x00007fc25aeaa2db:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │ ││  0x00007fc25aeaa2dd:   data16 xchg %ax,%ax
   0.00%       │ ││  0x00007fc25aeaa2e0:   cmp    %esi,%edi
               │ ╰│  0x00007fc25aeaa2e2:   jg     0x00007fc25aeaa260
   0.00%       │  ╰  0x00007fc25aeaa2e8:   jmp    0x00007fc25aeaa2c0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
               │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               ↘     0x00007fc25aeaa2ea:   test   %r9d,%r9d
                     0x00007fc25aeaa2ed:   jge    0x00007fc25aeb0130           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                     0x00007fc25aeaa2f3:   test   %r10d,%r10d
                     0x00007fc25aeaa2f6:   jne    0x00007fc25aeafff3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%             0x00007fc25aeaa2fc:   movq   $0x0,0x98(%rsp)
   0.00%             0x00007fc25aeaa308:   mov    %r11,%r10
                     0x00007fc25aeaa30b:   mov    0x380(%r15),%rsi
                     0x00007fc25aeaa312:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                               ; - java.lang.Thread::currentThread@-3
                                                                               ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%             0x00007fc25aeaa315:   cmpb   $0x0,0x40(%r15)
   0.00%             0x00007fc25aeaa31a:   jne    0x00007fc25aeb0065
                     0x00007fc25aeaa320:   mov    0x74(%rsp),%r8d
                     0x00007fc25aeaa325:   mov    %r8d,0x5c(%rdx)
   0.00%             0x00007fc25aeaa329:   mov    %rdx,%rsi
                     0x00007fc25aeaa32c:   xor    %r10,%rsi
                     0x00007fc25aeaa32f:   test   $0xffffffffffe00000,%rsi
                     0x00007fc25aeaa336:   je     0x00007fc25aeb0054
                     0x00007fc25aeaa33c:   nopl   0x0(%rax)
                     0x00007fc25aeaa340:   test   %r10,%r10
                     0x00007fc25aeaa343:   je     0x00007fc25aeb00df
                     0x00007fc25aeaa349:   mov    0x130(%rsp),%r13
                     0x00007fc25aeaa351:   shr    $0x9,%rdx
                     0x00007fc25aeaa355:   cmpb   $0x2,(%rdx,%r13,1)
                     0x00007fc25aeaa35a:   jne    0x00007fc25aeb0119           ;* unwind (locked if synchronized)
....................................................................................................
  11.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  13.27%               kernel  [unknown] 
  11.62%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1745 
   6.10%               kernel  [unknown] 
   3.13%            libjvm.so  update_register_map1 
   2.50%               kernel  [unknown] 
   1.85%            libjvm.so  vframeStream::vframeStream 
   1.48%            libjvm.so  SpinPause 
   1.26%               [vdso]  __vdso_clock_gettime 
   1.18%            libjvm.so  ObjectMonitor::TrySpin 
   1.17%               kernel  [unknown] 
   1.16%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1745 
   1.13%            libjvm.so  OopMapStream::find_next 
   1.01%            libjvm.so  OopMapStream::find_next 
   1.01%       jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::delayedExecute, version 3, compile id 1701 
   0.98%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1745 
   0.78%               kernel  [unknown] 
   0.75%       jvmci, level 4  java.lang.VirtualThread::parkNanos, version 2, compile id 1559 
   0.73%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 3, compile id 1592 
   0.73%            libjvm.so  OopMapStream::find_next 
   0.72%            libjvm.so  SafeFetch32_impl 
  47.44%  <...other 1401 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  40.34%               kernel  [unknown] 
  15.95%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1745 
   3.14%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 3, compile id 1592 
   3.13%            libjvm.so  update_register_map1 
   2.88%            libjvm.so  OopMapStream::find_next 
   2.34%            libjvm.so  vframeStream::vframeStream 
   1.70%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1729 
   1.55%       jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::delayedExecute, version 3, compile id 1701 
   1.48%            libjvm.so  SpinPause 
   1.41%            libjvm.so  ObjectMonitor::TrySpin 
   1.30%               [vdso]  __vdso_clock_gettime 
   1.21%       jvmci, level 4  java.lang.VirtualThread::parkNanos, version 2, compile id 1559 
   1.16%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.04%       jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1626 
   1.03%       jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject::await, version 2, compile id 1659 
   0.89%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.76%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 4, compile id 1661 
   0.72%            libjvm.so  SafeFetch32_impl 
   0.71%                       <unknown> 
   0.65%            libjvm.so  Parker::park 
  16.60%  <...other 349 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  40.34%               kernel
  30.49%       jvmci, level 4
  21.25%            libjvm.so
   4.65%   libpthread-2.31.so
   1.30%               [vdso]
   0.71%                     
   0.63%     Unknown, level 0
   0.30%           ld-2.31.so
   0.30%         libc-2.31.so
   0.01%  libjvmcicompiler.so
   0.00%          interpreter
   0.00%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%     perf-2072467.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 38.89% complete, ETA 00:26:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1763.645 us/op
# Warmup Iteration   2: 1125.329 us/op
# Warmup Iteration   3: 1020.712 us/op
# Warmup Iteration   4: 1022.446 us/op
# Warmup Iteration   5: 1021.957 us/op
Iteration   1: 1031.427 us/op
Iteration   2: 1020.414 us/op
Iteration   3: 1020.327 us/op
Iteration   4: 1021.734 us/op
Iteration   5: 1020.077 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1022.796 ±(99.9%) 18.744 us/op [Average]
  (min, avg, max) = (1020.077, 1022.796, 1031.427), stdev = 4.868
  CI (99.9%): [1004.051, 1041.540] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 382045 total address lines.
Perf output processed (skipped 61.034 seconds):
 Column 1: cycles (1994181 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  48.87%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.87%              kernel  [unknown] 
  27.98%              kernel  [unknown] 
   3.71%              kernel  [unknown] 
   2.83%              kernel  [unknown] 
   2.66%              kernel  [unknown] 
   1.95%              kernel  [unknown] 
   1.63%              kernel  [unknown] 
   1.33%              kernel  [unknown] 
   1.09%              kernel  [unknown] 
   0.77%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.15%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   4.56%  <...other 3374 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.36%              kernel  [unknown] 
   0.08%           libjvm.so  ThreadsSMRSupport::free_list 
   0.06%        libc-2.31.so  _int_free 
   0.05%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  malloc 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%                      <unknown> 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.02%           libjvm.so  vframeStreamCommon::next 
   0.02%           libjvm.so  ThreadsList::remove_thread 
   0.99%  <...other 627 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.36%              kernel
   0.93%           libjvm.so
   0.38%        libc-2.31.so
   0.17%  libpthread-2.31.so
   0.07%      jvmci, level 4
   0.02%                    
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%         interpreter
   0.00%    perf-2072537.map
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 44.44% complete, ETA 00:24:25
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 613.010 us/op
# Warmup Iteration   2: 219.203 us/op
# Warmup Iteration   3: 128.382 us/op
# Warmup Iteration   4: 124.531 us/op
# Warmup Iteration   5: 115.768 us/op
Iteration   1: 118.944 us/op
Iteration   2: 116.146 us/op
Iteration   3: 118.382 us/op
Iteration   4: 115.859 us/op
Iteration   5: 120.240 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  117.914 ±(99.9%) 7.214 us/op [Average]
  (min, avg, max) = (115.859, 117.914, 120.240), stdev = 1.873
  CI (99.9%): [110.700, 125.128] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 525997 total address lines.
Perf output processed (skipped 60.828 seconds):
 Column 1: cycles (278378 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.60%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1732 

                    0x00007fea96f1f292:   mov    %esi,%ecx
                    0x00007fea96f1f294:   mov    %r11,%rsi
                    0x00007fea96f1f297:   call   0x00007fea968ea280           ;   {runtime_call Stub&lt;write_barrier_pre(Object)void&gt;}
                    0x00007fea96f1f29c:   nop
                    0x00007fea96f1f29d:   mov    %r11,0x68(%rsp)
                    0x00007fea96f1f2a2:   jmp    0x00007fea96f1f1d2           ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::compareAndSetReference@-3
                                                                              ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                              ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%            0x00007fea96f1f2a7:   mov    0x88(%rsp),%rdx
   0.00%            0x00007fea96f1f2af:   mov    0x90(%rsp),%r10
                    0x00007fea96f1f2b7:   mov    $0x10000,%eax
   0.00%            0x00007fea96f1f2bc:   add    0xa8(%rdx),%eax              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f2c2:   mov    0x30(%r10),%r11d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f2c6:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f2cc:   test   %r11d,%r11d
                    0x00007fea96f1f2cf:   jl     0x00007fea96f2558b           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f2d5:   mov    0x140(%rsp),%rbx
   0.00%            0x00007fea96f1f2dd:   mov    %rdx,%r9
                    0x00007fea96f1f2e0:   mov    0xd8(%r10),%rsi              ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.05%            0x00007fea96f1f2e7:   mov    %eax,%edx
                    0x00007fea96f1f2e9:   or     $0x80000000,%edx             ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f2ef:   mov    %edx,0xa8(%r9)
                    0x00007fea96f1f2f6:   lock addl $0x0,(%rsp)               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.07%            0x00007fea96f1f2fb:   mov    %eax,%edx                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fea96f1f2fd:   mov    0x130(%rsp),%rdi
                    0x00007fea96f1f305:   mov    0x138(%rsp),%r11
   0.00%  ╭         0x00007fea96f1f30d:   jmp    0x00007fea96f1f32d           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │         0x00007fea96f1f312:   data16 nopw 0x0(%rax,%rax,1)
          │         0x00007fea96f1f31c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗        0x00007fea96f1f320:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {r9=Oop r10=Oop [112]=Oop [124]=NarrowOop [136]=Oop [144]=Oop }
          ││                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││        0x00007fea96f1f327:   test   %eax,0x0(%rbp)               ;   {poll}
          ││        0x00007fea96f1f32a:   mov    %rax,%rsi                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘│        0x00007fea96f1f32d:   mov    %esi,0xc(%r9)                ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007fea96f1f331:   mov    %rsi,%rbp
           │        0x00007fea96f1f334:   add    %r11,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007fea96f1f337:   mov    %rbp,%rax
           │        0x00007fea96f1f33a:   and    %rdi,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fea96f1f33d:   mov    %rax,%r13
           │        0x00007fea96f1f340:   or     %rdx,%r13                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007fea96f1f343:   mov    %rsi,%rax
           │        0x00007fea96f1f346:   lock cmpxchg %r13,0xd8(%r10)        ;* unwind (locked if synchronized)
           │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.14%   │        0x00007fea96f1f34f:   cmp    %rsi,%rax
           ╰        0x00007fea96f1f352:   jne    0x00007fea96f1f320           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f354:   and    %r11,%rbp                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f357:   nopw   0x0(%rax,%rax,1)
                    0x00007fea96f1f360:   cmp    $0x1,%rbp
                    0x00007fea96f1f364:   jl     0x00007fea96f23995           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fea96f1f36a:   mov    0x34(%r10),%eax              ; ImmutableOopMap {r9=Oop r10=Oop [112]=Oop [124]=NarrowOop [136]=Oop [144]=Oop }
                                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f36e:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fea96f25c0d
   0.00%            0x00007fea96f1f375:   mov    %r9,%rbx
                    0x00007fea96f1f378:   mov    $0x0,%r11d
   0.00%            0x00007fea96f1f37e:   mov    %r11d,0xc4(%rsp)
                    0x00007fea96f1f386:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f38d:   test   %r8d,%r8d
                    0x00007fea96f1f390:   jge    0x00007fea96f24119           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fea96f1f396:   and    $0xffff,%eax                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f39c:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fea96f1f39e:   or     $0xf,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f3a1:   lea    -0x2(%rax),%r9d
            ╭       0x00007fea96f1f3a5:   jmp    0x00007fea96f1f3d4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │       0x00007fea96f1f3aa:   data16 data16 nopw 0x0(%rax,%rax,1)
            │       0x00007fea96f1f3b5:   data16 data16 xchg %ax,%ax
            │       0x00007fea96f1f3b9:   nopl   0x0(%rax)                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │↗      0x00007fea96f1f3c0:   pause                               ;* unwind (locked if synchronized)
            ││                                                                ; - java.lang.Thread::onSpinWait@-3
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.46%    ││      0x00007fea96f1f3c2:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││      0x00007fea96f1f3c9:   test   %r8d,%r8d
            ││      0x00007fea96f1f3cc:   jge    0x00007fea96f2428b           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││      0x00007fea96f1f3d2:   mov    %ecx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ↘│      0x00007fea96f1f3d4:   mov    %eax,%ecx
   0.00%     │      0x00007fea96f1f3d6:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │      0x00007fea96f1f3d8:   cmp    %ecx,%r9d
             ╰      0x00007fea96f1f3db:   jle    0x00007fea96f1f3c0
   0.00%            0x00007fea96f1f3dd:   mov    %r8d,%r9d
   0.00%            0x00007fea96f1f3e0:   mov    %eax,%r8d
   0.00%      ╭     0x00007fea96f1f3e3:   jmp    0x00007fea96f1f451
              │     0x00007fea96f1f3e8:   data16 data16 nopw 0x0(%rax,%rax,1)
              │     0x00007fea96f1f3f3:   data16 data16 xchg %ax,%ax
              │     0x00007fea96f1f3f7:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │↗    0x00007fea96f1f400:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.14%      ││    0x00007fea96f1f402:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      ││    0x00007fea96f1f409:   test   %r9d,%r9d
              ││    0x00007fea96f1f40c:   jge    0x00007fea96f23e32           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fea96f1f412:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.11%      ││    0x00007fea96f1f414:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fea96f1f41b:   nopl   0x0(%rax,%rax,1)
              ││    0x00007fea96f1f420:   test   %r9d,%r9d
              ││    0x00007fea96f1f423:   jge    0x00007fea96f23e32           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││                                                              ;   {no_reloc}
              ││    0x00007fea96f1f429:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.13%      ││    0x00007fea96f1f42b:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fea96f1f432:   test   %r9d,%r9d
              ││    0x00007fea96f1f435:   jge    0x00007fea96f23e32           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fea96f1f43b:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.16%      ││    0x00007fea96f1f43d:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fea96f1f444:   test   %r9d,%r9d
              ││    0x00007fea96f1f447:   jge    0x00007fea96f23e32           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007fea96f1f44d:   lea    -0x4(%r8),%r8d
   0.00%      ↘│    0x00007fea96f1f451:   mov    %r8d,%ecx
   0.01%       │    0x00007fea96f1f454:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               │    0x00007fea96f1f456:   cmp    $0x5,%ecx
               ╰    0x00007fea96f1f459:   jge    0x00007fea96f1f400
                ╭   0x00007fea96f1f45b:   jmp    0x00007fea96f1f480           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │↗  0x00007fea96f1f460:   pause                               ;* unwind (locked if synchronized)
                ││                                                            ; - java.lang.Thread::onSpinWait@-3
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.83%        ││  0x00007fea96f1f462:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ││  0x00007fea96f1f469:   test   %r9d,%r9d
                ││  0x00007fea96f1f46c:   jge    0x00007fea96f23e32           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                ││  0x00007fea96f1f472:   data16 nopw 0x0(%rax,%rax,1)
                ││  0x00007fea96f1f47c:   data16 data16 xchg %ax,%ax
   0.00%        ↘│  0x00007fea96f1f480:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                 │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  0x00007fea96f1f483:   cmp    $0x1,%r8d
                 ╰  0x00007fea96f1f487:   jge    0x00007fea96f1f460           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fea96f1f489:   test   %r9d,%r9d
                    0x00007fea96f1f48c:   jge    0x00007fea96f23e0f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f492:   test   %r11d,%r11d
                    0x00007fea96f1f495:   jne    0x00007fea96f23b92           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fea96f1f49b:   movq   $0x0,0xa0(%rsp)
   0.00%            0x00007fea96f1f4a7:   mov    0x380(%r15),%rsi
                    0x00007fea96f1f4ae:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                              ; - java.lang.Thread::currentThread@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007fea96f1f4b1:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007fea96f1f4b6:   jne    0x00007fea96f23c3c
                    0x00007fea96f1f4bc:   mov    0x7c(%rsp),%r11d
   0.00%            0x00007fea96f1f4c1:   mov    %r11d,0x5c(%rdx)
   0.00%            0x00007fea96f1f4c5:   mov    %rdx,%rsi
   0.00%            0x00007fea96f1f4c8:   xor    %r10,%rsi
   0.00%            0x00007fea96f1f4cb:   test   $0xffffffffffe00000,%rsi
                    0x00007fea96f1f4d2:   je     0x00007fea96f1f4ff
                    0x00007fea96f1f4d8:   nopl   0x0(%rax,%rax,1)
                    0x00007fea96f1f4e0:   test   %r10,%r10
                    0x00007fea96f1f4e3:   je     0x00007fea96f1f4ff
                    0x00007fea96f1f4e9:   mov    0x140(%rsp),%rsi
                    0x00007fea96f1f4f1:   shr    $0x9,%rdx                    ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
....................................................................................................
  10.19%  <total for region 2>

....[Hottest Regions]...............................................................................
  13.60%              kernel  [unknown] 
  10.19%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1732 
   7.80%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1667 
   6.31%              kernel  [unknown] 
   1.55%              kernel  [unknown] 
   1.34%           libjvm.so  update_register_map1 
   1.28%              kernel  [unknown] 
   1.22%              kernel  [unknown] 
   1.04%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1732 
   0.88%              kernel  [unknown] 
   0.87%              [vdso]  __vdso_clock_gettime 
   0.83%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1667 
   0.77%              kernel  [unknown] 
   0.66%           libjvm.so  Parker::park 
   0.65%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.65%              kernel  [unknown] 
   0.62%           libjvm.so  vframeStream::vframeStream 
   0.62%  libpthread-2.31.so  __pthread_mutex_lock 
   0.61%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1667 
   0.59%              kernel  [unknown] 
  47.90%  <...other 1930 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  44.40%              kernel  [unknown] 
  13.02%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1732 
  10.71%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1667 
   2.32%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::lambda$synchronizedWork$2, version 5, compile id 1721 
   1.71%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1700 
   1.35%           libjvm.so  update_register_map1 
   1.19%           libjvm.so  OopMapStream::find_next 
   1.08%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.97%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.97%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 3, compile id 1551 
   0.90%              [vdso]  __vdso_clock_gettime 
   0.89%           libjvm.so  vframeStream::vframeStream 
   0.86%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 6, compile id 1722 
   0.79%           libjvm.so  Parker::park 
   0.77%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject::await, version 4, compile id 1664 
   0.72%           libjvm.so  Unsafe_Park 
   0.62%  libpthread-2.31.so  __pthread_mutex_lock 
   0.60%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.57%      jvmci, level 4  java.util.concurrent.locks.LockSupport::unpark, version 6, compile id 1751 
   0.56%  libpthread-2.31.so  __pthread_mutex_trylock 
  15.01%  <...other 324 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  44.40%              kernel
  35.73%      jvmci, level 4
  11.50%           libjvm.so
   5.09%  libpthread-2.31.so
   0.99%        libc-2.31.so
   0.90%              [vdso]
   0.62%    Unknown, level 0
   0.43%                    
   0.29%          ld-2.31.so
   0.02%        runtime stub
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%    perf-2629516.map
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 50.00% complete, ETA 00:21:30
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1700.880 us/op
# Warmup Iteration   2: 1082.498 us/op
# Warmup Iteration   3: 1027.752 us/op
# Warmup Iteration   4: 1024.112 us/op
# Warmup Iteration   5: 1022.331 us/op
Iteration   1: 1036.994 us/op
Iteration   2: 1020.494 us/op
Iteration   3: 1022.518 us/op
Iteration   4: 1023.182 us/op
Iteration   5: 1020.560 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1024.750 ±(99.9%) 26.748 us/op [Average]
  (min, avg, max) = (1020.494, 1024.750, 1036.994), stdev = 6.946
  CI (99.9%): [998.001, 1051.498] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 371893 total address lines.
Perf output processed (skipped 60.846 seconds):
 Column 1: cycles (1700985 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  47.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  26.50%  <total for region 2>

....[Hottest Regions]...............................................................................
  47.68%              kernel  [unknown] 
  26.50%              kernel  [unknown] 
   4.46%              kernel  [unknown] 
   2.95%              kernel  [unknown] 
   2.63%              kernel  [unknown] 
   2.01%              kernel  [unknown] 
   1.57%              kernel  [unknown] 
   1.44%              kernel  [unknown] 
   1.25%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.59%              kernel  [unknown] 
   0.52%              kernel  [unknown] 
   0.46%              kernel  [unknown] 
   0.37%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   5.50%  <...other 3310 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.11%              kernel  [unknown] 
   0.12%           libjvm.so  ThreadsSMRSupport::free_list 
   0.08%        libc-2.31.so  _int_free 
   0.06%        libc-2.31.so  _int_malloc 
   0.06%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.05%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.05%        libc-2.31.so  malloc 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.03%                      <unknown> 
   0.03%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   1.08%  <...other 600 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.11%              kernel
   1.03%           libjvm.so
   0.49%        libc-2.31.so
   0.19%  libpthread-2.31.so
   0.08%      jvmci, level 4
   0.03%                    
   0.03%              [vdso]
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.00%        runtime stub
   0.00%         interpreter
   0.00%    perf-2629586.map
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 55.56% complete, ETA 00:19:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 381.066 us/op
# Warmup Iteration   2: 85.896 us/op
# Warmup Iteration   3: 46.256 us/op
# Warmup Iteration   4: 41.816 us/op
# Warmup Iteration   5: 42.361 us/op
Iteration   1: 41.333 us/op
Iteration   2: 41.461 us/op
Iteration   3: 41.202 us/op
Iteration   4: 41.349 us/op
Iteration   5: 41.369 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  41.343 ±(99.9%) 0.358 us/op [Average]
  (min, avg, max) = (41.202, 41.343, 41.461), stdev = 0.093
  CI (99.9%): [40.985, 41.701] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 528987 total address lines.
Perf output processed (skipped 61.004 seconds):
 Column 1: cycles (691346 events)

WARNING: No hottest code region above the threshold (10.00%) for disassembly.
Use "hotThreshold" profiler option to lower the filter threshold.

....[Hottest Regions]...............................................................................
   9.77%              kernel  [unknown] 
   9.41%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1836 
   7.55%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1877 
   4.50%              kernel  [unknown] 
   2.71%           libjvm.so  update_register_map1 
   2.42%              kernel  [unknown] 
   1.66%           libjvm.so  vframeStream::vframeStream 
   1.39%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1836 
   1.11%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1836 
   1.10%              [vdso]  __vdso_clock_gettime 
   1.07%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1877 
   0.96%           libjvm.so  OopMapStream::find_next 
   0.91%      jvmci, level 4  java.lang.VirtualThread::unpark, version 2, compile id 1646 
   0.84%              kernel  [unknown] 
   0.82%           libjvm.so  OopMapStream::find_next 
   0.72%              kernel  [unknown] 
   0.68%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1877 
   0.64%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 6, compile id 1749 
   0.64%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1836 
   0.62%           libjvm.so  Parker::park 
  50.45%  <...other 1965 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  34.43%              kernel  [unknown] 
  13.88%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1836 
  11.02%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1877 
   2.71%           libjvm.so  update_register_map1 
   2.36%           libjvm.so  OopMapStream::find_next 
   2.01%           libjvm.so  vframeStream::vframeStream 
   1.86%      jvmci, level 4  java.lang.VirtualThread::parkNanos, version 6, compile id 1851 
   1.69%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1649 
   1.42%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 6, compile id 1749 
   1.31%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1819 
   1.19%      jvmci, level 4  java.lang.VirtualThread::unpark, version 2, compile id 1646 
   1.10%              [vdso]  __vdso_clock_gettime 
   1.07%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::tryTerminate, version 2, compile id 1660 
   0.90%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.89%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1698 
   0.85%      jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::take, version 8, compile id 1804 
   0.77%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1771 
   0.70%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.68%           libjvm.so  Parker::park 
   0.62%                      <unknown> 
  18.54%  <...other 431 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  40.87%      jvmci, level 4
  34.43%              kernel
  17.20%           libjvm.so
   3.76%  libpthread-2.31.so
   1.19%        libc-2.31.so
   1.10%              [vdso]
   0.62%                    
   0.58%    Unknown, level 0
   0.21%          ld-2.31.so
   0.02%        runtime stub
   0.01%    perf-3188818.map
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%         interpreter
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = SLEEP, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 61.11% complete, ETA 00:16:35
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1292.922 us/op
# Warmup Iteration   2: 606.217 us/op
# Warmup Iteration   3: 625.453 us/op
# Warmup Iteration   4: 604.695 us/op
# Warmup Iteration   5: 606.703 us/op
Iteration   1: 610.582 us/op
Iteration   2: 605.674 us/op
Iteration   3: 606.356 us/op
Iteration   4: 603.965 us/op
Iteration   5: 607.480 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  606.811 ±(99.9%) 9.484 us/op [Average]
  (min, avg, max) = (603.965, 606.811, 610.582), stdev = 2.463
  CI (99.9%): [597.327, 616.295] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 372015 total address lines.
Perf output processed (skipped 60.890 seconds):
 Column 1: cycles (3324905 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  48.55%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  24.38%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.55%              kernel  [unknown] 
  24.38%              kernel  [unknown] 
   3.80%              kernel  [unknown] 
   3.71%              kernel  [unknown] 
   2.92%              kernel  [unknown] 
   2.30%              kernel  [unknown] 
   1.88%              kernel  [unknown] 
   1.27%              kernel  [unknown] 
   0.86%              kernel  [unknown] 
   0.64%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.59%              kernel  [unknown] 
   0.45%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.42%              kernel  [unknown] 
   0.42%              kernel  [unknown] 
   0.36%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.18%              kernel  [unknown] 
   5.74%  <...other 3630 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.47%              kernel  [unknown] 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.06%           libjvm.so  vframeStreamCommon::next 
   0.05%        libc-2.31.so  malloc 
   0.05%           libjvm.so  ThreadsSMRSupport::free_list 
   0.05%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%        libc-2.31.so  _int_free 
   0.03%           libjvm.so  InstanceKlass::protection_domain 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1366 
   0.03%  libpthread-2.31.so  __lll_lock_wait 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.82%  <...other 645 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.47%              kernel
   0.88%           libjvm.so
   0.33%        libc-2.31.so
   0.19%  libpthread-2.31.so
   0.07%      jvmci, level 4
   0.02%          ld-2.31.so
   0.01%                    
   0.01%              [vdso]
   0.01%    Unknown, level 0
   0.00%          libjava.so
   0.00%        runtime stub
   0.00%    perf-3188890.map
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = VIRTUAL)

# Run progress: 66.67% complete, ETA 00:14:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 437.012 us/op
# Warmup Iteration   2: 70.387 us/op
# Warmup Iteration   3: 41.542 us/op
# Warmup Iteration   4: 37.661 us/op
# Warmup Iteration   5: 37.477 us/op
Iteration   1: 37.552 us/op
Iteration   2: 37.214 us/op
Iteration   3: 37.073 us/op
Iteration   4: 37.536 us/op
Iteration   5: 37.284 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  37.332 ±(99.9%) 0.801 us/op [Average]
  (min, avg, max) = (37.073, 37.332, 37.552), stdev = 0.208
  CI (99.9%): [36.530, 38.133] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 516999 total address lines.
Perf output processed (skipped 61.389 seconds):
 Column 1: cycles (247406 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  12.81%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1773 

                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%          0x00007fa88aeb129e:   lea    -0x2(%rax),%r9d
          ╭       0x00007fa88aeb12a2:   jmp    0x00007fa88aeb12d4           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │       0x00007fa88aeb12a7:   data16 data16 nopw 0x0(%rax,%rax,1)
          │       0x00007fa88aeb12b2:   data16 data16 xchg %ax,%ax
          │       0x00007fa88aeb12b6:   data16 nopw 0x0(%rax,%rax,1)        ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗      0x00007fa88aeb12c0:   pause                               ;* unwind (locked if synchronized)
          ││                                                                ; - java.lang.Thread::onSpinWait@-3
          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.51%  ││      0x00007fa88aeb12c2:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││      0x00007fa88aeb12c9:   test   %r8d,%r8d
          ││      0x00007fa88aeb12cc:   jge    0x00007fa88aeb7892           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││      0x00007fa88aeb12d2:   mov    %ecx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘│      0x00007fa88aeb12d4:   mov    %eax,%ecx
   0.00%   │      0x00007fa88aeb12d6:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
           │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │      0x00007fa88aeb12d8:   cmp    %ecx,%r9d
           ╰      0x00007fa88aeb12db:   jle    0x00007fa88aeb12c0
                  0x00007fa88aeb12dd:   mov    %r8d,%r9d
                  0x00007fa88aeb12e0:   mov    %eax,%r8d
   0.00%    ╭     0x00007fa88aeb12e3:   jmp    0x00007fa88aeb1351
            │     0x00007fa88aeb12e8:   data16 data16 nopw 0x0(%rax,%rax,1)
            │     0x00007fa88aeb12f3:   data16 data16 xchg %ax,%ax
            │     0x00007fa88aeb12f7:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │↗    0x00007fa88aeb1300:   pause                               ;* unwind (locked if synchronized)
            ││                                                              ; - java.lang.Thread::onSpinWait@-3
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.46%    ││    0x00007fa88aeb1302:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    ││    0x00007fa88aeb1309:   test   %r9d,%r9d
            ││    0x00007fa88aeb130c:   jge    0x00007fa88aeb73da           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││    0x00007fa88aeb1312:   pause                               ;* unwind (locked if synchronized)
            ││                                                              ; - java.lang.Thread::onSpinWait@-3
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.50%    ││    0x00007fa88aeb1314:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    ││    0x00007fa88aeb131b:   nopl   0x0(%rax,%rax,1)
            ││    0x00007fa88aeb1320:   test   %r9d,%r9d
            ││    0x00007fa88aeb1323:   jge    0x00007fa88aeb73da           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││                                                              ;   {no_reloc}
            ││    0x00007fa88aeb1329:   pause                               ;* unwind (locked if synchronized)
            ││                                                              ; - java.lang.Thread::onSpinWait@-3
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.54%    ││    0x00007fa88aeb132b:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││    0x00007fa88aeb1332:   test   %r9d,%r9d
            ││    0x00007fa88aeb1335:   jge    0x00007fa88aeb73da           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││    0x00007fa88aeb133b:   pause                               ;* unwind (locked if synchronized)
            ││                                                              ; - java.lang.Thread::onSpinWait@-3
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.53%    ││    0x00007fa88aeb133d:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││    0x00007fa88aeb1344:   test   %r9d,%r9d
            ││    0x00007fa88aeb1347:   jge    0x00007fa88aeb73da           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││    0x00007fa88aeb134d:   lea    -0x4(%r8),%r8d
            ↘│    0x00007fa88aeb1351:   mov    %r8d,%ecx
   0.02%     │    0x00007fa88aeb1354:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │    0x00007fa88aeb1356:   cmp    $0x5,%ecx
             ╰    0x00007fa88aeb1359:   jge    0x00007fa88aeb1300
              ╭   0x00007fa88aeb135b:   jmp    0x00007fa88aeb1380           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              │↗  0x00007fa88aeb1360:   pause                               ;* unwind (locked if synchronized)
              ││                                                            ; - java.lang.Thread::onSpinWait@-3
              ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.00%      ││  0x00007fa88aeb1362:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││  0x00007fa88aeb1369:   test   %r9d,%r9d
              ││  0x00007fa88aeb136c:   jge    0x00007fa88aeb73da           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││  0x00007fa88aeb1372:   data16 nopw 0x0(%rax,%rax,1)
              ││  0x00007fa88aeb137c:   data16 data16 xchg %ax,%ax
   0.01%      ↘│  0x00007fa88aeb1380:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │  0x00007fa88aeb1383:   cmp    $0x1,%r8d
               ╰  0x00007fa88aeb1387:   jge    0x00007fa88aeb1360           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                  0x00007fa88aeb1389:   test   %r9d,%r9d
                  0x00007fa88aeb138c:   jge    0x00007fa88aeb7399           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%          0x00007fa88aeb1392:   test   %r11d,%r11d
                  0x00007fa88aeb1395:   jne    0x00007fa88aeb6fce           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%          0x00007fa88aeb139b:   movq   $0x0,0x98(%rsp)
   0.00%          0x00007fa88aeb13a7:   mov    0x380(%r15),%rsi
                  0x00007fa88aeb13ae:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                            ; - java.lang.Thread::currentThread@-3
                                                                            ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%          0x00007fa88aeb13b1:   cmpb   $0x0,0x40(%r15)
   0.00%          0x00007fa88aeb13b6:   jne    0x00007fa88aeb7165
                  0x00007fa88aeb13bc:   mov    0x74(%rsp),%r8d
                  0x00007fa88aeb13c1:   mov    %r8d,0x5c(%rdx)
   0.01%          0x00007fa88aeb13c5:   mov    %rdx,%rsi
                  0x00007fa88aeb13c8:   xor    %r10,%rsi
                  0x00007fa88aeb13cb:   test   $0xffffffffffe00000,%rsi
                  0x00007fa88aeb13d2:   je     0x00007fa88aeb719f
                  0x00007fa88aeb13d8:   nopl   0x0(%rax,%rax,1)
                  0x00007fa88aeb13e0:   test   %r10,%r10
                  0x00007fa88aeb13e3:   je     0x00007fa88aeb7200
                  0x00007fa88aeb13e9:   mov    0x130(%rsp),%r13
                  0x00007fa88aeb13f1:   shr    $0x9,%rdx
                  0x00007fa88aeb13f5:   cmpb   $0x2,(%rdx,%r13,1)
                  0x00007fa88aeb13fa:   jne    0x00007fa88aeb72cd           ;* unwind (locked if synchronized)
....................................................................................................
  11.64%  <total for region 2>

....[Hottest Regions]...............................................................................
  12.81%               kernel  [unknown] 
  11.64%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1773 
   5.82%               kernel  [unknown] 
   3.23%            libjvm.so  update_register_map1 
   1.87%            libjvm.so  vframeStream::vframeStream 
   1.62%            libjvm.so  SpinPause 
   1.36%               kernel  [unknown] 
   1.22%               [vdso]  __vdso_clock_gettime 
   1.19%               kernel  [unknown] 
   1.17%            libjvm.so  OopMapStream::find_next 
   1.14%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1773 
   1.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::backoff, version 2, compile id 1597 
   1.07%               kernel  [unknown] 
   1.05%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1773 
   1.03%            libjvm.so  OopMapStream::find_next 
   0.77%            libjvm.so  ObjectMonitor::TrySpin 
   0.76%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 5, compile id 1649 
   0.75%               kernel  [unknown] 
   0.74%            libjvm.so  OopMapStream::find_next 
   0.72%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
  48.96%  <...other 1615 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  39.72%               kernel  [unknown] 
  16.38%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1773 
   3.24%            libjvm.so  update_register_map1 
   2.94%            libjvm.so  OopMapStream::find_next 
   2.85%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 5, compile id 1649 
   2.30%            libjvm.so  vframeStream::vframeStream 
   1.82%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::backoff, version 2, compile id 1597 
   1.62%            libjvm.so  SpinPause 
   1.62%       jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor::delayedExecute, version 3, compile id 1720 
   1.36%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1758 
   1.22%               [vdso]  __vdso_clock_gettime 
   1.17%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.14%       jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1653 
   1.12%       jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject::await, version 5, compile id 1733 
   1.06%            libjvm.so  ObjectMonitor::TrySpin 
   0.83%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.82%       jvmci, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 1539 
   0.81%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::interruptIdleWorkers, version 2, compile id 1657 
   0.72%                       <unknown> 
   0.71%            libjvm.so  Parker::park 
  16.54%  <...other 409 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  39.72%               kernel
  31.62%       jvmci, level 4
  21.00%            libjvm.so
   4.49%   libpthread-2.31.so
   1.22%               [vdso]
   0.72%                     
   0.59%     Unknown, level 0
   0.29%         libc-2.31.so
   0.29%           ld-2.31.so
   0.05%  libjvmcicompiler.so
   0.01%       hsdis-amd64.so
   0.00%          c1, level 3
   0.00%          interpreter
   0.00%     perf-4122924.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = OBJECT_LOCK, threadType = PLATFORM)

# Run progress: 72.22% complete, ETA 00:11:59
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1777.193 us/op
# Warmup Iteration   2: 1035.565 us/op
# Warmup Iteration   3: 953.577 us/op
# Warmup Iteration   4: 973.610 us/op
# Warmup Iteration   5: 954.940 us/op
Iteration   1: 955.971 us/op
Iteration   2: 951.862 us/op
Iteration   3: 955.595 us/op
Iteration   4: 954.707 us/op
Iteration   5: 957.199 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  955.067 ±(99.9%) 7.711 us/op [Average]
  (min, avg, max) = (951.862, 955.067, 957.199), stdev = 2.002
  CI (99.9%): [947.356, 962.777] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 386402 total address lines.
Perf output processed (skipped 61.026 seconds):
 Column 1: cycles (1770048 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  49.39%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  27.32%  <total for region 2>

....[Hottest Regions]...............................................................................
  49.39%              kernel  [unknown] 
  27.32%              kernel  [unknown] 
   3.18%              kernel  [unknown] 
   2.74%              kernel  [unknown] 
   2.73%              kernel  [unknown] 
   1.95%              kernel  [unknown] 
   1.59%              kernel  [unknown] 
   1.27%              kernel  [unknown] 
   1.07%              kernel  [unknown] 
   0.80%              kernel  [unknown] 
   0.64%              kernel  [unknown] 
   0.40%              kernel  [unknown] 
   0.37%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.32%              kernel  [unknown] 
   0.28%              kernel  [unknown] 
   0.27%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   4.84%  <...other 3268 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.33%              kernel  [unknown] 
   0.08%           libjvm.so  ThreadsSMRSupport::free_list 
   0.06%        libc-2.31.so  _int_free 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%        libc-2.31.so  __memset_avx2_erms 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%        libc-2.31.so  malloc 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 2, compile id 1334 
   0.03%        libc-2.31.so  __vfprintf_internal 
   0.03%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.03%                      <unknown> 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.02%        libc-2.31.so  malloc_consolidate 
   0.02%          ld-2.31.so  __tls_get_addr 
   1.00%  <...other 598 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.33%              kernel
   0.92%           libjvm.so
   0.39%        libc-2.31.so
   0.17%  libpthread-2.31.so
   0.10%      jvmci, level 4
   0.03%                    
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%    Unknown, level 0
   0.01%        runtime stub
   0.00%    perf-4122994.map
   0.00%         interpreter
   0.00%          libjava.so
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = VIRTUAL)

# Run progress: 77.78% complete, ETA 00:09:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1213.122 us/op
# Warmup Iteration   2: 359.891 us/op
# Warmup Iteration   3: 230.776 us/op
# Warmup Iteration   4: 178.579 us/op
# Warmup Iteration   5: 166.972 us/op
Iteration   1: 173.486 us/op
Iteration   2: 169.158 us/op
Iteration   3: 169.724 us/op
Iteration   4: 171.150 us/op
Iteration   5: 168.517 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  170.407 ±(99.9%) 7.613 us/op [Average]
  (min, avg, max) = (168.517, 170.407, 173.486), stdev = 1.977
  CI (99.9%): [162.794, 178.020] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 534003 total address lines.
Perf output processed (skipped 62.029 seconds):
 Column 1: cycles (254754 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1775 

                    0x00007f19eaf80a7e:   xchg   %ax,%ax
          ╭         0x00007f19eaf80a80:   jmp    0x00007f19eaf80aad           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │         0x00007f19eaf80a85:   data16 data16 nopw 0x0(%rax,%rax,1)
          │         0x00007f19eaf80a90:   data16 data16 xchg %ax,%ax
          │         0x00007f19eaf80a94:   nopl   0x0(%rax,%rax,1)
          │         0x00007f19eaf80a9c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗        0x00007f19eaf80aa0:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rdx=Oop r9=Oop [120]=Oop [128]=Oop [136]=Oop [148]=NarrowOop [152]=Oop [160]=Oop }
          ││                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││        0x00007f19eaf80aa7:   test   %eax,0x0(%rbp)               ;   {poll}
   0.00%  ││        0x00007f19eaf80aaa:   mov    %rax,%r11                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘│        0x00007f19eaf80aad:   mov    %r11d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007f19eaf80ab1:   mov    %r11,%rbp
           │        0x00007f19eaf80ab4:   add    %rcx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f19eaf80ab7:   mov    %rbp,%rax
           │        0x00007f19eaf80aba:   and    %rdi,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007f19eaf80abd:   mov    %rax,%r14
           │        0x00007f19eaf80ac0:   or     %rsi,%r14                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007f19eaf80ac3:   mov    %r11,%rax
           │        0x00007f19eaf80ac6:   lock cmpxchg %r14,0xd8(%r9)         ;* unwind (locked if synchronized)
           │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.09%   │        0x00007f19eaf80acf:   cmp    %r11,%rax
           ╰        0x00007f19eaf80ad2:   jne    0x00007f19eaf80aa0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80ad4:   and    %rcx,%rbp                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80ad7:   nopw   0x0(%rax,%rax,1)
                    0x00007f19eaf80ae0:   cmp    $0x1,%rbp
                    0x00007f19eaf80ae4:   jl     0x00007f19eaf880e8           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f19eaf80aea:   mov    0x34(%r9),%eax               ; ImmutableOopMap {rdx=Oop r9=Oop [120]=Oop [128]=Oop [136]=Oop [148]=NarrowOop [152]=Oop [160]=Oop }
                                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80aee:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f19eaf8aaa3
   0.00%            0x00007f19eaf80af5:   mov    $0x0,%r11d
                    0x00007f19eaf80afb:   mov    %rdx,%rbx
   0.00%            0x00007f19eaf80afe:   mov    %r9,%r10
                    0x00007f19eaf80b01:   mov    %r11d,0xe8(%rsp)
   0.00%            0x00007f19eaf80b09:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80b10:   test   %r8d,%r8d
                    0x00007f19eaf80b13:   jge    0x00007f19eaf88870           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80b19:   and    $0xffff,%eax                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f19eaf80b1f:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80b21:   or     $0xf,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80b24:   lea    -0x2(%rax),%r9d
   0.00%    ╭       0x00007f19eaf80b28:   jmp    0x00007f19eaf80b54           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │       0x00007f19eaf80b2d:   data16 data16 nopw 0x0(%rax,%rax,1)
            │       0x00007f19eaf80b38:   data16 data16 xchg %ax,%ax
            │       0x00007f19eaf80b3c:   nopl   0x0(%rax)                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │↗      0x00007f19eaf80b40:   pause                               ;* unwind (locked if synchronized)
            ││                                                                ; - java.lang.Thread::onSpinWait@-3
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.46%    ││      0x00007f19eaf80b42:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││      0x00007f19eaf80b49:   test   %r8d,%r8d
            ││      0x00007f19eaf80b4c:   jge    0x00007f19eaf88a7e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││      0x00007f19eaf80b52:   mov    %ecx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ↘│      0x00007f19eaf80b54:   mov    %eax,%ecx
   0.00%     │      0x00007f19eaf80b56:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             │      0x00007f19eaf80b58:   cmp    %ecx,%r9d
             ╰      0x00007f19eaf80b5b:   jle    0x00007f19eaf80b40
   0.00%            0x00007f19eaf80b5d:   mov    %r8d,%r9d
   0.00%            0x00007f19eaf80b60:   mov    %eax,%r8d
   0.00%      ╭     0x00007f19eaf80b63:   jmp    0x00007f19eaf80bd1
              │     0x00007f19eaf80b68:   data16 data16 nopw 0x0(%rax,%rax,1)
              │     0x00007f19eaf80b73:   data16 data16 xchg %ax,%ax
              │     0x00007f19eaf80b77:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │↗    0x00007f19eaf80b80:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.22%      ││    0x00007f19eaf80b82:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      ││    0x00007f19eaf80b89:   test   %r9d,%r9d
              ││    0x00007f19eaf80b8c:   jge    0x00007f19eaf88614           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f19eaf80b92:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.22%      ││    0x00007f19eaf80b94:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      ││    0x00007f19eaf80b9b:   nopl   0x0(%rax,%rax,1)
              ││    0x00007f19eaf80ba0:   test   %r9d,%r9d
              ││    0x00007f19eaf80ba3:   jge    0x00007f19eaf8863f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││                                                              ;   {no_reloc}
              ││    0x00007f19eaf80ba9:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.21%      ││    0x00007f19eaf80bab:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      ││    0x00007f19eaf80bb2:   test   %r9d,%r9d
              ││    0x00007f19eaf80bb5:   jge    0x00007f19eaf88644           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007f19eaf80bbb:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.18%      ││    0x00007f19eaf80bbd:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%      ││    0x00007f19eaf80bc4:   test   %r9d,%r9d
              ││    0x00007f19eaf80bc7:   jge    0x00007f19eaf88649           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││    0x00007f19eaf80bcd:   lea    -0x4(%r8),%r8d
   0.00%      ↘│    0x00007f19eaf80bd1:   mov    %r8d,%ecx
   0.01%       │    0x00007f19eaf80bd4:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │    0x00007f19eaf80bd6:   cmp    $0x5,%ecx
               ╰    0x00007f19eaf80bd9:   jge    0x00007f19eaf80b80
                ╭   0x00007f19eaf80bdb:   jmp    0x00007f19eaf80c00           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │↗  0x00007f19eaf80be0:   pause                               ;* unwind (locked if synchronized)
                ││                                                            ; - java.lang.Thread::onSpinWait@-3
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.74%        ││  0x00007f19eaf80be2:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%        ││  0x00007f19eaf80be9:   test   %r9d,%r9d
                ││  0x00007f19eaf80bec:   jge    0x00007f19eaf88a86           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ││  0x00007f19eaf80bf2:   data16 nopw 0x0(%rax,%rax,1)
                ││  0x00007f19eaf80bfc:   data16 data16 xchg %ax,%ax
   0.01%        ↘│  0x00007f19eaf80c00:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                 │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  0x00007f19eaf80c03:   cmp    $0x1,%r8d
                 ╰  0x00007f19eaf80c07:   jge    0x00007f19eaf80be0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80c09:   test   %r9d,%r9d
                    0x00007f19eaf80c0c:   jge    0x00007f19eaf88413           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007f19eaf80c12:   test   %r11d,%r11d
                    0x00007f19eaf80c15:   jne    0x00007f19eaf882fd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007f19eaf80c1b:   movq   $0x0,0xc8(%rsp)
                    0x00007f19eaf80c27:   mov    0x380(%r15),%rsi
                    0x00007f19eaf80c2e:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                              ; - java.lang.Thread::currentThread@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007f19eaf80c31:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007f19eaf80c36:   jne    0x00007f19eaf8837a
                    0x00007f19eaf80c3c:   mov    0x94(%rsp),%r8d
                    0x00007f19eaf80c44:   mov    %r8d,0x5c(%rdx)
   0.01%            0x00007f19eaf80c48:   mov    %rdx,%rsi
   0.00%            0x00007f19eaf80c4b:   xor    %r10,%rsi
                    0x00007f19eaf80c4e:   test   $0xffffffffffe00000,%rsi
                    0x00007f19eaf80c55:   je     0x00007f19eaf883af
                    0x00007f19eaf80c5b:   nopl   0x0(%rax,%rax,1)
                    0x00007f19eaf80c60:   test   %r10,%r10
                    0x00007f19eaf80c63:   je     0x00007f19eaf883f1
                    0x00007f19eaf80c69:   mov    0x120(%rsp),%r11
                    0x00007f19eaf80c71:   shr    $0x9,%rdx                    ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
....................................................................................................
  10.22%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1755 

                   0x00007f19eaf4c090:   data16 data16 xchg %ax,%ax
                   0x00007f19eaf4c094:   nopl   0x0(%rax,%rax,1)
                   0x00007f19eaf4c09c:   data16 data16 xchg %ax,%ax          ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↗        0x00007f19eaf4c0a0:   mov    0x458(%r15),%rbp             ; ImmutableOopMap {rdx=Oop r9=Oop [120]=Oop [128]=Oop [136]=Oop [148]=NarrowOop [152]=Oop [160]=Oop }
          │                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │        0x00007f19eaf4c0a7:   test   %eax,0x0(%rbp)               ;   {poll}
          │        0x00007f19eaf4c0aa:   mov    %rax,%r11                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │        0x00007f19eaf4c0ad:   mov    %r11d,0xc(%rdx)              ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │        0x00007f19eaf4c0b1:   mov    %r11,%rbp
          │        0x00007f19eaf4c0b4:   add    %rcx,%rbp                    ;*lsub {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │        0x00007f19eaf4c0b7:   mov    %rbp,%rax
          │        0x00007f19eaf4c0ba:   and    %rdi,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │        0x00007f19eaf4c0bd:   mov    %rax,%r14
          │        0x00007f19eaf4c0c0:   or     %rsi,%r14                    ;*lor {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │        0x00007f19eaf4c0c3:   mov    %r11,%rax
          │        0x00007f19eaf4c0c6:   lock cmpxchg %r14,0xd8(%r9)         ;* unwind (locked if synchronized)
          │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
          │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.15%  │        0x00007f19eaf4c0cf:   cmp    %r11,%rax
          ╰        0x00007f19eaf4c0d2:   jne    0x00007f19eaf4c0a0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f19eaf4c0d4:   and    %rcx,%rbp                    ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c0d7:   nopw   0x0(%rax,%rax,1)
                   0x00007f19eaf4c0e0:   cmp    $0x1,%rbp
                   0x00007f19eaf4c0e4:   jl     0x00007f19eaf535e8           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f19eaf4c0ea:   mov    0x34(%r9),%eax               ; ImmutableOopMap {rdx=Oop r9=Oop [120]=Oop [128]=Oop [136]=Oop [148]=NarrowOop [152]=Oop [160]=Oop }
                                                                             ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c0ee:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007f19eaf55fd9
   0.00%           0x00007f19eaf4c0f5:   mov    $0x0,%r11d
                   0x00007f19eaf4c0fb:   mov    %rdx,%rbx
                   0x00007f19eaf4c0fe:   mov    %r9,%r10
                   0x00007f19eaf4c101:   mov    %r11d,0xe8(%rsp)
                   0x00007f19eaf4c109:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c110:   test   %r8d,%r8d
                   0x00007f19eaf4c113:   jge    0x00007f19eaf53d70           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f19eaf4c119:   and    $0xffff,%eax                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f19eaf4c11f:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c121:   or     $0xf,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c124:   lea    -0x2(%rax),%r9d
           ╭       0x00007f19eaf4c128:   jmp    0x00007f19eaf4c154           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │       0x00007f19eaf4c12d:   data16 data16 nopw 0x0(%rax,%rax,1)
           │       0x00007f19eaf4c138:   data16 data16 xchg %ax,%ax
           │       0x00007f19eaf4c13c:   nopl   0x0(%rax)                    ;*ifle {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
           │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │↗      0x00007f19eaf4c140:   pause                               ;* unwind (locked if synchronized)
           ││                                                                ; - java.lang.Thread::onSpinWait@-3
           ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
           ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.47%   ││      0x00007f19eaf4c142:   mov    0xa8(%rbx),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
           ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   ││      0x00007f19eaf4c149:   test   %r8d,%r8d
           ││      0x00007f19eaf4c14c:   jge    0x00007f19eaf53f7e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
           ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ││      0x00007f19eaf4c152:   mov    %ecx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
           ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           ↘│      0x00007f19eaf4c154:   mov    %eax,%ecx
   0.00%    │      0x00007f19eaf4c156:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │      0x00007f19eaf4c158:   cmp    %ecx,%r9d
            ╰      0x00007f19eaf4c15b:   jle    0x00007f19eaf4c140
   0.00%           0x00007f19eaf4c15d:   mov    %r8d,%r9d
   0.00%           0x00007f19eaf4c160:   mov    %eax,%r8d
   0.00%     ╭     0x00007f19eaf4c163:   jmp    0x00007f19eaf4c1d1
             │     0x00007f19eaf4c168:   data16 data16 nopw 0x0(%rax,%rax,1)
             │     0x00007f19eaf4c173:   data16 data16 xchg %ax,%ax
             │     0x00007f19eaf4c177:   nopw   0x0(%rax,%rax,1)             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
             │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │↗    0x00007f19eaf4c180:   pause                               ;* unwind (locked if synchronized)
             ││                                                              ; - java.lang.Thread::onSpinWait@-3
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.15%     ││    0x00007f19eaf4c182:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     ││    0x00007f19eaf4c189:   test   %r9d,%r9d
             ││    0x00007f19eaf4c18c:   jge    0x00007f19eaf53b05           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     ││    0x00007f19eaf4c192:   pause                               ;* unwind (locked if synchronized)
             ││                                                              ; - java.lang.Thread::onSpinWait@-3
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.18%     ││    0x00007f19eaf4c194:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     ││    0x00007f19eaf4c19b:   nopl   0x0(%rax,%rax,1)
             ││    0x00007f19eaf4c1a0:   test   %r9d,%r9d
             ││    0x00007f19eaf4c1a3:   jge    0x00007f19eaf53b30           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             ││                                                              ;   {no_reloc}
             ││    0x00007f19eaf4c1a9:   pause                               ;* unwind (locked if synchronized)
             ││                                                              ; - java.lang.Thread::onSpinWait@-3
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.11%     ││    0x00007f19eaf4c1ab:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     ││    0x00007f19eaf4c1b2:   test   %r9d,%r9d
             ││    0x00007f19eaf4c1b5:   jge    0x00007f19eaf53b35           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             ││    0x00007f19eaf4c1bb:   pause                               ;* unwind (locked if synchronized)
             ││                                                              ; - java.lang.Thread::onSpinWait@-3
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.14%     ││    0x00007f19eaf4c1bd:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%     ││    0x00007f19eaf4c1c4:   test   %r9d,%r9d
             ││    0x00007f19eaf4c1c7:   jge    0x00007f19eaf53b3a           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
             ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
             ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
             ││    0x00007f19eaf4c1cd:   lea    -0x4(%r8),%r8d
   0.00%     ↘│    0x00007f19eaf4c1d1:   mov    %r8d,%ecx
   0.01%      │    0x00007f19eaf4c1d4:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
              │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │    0x00007f19eaf4c1d6:   cmp    $0x5,%ecx
              ╰    0x00007f19eaf4c1d9:   jge    0x00007f19eaf4c180
               ╭   0x00007f19eaf4c1db:   jmp    0x00007f19eaf4c200           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
               │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │↗  0x00007f19eaf4c1e0:   pause                               ;* unwind (locked if synchronized)
               ││                                                            ; - java.lang.Thread::onSpinWait@-3
               ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
               ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.77%       ││  0x00007f19eaf4c1e2:   mov    0xa8(%rbx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
               ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%       ││  0x00007f19eaf4c1e9:   test   %r9d,%r9d
               ││  0x00007f19eaf4c1ec:   jge    0x00007f19eaf53f86           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
               ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
               ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
               ││  0x00007f19eaf4c1f2:   data16 nopw 0x0(%rax,%rax,1)
               ││  0x00007f19eaf4c1fc:   data16 data16 xchg %ax,%ax
   0.01%       ↘│  0x00007f19eaf4c200:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │  0x00007f19eaf4c203:   cmp    $0x1,%r8d
                ╰  0x00007f19eaf4c207:   jge    0x00007f19eaf4c1e0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c209:   test   %r9d,%r9d
                   0x00007f19eaf4c20c:   jge    0x00007f19eaf53913           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c212:   test   %r11d,%r11d
                   0x00007f19eaf4c215:   jne    0x00007f19eaf537fd           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c21b:   movq   $0x0,0xc8(%rsp)
   0.00%           0x00007f19eaf4c227:   mov    0x380(%r15),%rsi
                   0x00007f19eaf4c22e:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                             ; - java.lang.Thread::currentThread@-3
                                                                             ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f19eaf4c231:   cmpb   $0x0,0x40(%r15)
   0.00%           0x00007f19eaf4c236:   jne    0x00007f19eaf5387a
                   0x00007f19eaf4c23c:   mov    0x94(%rsp),%r8d
                   0x00007f19eaf4c244:   mov    %r8d,0x5c(%rdx)
   0.00%           0x00007f19eaf4c248:   mov    %rdx,%rsi
                   0x00007f19eaf4c24b:   xor    %r10,%rsi
                   0x00007f19eaf4c24e:   test   $0xffffffffffe00000,%rsi
                   0x00007f19eaf4c255:   je     0x00007f19eaf538af
                   0x00007f19eaf4c25b:   nopl   0x0(%rax,%rax,1)
                   0x00007f19eaf4c260:   test   %r10,%r10
                   0x00007f19eaf4c263:   je     0x00007f19eaf538f1
                   0x00007f19eaf4c269:   mov    0x120(%rsp),%r11
                   0x00007f19eaf4c271:   shr    $0x9,%rdx                    ;* unwind (locked if synchronized)
                                                                             ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                             ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  10.08%  <total for region 3>

....[Hottest Regions]...............................................................................
  13.67%               kernel  [unknown] 
  10.22%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1775 
  10.08%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1755 
   6.40%               kernel  [unknown] 
   2.68%               kernel  [unknown] 
   2.06%       jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1681 
   1.58%               kernel  [unknown] 
   1.19%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1755 
   1.14%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1775 
   1.00%            libjvm.so  update_register_map1 
   0.83%               kernel  [unknown] 
   0.77%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.75%               kernel  [unknown] 
   0.73%       jvmci, level 4  java.util.concurrent.FutureTask::run, version 5, compile id 1709 
   0.68%            libjvm.so  Parker::park 
   0.65%               kernel  [unknown] 
   0.62%               kernel  [unknown] 
   0.62%               kernel  [unknown] 
   0.60%               kernel  [unknown] 
   0.60%   libpthread-2.31.so  __pthread_mutex_lock 
  43.13%  <...other 1742 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  44.33%               kernel  [unknown] 
  13.18%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 9, compile id 1775 
  13.06%       jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 1755 
   2.67%       jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1681 
   2.28%       jvmci, level 4  java.util.concurrent.FutureTask::run, version 5, compile id 1709 
   1.29%   libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.00%            libjvm.so  update_register_map1 
   0.98%   libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.87%            libjvm.so  OopMapStream::find_next 
   0.75%            libjvm.so  vframeStream::vframeStream 
   0.74%            libjvm.so  Parker::park 
   0.71%       jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject::await, version 4, compile id 1696 
   0.66%       jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 6, compile id 1703 
   0.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1741 
   0.65%            libjvm.so  Unsafe_Park 
   0.64%       jvmci, level 4  java.lang.VirtualThread::unpark, version 2, compile id 1566 
   0.61%   libpthread-2.31.so  __pthread_mutex_lock 
   0.57%            libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.57%               [vdso]  __vdso_clock_gettime 
   0.55%         libc-2.31.so  __memmove_sse2_unaligned_erms 
  13.23%  <...other 443 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  44.33%               kernel
  37.82%       jvmci, level 4
  10.25%            libjvm.so
   4.83%   libpthread-2.31.so
   1.00%         libc-2.31.so
   0.66%     Unknown, level 0
   0.57%               [vdso]
   0.21%                     
   0.21%           ld-2.31.so
   0.06%  libjvmcicompiler.so
   0.03%         runtime stub
   0.01%          interpreter
   0.01%      perf-523064.map
   0.01%       hsdis-amd64.so
   0.01%          c1, level 3
   0.00%           libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = REENTRANT_LOCK, threadType = PLATFORM)

# Run progress: 83.33% complete, ETA 00:07:08
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1643.573 us/op
# Warmup Iteration   2: 1090.309 us/op
# Warmup Iteration   3: 1010.623 us/op
# Warmup Iteration   4: 1010.063 us/op
# Warmup Iteration   5: 1009.706 us/op
Iteration   1: 1019.128 us/op
Iteration   2: 1009.526 us/op
Iteration   3: 1011.111 us/op
Iteration   4: 1012.105 us/op
Iteration   5: 1011.298 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  1012.634 ±(99.9%) 14.435 us/op [Average]
  (min, avg, max) = (1009.526, 1012.634, 1019.128), stdev = 3.749
  CI (99.9%): [998.199, 1027.068] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 365122 total address lines.
Perf output processed (skipped 60.916 seconds):
 Column 1: cycles (1718586 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  48.02%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  26.42%  <total for region 2>

....[Hottest Regions]...............................................................................
  48.02%              kernel  [unknown] 
  26.42%              kernel  [unknown] 
   4.42%              kernel  [unknown] 
   3.17%              kernel  [unknown] 
   2.64%              kernel  [unknown] 
   1.98%              kernel  [unknown] 
   1.53%              kernel  [unknown] 
   1.43%              kernel  [unknown] 
   1.28%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.51%              kernel  [unknown] 
   0.48%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.23%              kernel  [unknown] 
   0.17%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   5.29%  <...other 3210 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.09%              kernel  [unknown] 
   0.14%           libjvm.so  ThreadsSMRSupport::free_list 
   0.08%        libc-2.31.so  _int_free 
   0.08%        libc-2.31.so  _int_malloc 
   0.07%        libc-2.31.so  __memset_avx2_erms 
   0.05%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.05%           libjvm.so  ScanHazardPtrGatherThreadsListClosure::do_thread 
   0.05%        libc-2.31.so  malloc 
   0.04%  libpthread-2.31.so  __pthread_mutex_lock 
   0.04%        libc-2.31.so  __vfprintf_internal 
   0.03%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.03%        libc-2.31.so  malloc_consolidate 
   0.03%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.03%           libjvm.so  JVM_GetStackAccessControlContext 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ValidateHazardPtrsClosure::do_thread 
   0.03%           libjvm.so  vframeStreamCommon::next 
   0.02%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1CollectedHeap::fill_with_dummy_object 
   1.04%  <...other 604 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.09%              kernel
   1.01%           libjvm.so
   0.53%        libc-2.31.so
   0.19%  libpthread-2.31.so
   0.08%      jvmci, level 4
   0.03%                    
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%    Unknown, level 0
   0.00%        runtime stub
   0.00%         interpreter
   0.00%          libjava.so
   0.00%     perf-523135.map
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = VIRTUAL)

# Run progress: 88.89% complete, ETA 00:04:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 390.625 us/op
# Warmup Iteration   2: 97.789 us/op
# Warmup Iteration   3: 65.458 us/op
# Warmup Iteration   4: 49.150 us/op
# Warmup Iteration   5: 48.259 us/op
Iteration   1: 48.898 us/op
Iteration   2: 48.790 us/op
Iteration   3: 48.108 us/op
Iteration   4: 48.419 us/op
Iteration   5: 49.109 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  48.665 ±(99.9%) 1.538 us/op [Average]
  (min, avg, max) = (48.108, 48.665, 49.109), stdev = 0.399
  CI (99.9%): [47.127, 50.203] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 543344 total address lines.
Perf output processed (skipped 62.191 seconds):
 Column 1: cycles (600124 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1676 

                                                                              ; - jdk.internal.misc.Unsafe::compareAndSetReference@-3
                                                                              ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                              ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                    0x00007fdceae19c96:   mov    %esi,%ecx
                    0x00007fdceae19c98:   mov    %rbx,%rsi
                    0x00007fdceae19c9b:   call   0x00007fdcea8e9c80           ;   {runtime_call Stub&lt;write_barrier_pre(Object)void&gt;}
                    0x00007fdceae19ca0:   nop
                    0x00007fdceae19ca1:   mov    %rbx,0x78(%rsp)
                    0x00007fdceae19ca6:   jmp    0x00007fdceae19bd2
   0.00%            0x00007fdceae19cab:   movabs $0x7fdc6f127048,%r10         ;   {metadata(&apos;java/util/concurrent/ForkJoinTask&apos;)}
   0.00%            0x00007fdceae19cb5:   mov    0xc0(%rsp),%rcx
   0.00%            0x00007fdceae19cbd:   mov    0x12c(%rsp),%ebp             ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinTask::doExec@6 (line 385)
                                                                              ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@19 (line 1312)
                                                                              ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                    0x00007fdceae19cc4:   test   %ebp,%ebp
                    0x00007fdceae19cc6:   jl     0x00007fdceae2213e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%            0x00007fdceae19ccc:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rcx=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [188]=NarrowOop [192]=Oop [200]=Oop }
                                                                              ;*dup {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@38 (line 1808)
   0.00%            0x00007fdceae19cd3:   test   %eax,(%rax)                  ;   {poll}
   0.00%            0x00007fdceae19cd5:   mov    0x128(%rsp),%esi
   0.00%            0x00007fdceae19cdc:   mov    %ebp,0x12c(%rsp)
                    0x00007fdceae19ce3:   mov    0xc8(%rsp),%rdx
                    0x00007fdceae19ceb:   jmp    0x00007fdceae19a50           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
   0.00%            0x00007fdceae19cf0:   mov    0xc0(%rsp),%r10
   0.00%            0x00007fdceae19cf8:   mov    0xc8(%rsp),%r8
   0.00%            0x00007fdceae19d00:   mov    $0x10000,%eax
   0.00%            0x00007fdceae19d05:   add    0xa8(%r10),%eax              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007fdceae19d0c:   mov    0x30(%r8),%r11d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%            0x00007fdceae19d10:   and    $0x7fffffff,%eax             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19d16:   test   %r11d,%r11d
                    0x00007fdceae19d19:   jl     0x00007fdceae241b8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19d1f:   mov    %r10,%rcx
   0.00%            0x00007fdceae19d22:   mov    %r8,%r11
                    0x00007fdceae19d25:   movabs $0x7fdc6f127048,%r10         ;   {metadata(&apos;java/util/concurrent/ForkJoinTask&apos;)}
                    0x00007fdceae19d2f:   mov    0xd8(%r11),%r8               ;*getfield ctl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@37 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.10%            0x00007fdceae19d36:   mov    %eax,%r9d
   0.00%            0x00007fdceae19d39:   or     $0x80000000,%r9d             ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@46 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fdceae19d40:   mov    %r9d,0xa8(%rcx)
                    0x00007fdceae19d47:   lock addl $0x0,(%rsp)               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.15%            0x00007fdceae19d4c:   mov    %eax,%r9d                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fdceae19d4f:   mov    0x148(%rsp),%rbx
          ╭         0x00007fdceae19d57:   jmp    0x00007fdceae19d6c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │         0x00007fdceae19d5c:   nopl   0x0(%rax)                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
          │                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │↗        0x00007fdceae19d60:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {rcx=Oop r11=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [188]=NarrowOop [192]=Oop [200]=Oop }
          ││                                                                  ;*lreturn {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@12 (line 1538)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││        0x00007fdceae19d67:   test   %eax,(%rdi)                  ;   {poll}
   0.00%  ││        0x00007fdceae19d69:   mov    %rax,%r8                     ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@50 (line 1868)
          ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ↘│        0x00007fdceae19d6c:   mov    %r8d,0xc(%rcx)               ;*putfield stackPred {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@54 (line 1868)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fdceae19d70:   mov    %r8,%rdi
           │        0x00007fdceae19d73:   add    0x138(%rsp),%rdi             ;*lsub {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@67 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fdceae19d7b:   mov    %rdi,%rax
   0.00%   │        0x00007fdceae19d7e:   and    %rbx,%rax                    ;*land {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@71 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
           │        0x00007fdceae19d81:   mov    %rax,%rdx
           │        0x00007fdceae19d84:   or     %r9,%rdx                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%   │        0x00007fdceae19d87:   mov    %r8,%rax
   0.00%   │        0x00007fdceae19d8a:   lock cmpxchg %rdx,0xd8(%r11)        ;* unwind (locked if synchronized)
           │                                                                  ; - jdk.internal.misc.Unsafe::compareAndExchangeLong@-3
           │                                                                  ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
           │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.26%   │        0x00007fdceae19d93:   cmp    %r8,%rax
           ╰        0x00007fdceae19d96:   jne    0x00007fdceae19d60           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@85 (line 1869)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19d98:   and    0x138(%rsp),%rdi             ;*land {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@93 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19da0:   cmp    $0x1,%rdi
                    0x00007fdceae19da4:   jl     0x00007fdceae22786           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fdceae19daa:   mov    0x34(%r11),%eax              ; ImmutableOopMap {rcx=Oop r11=Oop [144]=Oop [152]=Oop [160]=Oop [168]=Oop [176]=Oop [188]=NarrowOop [192]=Oop [200]=Oop }
                                                                              ;*lload {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%            0x00007fdceae19dae:   mov    0xc(,%rax,8),%eax            ; implicit exception: dispatches to 0x00007fdceae24bad
   0.00%            0x00007fdceae19db5:   mov    $0x0,%r8d
   0.00%            0x00007fdceae19dbb:   mov    0x140(%rsp),%rsi
                    0x00007fdceae19dc3:   mov    %r8d,0x10c(%rsp)
                    0x00007fdceae19dcb:   mov    0xa8(%rcx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19dd2:   test   %r9d,%r9d
                    0x00007fdceae19dd5:   jge    0x00007fdceae22b6f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19ddb:   and    $0xffff,%eax                 ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@164 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fdceae19de1:   shl    %eax                         ;*ishl {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@166 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19de3:   or     $0xf,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19de6:   lea    -0x2(%rax),%edi
   0.00%    ╭       0x00007fdceae19de9:   jmp    0x00007fdceae19e14           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │       0x00007fdceae19dee:   data16 data16 nopw 0x0(%rax,%rax,1)
            │       0x00007fdceae19df9:   data16 data16 xchg %ax,%ax
            │       0x00007fdceae19dfd:   data16 xchg %ax,%ax                 ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │↗      0x00007fdceae19e00:   pause                               ;* unwind (locked if synchronized)
            ││                                                                ; - java.lang.Thread::onSpinWait@-3
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.62%    ││      0x00007fdceae19e02:   mov    0xa8(%rcx),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%    ││      0x00007fdceae19e09:   test   %r9d,%r9d
            ││      0x00007fdceae19e0c:   jge    0x00007fdceae22fa5           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││      0x00007fdceae19e12:   mov    %edx,%eax                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@172 (line 1880)
            ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ↘│      0x00007fdceae19e14:   mov    %eax,%edx
   0.00%     │      0x00007fdceae19e16:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
             │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%     │      0x00007fdceae19e18:   cmp    %edx,%edi
             ╰      0x00007fdceae19e1a:   jle    0x00007fdceae19e00
   0.00%            0x00007fdceae19e1c:   mov    %r9d,%edi
   0.00%            0x00007fdceae19e1f:   mov    %eax,%r9d
   0.00%      ╭     0x00007fdceae19e22:   jmp    0x00007fdceae19e84
              │     0x00007fdceae19e27:   data16 data16 nopw 0x0(%rax,%rax,1)
              │     0x00007fdceae19e32:   data16 data16 xchg %ax,%ax
              │     0x00007fdceae19e36:   data16 nopw 0x0(%rax,%rax,1)        ;*ifle {reexecute=0 rethrow=0 return_oop=0}
              │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
              │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      │↗    0x00007fdceae19e40:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.12%      ││    0x00007fdceae19e42:   mov    0xa8(%rcx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.05%      ││    0x00007fdceae19e48:   test   %edi,%edi
              ││    0x00007fdceae19e4a:   jge    0x00007fdceae22760           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fdceae19e50:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   2.07%      ││    0x00007fdceae19e52:   mov    0xa8(%rcx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%      ││    0x00007fdceae19e58:   test   %edi,%edi
              ││    0x00007fdceae19e5a:   jge    0x00007fdceae22760           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fdceae19e60:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.98%      ││    0x00007fdceae19e62:   mov    0xa8(%rcx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
              ││                                                              ;   {no_reloc}
   0.03%      ││    0x00007fdceae19e68:   test   %edi,%edi
              ││    0x00007fdceae19e6a:   jge    0x00007fdceae22760           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fdceae19e70:   pause                               ;* unwind (locked if synchronized)
              ││                                                              ; - java.lang.Thread::onSpinWait@-3
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   1.99%      ││    0x00007fdceae19e72:   mov    0xa8(%rcx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%      ││    0x00007fdceae19e78:   test   %edi,%edi
              ││    0x00007fdceae19e7a:   jge    0x00007fdceae22760           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
              ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
              ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%      ││    0x00007fdceae19e80:   lea    -0x4(%r9),%r9d
   0.00%      ↘│    0x00007fdceae19e84:   mov    %r9d,%edx
   0.01%       │    0x00007fdceae19e87:   dec    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
               │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%       │    0x00007fdceae19e89:   cmp    $0x5,%edx
               ╰    0x00007fdceae19e8c:   jge    0x00007fdceae19e40
   0.00%        ╭   0x00007fdceae19e8e:   jmp    0x00007fdceae19eb0
                │   0x00007fdceae19e93:   nopw   0x0(%rax,%rax,1)
                │   0x00007fdceae19e9c:   data16 data16 xchg %ax,%ax          ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        │↗  0x00007fdceae19ea0:   pause                               ;* unwind (locked if synchronized)
                ││                                                            ; - java.lang.Thread::onSpinWait@-3
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.63%        ││  0x00007fdceae19ea2:   mov    0xa8(%rcx),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%        ││  0x00007fdceae19ea8:   test   %edi,%edi
                ││  0x00007fdceae19eaa:   jge    0x00007fdceae22760           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ↘│  0x00007fdceae19eb0:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                 │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%         │  0x00007fdceae19eb3:   cmp    $0x1,%r9d
                 ╰  0x00007fdceae19eb7:   jge    0x00007fdceae19ea0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19eb9:   nopl   0x0(%rax)
                    0x00007fdceae19ec0:   test   %edi,%edi
                    0x00007fdceae19ec2:   jge    0x00007fdceae2273c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%            0x00007fdceae19ec8:   test   %r8d,%r8d
                    0x00007fdceae19ecb:   jne    0x00007fdceae229cb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                    0x00007fdceae19ed1:   movq   $0x0,0xf8(%rsp)
   0.00%            0x00007fdceae19edd:   mov    %r11,%r10
                    0x00007fdceae19ee0:   mov    0x380(%r15),%rsi
   0.00%            0x00007fdceae19ee7:   mov    (%rsi),%rdx                  ;* unwind (locked if synchronized)
                                                                              ; - java.lang.Thread::currentThread@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@3 (line 162)
                                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
                                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%            0x00007fdceae19eea:   cmpb   $0x0,0x40(%r15)
   0.00%            0x00007fdceae19eef:   jne    0x00007fdceae229f7
                    0x00007fdceae19ef5:   mov    0xbc(%rsp),%r11d
                    0x00007fdceae19efd:   mov    %r11d,0x5c(%rdx)
   0.00%            0x00007fdceae19f01:   mov    %rdx,%rsi
   0.00%            0x00007fdceae19f04:   xor    %r10,%rsi
                    0x00007fdceae19f07:   test   $0xffffffffffe00000,%rsi
                    0x00007fdceae19f0e:   je     0x00007fdceae229ea
                    0x00007fdceae19f14:   test   %r10,%r10
                    0x00007fdceae19f17:   je     0x00007fdceae22a2f
                    0x00007fdceae19f1d:   mov    0x150(%rsp),%r8
                    0x00007fdceae19f25:   shr    $0x9,%rdx
                    0x00007fdceae19f29:   cmpb   $0x2,(%rdx,%r8,1)
                    0x00007fdceae19f2e:   jne    0x00007fdceae22a9f           ;* unwind (locked if synchronized)
                                                                              ; - jdk.internal.misc.Unsafe::putReferenceOpaque@-3
                                                                              ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
....................................................................................................
  10.23%  <total for region 1>

....[Hottest Regions]...............................................................................
  10.23%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1676 
   9.75%              kernel  [unknown] 
   9.10%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1796 
   4.57%              kernel  [unknown] 
   2.23%              kernel  [unknown] 
   2.13%           libjvm.so  update_register_map1 
   1.66%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1676 
   1.49%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1796 
   1.39%           libjvm.so  vframeStream::vframeStream 
   1.08%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1718 
   1.05%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 8, compile id 1737 
   1.02%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 8, compile id 1737 
   0.92%      jvmci, level 4  java.lang.VirtualThread::submitRunContinuation, version 2, compile id 1661 
   0.85%              kernel  [unknown] 
   0.79%              [vdso]  __vdso_clock_gettime 
   0.77%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1676 
   0.75%           libjvm.so  OopMapStream::find_next 
   0.75%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.71%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1796 
   0.68%              kernel  [unknown] 
  48.06%  <...other 1835 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  33.19%              kernel  [unknown] 
  13.52%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1676 
  12.13%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 1796 
   3.95%      jvmci, level 4  java.util.concurrent.FutureTask::run, version 8, compile id 1737 
   2.67%      jvmci, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 1718 
   2.14%           libjvm.so  update_register_map1 
   1.88%           libjvm.so  OopMapStream::find_next 
   1.83%      jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue::take, version 6, compile id 1627 
   1.78%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::runWorker, version 4, compile id 1615 
   1.70%           libjvm.so  vframeStream::vframeStream 
   1.52%      jvmci, level 4  java.lang.VirtualThread::submitRunContinuation, version 2, compile id 1661 
   0.97%      jvmci, level 4  java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask::run, version 2, compile id 1590 
   0.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1771 
   0.94%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.79%              [vdso]  __vdso_clock_gettime 
   0.77%      jvmci, level 4  java.util.concurrent.ThreadPoolExecutor::tryTerminate, version 2, compile id 1618 
   0.75%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.73%      jvmci, level 4  jdk.internal.vm.Continuation::enter, version 2, compile id 1635 
   0.73%      jvmci, level 4  java.util.concurrent.locks.AbstractQueuedSynchronizer::acquire, version 4, compile id 1686 
   0.73%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
  16.32%  <...other 389 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  45.23%      jvmci, level 4
  33.19%              kernel
  14.44%           libjvm.so
   3.66%  libpthread-2.31.so
   1.38%        libc-2.31.so
   0.79%              [vdso]
   0.57%    Unknown, level 0
   0.49%                    
   0.19%          ld-2.31.so
   0.03%        runtime stub
   0.00%    perf-1089230.map
   0.00%         interpreter
   0.00%          libjava.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
   0.00%         c1, level 2
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls
# Parameters: (backoffType = PARK, cpuLoadFactor = 2, lockType = NO_LOCK, threadType = PLATFORM)

# Run progress: 94.44% complete, ETA 00:02:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1199.660 us/op
# Warmup Iteration   2: 608.133 us/op
# Warmup Iteration   3: 600.843 us/op
# Warmup Iteration   4: 597.744 us/op
# Warmup Iteration   5: 598.517 us/op
Iteration   1: 603.630 us/op
Iteration   2: 597.598 us/op
Iteration   3: 598.010 us/op
Iteration   4: 598.665 us/op
Iteration   5: 605.212 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls":
  600.623 ±(99.9%) 13.602 us/op [Average]
  (min, avg, max) = (597.598, 600.623, 605.212), stdev = 3.532
  CI (99.9%): [587.021, 614.225] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark.synchronized_calls:asm":
PrintAssembly processed: 369995 total address lines.
Perf output processed (skipped 61.084 seconds):
 Column 1: cycles (3286468 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  51.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  23.33%  <total for region 2>

....[Hottest Regions]...............................................................................
  51.32%              kernel  [unknown] 
  23.33%              kernel  [unknown] 
   3.74%              kernel  [unknown] 
   3.22%              kernel  [unknown] 
   2.33%              kernel  [unknown] 
   2.25%              kernel  [unknown] 
   1.93%              kernel  [unknown] 
   1.37%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.70%              kernel  [unknown] 
   0.65%              kernel  [unknown] 
   0.48%              kernel  [unknown] 
   0.46%              kernel  [unknown] 
   0.39%              kernel  [unknown] 
   0.37%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.34%              kernel  [unknown] 
   0.26%              kernel  [unknown] 
   0.20%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   5.43%  <...other 3704 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.63%              kernel  [unknown] 
   0.06%           libjvm.so  JVM_GetStackAccessControlContext 
   0.06%           libjvm.so  vframeStreamCommon::next 
   0.04%        libc-2.31.so  _int_free 
   0.04%        libc-2.31.so  malloc 
   0.04%        libc-2.31.so  _int_malloc 
   0.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadSynchronizationBenchmark::synchronized_calls, version 2, compile id 1387 
   0.04%           libjvm.so  InstanceKlass::protection_domain 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.03%  libpthread-2.31.so  __pthread_mutex_lock 
   0.03%           libjvm.so  ThreadsSMRSupport::free_list 
   0.03%           libjvm.so  vframeStream::vframeStream 
   0.03%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.03%        libc-2.31.so  __memset_avx2_erms 
   0.03%           libjvm.so  Method::validate_bci_from_bcp 
   0.02%           libjvm.so  ThreadsSMRSupport::is_a_protected_JavaThread 
   0.02%  libpthread-2.31.so  pthread_create@@GLIBC_2.2.5 
   0.02%  libpthread-2.31.so  __lll_lock_wait_private 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.75%  <...other 630 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.63%              kernel
   0.79%           libjvm.so
   0.27%        libc-2.31.so
   0.17%  libpthread-2.31.so
   0.07%      jvmci, level 4
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.01%                    
   0.01%    Unknown, level 0
   0.00%          libjava.so
   0.00%        runtime stub
   0.00%    perf-1089299.map
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:43:27

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
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2     OBJECT_LOCK       VIRTUAL  avgt    5    30.115 ±  0.579  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2     OBJECT_LOCK      PLATFORM  avgt    5   578.567 ± 23.035  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2  REENTRANT_LOCK       VIRTUAL  avgt    5    30.531 ±  0.358  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2  REENTRANT_LOCK      PLATFORM  avgt    5   589.751 ± 13.815  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2         NO_LOCK       VIRTUAL  avgt    5    30.072 ±  0.560  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               NONE                2         NO_LOCK      PLATFORM  avgt    5   587.473 ± 12.748  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           NONE                2         NO_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2     OBJECT_LOCK       VIRTUAL  avgt    5    37.482 ±  0.999  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2     OBJECT_LOCK      PLATFORM  avgt    5  1022.796 ± 18.744  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2  REENTRANT_LOCK       VIRTUAL  avgt    5   117.914 ±  7.214  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2  REENTRANT_LOCK      PLATFORM  avgt    5  1024.750 ± 26.748  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2         NO_LOCK       VIRTUAL  avgt    5    41.343 ±  0.358  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls              SLEEP                2         NO_LOCK      PLATFORM  avgt    5   606.811 ±  9.484  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm          SLEEP                2         NO_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2     OBJECT_LOCK       VIRTUAL  avgt    5    37.332 ±  0.801  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2     OBJECT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2     OBJECT_LOCK      PLATFORM  avgt    5   955.067 ±  7.711  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2     OBJECT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2  REENTRANT_LOCK       VIRTUAL  avgt    5   170.407 ±  7.613  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2  REENTRANT_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2  REENTRANT_LOCK      PLATFORM  avgt    5  1012.634 ± 14.435  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2  REENTRANT_LOCK      PLATFORM  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2         NO_LOCK       VIRTUAL  avgt    5    48.665 ±  1.538  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2         NO_LOCK       VIRTUAL  avgt            NaN             ---
VPThreadSynchronizationBenchmark.synchronized_calls               PARK                2         NO_LOCK      PLATFORM  avgt    5   600.623 ± 13.602  us/op
VPThreadSynchronizationBenchmark.synchronized_calls:asm           PARK                2         NO_LOCK      PLATFORM  avgt            NaN             ---
