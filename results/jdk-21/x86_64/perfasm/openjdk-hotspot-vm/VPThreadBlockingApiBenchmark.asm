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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1, threadType = VIRTUAL)

# Run progress: 0.00% complete, ETA 00:13:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 41.408 us/op
# Warmup Iteration   2: 25.292 us/op
# Warmup Iteration   3: 24.715 us/op
# Warmup Iteration   4: 24.750 us/op
# Warmup Iteration   5: 24.756 us/op
Iteration   1: 24.761 us/op
Iteration   2: 24.806 us/op
Iteration   3: 24.789 us/op
Iteration   4: 24.697 us/op
Iteration   5: 24.717 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  24.754 ±(99.9%) 0.179 us/op [Average]
  (min, avg, max) = (24.697, 24.754, 24.806), stdev = 0.046
  CI (99.9%): [24.575, 24.933] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 235194 total address lines.
Perf output processed (skipped 56.340 seconds):
 Column 1: cycles (156824 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  18.32%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 835 

                            # parm0:    rdx:rdx   = &apos;java/util/concurrent/ForkJoinPool$WorkQueue&apos;
                            #           [sp+0x50]  (sp of caller)
                            0x00007f1ba465fc40:   mov    0x8(%rsi),%r10d
                            0x00007f1ba465fc44:   movabs $0x7f1b2b000000,%r11
                            0x00007f1ba465fc4e:   add    %r11,%r10
                            0x00007f1ba465fc51:   cmp    %r10,%rax
                            0x00007f1ba465fc54:   jne    0x00007f1ba40c4080           ;   {runtime_call ic_miss_stub}
                            0x00007f1ba465fc5a:   xchg   %ax,%ax
                            0x00007f1ba465fc5c:   nopl   0x0(%rax)
                          [Verified Entry Point]
   0.00%                    0x00007f1ba465fc60:   mov    %eax,-0x14000(%rsp)
   0.00%                    0x00007f1ba465fc67:   push   %rbp
                            0x00007f1ba465fc68:   sub    $0x40,%rsp
   0.00%                    0x00007f1ba465fc6c:   cmpl   $0x0,0x20(%r15)
                            0x00007f1ba465fc74:   jne    0x00007f1ba46606e0           ;*synchronization entry
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@-1 (line 1859)
   0.00%                    0x00007f1ba465fc7a:   mov    %rdx,%r10
                            0x00007f1ba465fc7d:   data16 xchg %ax,%ax
   0.00%                    0x00007f1ba465fc80:   mov    0xa8(%rdx),%ecx              ; implicit exception: dispatches to 0x00007f1ba466063c
                                                                                      ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@84 (line 1869)
                            0x00007f1ba465fc86:   mov    0x380(%r15),%r11
   0.00%                    0x00007f1ba465fc8d:   mov    (%r11),%r13                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
   0.01%                    0x00007f1ba465fc90:   mov    %rsi,%r11
                            0x00007f1ba465fc93:   mov    0x30(%rsi),%r9d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
   0.00%                    0x00007f1ba465fc97:   test   %r9d,%r9d
   0.00%                    0x00007f1ba465fc9a:   nopw   0x0(%rax,%rax,1)
                            0x00007f1ba465fca0:   jl     0x00007f1ba4660572           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
   0.00%                    0x00007f1ba465fca6:   mov    0xd8(%rsi),%r8               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.08%                    0x00007f1ba465fcad:   add    $0x10000,%ecx
   0.00%                    0x00007f1ba465fcb3:   mov    %r8d,%ebx
                            0x00007f1ba465fcb6:   and    $0x7fffffff,%ecx             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                            0x00007f1ba465fcbc:   movslq %ecx,%r9                     ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
   0.00%                    0x00007f1ba465fcbf:   or     $0x80000000,%ecx
   0.00%                    0x00007f1ba465fcc5:   mov    %ecx,0xa8(%rdx)
                            0x00007f1ba465fccb:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
   0.09%                    0x00007f1ba465fcd1:   mov    %ebx,0xc(%rdx)               ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                            0x00007f1ba465fcd4:   movabs $0xffff000000000000,%rcx
                            0x00007f1ba465fcde:   lea    (%r8,%rcx,1),%rdi
   0.00%                    0x00007f1ba465fce2:   movabs $0xffffffff00000000,%rdx
                            0x00007f1ba465fcec:   and    %rdx,%rdi
                            0x00007f1ba465fcef:   or     %r9,%rdi                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
                            0x00007f1ba465fcf2:   mov    %r8,%rax
   0.00%                    0x00007f1ba465fcf5:   lock cmpxchg %rdi,0xd8(%rsi)        ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
   0.17%                    0x00007f1ba465fcfe:   xchg   %ax,%ax
                            0x00007f1ba465fd00:   cmp    %rax,%r8
                            0x00007f1ba465fd03:   jne    0x00007f1ba46602b3           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
   0.00%                    0x00007f1ba465fd09:   test   %rdi,%rcx
          ╭                 0x00007f1ba465fd0c:   jg     0x00007f1ba465ff14           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                           ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
          │                 0x00007f1ba465fd12:   xor    %ecx,%ecx
          │╭                0x00007f1ba465fd14:   jmp    0x00007f1ba465fe78
          ││ ↗              0x00007f1ba465fd19:   vmovq  %xmm0,%r11
          ││ │    ↗         0x00007f1ba465fd1e:   mov    %ebp,%ebx
   0.00%  ││ │    │         0x00007f1ba465fd20:   sub    %edx,%ebx
   0.00%  ││ │    │         0x00007f1ba465fd22:   add    $0xfffffffe,%ebx
          ││ │    │         0x00007f1ba465fd25:   xor    %r8d,%r8d
          ││ │    │         0x00007f1ba465fd28:   cmp    %edx,%r14d
   0.00%  ││ │    │         0x00007f1ba465fd2b:   cmovl  %r8d,%ebx
          ││ │    │         0x00007f1ba465fd2f:   cmp    $0xfa0,%ebx
          ││ │    │         0x00007f1ba465fd35:   mov    $0xfa0,%r9d
          ││ │    │         0x00007f1ba465fd3b:   cmova  %r9d,%ebx
   0.00%  ││ │    │         0x00007f1ba465fd3f:   add    %edx,%ebx
          ││ │    │         0x00007f1ba465fd41:   vmovq  %r11,%xmm0
          ││ │    │         0x00007f1ba465fd46:   data16 nopw 0x0(%rax,%rax,1)        ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ │    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@51 (line 1786)
          ││ │    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││↗│    │         0x00007f1ba465fd50:   mov    0x10(%rsi,%rdx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@55 (line 1786)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││││    │                                                                   ;   {no_reloc}
   0.00%  ││││    │         0x00007f1ba465fd55:   data16 data16 nopw 0x0(%rax,%rax,1)
          ││││    │         0x00007f1ba465fd60:   mov    0xa4(%r12,%r9,8),%r11d       ; implicit exception: dispatches to 0x00007f1ba46604ad
          ││││    │                                                                   ;*getfield access {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@64 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││││    │         0x00007f1ba465fd68:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@108 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fd6f:   test   %r11d,%r11d
          ││││    │         0x00007f1ba465fd72:   jg     0x00007f1ba46602a9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@67 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fd78:   mov    0xa0(%r12,%r9,8),%eax        ;*getfield top {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@72 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││││    │         0x00007f1ba465fd80:   mov    0x14(%r12,%r9,8),%r9d
   0.00%  ││││    │         0x00007f1ba465fd85:   cmp    %r9d,%eax
          ││││    │         0x00007f1ba465fd88:   jne    0x00007f1ba4660183           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@83 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││││    │         0x00007f1ba465fd8e:   mov    0x18(%rsi,%rdx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@55 (line 1786)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fd93:   shl    $0x10,%eax
   0.00%  ││││    │         0x00007f1ba465fd96:   add    %edx,%eax
   0.00%  ││││    │         0x00007f1ba465fd98:   add    %edi,%eax                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@99 (line 1789)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fd9a:   nopw   0x0(%rax,%rax,1)
          ││││    │         0x00007f1ba465fda0:   test   %r9d,%r9d
          ││││    │         0x00007f1ba465fda3:   je     0x00007f1ba46604b1           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@59 (line 1786)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││││    │         0x00007f1ba465fda9:   mov    0xa4(%r12,%r9,8),%r11d       ;*getfield access {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@64 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fdb1:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@108 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fdb8:   test   %r11d,%r11d
   0.00%  ││││    │         0x00007f1ba465fdbb:   nopl   0x0(%rax,%rax,1)
          ││││    │         0x00007f1ba465fdc0:   jg     0x00007f1ba46602a9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@67 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││││    │         0x00007f1ba465fdc6:   mov    0xa0(%r12,%r9,8),%edi        ;*getfield top {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@72 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fdce:   mov    0x14(%r12,%r9,8),%r9d
   0.00%  ││││    │         0x00007f1ba465fdd3:   cmp    %r9d,%edi
          ││││    │         0x00007f1ba465fdd6:   jne    0x00007f1ba4660183           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@83 (line 1787)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││││    │         0x00007f1ba465fddc:   shl    $0x10,%edi
          ││││    │         0x00007f1ba465fddf:   add    %edx,%edi
   0.00%  ││││    │         0x00007f1ba465fde1:   add    %eax,%edi
          ││││    │         0x00007f1ba465fde3:   add    $0x4,%edi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@100 (line 1789)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fde6:   add    $0x4,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@106 (line 1784)
          ││││    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││││    │         0x00007f1ba465fde9:   cmp    %ebx,%edx
          ││╰│    │         0x00007f1ba465fdeb:   jl     0x00007f1ba465fd50           ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
          ││ │    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@84 (line 1869)
   0.00%  ││ │    │         0x00007f1ba465fdf1:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=Oop rsi=Oop r13=Oop xmm0=Oop xmm1=NarrowOop }
          ││ │    │                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││ │    │                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::hasTasks@109 (line 1784)
          ││ │    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││ │    │         0x00007f1ba465fdf8:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │    │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@109 (line 1784)
          ││ │    │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││ │    │                                                                   ;   {poll}
   0.00%  ││ │    │         0x00007f1ba465fdfb:   nopl   0x0(%rax,%rax,1)
          ││ │    │         0x00007f1ba465fe00:   cmp    %r14d,%edx
          ││ ╰    │         0x00007f1ba465fe03:   jl     0x00007f1ba465fd19
          ││      │         0x00007f1ba465fe09:   vmovq  %xmm0,%r11
          ││      │         0x00007f1ba465fe0e:   cmp    %ebp,%edx
          ││  ╭   │         0x00007f1ba465fe10:   jge    0x00007f1ba465fe64
   0.00%  ││  │   │         0x00007f1ba465fe16:   xchg   %ax,%ax                      ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││  │   │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@51 (line 1786)
          ││  │   │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││  │ ↗ │         0x00007f1ba465fe18:   mov    0x10(%rsi,%rdx,4),%r9d       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@55 (line 1786)
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││  │ │ │         0x00007f1ba465fe1d:   data16 xchg %ax,%ax
   0.00%  ││  │ │ │         0x00007f1ba465fe20:   mov    0xa4(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007f1ba46604bd
          ││  │ │ │                                                                   ;*getfield access {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@64 (line 1787)
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││  │ │ │         0x00007f1ba465fe28:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@108 (line 1872)
          ││  │ │ │         0x00007f1ba465fe2f:   test   %ebx,%ebx
          ││  │ │ │         0x00007f1ba465fe31:   jg     0x00007f1ba4660188           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@67 (line 1787)
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││  │ │ │         0x00007f1ba465fe37:   mov    0xa0(%r12,%r9,8),%ebx        ;*getfield top {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@72 (line 1787)
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││  │ │ │         0x00007f1ba465fe3f:   mov    0x14(%r12,%r9,8),%r9d
          ││  │ │ │         0x00007f1ba465fe44:   cmp    %r9d,%ebx
          ││  │ │ │         0x00007f1ba465fe47:   jne    0x00007f1ba4660188           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@83 (line 1787)
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││  │ │ │         0x00007f1ba465fe4d:   shl    $0x10,%ebx
          ││  │ │ │         0x00007f1ba465fe50:   add    %edx,%ebx
   0.00%  ││  │ │ │         0x00007f1ba465fe52:   add    %edi,%ebx
          ││  │ │ │         0x00007f1ba465fe54:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@100 (line 1789)
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││  │ │ │         0x00007f1ba465fe56:   add    $0x2,%edx                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@106 (line 1784)
          ││  │ │ │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││  │ │ │         0x00007f1ba465fe59:   cmp    %ebp,%edx
          ││  │╭│ │         0x00007f1ba465fe5b:   jge    0x00007f1ba465fe62
          ││  │││ │         0x00007f1ba465fe5d:   mov    %ebx,%edi
          ││  │││ │         0x00007f1ba465fe5f:   nop
          ││  ││╰ │         0x00007f1ba465fe60:   jmp    0x00007f1ba465fe18
          ││  │↘  │         0x00007f1ba465fe62:   mov    %ebx,%edi                    ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          ││  │   │                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@48 (line 1784)
          ││  │   │                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││  ↘   │         0x00007f1ba465fe64:   cmp    %edi,%ecx
          ││     ╭│         0x00007f1ba465fe66:   je     0x00007f1ba465ff21           ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@84 (line 1869)
   0.00%  ││     ││         0x00007f1ba465fe6c:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r11=Oop r13=Oop }
          ││     ││                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││     ││                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::hasTasks@122 (line 1794)
          ││     ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  ││     ││         0x00007f1ba465fe73:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@122 (line 1794)
          ││     ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          ││     ││                                                                   ;   {poll}
          ││     ││         0x00007f1ba465fe76:   mov    %edi,%ecx                    ;*invokevirtual loadFence {reexecute=0 rethrow=0 return_oop=0}
          ││     ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@15 (line 1781)
          ││     ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │↘     ││         0x00007f1ba465fe78:   mov    0x34(%r11),%r8d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@19 (line 1782)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │      ││         0x00007f1ba465fe7c:   vmovd  %r8d,%xmm1
   0.00%  │      ││         0x00007f1ba465fe81:   mov    0xc(%r12,%r8,8),%ebp         ; implicit exception: dispatches to 0x00007f1ba4660678
          │      ││                                                                   ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@35 (line 1783)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │      ││         0x00007f1ba465fe86:   test   %ebp,%ebp
          │      ││         0x00007f1ba465fe88:   jbe    0x00007f1ba46601bc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@48 (line 1784)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  │      ││         0x00007f1ba465fe8e:   movslq %ebp,%r8
   0.00%  │      ││         0x00007f1ba465fe91:   lea    0x1(%r8),%r9
          │      ││         0x00007f1ba465fe95:   and    $0xfffffffffffffffe,%r9
          │      ││         0x00007f1ba465fe99:   mov    %r9d,%r9d
   0.00%  │      ││         0x00007f1ba465fe9c:   movslq %r9d,%r9
          │      ││         0x00007f1ba465fe9f:   add    $0xfffffffffffffffe,%r9
   0.00%  │      ││         0x00007f1ba465fea3:   cmp    %r8,%r9
          │      ││         0x00007f1ba465fea6:   jae    0x00007f1ba466051a
          │      ││         0x00007f1ba465feac:   cmp    $0x7ffffffe,%ebp
          │      ││         0x00007f1ba465feb2:   jg     0x00007f1ba4660540
          │      ││         0x00007f1ba465feb8:   vmovd  %xmm1,%r8d
          │      ││         0x00007f1ba465febd:   mov    0x10(%r12,%r8,8),%r9d        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@55 (line 1786)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  │      ││         0x00007f1ba465fec2:   mov    0xa4(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007f1ba466069c
          │      ││                                                                   ;*getfield access {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@64 (line 1787)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │      ││         0x00007f1ba465feca:   mov    0xa8(%r10),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@108 (line 1872)
          │      ││         0x00007f1ba465fed1:   test   %ebx,%ebx
          │      ││         0x00007f1ba465fed3:   jg     0x00007f1ba4660188           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@67 (line 1787)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │      ││         0x00007f1ba465fed9:   mov    0x14(%r12,%r9,8),%ebx
   0.00%  │      ││         0x00007f1ba465fede:   mov    0xa0(%r12,%r9,8),%edi        ;*getfield top {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@72 (line 1787)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │      ││         0x00007f1ba465fee6:   cmp    %ebx,%edi
          │      ││         0x00007f1ba465fee8:   jne    0x00007f1ba4660188           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@83 (line 1787)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │      ││         0x00007f1ba465feee:   shl    $0x10,%edi
   0.00%  │      ││         0x00007f1ba465fef1:   vmovd  %xmm1,%r9d
          │      ││         0x00007f1ba465fef6:   lea    (%r12,%r9,8),%rsi            ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@19 (line 1782)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
          │      ││         0x00007f1ba465fefa:   inc    %edi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::hasTasks@100 (line 1789)
          │      ││                                                                   ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
   0.00%  │      ││         0x00007f1ba465fefc:   lea    -0x2(%rbp),%r14d
   0.00%  │      ││         0x00007f1ba465ff00:   cmp    $0x2,%r14d
          │      ││         0x00007f1ba465ff04:   jle    0x00007f1ba4660568
   0.00%  │      ││         0x00007f1ba465ff0a:   mov    $0x2,%edx
          │      │╰         0x00007f1ba465ff0f:   jmp    0x00007f1ba465fd1e
          ↘      │          0x00007f1ba465ff14:   xor    %ebx,%ebx
                 │ ╭        0x00007f1ba465ff16:   jmp    0x00007f1ba465ff33
                 │ │        0x00007f1ba465ff18:   mov    (%rsp),%r11
                 │ │        0x00007f1ba465ff1c:   mov    0x8(%rsp),%r13               ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                 │ │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@119 (line 1872)
   0.00%         ↘ │        0x00007f1ba465ff21:   mov    0x30(%r11),%r8d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@125 (line 1874)
                   │        0x00007f1ba465ff25:   test   %r8d,%r8d
                   │        0x00007f1ba465ff28:   jne    0x00007f1ba4660608           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@128 (line 1874)
                   │        0x00007f1ba465ff2e:   mov    $0x1,%ebx                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
   0.00%           ↘        0x00007f1ba465ff33:   mov    0x34(%r11),%r8d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
   0.00%                    0x00007f1ba465ff37:   nopw   0x0(%rax,%rax,1)
                            0x00007f1ba465ff40:   mov    0xc(%r12,%r8,8),%r9d         ; implicit exception: dispatches to 0x00007f1ba4660654
   0.00%                    0x00007f1ba465ff45:   mov    0xa8(%r10),%ecx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.00%                    0x00007f1ba465ff4c:   test   %ecx,%ecx
                            0x00007f1ba465ff4e:   jge    0x00007f1ba466016e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                            0x00007f1ba465ff54:   movzwl %r9w,%ecx
                            0x00007f1ba465ff58:   shl    %ecx
                            0x00007f1ba465ff5a:   or     $0xf,%ecx                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
   0.00%                    0x00007f1ba465ff5d:   mov    %ecx,%r8d
   0.00%                    0x00007f1ba465ff60:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                            0x00007f1ba465ff63:   test   %r8d,%r8d
                    ╭       0x00007f1ba465ff66:   jle    0x00007f1ba4660030           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                    │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                    │       0x00007f1ba465ff6c:   add    $0xfffffffe,%ecx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.00%            │↗      0x00007f1ba465ff6f:   pause                               ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@84 (line 1869)
   0.33%            ││      0x00007f1ba465ff71:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r11=Oop r13=Oop }
                    ││                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                    ││                                                                ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                    ││                                                                ;   {no_reloc}
   0.00%            ││      0x00007f1ba465ff78:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                    ││                                                                ;   {poll}
                    ││      0x00007f1ba465ff7b:   mov    0xa8(%r10),%edi              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                    ││      0x00007f1ba465ff82:   test   %edi,%edi
                    ││      0x00007f1ba465ff84:   jge    0x00007f1ba466016e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%            ││      0x00007f1ba465ff8a:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                    ││      0x00007f1ba465ff8d:   cmp    %ecx,%r8d
                    │╰      0x00007f1ba465ff90:   jg     0x00007f1ba465ff6f           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                    │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                    │       0x00007f1ba465ff92:   cmp    $0x3,%r8d
                    │ ╭     0x00007f1ba465ff96:   jle    0x00007f1ba4660006
                    │ │     0x00007f1ba465ff9c:   nopl   0x0(%rax)                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
   0.02%            │ │↗    0x00007f1ba465ffa0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   3.38%            │ ││    0x00007f1ba465ffa2:   mov    0xa8(%r10),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.03%            │ ││    0x00007f1ba465ffa9:   test   %r9d,%r9d
                    │ ││    0x00007f1ba465ffac:   jge    0x00007f1ba466016e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                    │ ││    0x00007f1ba465ffb2:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   3.28%            │ ││    0x00007f1ba465ffb4:   mov    0xa8(%r10),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.03%            │ ││    0x00007f1ba465ffbb:   nopl   0x0(%rax,%rax,1)
                    │ ││    0x00007f1ba465ffc0:   test   %r9d,%r9d
                    │ ││    0x00007f1ba465ffc3:   jge    0x00007f1ba466016e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
   0.00%            │ ││    0x00007f1ba465ffc9:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
   3.25%            │ ││    0x00007f1ba465ffcb:   mov    0xa8(%r10),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
   0.03%            │ ││    0x00007f1ba465ffd2:   test   %r9d,%r9d
                    │ ││    0x00007f1ba465ffd5:   jge    0x00007f1ba466016e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                    │ ││    0x00007f1ba465ffdb:   pause                               ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@84 (line 1869)
   3.28%            │ ││    0x00007f1ba465ffdd:   mov    0x458(%r15),%rdi
   0.00%            │ ││    0x00007f1ba465ffe4:   mov    0xa8(%r10),%ecx
   0.02%            │ ││    0x00007f1ba465ffeb:   lea    -0x3(%r8),%r9d               ; ImmutableOopMap {r10=Oop r11=Oop r13=Oop }
                    │ ││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
                    │ ││                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                    │ ││    0x00007f1ba465ffef:   test   %eax,(%rdi)                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                    │ ││                                                              ;   {poll}
   0.02%            │ ││    0x00007f1ba465fff1:   test   %ecx,%ecx
                    │ ││    0x00007f1ba465fff3:   jge    0x00007f1ba466016e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                    │ ││    0x00007f1ba465fff9:   add    $0xfffffffc,%r8d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                    │ ││    0x00007f1ba465fffd:   data16 xchg %ax,%ax
                    │ ││    0x00007f1ba4660000:   cmp    $0x3,%r8d
                    │ │╰    0x00007f1ba4660004:   jg     0x00007f1ba465ffa0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                    │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
   0.00%            │ ↘     0x00007f1ba4660006:   test   %r8d,%r8d
                    │   ╭   0x00007f1ba4660009:   jle    0x00007f1ba4660030
   0.00%            │   │   0x00007f1ba466000b:   nop                                 ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │   │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                    │   │↗  0x00007f1ba466000c:   pause                               ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                    │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@84 (line 1869)
   0.21%            │   ││  0x00007f1ba466000e:   mov    0x458(%r15),%r9              ; ImmutableOopMap {r10=Oop r11=Oop r13=Oop }
                    │   ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                    │   ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                    │   ││  0x00007f1ba4660015:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                    │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                    │   ││                                                            ;   {poll}
                    │   ││  0x00007f1ba4660018:   mov    0xa8(%r10),%ecx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                    │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                    │   ││  0x00007f1ba466001f:   nop
   0.00%            │   ││  0x00007f1ba4660020:   test   %ecx,%ecx
                    │   ││  0x00007f1ba4660022:   jge    0x00007f1ba466016e           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                    │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                    │   ││  0x00007f1ba4660028:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                    │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                    │   ││  0x00007f1ba466002b:   test   %r8d,%r8d
                    │   │╰  0x00007f1ba466002e:   jg     0x00007f1ba466000c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                    │   │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                    ↘   ↘   0x00007f1ba4660030:   test   %ebx,%ebx
                            0x00007f1ba4660032:   jne    0x00007f1ba46601c5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
   0.00%                    0x00007f1ba4660038:   xor    %r14d,%r14d
                            0x00007f1ba466003b:   xor    %ecx,%ecx
   0.00%                    0x00007f1ba466003d:   mov    %r13,%rbx
                            0x00007f1ba4660040:   add    $0x5c,%rbx                   ;*lcmp {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@84 (line 1869)
                            0x00007f1ba4660044:   cmpb   $0x0,0x40(%r15)
                            0x00007f1ba4660049:   jne    0x00007f1ba46602fc
   0.00%                    0x00007f1ba466004f:   mov    %rbx,%r9
                            0x00007f1ba4660052:   mov    %r11,%r8
   0.00%                    0x00007f1ba4660055:   shr    $0x3,%r8
                            0x00007f1ba4660059:   mov    %r8d,(%rbx)
                            0x00007f1ba466005c:   mov    %r11,%r8
                            0x00007f1ba466005f:   xor    %r9,%r8
   0.00%                    0x00007f1ba4660062:   shr    $0x15,%r8
                            0x00007f1ba4660066:   test   %r8,%r8
                            0x00007f1ba4660069:   je     0x00007f1ba4660089
                            0x00007f1ba466006b:   shr    $0x9,%r9
                            0x00007f1ba466006f:   movabs $0x7f1bb5ff7000,%rdi
                            0x00007f1ba4660079:   add    %r9,%rdi
                            0x00007f1ba466007c:   nopl   0x0(%rax)
                            0x00007f1ba4660080:   cmpb   $0x2,(%rdi)
                            0x00007f1ba4660083:   jne    0x00007f1ba4660369           ;*invokevirtual putReferenceOpaque {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.util.concurrent.locks.LockSupport::setCurrentBlocker@10 (line 162)
                                                                                      ; - java.util.concurrent.ForkJoinPool::awaitWork@218 (line 1884)
....................................................................................................
  14.31%  <total for region 2>

....[Hottest Regions]...............................................................................
  18.32%              kernel  [unknown] 
  14.31%         c2, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 835 
   8.21%              kernel  [unknown] 
   2.74%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 930 
   1.91%              kernel  [unknown] 
   1.68%              kernel  [unknown] 
   1.51%              kernel  [unknown] 
   1.04%           libjvm.so  update_register_map1 
   1.02%              kernel  [unknown] 
   0.96%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.94%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 885 
   0.91%              kernel  [unknown] 
   0.88%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 885 
   0.86%              kernel  [unknown] 
   0.79%           libjvm.so  Parker::park 
   0.78%              kernel  [unknown] 
   0.77%         c2, level 4  java.lang.VirtualThread::unpark, version 4, compile id 911 
   0.76%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
  40.18%  <...other 916 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.98%              kernel  [unknown] 
  14.77%         c2, level 4  java.util.concurrent.ForkJoinPool::awaitWork, version 5, compile id 835 
   2.76%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 930 
   2.05%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 885 
   1.62%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.10%         c2, level 4  java.lang.VirtualThread::unpark, version 4, compile id 911 
   1.04%           libjvm.so  update_register_map1 
   0.99%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 4, compile id 923 
   0.92%           libjvm.so  OopMapStream::find_next 
   0.91%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.87%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.85%           libjvm.so  vframeStream::vframeStream 
   0.84%           libjvm.so  Unsafe_Park 
   0.83%           libjvm.so  Parker::park 
   0.72%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark::blocking_calls, version 4, compile id 929 
   0.67%         c2, level 4  java.lang.VirtualThread::start, version 2, compile id 880 
   0.67%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.57%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.56%         c2, level 4  java.util.concurrent.ConcurrentHashMap::putVal, version 4, compile id 973 
   0.48%    Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 641 
  10.80%  <...other 235 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  55.98%              kernel
  26.31%         c2, level 4
  10.23%           libjvm.so
   5.33%  libpthread-2.31.so
   0.74%    Unknown, level 0
   0.60%        libc-2.31.so
   0.33%              [vdso]
   0.24%                    
   0.22%          ld-2.31.so
   0.02%        runtime stub
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%         c1, level 3
   0.00%    perf-1960849.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1, threadType = PLATFORM)

# Run progress: 12.50% complete, ETA 00:13:04
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 151.151 us/op
# Warmup Iteration   2: 148.511 us/op
# Warmup Iteration   3: 144.439 us/op
# Warmup Iteration   4: 148.585 us/op
# Warmup Iteration   5: 147.998 us/op
Iteration   1: 148.084 us/op
Iteration   2: 147.467 us/op
Iteration   3: 146.978 us/op
Iteration   4: 146.485 us/op
Iteration   5: 146.853 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  147.174 ±(99.9%) 2.382 us/op [Average]
  (min, avg, max) = (146.485, 147.174, 148.084), stdev = 0.619
  CI (99.9%): [144.792, 149.555] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 194520 total address lines.
Perf output processed (skipped 56.283 seconds):
 Column 1: cycles (1165695 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  56.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  28.51%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.18%              kernel  [unknown] 
  28.51%              kernel  [unknown] 
   2.73%              kernel  [unknown] 
   2.11%              kernel  [unknown] 
   1.55%              kernel  [unknown] 
   1.14%              kernel  [unknown] 
   0.90%              kernel  [unknown] 
   0.62%              kernel  [unknown] 
   0.55%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.24%              kernel  [unknown] 
   0.21%              kernel  [unknown] 
   0.16%              kernel  [unknown] 
   0.13%              kernel  [unknown] 
   0.10%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   3.91%  <...other 2838 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.95%              kernel  [unknown] 
   0.04%        libc-2.31.so  _int_free 
   0.03%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.03%        libc-2.31.so  malloc 
   0.03%           libjvm.so  ThreadsSMRSupport::free_list 
   0.02%           libjvm.so  vframeStreamCommon::next 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%        libc-2.31.so  _int_malloc 
   0.02%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.02%                      <unknown> 
   0.02%           libjvm.so  JVM_GetStackAccessControlContext 
   0.02%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%  libpthread-2.31.so  __pthread_mutex_lock 
   0.02%        libc-2.31.so  __memset_avx2_erms 
   0.02%           libjvm.so  ServiceThread::service_thread_entry 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 770 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.02%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.63%  <...other 537 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.95%              kernel
   0.54%           libjvm.so
   0.26%        libc-2.31.so
   0.15%  libpthread-2.31.so
   0.04%         c2, level 4
   0.02%                    
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%    Unknown, level 0
   0.00%        runtime stub
   0.00%      hsdis-amd64.so
   0.00%         interpreter
   0.00%    perf-1960928.map
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 10, threadType = VIRTUAL)

# Run progress: 25.00% complete, ETA 00:12:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 76.065 us/op
# Warmup Iteration   2: 44.130 us/op
# Warmup Iteration   3: 43.815 us/op
# Warmup Iteration   4: 43.815 us/op
# Warmup Iteration   5: 43.800 us/op
Iteration   1: 44.290 us/op
Iteration   2: 44.054 us/op
Iteration   3: 43.605 us/op
Iteration   4: 43.439 us/op
Iteration   5: 43.648 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  43.807 ±(99.9%) 1.356 us/op [Average]
  (min, avg, max) = (43.439, 43.807, 44.290), stdev = 0.352
  CI (99.9%): [42.451, 45.163] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 229992 total address lines.
Perf output processed (skipped 56.208 seconds):
 Column 1: cycles (204380 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  16.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 933 

                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                   0x00007f323c698427:   mov    0x70(%rsp),%r11d
                   0x00007f323c69842c:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@47 (line 1315)
                                                                             ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                   0x00007f323c69842f:   mov    %r11d,0x70(%rsp)
                   0x00007f323c698434:   jmp    0x00007f323c69832f
                   0x00007f323c698439:   mov    0x30(%rsp),%r10
                   0x00007f323c69843e:   mov    0x70(%rsp),%r8d
   0.00%           0x00007f323c698443:   add    %r8d,0xb0(%r10)
   0.00%           0x00007f323c69844a:   mov    %r12d,0xac(%r10)
                   0x00007f323c698451:   lock addl $0x0,-0x40(%rsp)          ;*putfield source {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@66 (line 1318)
                                                                             ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.06%           0x00007f323c698457:   mov    0x2c(%rsp),%r8d
                   0x00007f323c69845c:   and    $0x40000,%r8d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@72 (line 1319)
                                                                             ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                   0x00007f323c698463:   test   %r8d,%r8d
                   0x00007f323c698466:   jne    0x00007f323c698e38           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@73 (line 1319)
                                                                             ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%           0x00007f323c69846c:   mov    0x28(%rsp),%r10d
                   0x00007f323c698471:   shl    $0x10,%r10d
                   0x00007f323c698475:   add    0x48(%rsp),%r10d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::scan@220 (line 1844)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                   0x00007f323c69847a:   mov    %r10d,0x28(%rsp)             ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                             ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%           0x00007f323c69847f:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[4]=NarrowOop [8]=Oop [16]=Derived_oop_[8] [24]=Oop [48]=Oop }
                                                                             ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%           0x00007f323c698486:   test   %eax,(%r10)                  ;   {poll}
   0.00%           0x00007f323c698489:   mov    0x28(%rsp),%r10d
   0.00%           0x00007f323c69848e:   test   %r10d,%r10d
                   0x00007f323c698491:   jge    0x00007f323c698784           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@1 (line 1859)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c698497:   mov    0x30(%rsp),%r10
   0.00%           0x00007f323c69849c:   mov    0xa8(%r10),%ecx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c6984a3:   mov    0x18(%rsp),%r10
   0.00%           0x00007f323c6984a8:   mov    0x30(%r10),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c6984ac:   test   %r10d,%r10d
                   0x00007f323c6984af:   jl     0x00007f323c698e94           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c6984b5:   mov    0x18(%rsp),%r10
                   0x00007f323c6984ba:   mov    0xd8(%r10),%r10              ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.09%           0x00007f323c6984c1:   mov    %r10,%r9
   0.00%           0x00007f323c6984c4:   movabs $0xffff000000000000,%r11
                   0x00007f323c6984ce:   add    %r11,%r9
   0.00%           0x00007f323c6984d1:   movabs $0xffffffff00000000,%r11
                   0x00007f323c6984db:   and    %r11,%r9
   0.00%           0x00007f323c6984de:   add    $0x10000,%ecx
                   0x00007f323c6984e4:   mov    %r10d,%r8d
                   0x00007f323c6984e7:   and    $0x7fffffff,%ecx             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c6984ed:   movslq %ecx,%rbx                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c6984f0:   or     %rbx,%r9                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c6984f3:   or     $0x80000000,%ecx
                   0x00007f323c6984f9:   mov    0x30(%rsp),%r11
   0.00%           0x00007f323c6984fe:   mov    %ecx,0xa8(%r11)
   0.00%           0x00007f323c698505:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.16%           0x00007f323c69850b:   mov    %r8d,0xc(%r11)
                   0x00007f323c69850f:   mov    0x18(%rsp),%r11
                   0x00007f323c698514:   mov    %r10,%rax
   0.00%           0x00007f323c698517:   lock cmpxchg %r9,0xd8(%r11)
   0.20%           0x00007f323c698520:   mov    %rax,%r8                     ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c698523:   cmp    %rax,%r10
                   0x00007f323c698526:   jne    0x00007f323c698a63           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c69852c:   movabs $0xffff000000000000,%r10
                   0x00007f323c698536:   test   %r9,%r10
                   0x00007f323c698539:   jle    0x00007f323c69880c           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c69853f:   xor    %r11d,%r11d
                   0x00007f323c698542:   mov    %r11d,0x50(%rsp)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c698547:   mov    0x18(%rsp),%r10
   0.00%           0x00007f323c69854c:   mov    0x34(%r10),%r11d             ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c698550:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f323c69903c
   0.00%           0x00007f323c698555:   mov    0x30(%rsp),%r11
   0.00%           0x00007f323c69855a:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c698561:   test   %r8d,%r8d
                   0x00007f323c698564:   jge    0x00007f323c69877c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c69856a:   movzwl %r10w,%r11d
   0.00%           0x00007f323c69856e:   shl    %r11d
   0.00%           0x00007f323c698571:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c698575:   mov    %r11d,%ecx
   0.00%           0x00007f323c698578:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%           0x00007f323c69857a:   test   %ecx,%ecx
   0.00%           0x00007f323c69857c:   nopl   0x0(%rax)
          ╭        0x00007f323c698580:   jle    0x00007f323c69865b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │                                                                  ;   {no_reloc}
          │        0x00007f323c698586:   add    $0xfffffffe,%r11d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │↗       0x00007f323c69858a:   pause                               ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.34%  ││       0x00007f323c69858c:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[4]=NarrowOop [8]=Oop [16]=Derived_oop_[8] [24]=Oop [48]=Oop }
          ││                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007f323c698593:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││                                                                 ;   {poll}
          ││       0x00007f323c698596:   mov    0x30(%rsp),%r10
          ││       0x00007f323c69859b:   mov    0xa8(%r10),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  ││       0x00007f323c6985a2:   test   %r10d,%r10d
          ││       0x00007f323c6985a5:   jge    0x00007f323c69877c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007f323c6985ab:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          ││                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ││       0x00007f323c6985ad:   cmp    %r11d,%ecx
          │╰       0x00007f323c6985b0:   jg     0x00007f323c69858a           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │        0x00007f323c6985b2:   cmp    $0x3,%ecx
          │ ╭      0x00007f323c6985b5:   jle    0x00007f323c69862e
   0.00%  │ │      0x00007f323c6985bb:   nopl   0x0(%rax,%rax,1)             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ │↗     0x00007f323c6985c0:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.17%  │ ││     0x00007f323c6985c2:   mov    0x30(%rsp),%r10
          │ ││     0x00007f323c6985c7:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%  │ ││     0x00007f323c6985ce:   test   %r11d,%r11d
          │ ││     0x00007f323c6985d1:   jge    0x00007f323c69877c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007f323c6985d7:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.13%  │ ││     0x00007f323c6985d9:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%  │ ││     0x00007f323c6985e0:   test   %r11d,%r11d
          │ ││     0x00007f323c6985e3:   jge    0x00007f323c69877c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │ ││     0x00007f323c6985e9:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   3.16%  │ ││     0x00007f323c6985eb:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%  │ ││     0x00007f323c6985f2:   test   %r11d,%r11d
          │ ││     0x00007f323c6985f5:   jge    0x00007f323c69877c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007f323c6985fb:   pause                               ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   3.09%  │ ││     0x00007f323c6985fd:   mov    0x458(%r15),%r10
          │ ││     0x00007f323c698604:   mov    0x30(%rsp),%r11
          │ ││     0x00007f323c698609:   mov    0xa8(%r11),%r8d
   0.03%  │ ││     0x00007f323c698610:   lea    -0x3(%rcx),%r11d             ; ImmutableOopMap {[4]=NarrowOop [8]=Oop [16]=Derived_oop_[8] [24]=Oop [48]=Oop }
          │ ││                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                               ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%  │ ││     0x00007f323c698614:   test   %eax,(%r10)                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││                                                               ;   {poll}
   0.00%  │ ││     0x00007f323c698617:   test   %r8d,%r8d
   0.00%  │ ││     0x00007f323c69861a:   nopw   0x0(%rax,%rax,1)
          │ ││     0x00007f323c698620:   jge    0x00007f323c69877c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%  │ ││     0x00007f323c698626:   add    $0xfffffffc,%ecx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │ ││                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ││     0x00007f323c698629:   cmp    $0x3,%ecx
          │ │╰     0x00007f323c69862c:   jg     0x00007f323c6985c0           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
          │ │                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │ ↘      0x00007f323c69862e:   test   %ecx,%ecx
          │   ╭    0x00007f323c698630:   jle    0x00007f323c69865b
   0.00%  │   │    0x00007f323c698632:   xchg   %ax,%ax                      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   │↗   0x00007f323c698634:   pause                               ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.18%  │   ││   0x00007f323c698636:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[4]=NarrowOop [8]=Oop [16]=Derived_oop_[8] [24]=Oop [48]=Oop }
          │   ││                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   ││                                                             ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││   0x00007f323c69863d:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││                                                             ;   {poll}
          │   ││   0x00007f323c698640:   mov    0x30(%rsp),%r10
          │   ││   0x00007f323c698645:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%  │   ││   0x00007f323c69864c:   test   %r11d,%r11d
          │   ││   0x00007f323c69864f:   jge    0x00007f323c69877c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││   0x00007f323c698655:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
          │   ││                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          │   ││   0x00007f323c698657:   test   %ecx,%ecx
          │   │╰   0x00007f323c698659:   jg     0x00007f323c698634           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
          │   │                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
          ↘   ↘    0x00007f323c69865b:   mov    0x50(%rsp),%r11d
   0.00%           0x00007f323c698660:   test   %r11d,%r11d
                   0x00007f323c698663:   jne    0x00007f323c698871           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c698669:   xor    %r11d,%r11d
                   0x00007f323c69866c:   xor    %r10d,%r10d
                   0x00007f323c69866f:   mov    %r11d,0x50(%rsp)
   0.00%           0x00007f323c698674:   mov    %r10,0x28(%rsp)              ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                             ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                   0x00007f323c698679:   nopl   0x0(%rax)
                   0x00007f323c698680:   cmpb   $0x0,0x40(%r15)
                   0x00007f323c698685:   jne    0x00007f323c698b1a
   0.00%           0x00007f323c69868b:   mov    0x10(%rsp),%r10
                   0x00007f323c698690:   mov    0x4(%rsp),%r11d
                   0x00007f323c698695:   mov    %r11d,(%r10)
                   0x00007f323c698698:   mov    0x18(%rsp),%r10
   0.00%           0x00007f323c69869d:   mov    0x10(%rsp),%r11
                   0x00007f323c6986a2:   xor    %r11,%r10
                   0x00007f323c6986a5:   shr    $0x15,%r10
   0.00%           0x00007f323c6986a9:   test   %r10,%r10
                ╭  0x00007f323c6986ac:   je     0x00007f323c6986c9
                │  0x00007f323c6986ae:   shr    $0x9,%r11
                │  0x00007f323c6986b2:   movabs $0x7f324e3c6000,%rdi
                │  0x00007f323c6986bc:   add    %r11,%rdi
                │  0x00007f323c6986bf:   nop
                │  0x00007f323c6986c0:   cmpb   $0x2,(%rdi)
                │  0x00007f323c6986c3:   jne    0x00007f323c698b93           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@221 (line 1886)
                │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%        ↘  0x00007f323c6986c9:   mov    0x18(%rsp),%r10
                   0x00007f323c6986ce:   mov    0x30(%r10),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@222 (line 1886)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%           0x00007f323c6986d2:   test   %r10d,%r10d
                   0x00007f323c6986d5:   jl     0x00007f323c698ee6
                   0x00007f323c6986db:   mov    0x30(%rsp),%r10
   0.00%           0x00007f323c6986e0:   movl   $0xffffffff,0xa4(%r10)
   0.00%           0x00007f323c6986eb:   lock addl $0x0,-0x40(%rsp)          ;*putfield access {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@232 (line 1888)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.08%           0x00007f323c6986f1:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@236 (line 1889)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c6986f8:   test   %r11d,%r11d
                   0x00007f323c6986fb:   nopl   0x0(%rax,%rax,1)
                   0x00007f323c698700:   jge    0x00007f323c69892f           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@239 (line 1889)
                                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                   0x00007f323c698706:   mov    0x50(%rsp),%r11d
....................................................................................................
  13.92%  <total for region 2>

....[Hottest Regions]...............................................................................
  16.47%              kernel  [unknown] 
  13.92%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 933 
   7.64%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 978 
   7.46%              kernel  [unknown] 
   2.40%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 933 
   1.55%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 789 
   1.50%              kernel  [unknown] 
   1.39%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 789 
   1.37%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 978 
   1.36%              kernel  [unknown] 
   1.15%              kernel  [unknown] 
   0.89%              kernel  [unknown] 
   0.81%              kernel  [unknown] 
   0.81%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.76%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.71%              kernel  [unknown] 
   0.71%              kernel  [unknown] 
   0.69%              kernel  [unknown] 
   0.61%              kernel  [unknown] 
   0.58%              kernel  [unknown] 
  37.23%  <...other 1127 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.00%              kernel  [unknown] 
  16.75%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 5, compile id 933 
   9.44%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 7, compile id 978 
   3.15%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 789 
   1.38%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   1.00%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.96%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 750 
   0.84%         c2, level 4  java.lang.VirtualThread$$Lambda.0x00007f31c4037850::run, version 2, compile id 753 
   0.76%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   0.65%         c2, level 4  java.util.concurrent.ForkJoinPool::poolSubmit, version 2, compile id 859 
   0.64%           libjvm.so  Parker::park 
   0.60%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 761 
   0.58%           libjvm.so  Unsafe_Park 
   0.56%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.55%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.53%           libjvm.so  update_register_map1 
   0.53%         c2, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 777 
   0.52%           libjvm.so  OopMapStream::find_next 
   0.50%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.46%           libjvm.so  vframeStream::vframeStream 
  10.61%  <...other 317 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  49.00%              kernel
  35.19%         c2, level 4
   8.57%           libjvm.so
   4.66%  libpthread-2.31.so
   1.35%        libc-2.31.so
   0.73%    Unknown, level 0
   0.16%          ld-2.31.so
   0.15%                    
   0.15%              [vdso]
   0.03%        runtime stub
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
   0.00%    perf-2601659.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 10, threadType = PLATFORM)

# Run progress: 37.50% complete, ETA 00:10:14
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 223.457 us/op
# Warmup Iteration   2: 208.145 us/op
# Warmup Iteration   3: 217.995 us/op
# Warmup Iteration   4: 219.017 us/op
# Warmup Iteration   5: 219.122 us/op
Iteration   1: 220.071 us/op
Iteration   2: 219.085 us/op
Iteration   3: 219.737 us/op
Iteration   4: 218.240 us/op
Iteration   5: 221.300 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  219.687 ±(99.9%) 4.394 us/op [Average]
  (min, avg, max) = (218.240, 219.687, 221.300), stdev = 1.141
  CI (99.9%): [215.293, 224.081] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 178402 total address lines.
Perf output processed (skipped 56.391 seconds):
 Column 1: cycles (1517573 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  29.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  19.86%  <total for region 2>

....[Hottest Regions]...............................................................................
  29.22%              kernel  [unknown] 
  19.86%              kernel  [unknown] 
   9.57%              kernel  [unknown] 
   7.77%              kernel  [unknown] 
   6.03%              kernel  [unknown] 
   3.11%              kernel  [unknown] 
   2.87%              kernel  [unknown] 
   1.85%              kernel  [unknown] 
   1.79%              kernel  [unknown] 
   1.37%              kernel  [unknown] 
   1.12%              kernel  [unknown] 
   0.84%              kernel  [unknown] 
   0.81%              kernel  [unknown] 
   0.76%              kernel  [unknown] 
   0.73%              kernel  [unknown] 
   0.63%              kernel  [unknown] 
   0.55%              kernel  [unknown] 
   0.38%              kernel  [unknown] 
   0.35%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
  10.14%  <...other 2593 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  96.38%              kernel  [unknown] 
   0.33%        libc-2.31.so  _int_free 
   0.32%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 2, compile id 612 
   0.25%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.15%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.15%  libpthread-2.31.so  __pthread_mutex_lock 
   0.12%        libc-2.31.so  __malloc_arena_thread_freeres 
   0.11%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.08%           libjvm.so  Unsafe_Park 
   0.07%        runtime stub  StubRoutines::call_stub 
   0.07%  libpthread-2.31.so  __nptl_deallocate_tsd.part.0 
   0.07%           libjvm.so  JavaCalls::call_helper 
   0.07%        libc-2.31.so  cfree@GLIBC_2.2.5 
   0.06%           libjvm.so  Unsafe_Unpark 
   0.05%           libjvm.so  SafeThreadsListPtr::release_stable_list 
   0.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.05%           libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.05%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 642 
   0.05%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.04%  libpthread-2.31.so  __pthread_disable_asynccancel 
   1.47%  <...other 515 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.38%              kernel
   1.27%           libjvm.so
   0.92%  libpthread-2.31.so
   0.77%        libc-2.31.so
   0.43%         c2, level 4
   0.11%    Unknown, level 0
   0.08%        runtime stub
   0.03%          ld-2.31.so
   0.02%                    
   0.01%              [vdso]
   0.00%    perf-2601733.map
   0.00%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 100, threadType = VIRTUAL)

# Run progress: 50.00% complete, ETA 00:08:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 321.938 us/op
# Warmup Iteration   2: 188.790 us/op
# Warmup Iteration   3: 184.173 us/op
# Warmup Iteration   4: 186.145 us/op
# Warmup Iteration   5: 180.234 us/op
Iteration   1: 181.848 us/op
Iteration   2: 187.113 us/op
Iteration   3: 188.642 us/op
Iteration   4: 188.240 us/op
Iteration   5: 188.387 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  186.846 ±(99.9%) 10.992 us/op [Average]
  (min, avg, max) = (181.848, 186.846, 188.642), stdev = 2.855
  CI (99.9%): [175.854, 197.838] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 235772 total address lines.
Perf output processed (skipped 56.282 seconds):
 Column 1: cycles (210888 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 4, compile id 929 

                                  0x00007f49946a3bb3:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@99 (line 1297)
                                                                                            ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
                                                                                            ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                                                                                            ;   {poll}
                                  0x00007f49946a3bb6:   mov    %r11d,%r13d
          ╭                       0x00007f49946a3bb9:   jmp    0x00007f49946a3e48           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                 ; - java.util.concurrent.ForkJoinPool::scan@38 (line 1827)
          │                                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │  ↗                    0x00007f49946a3bbe:   mov    $0xffffffff,%r11d
   0.00%  │  │                    0x00007f49946a3bc4:   mov    %r11d,0x28(%rsp)
   0.00%  │╭ │                    0x00007f49946a3bc9:   jmp    0x00007f49946a3f1c
   0.00%  ││ │         ↗          0x00007f49946a3bce:   cmp    0x10(%rbp,%rbx,4),%r12d
          ││ │         │          0x00007f49946a3bd3:   jne    0x00007f49946a3bac           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││ │         │                                                                    ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@96 (line 1296)
          ││ │         │                                                                    ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
          ││ │         │                                                                    ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          ││ │         │                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  ││ │         │↗         0x00007f49946a3bd5:   xor    %r10d,%r10d
   0.00%  ││ │         ││         0x00007f49946a3bd8:   mov    %r10,0x48(%rsp)
   0.00%  ││ │         ││         0x00007f49946a3bdd:   data16 xchg %ax,%ax
          ││╭│         ││         0x00007f49946a3be0:   jmp    0x00007f49946a3eb9           ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
          ││││         ││                                                                   ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
          ││││         ││                                                                   ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
          ││││         ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  ││││   ↗     ││         0x00007f49946a3be5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {rbx=NarrowOop r14=Oop [16]=NarrowOop [24]=Oop [48]=Oop [8]=Derived_oop_[48] [56]=Oop }
          ││││   │     ││                                                                   ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││││   │     ││                                                                   ; - (reexecute) java.util.concurrent.ForkJoinPool::scan@258 (line 1827)
          ││││   │     ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  ││││   │     ││         0x00007f49946a3bec:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││││   │     ││                                                                   ; - java.util.concurrent.ForkJoinPool::scan@258 (line 1827)
          ││││   │     ││                                                                   ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          ││││   │     ││                                                                   ;   {poll}
   0.01%  ││││   │     ││         0x00007f49946a3bef:   test   %r8d,%r8d
          │││╰   │     ││         0x00007f49946a3bf2:   jle    0x00007f49946a3bbe
          │││    │     ││         0x00007f49946a3bf4:   mov    %ebp,0x70(%rsp)
          │││    │     ││         0x00007f49946a3bf8:   jmp    0x00007f49946a42f6
   0.00%  │││    │     ││↗        0x00007f49946a3bfd:   mov    0x64(%rsp),%r11d
   0.00%  │││    │     │││        0x00007f49946a3c02:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││    │     │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@47 (line 1315)
          │││    │     │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││    │     │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││    │     │││        0x00007f49946a3c05:   mov    %r11d,0x64(%rsp)
          │││ ╭  │     │││        0x00007f49946a3c0a:   jmp    0x00007f49946a3de1
          │││ │  │     │││        0x00007f49946a3c0f:   nop                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │     │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@156 (line 1837)
          │││ │  │     │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.06%  │││ │  │  ↗↗ │││        0x00007f49946a3c10:   mov    0x24(%rsp),%r10d
   0.01%  │││ │  │  ││ │││        0x00007f49946a3c15:   mov    0x18(%r12,%r10,8),%r11d      ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@224 (line 1846)
          │││ │  │  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.04%  │││ │  │  ││ │││        0x00007f49946a3c1a:   mov    0x6c(%rsp),%ebx
   0.01%  │││ │  │  ││ │││        0x00007f49946a3c1e:   xchg   %ax,%ax
   0.06%  │││ │  │  ││ │││        0x00007f49946a3c20:   cmp    %ebx,%r11d
          │││ │  │  ││ │││        0x00007f49946a3c23:   jne    0x00007f49946a47fc           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │││ │  │  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@229 (line 1846)
          │││ │  │  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ │  │  ││ │││        0x00007f49946a3c29:   cmp    0x10(%r13,%r14,4),%r12d
          │││ │╭ │  ││ │││        0x00007f49946a3c2e:   jne    0x00007f49946a3f1c           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │││ ││ │  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@237 (line 1846)
          │││ ││ │  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.06%  │││ ││ │  ││ │││        0x00007f49946a3c34:   cmp    0x10(%r13,%rbp,4),%r12d
          │││ ││╭│  ││ │││        0x00007f49946a3c39:   jne    0x00007f49946a3f1c
   0.09%  │││ ││││  ││ │││        0x00007f49946a3c3f:   mov    0x14(%rsp),%ebx
   0.02%  │││ ││││  ││ │││        0x00007f49946a3c43:   mov    0x50(%rsp),%r9d
   0.01%  │││ ││││  ││ │││        0x00007f49946a3c48:   mov    0x54(%rsp),%r10d
   0.06%  │││ ││││  ││ │││        0x00007f49946a3c4d:   mov    0x58(%rsp),%r13d
   0.01%  │││ ││││  ││ │││        0x00007f49946a3c52:   mov    0x60(%rsp),%r14
   0.02%  │││ ││││  ││ │││        0x00007f49946a3c57:   mov    0x5c(%rsp),%r8d
   0.01%  │││ ││││  ││ │││        0x00007f49946a3c5c:   mov    0x68(%rsp),%r11d             ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││ ││││  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@245 (line 1846)
          │││ ││││  ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.07%  │││ ││││↗ ││ │││        0x00007f49946a3c61:   mov    0x70(%rsp),%ebp
   0.04%  │││ │││││ ││ │││        0x00007f49946a3c65:   add    %r13d,%ebp                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@256 (line 1827)
          │││ │││││ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.02%  │││ │││││ ││ │││        0x00007f49946a3c68:   dec    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │││││ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@250 (line 1827)
          │││ │││││ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ │││││ ││ │││        0x00007f49946a3c6b:   cmp    %r11d,%r8d
          │││ │││╰│ ││ │││        0x00007f49946a3c6e:   jle    0x00007f49946a3be5           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@38 (line 1827)
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.05%  │││ │││ │ ││ │││        0x00007f49946a3c74:   mov    %ebp,0x70(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@41 (line 1829)
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.03%  │││ │││ │ ││ │││        0x00007f49946a3c78:   mov    %r10d,%ebp
   0.03%  │││ │││ │ ││ │││        0x00007f49946a3c7b:   and    0x70(%rsp),%ebp              ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@48 (line 1829)
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.05%  │││ │││ │ ││ │││        0x00007f49946a3c7f:   mov    %ebp,(%rsp)
   0.08%  │││ │││ │ ││ │││        0x00007f49946a3c82:   mov    0x10(%r14,%rbp,4),%edi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@52 (line 1829)
          │││ │││ │ ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.07%  │││ │││ │ ││ │││        0x00007f49946a3c87:   mov    %edi,0x24(%rsp)
   0.04%  │││ │││ │ ││ │││        0x00007f49946a3c8b:   test   %edi,%edi
          │││ │││ ╰ ││ │││        0x00007f49946a3c8d:   je     0x00007f49946a3c61           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@56 (line 1829)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.02%  │││ │││   ││ │││        0x00007f49946a3c8f:   mov    0x18(%r12,%rdi,8),%edi       ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@61 (line 1829)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.83%  │││ │││   ││ │││        0x00007f49946a3c94:   mov    0xc(%r12,%rdi,8),%ebp        ; implicit exception: dispatches to 0x00007f49946a4af0
          │││ │││   ││ │││                                                                  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@72 (line 1829)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.62%  │││ │││   ││ │││        0x00007f49946a3c99:   test   %ebp,%ebp
   0.04%  │││ │││   ││ │││        0x00007f49946a3c9b:   nopl   0x0(%rax,%rax,1)
   0.01%  │││ │││   ││ │││        0x00007f49946a3ca0:   jbe    0x00007f49946a47b9           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@76 (line 1829)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.07%  │││ │││   ││ │││        0x00007f49946a3ca6:   mov    %r11d,0x68(%rsp)
   0.01%  │││ │││   ││ │││        0x00007f49946a3cab:   mov    %r8d,0x5c(%rsp)
   0.02%  │││ │││   ││ │││        0x00007f49946a3cb0:   mov    %r14,0x60(%rsp)
   0.01%  │││ │││   ││ │││        0x00007f49946a3cb5:   mov    %r13d,0x58(%rsp)
   0.06%  │││ │││   ││ │││        0x00007f49946a3cba:   mov    %r10d,0x54(%rsp)
   0.01%  │││ │││   ││ │││        0x00007f49946a3cbf:   mov    %r9d,0x50(%rsp)
   0.02%  │││ │││   ││ │││        0x00007f49946a3cc4:   mov    %ebx,0x14(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@41 (line 1829)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ │││   ││ │││        0x00007f49946a3cc8:   mov    0x24(%rsp),%r11d
   0.07%  │││ │││   ││ │││        0x00007f49946a3ccd:   mov    0x14(%r12,%r11,8),%ebx       ;*getfield base {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@88 (line 1831)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.07%  │││ │││   ││ │││        0x00007f49946a3cd2:   dec    %ebp                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@96 (line 1832)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ │││   ││ │││        0x00007f49946a3cd4:   mov    %ebp,%r14d
   0.01%  │││ │││   ││ │││        0x00007f49946a3cd7:   and    %ebx,%r14d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@99 (line 1832)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.06%  │││ │││   ││ │││        0x00007f49946a3cda:   lea    (%r12,%rdi,8),%r13
   0.01%  │││ │││   ││ │││        0x00007f49946a3cde:   mov    %edi,0x6c(%rsp)
   0.01%  │││ │││   ││ │││        0x00007f49946a3ce2:   mov    0x10(%r13,%r14,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@121 (line 1833)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.87%  │││ │││   ││ │││        0x00007f49946a3ce7:   mov    %r10d,0x2c(%rsp)             ;*invokevirtual loadFence {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@127 (line 1834)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││ │││   ││ │││                                                                  ;   {no_reloc}
   0.13%  │││ │││   ││ │││        0x00007f49946a3cec:   mov    0x14(%r12,%r11,8),%r10d      ;*getfield base {reexecute=0 rethrow=0 return_oop=0}
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@132 (line 1835)
          │││ │││   ││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.04%  │││ │││   ││ │││        0x00007f49946a3cf1:   cmp    %ebx,%r10d
          │││ │││  ╭││ │││        0x00007f49946a3cf4:   jne    0x00007f49946a3f1c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@137 (line 1835)
          │││ │││  │││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ │││  │││ │││        0x00007f49946a3cfa:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@105 (line 1832)
          │││ │││  │││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │││ │││        0x00007f49946a3cfc:   and    %ebx,%ebp                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@114 (line 1832)
          │││ │││  │││ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.07%  │││ │││  │││ │││        0x00007f49946a3cfe:   mov    0x2c(%rsp),%r10d
   0.03%  │││ │││  │││ │││        0x00007f49946a3d03:   test   %r10d,%r10d
          │││ │││  │╰│ │││        0x00007f49946a3d06:   je     0x00007f49946a3c10           ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.02%  │││ │││  │ │ │││        0x00007f49946a3d0c:   shl    $0x3,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@121 (line 1833)
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ │││  │ │ │││        0x00007f49946a3d10:   mov    %r10,0x48(%rsp)
   0.01%  │││ │││  │ │ │││        0x00007f49946a3d15:   cmpb   $0x0,0x40(%r15)
          │││ │││  │ │ │││        0x00007f49946a3d1a:   nopw   0x0(%rax,%rax,1)
          │││ │││  │ │ │││        0x00007f49946a3d20:   jne    0x00007f49946a45ea
   0.00%  │││ │││  │ │ │││        0x00007f49946a3d26:   movslq %r14d,%r10
          │││ │││  │ │ │││        0x00007f49946a3d29:   mov    0x2c(%rsp),%eax
          │││ │││  │ │ │││        0x00007f49946a3d2d:   xor    %r11,%r11
          │││ │││  │ │ │││        0x00007f49946a3d30:   lock cmpxchg %r11d,0x10(%r13,%r10,4)
   0.20%  │││ │││  │ │ │││        0x00007f49946a3d37:   sete   %r10b
          │││ │││  │ │ │││        0x00007f49946a3d3b:   movzbl %r10b,%r10d                  ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
          │││ │││  │ │ │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │ │ │││        0x00007f49946a3d3f:   nop
          │││ │││  │ │ │││        0x00007f49946a3d40:   test   %r10d,%r10d
          │││ │││  │ ╰ │││        0x00007f49946a3d43:   je     0x00007f49946a3c10           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@156 (line 1837)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │   │││        0x00007f49946a3d49:   mov    0x24(%rsp),%r11d
          │││ │││  │   │││        0x00007f49946a3d4e:   mov    %ebx,0x14(%r12,%r11,8)       ;*putfield source {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@169 (line 1839)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │   │││        0x00007f49946a3d53:   mov    (%rsp),%r14d
          │││ │││  │   │││        0x00007f49946a3d57:   or     $0x20000,%r14d               ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@83 (line 1831)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││ │││  │   │││        0x00007f49946a3d5e:   mov    %r14d,0x50(%rsp)
          │││ │││  │   │││        0x00007f49946a3d63:   mov    0x38(%rsp),%r11
   0.00%  │││ │││  │   │││        0x00007f49946a3d68:   mov    %r14d,0xac(%r11)
          │││ │││  │   │││        0x00007f49946a3d6f:   lock addl $0x0,-0x40(%rsp)          ;*putfield source {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@169 (line 1839)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.38%  │││ │││  │   │││        0x00007f49946a3d75:   mov    %r14d,%r10d
          │││ │││  │   │││        0x00007f49946a3d78:   shl    $0x10,%r10d
          │││ │││  │   │││        0x00007f49946a3d7c:   add    %r14d,%r10d
   0.00%  │││ │││  │   │││        0x00007f49946a3d7f:   nop
          │││ │││  │   │││        0x00007f49946a3d80:   cmp    0x28(%rsp),%r10d
          │││ │││  │  ╭│││        0x00007f49946a3d85:   je     0x00007f49946a3da9           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@181 (line 1840)
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││ │││  │  ││││        0x00007f49946a3d87:   mov    0x24(%rsp),%r11d
          │││ │││  │  ││││        0x00007f49946a3d8c:   mov    0x14(%r12,%r11,8),%r10d      ;*getfield base {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@186 (line 1840)
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │  ││││        0x00007f49946a3d91:   cmp    %ebx,%r10d
          │││ │││  │  ││││        0x00007f49946a3d94:   jne    0x00007f49946a48e5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@191 (line 1840)
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││ │││  │  ││││        0x00007f49946a3d9a:   mov    0x10(%r13,%rbp,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@198 (line 1840)
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ │││  │  ││││        0x00007f49946a3d9f:   nop
          │││ │││  │  ││││        0x00007f49946a3da0:   test   %r10d,%r10d
          │││ │││  │  ││││        0x00007f49946a3da3:   jne    0x00007f49946a493c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@206 (line 1843)
          │││ │││  │  ││││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │  ↘│││        0x00007f49946a3da9:   mov    0x38(%rsp),%r10
          │││ │││  │   │││        0x00007f49946a3dae:   mov    0x10(%r10),%r10d             ;*getfield config {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@1 (line 1310)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │   │││        0x00007f49946a3db2:   mov    %r10d,0x2c(%rsp)
          │││ │││  │   │││        0x00007f49946a3db7:   mov    0x24(%rsp),%r10d
   0.00%  │││ │││  │   │││        0x00007f49946a3dbc:   shl    $0x3,%r10                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@52 (line 1829)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││ │││  │   │││        0x00007f49946a3dc0:   mov    %r10,0x58(%rsp)
          │││ │││  │   │││        0x00007f49946a3dc5:   mov    0x2c(%rsp),%r11d
          │││ │││  │   │││        0x00007f49946a3dca:   and    $0x10000,%r11d               ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@8 (line 1310)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││ │││  │   │││        0x00007f49946a3dd1:   mov    %r11d,0x54(%rsp)
          │││ │││  │   │││        0x00007f49946a3dd6:   mov    $0x1,%r11d
          │││ │││  │   │││        0x00007f49946a3ddc:   mov    %r11d,0x64(%rsp)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@18 (line 1312)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││ │││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││ ↘││  │   │││        0x00007f49946a3de1:   mov    0x48(%rsp),%rsi
   0.00%  │││  ││  │   │││        0x00007f49946a3de6:   nop
          │││  ││  │   │││        0x00007f49946a3de7:   call   0x00007f49940c4380           ; ImmutableOopMap {[16]=NarrowOop [24]=Oop [36]=NarrowOop [48]=Oop [8]=Derived_oop_[48] [56]=Oop [88]=Oop }
          │││  ││  │   │││                                                                  ;*invokevirtual doExec {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@19 (line 1312)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││  ││  │   │││                                                                  ;   {optimized virtual_call}
   0.00%  │││  ││  │   │││        0x00007f49946a3dec:   nopl   0x20005dc(%rax,%rax,1)       ;*invokevirtual doExec {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@19 (line 1312)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
          │││  ││  │   │││                                                                  ;   {other}
   0.00%  │││  ││  │   │││        0x00007f49946a3df4:   mov    0x24(%rsp),%r11d
   0.01%  │││  ││  │   │││        0x00007f49946a3df9:   mov    0x18(%r12,%r11,8),%r9d       ;*getfield array {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@6 (line 1280)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.02%  │││  ││  │   │││        0x00007f49946a3dfe:   mov    0x14(%r12,%r11,8),%r13d      ;*getfield base {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@1 (line 1279)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││  ││  │   │││        0x00007f49946a3e03:   mov    0x38(%rsp),%r10
   0.00%  │││  ││  │   │││        0x00007f49946a3e08:   mov    0x14(%r10),%r10d             ;*getfield base {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::nextLocalTask@20 (line 1168)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@26 (line 1313)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││  ││  │   │││        0x00007f49946a3e0c:   mov    %r10d,(%rsp)
          │││  ││  │   │││        0x00007f49946a3e10:   mov    0x38(%rsp),%r10
   0.00%  │││  ││  │   │││        0x00007f49946a3e15:   mov    0xa0(%r10),%r10d             ;*getfield top {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::nextLocalTask@8 (line 1168)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@26 (line 1313)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││  ││  │   │││        0x00007f49946a3e1c:   mov    %r10d,0x14(%rsp)
   0.00%  │││  ││  │   │││        0x00007f49946a3e21:   mov    %r10d,%r11d
   0.00%  │││  ││  │   │││        0x00007f49946a3e24:   sub    (%rsp),%r11d
   0.00%  │││  ││  │   │││        0x00007f49946a3e28:   test   %r11d,%r11d
          │││  ││  │   │││        0x00007f49946a3e2b:   jg     0x00007f49946a4409           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::nextLocalTask@149 (line 1189)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@26 (line 1313)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││  ││  │   │││        0x00007f49946a3e31:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f49946a4b3c
          │││  ││  │   │││                                                                  ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@15 (line 1280)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%  │││  ││  │   │││        0x00007f49946a3e36:   test   %r10d,%r10d
          │││  ││  │   │││        0x00007f49946a3e39:   jbe    0x00007f49946a487b           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@18 (line 1280)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  │││  ││  │   │││        0x00007f49946a3e3f:   mov    %r10d,%edi
   0.00%  │││  ││  │   │││        0x00007f49946a3e42:   dec    %edi
   0.00%  │││  ││  │   │││        0x00007f49946a3e44:   lea    (%r12,%r9,8),%rbp            ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@21 (line 1282)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
          │││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%  ↘││  ││  │   │││        0x00007f49946a3e48:   mov    %edi,%ebx
   0.00%   ││  ││  │   │││        0x00007f49946a3e4a:   and    %r13d,%ebx                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@25 (line 1282)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   ││  ││  │   │││        0x00007f49946a3e4d:   mov    0x10(%rbp,%rbx,4),%r14d      ;*invokevirtual loadFence {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@42 (line 1284)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.02%   ││  ││  │   │││        0x00007f49946a3e52:   mov    0x24(%rsp),%r11d
           ││  ││  │   │││        0x00007f49946a3e57:   mov    0x14(%r12,%r11,8),%r11d      ;*getfield base {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@47 (line 1285)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           ││  ││  │   │││        0x00007f49946a3e5c:   nopl   0x0(%rax)
   0.00%   ││  ││  │   │││        0x00007f49946a3e60:   cmp    %r11d,%r13d
           ││  ││  │   │││        0x00007f49946a3e63:   jne    0x00007f49946a3bac           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@52 (line 1285)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │   │││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%   ││  ││  │   │││        0x00007f49946a3e69:   test   %r14d,%r14d
           ││  ││  │   ╰││        0x00007f49946a3e6c:   je     0x00007f49946a3bce           ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@68 (line 1288)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   ││  ││  │    ││        0x00007f49946a3e72:   lea    (%r12,%r14,8),%r10           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@36 (line 1283)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   ││  ││  │    ││        0x00007f49946a3e76:   mov    %r10,0x48(%rsp)              ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   ││  ││  │    ││        0x00007f49946a3e7b:   nopl   0x0(%rax,%rax,1)
   0.00%   ││  ││  │    ││        0x00007f49946a3e80:   cmpb   $0x0,0x40(%r15)
           ││  ││  │    ││        0x00007f49946a3e85:   jne    0x00007f49946a452e
           ││  ││  │    ││        0x00007f49946a3e8b:   movslq %ebx,%r10
   0.00%   ││  ││  │    ││        0x00007f49946a3e8e:   mov    %r14d,%eax
   0.00%   ││  ││  │    ││        0x00007f49946a3e91:   xor    %r11,%r11
           ││  ││  │    ││        0x00007f49946a3e94:   lock cmpxchg %r11d,0x10(%rbp,%r10,4)
   0.06%   ││  ││  │    ││        0x00007f49946a3e9b:   sete   %r11b
   0.00%   ││  ││  │    ││        0x00007f49946a3e9f:   movzbl %r11b,%r11d                  ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@68 (line 1288)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │    ││                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   ││  ││  │    ││        0x00007f49946a3ea3:   test   %r11d,%r11d
           ││  ││  │    ╰│        0x00007f49946a3ea6:   je     0x00007f49946a3bd5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::tryPoll@71 (line 1288)
           ││  ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@39 (line 1314)
           ││  ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           ││  ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   ││  ││  │     │        0x00007f49946a3eac:   inc    %r13d
           ││  ││  │     │        0x00007f49946a3eaf:   mov    0x24(%rsp),%r10d
           ││  ││  │     │        0x00007f49946a3eb4:   mov    %r13d,0x14(%r12,%r10,8)      ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
           ││  ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
           ││  ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
           ││  ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%   │↘  ││  │     │        0x00007f49946a3eb9:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[16]=NarrowOop [24]=Oop [36]=NarrowOop [48]=Oop [8]=Derived_oop_[48] [56]=Oop [72]=Oop [88]=Oop }
           │   ││  │     │                                                                  ;*ifnull {reexecute=1 rethrow=0 return_oop=0}
           │   ││  │     │                                                                  ; - (reexecute) java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@44 (line 1314)
           │   ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           │   ││  │     │                                                                  ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   │   ││  │     │        0x00007f49946a3ec0:   test   %eax,(%r10)                  ;   {poll}
   0.00%   │   ││  │     │        0x00007f49946a3ec3:   mov    0x48(%rsp),%r10
           │   ││  │     │        0x00007f49946a3ec8:   test   %r10,%r10
           │   ││  │     ╰        0x00007f49946a3ecb:   jne    0x00007f49946a3bfd           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@44 (line 1314)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   │   ││  │              0x00007f49946a3ed1:   mov    0x38(%rsp),%r10
   0.00%   │   ││  │              0x00007f49946a3ed6:   mov    0x64(%rsp),%r11d
           │   ││  │              0x00007f49946a3edb:   add    %r11d,0xb0(%r10)
   0.00%   │   ││  │              0x00007f49946a3ee2:   mov    %r12d,0xac(%r10)
           │   ││  │              0x00007f49946a3ee9:   lock addl $0x0,-0x40(%rsp)          ;*putfield source {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@66 (line 1318)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.08%   │   ││  │              0x00007f49946a3eef:   mov    0x2c(%rsp),%r8d
           │   ││  │              0x00007f49946a3ef4:   and    $0x40000,%r8d                ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@72 (line 1319)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           │   ││  │              0x00007f49946a3efb:   nopl   0x0(%rax,%rax,1)
   0.00%   │   ││  │              0x00007f49946a3f00:   test   %r8d,%r8d
           │   ││  │              0x00007f49946a3f03:   jne    0x00007f49946a4924           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool$WorkQueue::topLevelExec@73 (line 1319)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::scan@211 (line 1843)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           │   ││  │              0x00007f49946a3f09:   mov    0x28(%rsp),%r11d
           │   ││  │              0x00007f49946a3f0e:   shl    $0x10,%r11d
           │   ││  │              0x00007f49946a3f12:   add    0x50(%rsp),%r11d             ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::scan@220 (line 1844)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.00%   │   ││  │              0x00007f49946a3f17:   mov    %r11d,0x28(%rsp)             ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
           │   ││  │                                                                        ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.01%   ↘   ↘↘  ↘              0x00007f49946a3f1c:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[16]=NarrowOop [24]=Oop [48]=Oop [8]=Derived_oop_[48] [56]=Oop }
                                                                                            ;*ifge {reexecute=1 rethrow=0 return_oop=0}
                                                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%                          0x00007f49946a3f23:   test   %eax,(%r10)                  ;   {poll}
   0.01%                          0x00007f49946a3f26:   mov    0x28(%rsp),%r10d
   0.00%                          0x00007f49946a3f2b:   test   %r10d,%r10d
                                  0x00007f49946a3f2e:   jge    0x00007f49946a429b           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@1 (line 1859)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a3f34:   mov    0x38(%rsp),%r10
   0.00%                          0x00007f49946a3f39:   mov    0xa8(%r10),%ecx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                          0x00007f49946a3f40:   mov    0x18(%rsp),%r10
   0.00%                          0x00007f49946a3f45:   mov    0x30(%r10),%r10d             ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%                          0x00007f49946a3f49:   test   %r10d,%r10d
                                  0x00007f49946a3f4c:   jl     0x00007f49946a4980           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a3f52:   mov    0x18(%rsp),%r10
                                  0x00007f49946a3f57:   mov    0xd8(%r10),%r10              ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.32%                          0x00007f49946a3f5e:   mov    %r10,%r9
   0.00%                          0x00007f49946a3f61:   movabs $0xffff000000000000,%r11
                                  0x00007f49946a3f6b:   add    %r11,%r9
   0.00%                          0x00007f49946a3f6e:   movabs $0xffffffff00000000,%r11
                                  0x00007f49946a3f78:   and    %r11,%r9
   0.01%                          0x00007f49946a3f7b:   add    $0x10000,%ecx
                                  0x00007f49946a3f81:   mov    %r10d,%r8d
   0.00%                          0x00007f49946a3f84:   and    $0x7fffffff,%ecx             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                  0x00007f49946a3f8a:   movslq %ecx,%rbx                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a3f8d:   or     %rbx,%r9                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                  0x00007f49946a3f90:   or     $0x80000000,%ecx
   0.00%                          0x00007f49946a3f96:   mov    0x38(%rsp),%r11
                                  0x00007f49946a3f9b:   mov    %ecx,0xa8(%r11)
   0.01%                          0x00007f49946a3fa2:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.57%                          0x00007f49946a3fa8:   mov    %r8d,0xc(%r11)
                                  0x00007f49946a3fac:   mov    0x18(%rsp),%r11
                                  0x00007f49946a3fb1:   mov    %r10,%rax
   0.00%                          0x00007f49946a3fb4:   lock cmpxchg %r9,0xd8(%r11)
   0.55%                          0x00007f49946a3fbd:   mov    %rax,%r8                     ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a3fc0:   cmp    %rax,%r10
                                  0x00007f49946a3fc3:   jne    0x00007f49946a4583           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                          0x00007f49946a3fc9:   movabs $0xffff000000000000,%r10
   0.00%                          0x00007f49946a3fd3:   test   %r9,%r10
                                  0x00007f49946a3fd6:   jle    0x00007f49946a4335           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                  0x00007f49946a3fdc:   xor    %r11d,%r11d
                                  0x00007f49946a3fdf:   mov    %r11d,0x24(%rsp)             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a3fe4:   mov    0x18(%rsp),%r10
                                  0x00007f49946a3fe9:   mov    0x34(%r10),%r11d             ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a3fed:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f49946a4ba8
   0.01%                          0x00007f49946a3ff2:   mov    0x38(%rsp),%r11
   0.00%                          0x00007f49946a3ff7:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a3ffe:   xchg   %ax,%ax
                                  0x00007f49946a4000:   test   %r8d,%r8d
                                  0x00007f49946a4003:   jge    0x00007f49946a4293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                  0x00007f49946a4009:   movzwl %r10w,%r11d
   0.00%                          0x00007f49946a400d:   shl    %r11d
   0.00%                          0x00007f49946a4010:   or     $0xf,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                          0x00007f49946a4014:   mov    %r11d,%ecx
                                  0x00007f49946a4017:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                          0x00007f49946a4019:   test   %ecx,%ecx
                                  0x00007f49946a401b:   nopl   0x0(%rax,%rax,1)
                          ╭       0x00007f49946a4020:   jle    0x00007f49946a40fb           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                          │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │                                                                 ;   {no_reloc}
   0.00%                  │       0x00007f49946a4026:   add    $0xfffffffe,%r11d            ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                          │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                  │↗      0x00007f49946a402a:   pause                               ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
                          ││                                                                ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.86%                  ││      0x00007f49946a402c:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[16]=NarrowOop [24]=Oop [48]=Oop [8]=Derived_oop_[48] [56]=Oop }
                          ││                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          ││                                                                ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          ││      0x00007f49946a4033:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          ││                                                                ;   {poll}
                          ││      0x00007f49946a4036:   mov    0x38(%rsp),%r10
                          ││      0x00007f49946a403b:   mov    0xa8(%r10),%r10d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                  ││      0x00007f49946a4042:   test   %r10d,%r10d
                          ││      0x00007f49946a4045:   jge    0x00007f49946a4293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          ││      0x00007f49946a404b:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                          ││                                                                ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          ││      0x00007f49946a404d:   cmp    %r11d,%ecx
                          │╰      0x00007f49946a4050:   jg     0x00007f49946a402a           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                          │                                                                 ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                          │                                                                 ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │       0x00007f49946a4052:   cmp    $0x3,%ecx
                          │ ╭     0x00007f49946a4055:   jle    0x00007f49946a40ce
   0.00%                  │ │     0x00007f49946a405b:   nopl   0x0(%rax,%rax,1)             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                          │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                          │ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │ │↗    0x00007f49946a4060:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.69%                  │ ││    0x00007f49946a4062:   mov    0x38(%rsp),%r10
                          │ ││    0x00007f49946a4067:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.12%                  │ ││    0x00007f49946a406e:   test   %r11d,%r11d
                          │ ││    0x00007f49946a4071:   jge    0x00007f49946a4293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │ ││    0x00007f49946a4077:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.59%                  │ ││    0x00007f49946a4079:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.13%                  │ ││    0x00007f49946a4080:   test   %r11d,%r11d
                          │ ││    0x00007f49946a4083:   jge    0x00007f49946a4293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │ ││    0x00007f49946a4089:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.37%                  │ ││    0x00007f49946a408b:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.14%                  │ ││    0x00007f49946a4092:   test   %r11d,%r11d
                          │ ││    0x00007f49946a4095:   jge    0x00007f49946a4293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │ ││    0x00007f49946a409b:   pause                               ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   5.09%                  │ ││    0x00007f49946a409d:   mov    0x458(%r15),%r10
                          │ ││    0x00007f49946a40a4:   mov    0x38(%rsp),%r11
                          │ ││    0x00007f49946a40a9:   mov    0xa8(%r11),%r8d
   0.13%                  │ ││    0x00007f49946a40b0:   lea    -0x3(%rcx),%r11d             ; ImmutableOopMap {[16]=NarrowOop [24]=Oop [48]=Oop [8]=Derived_oop_[48] [56]=Oop }
                          │ ││                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │ ││                                                              ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%                  │ ││    0x00007f49946a40b4:   test   %eax,(%r10)                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │ ││                                                              ;   {poll}
                          │ ││    0x00007f49946a40b7:   test   %r8d,%r8d
   0.00%                  │ ││    0x00007f49946a40ba:   nopw   0x0(%rax,%rax,1)
                          │ ││    0x00007f49946a40c0:   jge    0x00007f49946a4293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%                  │ ││    0x00007f49946a40c6:   add    $0xfffffffc,%ecx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                          │ ││                                                              ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │ ││    0x00007f49946a40c9:   cmp    $0x3,%ecx
                          │ │╰    0x00007f49946a40cc:   jg     0x00007f49946a4060           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                          │ │                                                               ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
                          │ │                                                               ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%                  │ ↘     0x00007f49946a40ce:   test   %ecx,%ecx
                          │   ╭   0x00007f49946a40d0:   jle    0x00007f49946a40fb
   0.01%                  │   │   0x00007f49946a40d2:   xchg   %ax,%ax                      ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                          │   │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                          │   │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │   │↗  0x00007f49946a40d4:   pause                               ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
   0.26%                  │   ││  0x00007f49946a40d6:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[16]=NarrowOop [24]=Oop [48]=Oop [8]=Derived_oop_[48] [56]=Oop }
                          │   ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                          │   ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │   ││  0x00007f49946a40dd:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │   ││                                                            ;   {poll}
   0.00%                  │   ││  0x00007f49946a40e0:   mov    0x38(%rsp),%r10
                          │   ││  0x00007f49946a40e5:   mov    0xa8(%r10),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │   ││  0x00007f49946a40ec:   test   %r11d,%r11d
                          │   ││  0x00007f49946a40ef:   jge    0x00007f49946a4293           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          │   ││  0x00007f49946a40f5:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
                          │   ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%                  │   ││  0x00007f49946a40f7:   test   %ecx,%ecx
                          │   │╰  0x00007f49946a40f9:   jg     0x00007f49946a40d4           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                          │   │                                                             ; - java.util.concurrent.ForkJoinPool::awaitWork@196 (line 1882)
                          │   │                                                             ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                          ↘   ↘   0x00007f49946a40fb:   mov    0x24(%rsp),%r11d
   0.00%                          0x00007f49946a4100:   test   %r11d,%r11d
                                  0x00007f49946a4103:   jne    0x00007f49946a43ab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@200 (line 1883)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                  0x00007f49946a4109:   xor    %r11d,%r11d
                                  0x00007f49946a410c:   xor    %r10d,%r10d
                                  0x00007f49946a410f:   mov    %r11d,0x24(%rsp)
   0.00%                          0x00007f49946a4114:   mov    %r10,0x28(%rsp)              ;*invokevirtual compareAndSetReference {reexecute=0 rethrow=0 return_oop=0}
                                                                                            ; - java.util.concurrent.ForkJoinPool$WorkQueue::casSlotToNull@16 (line 1080)
                                                                                            ; - java.util.concurrent.ForkJoinPool::scan@153 (line 1837)
                                                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
                                  0x00007f49946a4119:   nopl   0x0(%rax)
                                  0x00007f49946a4120:   cmpb   $0x0,0x40(%r15)
                                  0x00007f49946a4125:   jne    0x00007f49946a4637
   0.00%                          0x00007f49946a412b:   mov    0x8(%rsp),%r10
                                  0x00007f49946a4130:   mov    0x10(%rsp),%r11d
                                  0x00007f49946a4135:   mov    %r11d,(%r10)
                                  0x00007f49946a4138:   mov    0x18(%rsp),%r10
   0.00%                          0x00007f49946a413d:   mov    0x8(%rsp),%r11
                                  0x00007f49946a4142:   xor    %r11,%r10
                                  0x00007f49946a4145:   shr    $0x15,%r10
                                  0x00007f49946a4149:   test   %r10,%r10
                                  0x00007f49946a414c:   je     0x00007f49946a4169
                                  0x00007f49946a414e:   shr    $0x9,%r11
                                  0x00007f49946a4152:   movabs $0x7f4988b3f000,%rdi
                                  0x00007f49946a415c:   add    %r11,%rdi
                                  0x00007f49946a415f:   nop
                                  0x00007f49946a4160:   cmpb   $0x2,(%rdi)
                                  0x00007f49946a4163:   jne    0x00007f49946a46b3           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  30.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.97%  <total for region 2>

....[Hottest Regions]...............................................................................
  30.09%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 4, compile id 929 
  13.97%              kernel  [unknown] 
   6.45%              kernel  [unknown] 
   3.03%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   2.19%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 883 
   1.52%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 883 
   1.03%              kernel  [unknown] 
   1.00%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 883 
   1.00%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 731 
   0.96%              kernel  [unknown] 
   0.82%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 731 
   0.77%              kernel  [unknown] 
   0.73%              kernel  [unknown] 
   0.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 718 
   0.70%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 731 
   0.62%         c2, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 749 
   0.60%              kernel  [unknown] 
   0.60%              kernel  [unknown] 
   0.59%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.59%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 883 
  32.03%  <...other 1129 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  39.35%              kernel  [unknown] 
  30.85%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 4, compile id 929 
   5.61%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 883 
   3.04%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   2.96%         c2, level 4  java.util.concurrent.ForkJoinTask::doExec, version 2, compile id 731 
   1.35%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 741 
   1.05%         c2, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 749 
   1.01%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.71%         c2, level 4  java.lang.VirtualThread$$Lambda.0x00007f491c037850::run, version 2, compile id 739 
   0.70%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 718 
   0.67%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.61%           libjvm.so  freeze<Config<(oop_kind)0, G1BarrierSet> > 
   0.54%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.54%           libjvm.so  Parker::park 
   0.51%  libpthread-2.31.so  __pthread_mutex_lock 
   0.46%         c2, level 4  java.lang.VirtualThread::unpark, version 4, compile id 927 
   0.44%           libjvm.so  SafepointMechanism::update_poll_values 
   0.44%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 286822ul>::oop_access_barrier 
   0.43%           libjvm.so  Unsafe_Park 
   0.41%  libpthread-2.31.so  __pthread_mutex_unlock 
   8.31%  <...other 296 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  44.98%         c2, level 4
  39.35%              kernel
   7.54%           libjvm.so
   3.67%        libc-2.31.so
   3.39%  libpthread-2.31.so
   0.73%    Unknown, level 0
   0.10%          ld-2.31.so
   0.08%        runtime stub
   0.07%                    
   0.07%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%    perf-3040598.map
   0.00%         interpreter
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 100, threadType = PLATFORM)

# Run progress: 62.50% complete, ETA 00:06:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1017.739 us/op
# Warmup Iteration   2: 958.697 us/op
# Warmup Iteration   3: 946.509 us/op
# Warmup Iteration   4: 999.846 us/op
# Warmup Iteration   5: 962.428 us/op
Iteration   1: 937.611 us/op
Iteration   2: 951.725 us/op
Iteration   3: 945.447 us/op
Iteration   4: 944.487 us/op
Iteration   5: 949.489 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  945.752 ±(99.9%) 20.880 us/op [Average]
  (min, avg, max) = (937.611, 945.752, 951.725), stdev = 5.423
  CI (99.9%): [924.871, 966.632] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 180925 total address lines.
Perf output processed (skipped 56.196 seconds):
 Column 1: cycles (467476 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  33.73%  <total for region 1>

....[Hottest Regions]...............................................................................
  33.73%              kernel  [unknown] 
   9.42%              kernel  [unknown] 
   6.29%              kernel  [unknown] 
   5.90%              kernel  [unknown] 
   4.90%              kernel  [unknown] 
   4.43%              kernel  [unknown] 
   4.03%              kernel  [unknown] 
   3.60%              kernel  [unknown] 
   2.12%              kernel  [unknown] 
   1.97%              kernel  [unknown] 
   1.86%              kernel  [unknown] 
   1.38%              kernel  [unknown] 
   1.18%              kernel  [unknown] 
   0.95%              kernel  [unknown] 
   0.94%              kernel  [unknown] 
   0.86%              kernel  [unknown] 
   0.66%              kernel  [unknown] 
   0.64%              kernel  [unknown] 
   0.54%              kernel  [unknown] 
   0.48%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 741 
  14.13%  <...other 2227 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  94.54%              kernel  [unknown] 
   0.84%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 741 
   0.67%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.49%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.39%  libpthread-2.31.so  __pthread_mutex_lock 
   0.25%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.19%           libjvm.so  Unsafe_Park 
   0.19%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.17%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.13%           libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.13%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.11%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.11%           libjvm.so  Parker::park 
   0.11%    Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 580 
   0.11%           libjvm.so  Unsafe_Unpark 
   0.10%           libjvm.so  java_lang_Thread::set_thread_status 
   0.09%           libjvm.so  PlatformParker::~PlatformParker 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 597 
   0.06%          ld-2.31.so  __tls_get_addr 
   0.06%  libpthread-2.31.so  __pthread_mutex_cond_lock 
   1.18%  <...other 504 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  94.54%              kernel
   2.19%  libpthread-2.31.so
   1.72%           libjvm.so
   0.96%         c2, level 4
   0.23%        libc-2.31.so
   0.22%    Unknown, level 0
   0.07%          ld-2.31.so
   0.03%                    
   0.02%         interpreter
   0.02%              [vdso]
   0.01%         c1, level 3
   0.00%    perf-3040673.map
   0.00%      hsdis-amd64.so
   0.00%        runtime stub
   0.00%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1000, threadType = VIRTUAL)

# Run progress: 75.00% complete, ETA 00:04:07
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2301.816 us/op
# Warmup Iteration   2: 1473.105 us/op
# Warmup Iteration   3: 1449.392 us/op
# Warmup Iteration   4: 1473.073 us/op
# Warmup Iteration   5: 1467.710 us/op
Iteration   1: 1489.544 us/op
Iteration   2: 1486.726 us/op
Iteration   3: 1494.019 us/op
Iteration   4: 1487.792 us/op
Iteration   5: 1494.426 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  1490.501 ±(99.9%) 13.652 us/op [Average]
  (min, avg, max) = (1486.726, 1490.501, 1494.426), stdev = 3.545
  CI (99.9%): [1476.849, 1504.154] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 228397 total address lines.
Perf output processed (skipped 56.228 seconds):
 Column 1: cycles (207464 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 793 

                                                                                    ; - jdk.internal.misc.VirtualThreads::park@3 (line 54)
                                                                                    ; - java.util.concurrent.locks.LockSupport::park@9 (line 369)
                                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                                                                    ;   {optimized virtual_call}
                          0x00007f99a4670c4c:   nopl   0x100043c(%rax,%rax,1)       ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - java.util.concurrent.locks.LockSupport::park@23 (line 373)
                                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
                                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                                                                    ;   {other}
   0.00%               ↗  0x00007f99a4670c54:   xor    %ebp,%ebp
                       │  0x00007f99a4670c56:   mov    0x28(%rsp),%r8
   0.00%               │  0x00007f99a4670c5b:   mov    %r12d,0xa4(%r8)
   0.00%               │  0x00007f99a4670c62:   mov    %r8,0x28(%rsp)
                       │  0x00007f99a4670c67:   lock addl $0x0,-0x40(%rsp)          ;*putfield access {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@259 (line 1895)
                       │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.26%               │  0x00007f99a4670c6d:   mov    0xa8(%r8),%r11d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@263 (line 1896)
                       │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                       │  0x00007f99a4670c74:   test   %r11d,%r11d
                       │  0x00007f99a4670c77:   jl     0x00007f99a467118d           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
                       │  0x00007f99a4670c7d:   data16 xchg %ax,%ax
   0.00%               │  0x00007f99a4670c80:   cmpb   $0x0,0x40(%r15)
                       │  0x00007f99a4670c85:   jne    0x00007f99a46710ff
                       │  0x00007f99a4670c8b:   mov    0x8(%rsp),%rbx
                       │  0x00007f99a4670c90:   mov    %r12d,(%rbx)                 ;*goto {reexecute=0 rethrow=0 return_oop=0}
                       │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@273 (line 1898)
                       │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%              ↗│  0x00007f99a4670c93:   xor    %r11d,%r11d
                      ││  0x00007f99a4670c96:   mov    0x28(%rsp),%r8               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.01%              ││  0x00007f99a4670c9b:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r8=Oop [0]=Oop rbx=Derived_oop_[0] [16]=Oop }
                      ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                      ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::runWorker@50 (line 1809)
   0.00%              ││  0x00007f99a4670ca2:   test   %eax,(%r10)                  ;   {poll}
   0.02%              ││  0x00007f99a4670ca5:   test   %r11d,%r11d
                      ││  0x00007f99a4670ca8:   jne    0x00007f99a46712b0           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@50 (line 1809)
                      ││  0x00007f99a4670cae:   mov    0x20(%rsp),%ebp
                      ││  0x00007f99a4670cb2:   xor    %r14d,%r14d
                      ││  0x00007f99a4670cb5:   mov    %r8,0x28(%rsp)
   0.01%              ││  0x00007f99a4670cba:   mov    %rbx,0x8(%rsp)               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
           ↗          ││  0x00007f99a4670cbf:   mov    %ebp,%r11d
           │          ││  0x00007f99a4670cc2:   shl    $0xd,%r11d
   0.00%   │          ││  0x00007f99a4670cc6:   xor    %ebp,%r11d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@16 (line 1807)
   0.01%   │          ││  0x00007f99a4670cc9:   mov    %r11d,%r10d
   0.00%   │          ││  0x00007f99a4670ccc:   shr    $0x11,%r10d
   0.00%   │          ││  0x00007f99a4670cd0:   xor    %r11d,%r10d                  ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@23 (line 1807)
   0.00%   │          ││  0x00007f99a4670cd3:   mov    %r10d,%r8d
   0.01%   │          ││  0x00007f99a4670cd6:   shl    $0x5,%r8d
           │          ││  0x00007f99a4670cda:   xor    %r10d,%r8d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@29 (line 1807)
   0.00%   │          ││  0x00007f99a4670cdd:   mov    %r8d,0x20(%rsp)
   0.00%   │          ││  0x00007f99a4670ce2:   mov    0x10(%rsp),%r10
   0.00%   │          ││  0x00007f99a4670ce7:   test   %r10,%r10
           │          ││  0x00007f99a4670cea:   je     0x00007f99a4671271           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@11 (line 1807)
           │          ││  0x00007f99a4670cf0:   mov    0x10(%rsp),%rsi
           │          ││  0x00007f99a4670cf5:   mov    0x28(%rsp),%rdx
   0.00%   │          ││  0x00007f99a4670cfa:   mov    %r14d,%ecx
   0.00%   │          ││  0x00007f99a4670cfd:   xchg   %ax,%ax
           │          ││  0x00007f99a4670cff:   call   0x00007f99a40c4380           ; ImmutableOopMap {[0]=Oop [8]=Derived_oop_[0] [16]=Oop [40]=Oop }
           │          ││                                                            ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           │          ││                                                            ;   {optimized virtual_call}
   0.00%   │          ││  0x00007f99a4670d04:   nopl   0x30004f4(%rax,%rax,1)       ;*invokevirtual scan {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@35 (line 1808)
           │          ││                                                            ;   {other}
   0.00%   │          ││  0x00007f99a4670d0c:   test   %eax,%eax
          ╭│          ││  0x00007f99a4670d0e:   jl     0x00007f99a4670d19           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          ││          ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.00%  ││          ││  0x00007f99a4670d10:   mov    %eax,%r14d
          ││          ││  0x00007f99a4670d13:   mov    0x20(%rsp),%ebp
   0.00%  │╰          ││  0x00007f99a4670d17:   jmp    0x00007f99a4670cbf
   0.01%  ↘           ││  0x00007f99a4670d19:   mov    0x28(%rsp),%r10
   0.03%              ││  0x00007f99a4670d1e:   xchg   %ax,%ax
                      ││  0x00007f99a4670d20:   mov    0xa8(%r10),%r8d              ; implicit exception: dispatches to 0x00007f99a4671358
                      ││                                                            ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@7 (line 1861)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%              ││  0x00007f99a4670d27:   mov    0x10(%rsp),%r9
                      ││  0x00007f99a4670d2c:   mov    0x30(%r9),%r11d              ;*getfield runState {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@20 (line 1863)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%              ││  0x00007f99a4670d30:   test   %r11d,%r11d
                      ││  0x00007f99a4670d33:   jl     0x00007f99a4671298           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@23 (line 1863)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%              ││  0x00007f99a4670d39:   mov    0xd8(%r9),%r10               ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.41%              ││  0x00007f99a4670d40:   mov    %r10,%r9
   0.00%              ││  0x00007f99a4670d43:   movabs $0xffff000000000000,%r11
                      ││  0x00007f99a4670d4d:   add    %r11,%r9
   0.00%              ││  0x00007f99a4670d50:   movabs $0xffffffff00000000,%r11
                      ││  0x00007f99a4670d5a:   and    %r11,%r9
   0.00%              ││  0x00007f99a4670d5d:   add    $0x10000,%r8d
                      ││  0x00007f99a4670d64:   mov    %r10d,%ecx
   0.00%              ││  0x00007f99a4670d67:   and    $0x7fffffff,%r8d             ;*iand {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@15 (line 1861)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%              ││  0x00007f99a4670d6e:   movslq %r8d,%rbx                    ;*i2l {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@29 (line 1865)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%              ││  0x00007f99a4670d71:   or     %rbx,%r9                     ;*lor {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@74 (line 1869)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%              ││  0x00007f99a4670d74:   or     $0x80000000,%r8d
                      ││  0x00007f99a4670d7b:   mov    0x28(%rsp),%r11
   0.00%              ││  0x00007f99a4670d80:   mov    %r8d,0xa8(%r11)
   0.00%              ││  0x00007f99a4670d87:   lock addl $0x0,-0x40(%rsp)          ;*putfield phase {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@47 (line 1866)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.62%              ││  0x00007f99a4670d8d:   mov    %ecx,0xc(%r11)
                      ││  0x00007f99a4670d91:   mov    0x10(%rsp),%r11
                      ││  0x00007f99a4670d96:   mov    %r10,%rax
   0.01%              ││  0x00007f99a4670d99:   lock cmpxchg %r9,0xd8(%r11)
   0.59%              ││  0x00007f99a4670da2:   mov    %rax,%r8                     ;*invokevirtual compareAndExchangeLong {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::compareAndExchangeCtl@9 (line 1538)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@78 (line 1869)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                      ││  0x00007f99a4670da5:   cmp    %rax,%r10
                      ││  0x00007f99a4670da8:   jne    0x00007f99a4671043           ;*lload {reexecute=0 rethrow=0 return_oop=0}
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@88 (line 1871)
                      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%              ││  0x00007f99a4670dae:   movabs $0xffff000000000000,%r10
   0.00%              ││  0x00007f99a4670db8:   test   %r9,%r10
                      ││  0x00007f99a4670dbb:   nopl   0x0(%rax,%rax,1)
            ╭         ││  0x00007f99a4670dc0:   jle    0x00007f99a4670ef9           ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@96 (line 1871)
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │         ││  0x00007f99a4670dc6:   xor    %r10d,%r10d
            │         ││  0x00007f99a4670dc9:   mov    0x10(%rsp),%r9               ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@144 (line 1878)
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │         ││  0x00007f99a4670dce:   mov    0x34(%r9),%r11d              ;*getfield queues {reexecute=0 rethrow=0 return_oop=0}
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@145 (line 1878)
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    │         ││  0x00007f99a4670dd2:   mov    %r9,0x10(%rsp)
   0.00%    │         ││  0x00007f99a4670dd7:   nopw   0x0(%rax,%rax,1)
            │         ││  0x00007f99a4670de0:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f99a4671370
   0.00%    │         ││  0x00007f99a4670de5:   mov    0x28(%rsp),%r11
            │         ││  0x00007f99a4670dea:   mov    0xa8(%r11),%r9d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │         ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    │         ││  0x00007f99a4670df1:   test   %r9d,%r9d
            │╭        ││  0x00007f99a4670df4:   jge    0x00007f99a4670ec8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││        ││  0x00007f99a4670dfa:   movzwl %r8w,%r8d
            ││        ││  0x00007f99a4670dfe:   shl    %r8d
            ││        ││  0x00007f99a4670e01:   or     $0xf,%r8d                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@169 (line 1879)
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││        ││                                                            ;   {no_reloc}
   0.01%    ││        ││  0x00007f99a4670e05:   mov    %r8d,%ecx
            ││        ││  0x00007f99a4670e08:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││        ││  0x00007f99a4670e0a:   test   %ecx,%ecx
            ││        ││  0x00007f99a4670e0c:   jle    0x00007f99a4670b73           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    ││        ││  0x00007f99a4670e12:   add    $0xfffffffe,%r8d             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││        ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    ││ ↗      ││  0x00007f99a4670e16:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││ │      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   0.92%    ││ │      ││  0x00007f99a4670e18:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [8]=Derived_oop_[0] [16]=Oop [40]=Oop }
            ││ │      ││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            ││ │      ││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            ││ │      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││ │      ││  0x00007f99a4670e1f:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
            ││ │      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            ││ │      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││ │      ││                                                            ;   {poll}
            ││ │      ││  0x00007f99a4670e22:   mov    0x28(%rsp),%r11
            ││ │      ││  0x00007f99a4670e27:   mov    0xa8(%r11),%ebx              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            ││ │      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            ││ │      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.01%    ││ │      ││  0x00007f99a4670e2e:   test   %ebx,%ebx
            ││╭│      ││  0x00007f99a4670e30:   jge    0x00007f99a4670ec8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            ││││      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            ││││      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││││      ││  0x00007f99a4670e36:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            ││││      ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            ││││      ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            ││││      ││  0x00007f99a4670e38:   cmp    %r8d,%ecx
            │││╰      ││  0x00007f99a4670e3b:   jg     0x00007f99a4670e16           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │││       ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │││       ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │││       ││  0x00007f99a4670e3d:   data16 xchg %ax,%ax
   0.01%    │││       ││  0x00007f99a4670e40:   cmp    $0x3,%ecx
            │││ ╭     ││  0x00007f99a4670e43:   jle    0x00007f99a4670eb5
            │││ │     ││  0x00007f99a4670e49:   nopl   0x0(%rax)                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││ │     ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │││ │     ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.02%    │││ │    ↗││  0x00007f99a4670e50:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │││ │    │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │││ │    │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.59%    │││ │    │││  0x00007f99a4670e52:   mov    0x28(%rsp),%r11
            │││ │    │││  0x00007f99a4670e57:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │││ │    │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │││ │    │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.15%    │││ │    │││  0x00007f99a4670e5e:   xchg   %ax,%ax
            │││ │    │││  0x00007f99a4670e60:   test   %r8d,%r8d
            │││ │╭   │││  0x00007f99a4670e63:   jge    0x00007f99a4670ec8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││ ││   │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │││ ││   │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.04%    │││ ││   │││  0x00007f99a4670e69:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │││ ││   │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │││ ││   │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.45%    │││ ││   │││  0x00007f99a4670e6b:   mov    0xa8(%r11),%r8d              ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │││ ││   │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │││ ││   │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.13%    │││ ││   │││  0x00007f99a4670e72:   test   %r8d,%r8d
            │││ ││╭  │││  0x00007f99a4670e75:   jge    0x00007f99a4670ec8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││ │││  │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │││ │││  │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │││ │││  │││  0x00007f99a4670e7b:   pause                               ;*invokestatic onSpinWait {reexecute=0 rethrow=0 return_oop=0}
            │││ │││  │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@189 (line 1881)
            │││ │││  │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   5.31%    │││ │││  │││  0x00007f99a4670e7d:   mov    0xa8(%r11),%r11d             ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │││ │││  │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │││ │││  │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.14%    │││ │││  │││  0x00007f99a4670e84:   test   %r11d,%r11d
            │││ │││╭ │││  0x00007f99a4670e87:   jge    0x00007f99a4670ec8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │││ ││││ │││  0x00007f99a4670e8d:   pause                               ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@40 (line 1808)
   5.11%    │││ ││││ │││  0x00007f99a4670e8f:   mov    0x458(%r15),%r11
            │││ ││││ │││  0x00007f99a4670e96:   mov    0x28(%rsp),%r8
            │││ ││││ │││  0x00007f99a4670e9b:   mov    0xa8(%r8),%ebx               ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.14%    │││ ││││ │││  0x00007f99a4670ea2:   lea    -0x3(%rcx),%r8d              ; ImmutableOopMap {[0]=Oop [8]=Derived_oop_[0] [16]=Oop [40]=Oop }
            │││ ││││ │││                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │││ ││││ │││                                                            ; - (reexecute) java.util.concurrent.ForkJoinPool::awaitWork@192 (line 1881)
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.03%    │││ ││││ │││  0x00007f99a4670ea6:   test   %eax,(%r11)                  ;*getfield phase {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@173 (line 1880)
            │││ ││││ │││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │││ ││││ │││                                                            ;   {poll}
            │││ ││││ │││  0x00007f99a4670ea9:   test   %ebx,%ebx
            │││ ││││╭│││  0x00007f99a4670eab:   jge    0x00007f99a4670ec8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@178 (line 1880)
            │││ ││││││││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.00%    │││ ││││││││  0x00007f99a4670ead:   add    $0xfffffffc,%ecx             ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││││││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@181 (line 1880)
            │││ ││││││││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │││ ││││││││  0x00007f99a4670eb0:   cmp    $0x3,%ecx
            │││ │││││╰││  0x00007f99a4670eb3:   jg     0x00007f99a4670e50
   0.00%    │││ ↘││││ ││  0x00007f99a4670eb5:   test   %ecx,%ecx
            │││  ││││ ││  0x00007f99a4670eb7:   jg     0x00007f99a4670b4c
            │││  ││││ ││  0x00007f99a4670ebd:   data16 xchg %ax,%ax
            │││  ││││ ││  0x00007f99a4670ec0:   test   %ebx,%ebx
            │││  ││││ ││  0x00007f99a4670ec2:   jl     0x00007f99a4670b73           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            │││  ││││ ││                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@186 (line 1880)
            │││  ││││ ││                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
   0.06%    │↘↘  ↘↘↘↘ ││  0x00007f99a4670ec8:   mov    0x8(%rsp),%rbx
   0.04%    │         ╰│  0x00007f99a4670ecd:   jmp    0x00007f99a4670c93
   0.00%    │          │  0x00007f99a4670ed2:   mov    %r9,0x10(%rsp)
            │          │  0x00007f99a4670ed7:   movabs $0x7ffc027c8,%rsi            ;   {oop(a &apos;jdk/internal/misc/Unsafe&apos;{0x00000007ffc027c8})}
            │          │  0x00007f99a4670ee1:   xor    %edx,%edx
            │          │  0x00007f99a4670ee3:   xor    %ecx,%ecx
   0.00%    │          │  0x00007f99a4670ee5:   xchg   %ax,%ax
            │          │  0x00007f99a4670ee7:   call   0x00007f99a40c4380           ; ImmutableOopMap {[0]=Oop [8]=Derived_oop_[0] [16]=Oop [40]=Oop }
            │          │                                                            ;*invokevirtual park {reexecute=0 rethrow=0 return_oop=0}
            │          │                                                            ; - java.util.concurrent.locks.LockSupport::park@20 (line 371)
            │          │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
            │          │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │          │                                                            ;   {optimized virtual_call}
   0.00%    │          │  0x00007f99a4670eec:   nopl   0x60006dc(%rax,%rax,1)       ;*invokevirtual park {reexecute=0 rethrow=0 return_oop=0}
            │          │                                                            ; - java.util.concurrent.locks.LockSupport::park@20 (line 371)
            │          │                                                            ; - java.util.concurrent.ForkJoinPool::awaitWork@254 (line 1893)
            │          │                                                            ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
            │          │                                                            ;   {other}
   0.01%    │          ╰  0x00007f99a4670ef4:   jmp    0x00007f99a4670c54
   0.00%    ↘             0x00007f99a4670ef9:   mov    0x10(%rsp),%rsi
   0.00%                  0x00007f99a4670efe:   mov    $0x1,%edx
                          0x00007f99a4670f03:   call   0x00007f99a40c4380           ; ImmutableOopMap {[0]=Oop [8]=Derived_oop_[0] [16]=Oop [40]=Oop }
                                                                                    ;*invokevirtual hasTasks {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
                                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                                                                    ;   {optimized virtual_call}
                          0x00007f99a4670f08:   nopl   0x70006f8(%rax,%rax,1)       ;*invokevirtual hasTasks {reexecute=0 rethrow=0 return_oop=0}
                                                                                    ; - java.util.concurrent.ForkJoinPool::awaitWork@101 (line 1872)
                                                                                    ; - java.util.concurrent.ForkJoinPool::runWorker@45 (line 1809)
                                                                                    ;   {other}
                          0x00007f99a4670f10:   test   %eax,%eax
....................................................................................................
  25.29%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  13.92%  <total for region 2>

....[Hottest Regions]...............................................................................
  25.29%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 793 
  13.92%              kernel  [unknown] 
   6.41%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 901 
   6.20%              kernel  [unknown] 
   3.54%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   3.11%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 853 
   2.84%         c2, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 723 
   2.00%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 853 
   0.85%              kernel  [unknown] 
   0.85%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 853 
   0.83%              kernel  [unknown] 
   0.81%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.67%         c2, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 733 
   0.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 715 
   0.64%              kernel  [unknown] 
   0.63%              kernel  [unknown] 
   0.59%         c2, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 723 
   0.59%              kernel  [unknown] 
   0.54%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.52%           libjvm.so  SafepointMechanism::update_poll_values 
  28.52%  <...other 1272 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  37.23%              kernel  [unknown] 
  25.68%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 793 
   6.46%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 5, compile id 853 
   6.42%         c2, level 4  java.util.concurrent.ForkJoinPool::scan, version 9, compile id 901 
   3.54%         c2, level 4  java.lang.VirtualThread::runContinuation, version 2, compile id 723 
   3.54%        libc-2.31.so  __memmove_sse2_unaligned_erms 
   1.31%         c2, level 4  jdk.internal.vm.Continuation::run, version 2, compile id 724 
   1.12%         c2, level 4  java.lang.VirtualThread::yieldContinuation, version 2, compile id 733 
   0.93%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.81%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.70%           libjvm.so  freeze<Config<(oop_kind)0, G1BarrierSet> > 
   0.68%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark$RecursiveTask::recursive_run, version 2, compile id 715 
   0.60%           libjvm.so  SafepointMechanism::update_poll_values 
   0.44%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<4481126ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 4481126ul>::oop_access_barrier 
   0.42%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 286822ul>::oop_access_barrier 
   0.42%  libpthread-2.31.so  __pthread_mutex_lock 
   0.41%           libjvm.so  FreezeBase::freeze_fast_copy 
   0.41%           libjvm.so  G1CollectedHeap::requires_barriers 
   0.39%           libjvm.so  Thaw<Config<(oop_kind)0, G1BarrierSet> >::thaw_fast 
   7.83%  <...other 421 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  46.26%         c2, level 4
  37.23%              kernel
   8.02%           libjvm.so
   4.28%        libc-2.31.so
   3.07%  libpthread-2.31.so
   0.76%    Unknown, level 0
   0.16%        runtime stub
   0.08%          ld-2.31.so
   0.06%                    
   0.04%         interpreter
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%    perf-3143191.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls
# Parameters: (stackDepth = 1000, threadType = PLATFORM)

# Run progress: 87.50% complete, ETA 00:02:02
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6901.973 us/op
# Warmup Iteration   2: 6628.214 us/op
# Warmup Iteration   3: 6378.985 us/op
# Warmup Iteration   4: 6373.304 us/op
# Warmup Iteration   5: 6335.506 us/op
Iteration   1: 6337.824 us/op
Iteration   2: 6339.517 us/op
Iteration   3: 6318.169 us/op
Iteration   4: 6357.351 us/op
Iteration   5: 6323.755 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls":
  6335.323 ±(99.9%) 58.939 us/op [Average]
  (min, avg, max) = (6318.169, 6335.323, 6357.351), stdev = 15.306
  CI (99.9%): [6276.384, 6394.262] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.thread.VPThreadBlockingApiBenchmark.blocking_calls:asm":
PrintAssembly processed: 176703 total address lines.
Perf output processed (skipped 56.181 seconds):
 Column 1: cycles (116669 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  19.83%  <total for region 1>

....[Hottest Region 2]..............................................................................
kernel, [unknown] 

 <no assembly is recorded, native region>
....................................................................................................
  14.79%  <total for region 2>

....[Hottest Regions]...............................................................................
  19.83%              kernel  [unknown] 
  14.79%              kernel  [unknown] 
   8.91%              kernel  [unknown] 
   7.76%              kernel  [unknown] 
   2.77%              kernel  [unknown] 
   2.70%              kernel  [unknown] 
   2.17%              kernel  [unknown] 
   2.08%              kernel  [unknown] 
   1.65%              kernel  [unknown] 
   1.44%              kernel  [unknown] 
   1.27%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 714 
   1.21%              kernel  [unknown] 
   1.15%              kernel  [unknown] 
   1.09%              kernel  [unknown] 
   1.05%              kernel  [unknown] 
   1.03%              kernel  [unknown] 
   1.00%              kernel  [unknown] 
   0.97%              kernel  [unknown] 
   0.96%              kernel  [unknown] 
   0.95%              kernel  [unknown] 
  25.21%  <...other 1111 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.72%              kernel  [unknown] 
   1.93%         c2, level 4  java.util.concurrent.SynchronousQueue$TransferStack::transfer, version 4, compile id 714 
   1.04%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.73%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   0.56%  libpthread-2.31.so  __pthread_mutex_lock 
   0.52%           libjvm.so  Parker::park 
   0.38%           libjvm.so  Unsafe_Park 
   0.37%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<286822ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 286822ul>::oop_access_barrier 
   0.31%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<548964ul, G1BarrierSet>, (AccessInternal::BarrierType)2, 548964ul>::oop_access_barrier 
   0.31%  libpthread-2.31.so  __pthread_mutex_unlock 
   0.31%  libpthread-2.31.so  __pthread_mutex_trylock 
   0.23%           libjvm.so  java_lang_Thread::set_thread_status 
   0.20%    Unknown, level 0  jdk.internal.misc.Unsafe::park, version 1, compile id 592 
   0.17%           libjvm.so  Unsafe_Unpark 
   0.16%    Unknown, level 0  java.lang.Thread::yield0, version 1, compile id 574 
   0.16%           libjvm.so  FastThreadsListHandle::FastThreadsListHandle 
   0.14%  libpthread-2.31.so  __pthread_disable_asynccancel 
   0.14%        libc-2.31.so  __sched_yield 
   0.13%          ld-2.31.so  __tls_get_addr 
   0.11%  libpthread-2.31.so  __pthread_enable_asynccancel 
   1.39%  <...other 279 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.72%              kernel
   3.36%  libpthread-2.31.so
   2.84%           libjvm.so
   2.11%         c2, level 4
   0.47%    Unknown, level 0
   0.27%        libc-2.31.so
   0.14%          ld-2.31.so
   0.05%                    
   0.03%         interpreter
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%    perf-3143261.map
   0.00%         c1, level 1
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:16:05

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
VPThreadBlockingApiBenchmark.blocking_calls                 1       VIRTUAL  avgt    5    24.754 ±  0.179  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm             1       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls                 1      PLATFORM  avgt    5   147.174 ±  2.382  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm             1      PLATFORM  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls                10       VIRTUAL  avgt    5    43.807 ±  1.356  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm            10       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls                10      PLATFORM  avgt    5   219.687 ±  4.394  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm            10      PLATFORM  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls               100       VIRTUAL  avgt    5   186.846 ± 10.992  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm           100       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls               100      PLATFORM  avgt    5   945.752 ± 20.880  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm           100      PLATFORM  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls              1000       VIRTUAL  avgt    5  1490.501 ± 13.652  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm          1000       VIRTUAL  avgt            NaN             ---
VPThreadBlockingApiBenchmark.blocking_calls              1000      PLATFORM  avgt    5  6335.323 ± 58.939  us/op
VPThreadBlockingApiBenchmark.blocking_calls:asm          1000      PLATFORM  avgt            NaN             ---
