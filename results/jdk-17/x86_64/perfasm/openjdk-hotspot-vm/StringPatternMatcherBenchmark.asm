# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_find
# Parameters: (regexp = ^(.*[aeuio].*){3,}$)

# Run progress: 0.00% complete, ETA 00:05:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1903.919 us/op
# Warmup Iteration   2: 1654.275 us/op
# Warmup Iteration   3: 1639.939 us/op
# Warmup Iteration   4: 1642.467 us/op
# Warmup Iteration   5: 1656.377 us/op
Iteration   1: 1641.677 us/op
Iteration   2: 1641.162 us/op
Iteration   3: 1640.703 us/op
Iteration   4: 1640.308 us/op
Iteration   5: 1639.747 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_find":
  1640.719 ±(99.9%) 2.874 us/op [Average]
  (min, avg, max) = (1639.747, 1640.719, 1641.677), stdev = 0.746
  CI (99.9%): [1637.845, 1643.593] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_find:·asm":
PrintAssembly processed: 146696 total address lines.
Perf output processed (skipped 55.886 seconds):
 Column 1: cycles (50620 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 

                  0x00007f3304f73ebe:   mov    %ecx,%edx
                  0x00007f3304f73ec0:   jmp    0x00007f3304f73e6b
                  0x00007f3304f73ec2:   cmp    %r8d,%ecx
                  0x00007f3304f73ec5:   jge    0x00007f3304f74696           ;*synchronization entry
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                  0x00007f3304f73ecb:   jmp    0x00007f3304f745c9
   0.21%          0x00007f3304f73ed0:   mov    0x58(%rsp),%r9d
   0.75%          0x00007f3304f73ed5:   cmp    0x4c(%rsp),%r9d
   0.47%          0x00007f3304f73eda:   nopw   0x0(%rax,%rax,1)
   0.33%          0x00007f3304f73ee0:   jge    0x00007f3304f73951           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::charAt@1 (line 1512)
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          0x00007f3304f73ee6:   mov    0x10(%rdi),%edx              ;*synchronization entry
                                                                            ; - java.util.regex.Pattern$Loop::match@-1 (line 4870)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.43%          0x00007f3304f73ee9:   test   %ecx,%ecx
                  0x00007f3304f73eeb:   jne    0x00007f3304f766f4           ;*synchronization entry
                                                                            ; - java.lang.String::isLatin1@-1 (line 4549)
                                                                            ; - java.lang.String::charAt@1 (line 1512)
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%          0x00007f3304f73ef1:   mov    0xc(%r12,%rax,8),%ecx        ; implicit exception: dispatches to 0x00007f3304f7c0cc
                                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%          0x00007f3304f73ef6:   cmp    %ecx,%r9d
                  0x00007f3304f73ef9:   jae    0x00007f3304f76d10           ;*invokestatic lambda$DOT$4 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.09%          0x00007f3304f73eff:   lea    (%r12,%rax,8),%r13
   0.47%          0x00007f3304f73f03:   movzbl 0x10(%r13,%r9,1),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%          0x00007f3304f73f09:   mov    0x8(%r12,%rdx,8),%r11d       ; implicit exception: dispatches to 0x00007f3304f7c104
   0.20%          0x00007f3304f73f0e:   cmp    $0x26ade8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
                  0x00007f3304f73f15:   jne    0x00007f3304f7614c           ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          0x00007f3304f73f1b:   lea    (%r12,%rdx,8),%r11           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.42%          0x00007f3304f73f1f:   mov    0xc(%r11),%ebp               ;*synchronization entry
                                                                            ; - java.lang.Character::isLowSurrogate@-1 (line 8796)
                                                                            ; - java.lang.Character::codePointBefore@12 (line 9012)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%          0x00007f3304f73f23:   mov    0xc(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f3304f7c110
                                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   1.32%          0x00007f3304f73f28:   cmp    %r11d,%ebx
                  0x00007f3304f73f2b:   jae    0x00007f3304f7611c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
                                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.28%          0x00007f3304f73f31:   lea    (%r12,%rbp,8),%r11
   0.36%          0x00007f3304f73f35:   movzbl 0x10(%r11,%rbx,1),%ebx
   0.28%          0x00007f3304f73f3b:   test   %ebx,%ebx
   0.28%          0x00007f3304f73f3d:   data16 xchg %ax,%ax
   0.10%          0x00007f3304f73f40:   je     0x00007f3304f73949           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.57%          0x00007f3304f73f46:   mov    0xc(%rdi),%ebp               ;*synchronization entry
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.48%          0x00007f3304f73f49:   mov    0x8(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007f3304f7c394
   0.27%          0x00007f3304f73f4e:   cmp    $0x269bf8,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
                  0x00007f3304f73f54:   jne    0x00007f3304f77948           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          0x00007f3304f73f5a:   lea    (%r12,%rbp,8),%rdi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%          0x00007f3304f73f5e:   mov    0x30(%rsp),%r11d
   0.02%          0x00007f3304f73f63:   cmp    0x4c(%rsp),%r11d
          ╭       0x00007f3304f73f68:   jge    0x00007f3304f74088           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │       0x00007f3304f73f6e:   mov    %r11d,%ebx
   0.05%  │       0x00007f3304f73f71:   cmp    %ecx,%ebx
          │       0x00007f3304f73f73:   jae    0x00007f3304f782bc           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
          │                                                                 ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
          │                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.16%  │       0x00007f3304f73f79:   movslq %ecx,%r11
          │       0x00007f3304f73f7c:   nopl   0x0(%rax)
          │       0x00007f3304f73f80:   cmp    %r11,%r8
          │       0x00007f3304f73f83:   jae    0x00007f3304f782bc           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │       0x00007f3304f73f89:   mov    0x14(%rdi),%r8d              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::codePointBefore@15 (line 9012)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%  │       0x00007f3304f73f8d:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f3304f782bc
   0.11%  │       0x00007f3304f73f92:   data16 nopw 0x0(%rax,%rax,1)
          │       0x00007f3304f73f9c:   data16 data16 xchg %ax,%ax
   0.03%  │       0x00007f3304f73fa0:   cmp    $0xc39880,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$45+0x0000000800c39880&apos;)}
          │       0x00007f3304f73fa7:   jne    0x00007f3304f782bc           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.22%  │       0x00007f3304f73fad:   mov    0x58(%rsp),%ebp
          │       0x00007f3304f73fb1:   add    $0x2,%ebp
          │       0x00007f3304f73fb4:   cmp    0x4c(%rsp),%ebp
   0.05%  │       0x00007f3304f73fb8:   mov    0x4c(%rsp),%r11d
   0.16%  │       0x00007f3304f73fbd:   cmovg  %r11d,%ebp
          │       0x00007f3304f73fc1:   mov    $0xffffffff,%ebx
          │       0x00007f3304f73fc6:   sub    0x58(%rsp),%ebx              ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$Loop::match@2 (line 4870)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │       0x00007f3304f73fca:   mov    0x30(%rsp),%ecx              ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.StringLatin1::charAt@21 (line 50)
          │                                                                 ; - java.lang.String::charAt@12 (line 1513)
          │                                                                 ; - java.lang.Character::codePointBefore@5 (line 9011)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%  │ ↗     0x00007f3304f73fce:   movzbl 0x10(%r13,%rcx,1),%r8d
          │ │     0x00007f3304f73fd4:   mov    %ecx,%r11d
          │ │     0x00007f3304f73fd7:   inc    %r11d                        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@7 (line 47)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │ │     0x00007f3304f73fda:   nopw   0x0(%rax,%rax,1)
   0.19%  │ │     0x00007f3304f73fe0:   cmp    0x4c(%rsp),%r11d
          │ │     0x00007f3304f73fe5:   jg     0x00007f3304f78304           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@21 (line 50)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │ │     0x00007f3304f73feb:   cmp    $0xa,%r8d
          │ │     0x00007f3304f73fef:   je     0x00007f3304f7672c           ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │ │     0x00007f3304f73ff5:   cmp    $0xd,%r8d
          │ │     0x00007f3304f73ff9:   je     0x00007f3304f76794           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@21 (line 50)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%  │ │     0x00007f3304f73fff:   mov    %r8d,%edx
   0.19%  │ │     0x00007f3304f74002:   or     $0x1,%edx                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@7 (line 47)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │ │     0x00007f3304f74005:   cmp    $0x2029,%edx
          │ │     0x00007f3304f7400b:   je     0x00007f3304f767fc
   0.01%  │ │     0x00007f3304f74011:   cmp    $0x85,%r8d
          │ │     0x00007f3304f74018:   je     0x00007f3304f76868
   0.05%  │ │     0x00007f3304f7401e:   xchg   %ax,%ax
   0.16%  │ │     0x00007f3304f74020:   cmp    %ebp,%r11d
          │╭│     0x00007f3304f74023:   jge    0x00007f3304f7402a           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - java.lang.StringLatin1::charAt@21 (line 50)
          │││                                                               ; - java.lang.String::charAt@12 (line 1513)
          │││                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │││                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │││                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │││                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │││                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │││                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │││     0x00007f3304f74025:   mov    %r11d,%ecx
          ││╰     0x00007f3304f74028:   jmp    0x00007f3304f73fce
          │↘      0x00007f3304f7402a:   cmp    0x4c(%rsp),%r11d
          │       0x00007f3304f7402f:   jge    0x00007f3304f74be8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::codePointBefore@15 (line 9012)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │       0x00007f3304f74035:   jmp    0x00007f3304f74bbe
   0.09%  │       0x00007f3304f7403a:   movsbl 0x10(%r14),%edx              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.44%  │       0x00007f3304f7403f:   mov    %r8d,%ebx
   0.06%  │       0x00007f3304f74042:   dec    %ebx                         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │       0x00007f3304f74044:   test   %edx,%edx
          │       0x00007f3304f74046:   jne    0x00007f3304f77e54           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.StringLatin1::charAt@1 (line 47)
          │                                                                 ; - java.lang.String::charAt@12 (line 1513)
          │                                                                 ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%  │       0x00007f3304f7404c:   mov    0x14(%r14),%ebp              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$Loop::match@74 (line 4884)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.29%  │       0x00007f3304f74050:   mov    0xc(%r12,%rbp,8),%edx        ; implicit exception: dispatches to 0x00007f3304f7c340
   0.11%  │       0x00007f3304f74055:   cmp    %edx,%ebx
          │       0x00007f3304f74057:   jae    0x00007f3304f781b0           ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@1 (line 4787)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │       0x00007f3304f7405d:   mov    0x348(%r15),%rdx
   0.00%  │       0x00007f3304f74064:   mov    0x30(%rsp),%r8d
   0.30%  │       0x00007f3304f74069:   cmp    %ebx,%r8d
   0.06%  │       0x00007f3304f7406c:   cmovl  %ebx,%r8d
   0.06%  │       0x00007f3304f74070:   dec    %r11d                        ; ImmutableOopMap {rdi=Oop r14=Oop [0]=Oop [128]=Oop [136]=Oop }
          │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                                                                 ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@155 (line 4299)
          │                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │       0x00007f3304f74073:   test   %eax,(%rdx)                  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::charCount@3 (line 8862)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@27 (line 4274)
          │                                                                 ;   {poll}
   0.29%  │       0x00007f3304f74075:   cmp    %ecx,%r11d
          │       0x00007f3304f74078:   jl     0x00007f3304f77eb4           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │       0x00007f3304f7407e:   mov    %r8d,0xa4(%rsp)
   0.04%  │  ╭    0x00007f3304f74086:   jmp    0x00007f3304f740ba
   0.01%  ↘  │    0x00007f3304f74088:   mov    %r11d,%ecx
   0.01%     │    0x00007f3304f7408b:   xor    %r11d,%r11d
   0.01%     │╭   0x00007f3304f7408e:   jmp    0x00007f3304f7409a
             ││   0x00007f3304f74090:   add    %ebx,%ecx
             ││   0x00007f3304f74092:   mov    %ecx,%r11d
             ││   0x00007f3304f74095:   inc    %r11d                        ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - java.lang.String::charAt@1 (line 1512)
             ││                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
             ││                                                             ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                             ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             ││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             ││   0x00007f3304f74098:   mov    %eax,%ecx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             ││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             ││                                                             ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                             ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             ││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.20%     │↘   0x00007f3304f7409a:   mov    0x80(%rsp),%r8
             │    0x00007f3304f740a2:   movb   $0x1,0x30(%r8)               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.24%     │    0x00007f3304f740a7:   mov    0x10(%rdi),%ebp              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%     │    0x00007f3304f740aa:   cmp    %ebp,%r11d
             │    0x00007f3304f740ad:   jl     0x00007f3304f7839c           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%     │    0x00007f3304f740b3:   mov    %ecx,0xa4(%rsp)              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%     ↘    0x00007f3304f740ba:   mov    0xc(%rdi),%ebx               ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.Character::charCount@3 (line 8862)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@144 (line 4297)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%          0x00007f3304f740bd:   data16 xchg %ax,%ax
   0.10%          0x00007f3304f740c0:   mov    0x8(%r12,%rbx,8),%edx        ; implicit exception: dispatches to 0x00007f3304f7c208
                                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%          0x00007f3304f740c5:   lea    (%r12,%rbx,8),%rcx
                  0x00007f3304f740c9:   cmp    $0x1c4f90,%edx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
               ╭  0x00007f3304f740cf:   je     0x00007f3304f743ca           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@7 (line 1513)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.34%       │  0x00007f3304f740d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.12%       │  0x00007f3304f740e0:   cmp    $0x1c4b30,%edx               ;   {metadata(&apos;java/util/regex/Pattern$GroupTail&apos;)}
               │  0x00007f3304f740e6:   jne    0x00007f3304f77da4           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.26%       │  0x00007f3304f740ec:   mov    0x80(%rsp),%r8
   0.02%       │  0x00007f3304f740f4:   mov    0x40(%r8),%eax               ;*iconst_1 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.Character::charCount@10 (line 8862)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@144 (line 4297)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%       │  0x00007f3304f740f8:   mov    0x10(%rcx),%ebp              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%       │  0x00007f3304f740fb:   nopl   0x0(%rax,%rax,1)
   0.26%       │  0x00007f3304f74100:   mov    0xc(%r12,%rax,8),%edx        ; implicit exception: dispatches to 0x00007f3304f7c40c
               │                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.26%       │  0x00007f3304f74105:   cmp    %edx,%ebp
               │  0x00007f3304f74107:   jae    0x00007f3304f77bb4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.41%       │  0x00007f3304f7410d:   lea    (%r12,%rax,8),%r8
   0.11%       │  0x00007f3304f74111:   mov    0x10(%r8,%rbp,4),%ebx        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.24%       │  0x00007f3304f74116:   test   %ebx,%ebx
               │  0x00007f3304f74118:   jl     0x00007f3304f78500           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%       │  0x00007f3304f7411e:   vmovd  %ebx,%xmm0
   0.34%       │  0x00007f3304f74122:   mov    %r11d,0x68(%rsp)
   0.09%       │  0x00007f3304f74127:   mov    %rdi,0x60(%rsp)
   0.19%       │  0x00007f3304f7412c:   mov    %r9d,0x10(%rsp)
   0.00%       │  0x00007f3304f74131:   mov    %r14,0x58(%rsp)
   0.36%       │  0x00007f3304f74136:   mov    %r10d,0x18(%rsp)
   0.08%       │  0x00007f3304f7413b:   mov    %esi,0x8(%rsp)
   0.21%       │  0x00007f3304f7413f:   mov    0x14(%rcx),%r10d             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%       │  0x00007f3304f74143:   mov    %r10d,%r13d
   0.35%       │  0x00007f3304f74146:   mov    %rcx,0x70(%rsp)
   0.09%       │  0x00007f3304f7414b:   mov    0x80(%rsp),%r10
   0.20%       │  0x00007f3304f74153:   mov    0x38(%r10),%r10d             ;*invokestatic max {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f3304f74157:   mov    %r10d,%ecx
   0.37%       │  0x00007f3304f7415a:   nopw   0x0(%rax,%rax,1)
   0.09%       │  0x00007f3304f74160:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007f3304f7c418
               │                                                            ;*invokestatic lambda$DOT$4 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.25%       │  0x00007f3304f74165:   mov    %r13d,%r10d
   0.00%       │  0x00007f3304f74168:   cmp    %ebx,%r10d
               │  0x00007f3304f7416b:   jae    0x00007f3304f77c04           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.43%       │  0x00007f3304f74171:   inc    %r10d                        ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@38 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%       │  0x00007f3304f74174:   lea    (%r12,%rcx,8),%r9
   0.23%       │  0x00007f3304f74178:   mov    0x10(%r9,%r13,4),%r11d       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%       │  0x00007f3304f7417d:   mov    %r11d,0x6c(%rsp)
   0.46%       │  0x00007f3304f74182:   cmp    %ebx,%r10d
               │  0x00007f3304f74185:   jae    0x00007f3304f77c50           ;*synchronization entry
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.08%       │  0x00007f3304f7418b:   mov    0x70(%rsp),%r10
   0.30%       │  0x00007f3304f74190:   mov    0xc(%r10),%r10d              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@100 (line 4289)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%       │  0x00007f3304f74194:   mov    %r10d,%edi
   0.43%       │  0x00007f3304f74197:   movslq %r13d,%rcx
   0.10%       │  0x00007f3304f7419a:   mov    0x14(%r9,%rcx,4),%r10d       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%       │  0x00007f3304f7419f:   mov    %r10d,0x78(%rsp)
   0.00%       │  0x00007f3304f741a4:   mov    %r13d,%r10d
   0.37%       │  0x00007f3304f741a7:   vmovd  %xmm0,%r11d
   0.08%       │  0x00007f3304f741ac:   mov    %r11d,0x10(%r9,%r10,4)       ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.29%       │  0x00007f3304f741b1:   mov    0xa4(%rsp),%r11d
   0.01%       │  0x00007f3304f741b9:   mov    %r11d,0x14(%r9,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@73 (line 4881)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.39%       │  0x00007f3304f741be:   mov    %edi,%r10d
   0.07%       │  0x00007f3304f741c1:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f3304f7c428
   0.32%       │  0x00007f3304f741c6:   cmp    $0xc39ae0,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
               │  0x00007f3304f741cd:   jne    0x00007f3304f77df4           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%       │  0x00007f3304f741d3:   shl    $0x3,%r10                    ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.25%       │  0x00007f3304f741d7:   mov    %r10,0x90(%rsp)
   0.09%       │  0x00007f3304f741df:   mov    0x14(%r10),%ebp              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.24%       │  0x00007f3304f741e3:   cmp    %edx,%ebp
               │  0x00007f3304f741e5:   jae    0x00007f3304f77cac           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.18%       │  0x00007f3304f741eb:   mov    0x10(%r8,%rbp,4),%ebp        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   1.13%       │  0x00007f3304f741f0:   mov    0xa4(%rsp),%r10d
   0.05%       │  0x00007f3304f741f8:   cmp    %ebp,%r10d
   0.47%       │  0x00007f3304f741fb:   nopl   0x0(%rax,%rax,1)
   0.00%       │  0x00007f3304f74200:   jle    0x00007f3304f78554           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.43%       │  0x00007f3304f74206:   mov    0x90(%rsp),%r10
   0.05%       │  0x00007f3304f7420e:   mov    0x10(%r10),%r9d              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%       │  0x00007f3304f74212:   cmp    %edx,%r9d
               │  0x00007f3304f74215:   jae    0x00007f3304f77d2c           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.05%       │  0x00007f3304f7421b:   mov    0x10(%r8,%r9,4),%r10d        ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.84%       │  0x00007f3304f74220:   mov    %r10d,0x7c(%rsp)
   0.78%       │  0x00007f3304f74225:   mov    0x90(%rsp),%r10
   0.11%       │  0x00007f3304f7422d:   mov    0x18(%r10),%r10d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f3304f74231:   mov    0x7c(%rsp),%ecx
   0.60%       │  0x00007f3304f74235:   inc    %ecx                         ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.48%       │  0x00007f3304f74237:   mov    %ecx,0x40(%rsp)
   1.05%       │  0x00007f3304f7423b:   mov    0x7c(%rsp),%r11d
               │  0x00007f3304f74240:   cmp    %r10d,%r11d
               │  0x00007f3304f74243:   jge    0x00007f3304f75985           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@1 (line 1512)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%       │  0x00007f3304f74249:   mov    %ecx,0x10(%r8,%r9,4)         ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.59%       │  0x00007f3304f7424e:   mov    0x90(%rsp),%r10
   0.09%       │  0x00007f3304f74256:   mov    0x24(%r10),%ebp              ;*synchronization entry
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@-1 (line 4787)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f3304f7425a:   nopw   0x0(%rax,%rax,1)
   0.07%       │  0x00007f3304f74260:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f3304f7c434
   0.51%       │  0x00007f3304f74265:   cmp    $0x269088,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
               │  0x00007f3304f7426c:   jne    0x00007f3304f78038           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%       │  0x00007f3304f74272:   lea    (%r12,%rbp,8),%r10
               │  0x00007f3304f74276:   mov    %r10,0x98(%rsp)
   0.05%       │  0x00007f3304f7427e:   mov    0x10(%r10),%r10d             ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.48%       │  0x00007f3304f74282:   cmp    %edx,%r10d
               │  0x00007f3304f74285:   jae    0x00007f3304f77f08           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.12%       │  0x00007f3304f7428b:   mov    0x10(%r8,%r10,4),%r9d        ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.62%       │  0x00007f3304f74290:   mov    %r9d,0xa0(%rsp)
   0.79%       │  0x00007f3304f74298:   mov    0xa4(%rsp),%r11d
   0.18%       │  0x00007f3304f742a0:   mov    %r11d,0x10(%r8,%r10,4)       ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%       │  0x00007f3304f742a5:   mov    0x98(%rsp),%r10
               │  0x00007f3304f742ad:   mov    0xc(%r10),%ebp               ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@38 (line 4790)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.36%       │  0x00007f3304f742b1:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f3304f7c440
   1.05%       │  0x00007f3304f742b6:   data16 nopw 0x0(%rax,%rax,1)
   0.12%       │  0x00007f3304f742c0:   cmp    $0x269bf8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
               │  0x00007f3304f742c7:   jne    0x00007f3304f780b0
   0.33%       │  0x00007f3304f742cd:   lea    (%r12,%rbp,8),%rsi           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%       │  0x00007f3304f742d1:   mov    0x80(%rsp),%rdx
   0.16%       │  0x00007f3304f742d9:   mov    0xa4(%rsp),%ecx
   0.10%       │  0x00007f3304f742e0:   mov    %r14,%r8
   0.31%       │  0x00007f3304f742e3:   call   0x00007f3304f73720           ; ImmutableOopMap {[0]=Oop [88]=Oop [96]=Oop [112]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop }
               │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ;   {optimized virtual_call}
   0.47%       │  0x00007f3304f742e8:   mov    0x98(%rsp),%r10
   0.35%       │  0x00007f3304f742f0:   mov    0x10(%r10),%r11d             ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%       │  0x00007f3304f742f4:   mov    0x80(%rsp),%r10
   0.33%       │  0x00007f3304f742fc:   mov    0x40(%r10),%r9d              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.20%       │  0x00007f3304f74300:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f3304f7c45c
               │                                                            ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
               │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%       │  0x00007f3304f74305:   cmp    %r10d,%r11d
               │  0x00007f3304f74308:   jae    0x00007f3304f77fb8           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.10%       │  0x00007f3304f7430e:   lea    (%r12,%r9,8),%r8
   0.41%       │  0x00007f3304f74312:   mov    0xa0(%rsp),%ebx
   0.18%       │  0x00007f3304f74319:   mov    %ebx,0x10(%r8,%r11,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%       │  0x00007f3304f7431e:   xchg   %ax,%ax
   0.00%       │  0x00007f3304f74320:   test   %eax,%eax
               │  0x00007f3304f74322:   jne    0x00007f3304f7597b           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@1 (line 1512)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.34%       │  0x00007f3304f74328:   mov    0x90(%rsp),%r11
   0.11%       │  0x00007f3304f74330:   mov    0x10(%r11),%ebp              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%       │  0x00007f3304f74334:   cmp    %r10d,%ebp
               │  0x00007f3304f74337:   jae    0x00007f3304f7827c           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.00%       │  0x00007f3304f7433d:   mov    0x7c(%rsp),%r10d
   0.36%       │  0x00007f3304f74342:   mov    %r10d,0x10(%r8,%rbp,4)       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%       │  0x00007f3304f74347:   xor    %r11d,%r11d                  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%       │  0x00007f3304f7434a:   test   %r11d,%r11d
               │  0x00007f3304f7434d:   jne    0x00007f3304f74fe5           ;*invokestatic codePointAt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │  0x00007f3304f74353:   mov    0x80(%rsp),%r10
   0.37%       │  0x00007f3304f7435b:   mov    0x38(%r10),%r9d              ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%       │  0x00007f3304f7435f:   mov    0x70(%rsp),%r8
   0.10%       │  0x00007f3304f74364:   mov    0x14(%r8),%ecx               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f3304f74368:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f3304f7c46c
               │                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.59%       │  0x00007f3304f7436d:   cmp    %r11d,%ecx
               │  0x00007f3304f74370:   jae    0x00007f3304f78204           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.21%       │  0x00007f3304f74376:   lea    (%r12,%r9,8),%r10
   0.02%       │  0x00007f3304f7437a:   mov    0x6c(%rsp),%r8d
   0.00%       │  0x00007f3304f7437f:   mov    %r8d,0x10(%r10,%rcx,4)       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.58%       │  0x00007f3304f74384:   mov    %ecx,%ebp
   0.08%       │  0x00007f3304f74386:   inc    %ebp                         ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%       │  0x00007f3304f74388:   cmp    %r11d,%ebp
               │  0x00007f3304f7438b:   jae    0x00007f3304f78250           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.00%       │  0x00007f3304f74391:   movslq %ecx,%r11
   0.54%       │  0x00007f3304f74394:   mov    0x78(%rsp),%r9d
   0.11%       │  0x00007f3304f74399:   mov    %r9d,0x14(%r10,%r11,4)
   0.25%       │  0x00007f3304f7439e:   xor    %ecx,%ecx                    ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%       │  0x00007f3304f743a0:   mov    0x8(%rsp),%esi
   0.43%       │  0x00007f3304f743a4:   mov    0x18(%rsp),%r10d
   0.10%       │  0x00007f3304f743a9:   mov    0x58(%rsp),%r14
   0.15%       │  0x00007f3304f743ae:   mov    0x10(%rsp),%r9d
   0.03%       │  0x00007f3304f743b3:   mov    0x60(%rsp),%rdi
   0.48%       │  0x00007f3304f743b8:   mov    0x68(%rsp),%r11d
   0.10%       │  0x00007f3304f743bd:   mov    0xa4(%rsp),%r8d
   0.13%       │  0x00007f3304f743c5:   jmp    0x00007f3304f73932
               ↘  0x00007f3304f743ca:   mov    0x80(%rsp),%r8
                  0x00007f3304f743d2:   mov    0x10(%r8),%ebx
                  0x00007f3304f743d6:   mov    0xa4(%rsp),%r8d
                  0x00007f3304f743de:   xchg   %ax,%ax
                  0x00007f3304f743e0:   cmp    %ebx,%r8d
                  0x00007f3304f743e3:   jge    0x00007f3304f73924           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::charAt@4 (line 1512)
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
....................................................................................................
  45.30%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 

             0x00007f3304f73b42:   sub    0x20(%rsp),%r10d
             0x00007f3304f73b47:   inc    %r10d                        ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$Loop::match@169 (line 4905)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          ╭  0x00007f3304f73b4a:   jmp    0x00007f3304f73b5e
   0.11%  │  0x00007f3304f73b4c:   cmp    %r11d,%r10d
          │  0x00007f3304f73b4f:   jl     0x00007f3304f7836c           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
          │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │  0x00007f3304f73b55:   mov    %r8d,%r9d
   0.11%  │  0x00007f3304f73b58:   mov    %r10d,%r8d
   0.25%  │  0x00007f3304f73b5b:   mov    %r9d,%r10d                   ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%  ↘  0x00007f3304f73b5e:   mov    0x80(%rsp),%r11
   0.41%     0x00007f3304f73b66:   movb   $0x1,0x30(%r11)              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.46%     0x00007f3304f73b6b:   mov    (%rsp),%r11
   0.26%     0x00007f3304f73b6f:   mov    0x10(%r11),%ebp              ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%     0x00007f3304f73b73:   cmp    %ebp,%r10d
             0x00007f3304f73b76:   jl     0x00007f3304f766cc           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%     0x00007f3304f73b7c:   mov    0x88(%rsp),%r11
   0.28%     0x00007f3304f73b84:   mov    0x8(%r11),%r11d              ; implicit exception: dispatches to 0x00007f3304f760f4
   0.24%     0x00007f3304f73b88:   cmp    $0xeba0,%r11d                ;   {metadata(&apos;java/lang/String&apos;)}
             0x00007f3304f73b8f:   jne    0x00007f3304f760f4           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                       ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%     0x00007f3304f73b95:   mov    0x88(%rsp),%r14              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%     0x00007f3304f73b9d:   mov    %r8d,0x58(%rsp)              ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%     0x00007f3304f73ba2:   mov    (%rsp),%r11
   0.73%     0x00007f3304f73ba6:   mov    0xc(%r11),%r11d              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.35%     0x00007f3304f73baa:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f3304f7c06c
                                                                       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
                                                                       ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   1.37%     0x00007f3304f73baf:   mov    0x14(%r14),%eax              ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$Loop::match@64 (line 4881)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%     0x00007f3304f73bb3:   mov    0x80(%rsp),%r8
   0.65%     0x00007f3304f73bbb:   mov    0x10(%r8),%ecx               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%     0x00007f3304f73bbf:   mov    %ecx,0x4c(%rsp)
   0.40%     0x00007f3304f73bc3:   movsbl 0x10(%r14),%ecx              ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::charAt@12 (line 1513)
                                                                       ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%     0x00007f3304f73bc8:   lea    (%r12,%r11,8),%rdi
   0.62%     0x00007f3304f73bcc:   mov    0x58(%rsp),%ebx
   0.30%     0x00007f3304f73bd0:   inc    %ebx                         ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.44%     0x00007f3304f73bd2:   mov    %ebx,0x30(%rsp)
   0.19%     0x00007f3304f73bd6:   movslq 0x4c(%rsp),%r8
   0.79%     0x00007f3304f73bdb:   dec    %r8                          ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.48%     0x00007f3304f73bde:   xchg   %ax,%ax
   0.34%     0x00007f3304f73be0:   cmp    $0x1c4f90,%r9d               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
             0x00007f3304f73be7:   je     0x00007f3304f73ed0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::isLatin1@10 (line 4549)
                                                                       ; - java.lang.String::charAt@1 (line 1512)
                                                                       ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                       ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                       ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                       ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                       ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             0x00007f3304f73bed:   cmp    $0x1c4b30,%r9d               ;   {metadata(&apos;java/util/regex/Pattern$GroupTail&apos;)}
....................................................................................................
  10.36%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 

                 # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                 #           [sp+0x140]  (sp of caller)
                 0x00007f3304f73700:   mov    0x8(%rsi),%r10d
                 0x00007f3304f73704:   movabs $0x800000000,%r11
                 0x00007f3304f7370e:   add    %r11,%r10
                 0x00007f3304f73711:   cmp    %r10,%rax
                 0x00007f3304f73714:   jne    0x00007f33049fbd80           ;   {runtime_call ic_miss_stub}
                 0x00007f3304f7371a:   xchg   %ax,%ax
                 0x00007f3304f7371c:   nopl   0x0(%rax)
               [Verified Entry Point]
   0.27%         0x00007f3304f73720:   mov    %eax,-0x14000(%rsp)
   0.42%         0x00007f3304f73727:   push   %rbp
   0.11%         0x00007f3304f73728:   sub    $0x130,%rsp                  ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.25%         0x00007f3304f7372f:   mov    %rsi,(%rsp)
   0.39%         0x00007f3304f73733:   mov    %r8,0x88(%rsp)
   0.10%         0x00007f3304f7373b:   mov    %ecx,0x20(%rsp)
   0.14%         0x00007f3304f7373f:   mov    %rdx,0x80(%rsp)
   0.10%         0x00007f3304f73747:   mov    0x10(%rdx),%r11d             ; implicit exception: dispatches to 0x00007f3304f7c0c0
                                                                           ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupTail::match@28 (line 4816)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.32%         0x00007f3304f7374b:   cmp    %r11d,%ecx
                 0x00007f3304f7374e:   jge    0x00007f3304f73ab3           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%         0x00007f3304f73754:   mov    0x8(%r8),%r10d               ; implicit exception: dispatches to 0x00007f3304f76668
   0.15%         0x00007f3304f73758:   nopl   0x0(%rax,%rax,1)
   0.05%         0x00007f3304f73760:   cmp    $0xeba0,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
                 0x00007f3304f73767:   jne    0x00007f3304f76668           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%         0x00007f3304f7376d:   mov    %r8,%r9                      ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupTail::match@28 (line 4816)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%         0x00007f3304f73770:   cmpb   $0x0,0x10(%r9)
   0.17%         0x00007f3304f73775:   jne    0x00007f3304f76668           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%         0x00007f3304f7377b:   mov    0x14(%r9),%r8d               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%         0x00007f3304f7377f:   nop
   0.06%         0x00007f3304f73780:   mov    0xc(%r12,%r8,8),%ecx         ; implicit exception: dispatches to 0x00007f3304f76668
                                                                           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@102 (line 4893)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%         0x00007f3304f73785:   mov    0x20(%rsp),%ebx
   0.18%         0x00007f3304f73789:   cmp    %ecx,%ebx
                 0x00007f3304f7378b:   jae    0x00007f3304f76668           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
                                                                           ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.17%         0x00007f3304f73791:   movslq %ecx,%r10
   0.07%         0x00007f3304f73794:   movslq %r11d,%rcx
   0.14%         0x00007f3304f73797:   dec    %rcx
   0.05%         0x00007f3304f7379a:   nopw   0x0(%rax,%rax,1)
   0.18%         0x00007f3304f737a0:   cmp    %r10,%rcx
                 0x00007f3304f737a3:   jae    0x00007f3304f76668           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@102 (line 4893)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%         0x00007f3304f737a9:   mov    0x14(%rsi),%ecx              ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%         0x00007f3304f737ac:   mov    0x8(%r12,%rcx,8),%r10d       ; implicit exception: dispatches to 0x00007f3304f76668
   0.11%         0x00007f3304f737b1:   cmp    $0xc39880,%r10d              ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$45+0x0000000800c39880&apos;)}
                 0x00007f3304f737b8:   jne    0x00007f3304f76668           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%         0x00007f3304f737be:   lea    (%r12,%r8,8),%rdx
   0.05%         0x00007f3304f737c2:   mov    %ebx,%eax
   0.19%         0x00007f3304f737c4:   inc    %eax
   0.07%         0x00007f3304f737c6:   cmp    %r11d,%eax
   0.21%         0x00007f3304f737c9:   cmovg  %r11d,%eax
   0.05%         0x00007f3304f737cd:   mov    %ebx,%r10d
   0.12%         0x00007f3304f737d0:   xor    %esi,%esi
   0.05%   ↗     0x00007f3304f737d2:   movzbl 0x10(%rdx,%r10,1),%ecx
   0.21%   │     0x00007f3304f737d8:   mov    %r10d,%r8d
   0.06%   │     0x00007f3304f737db:   inc    %r8d
   0.13%   │     0x00007f3304f737de:   xchg   %ax,%ax
   0.04%   │     0x00007f3304f737e0:   cmp    %r11d,%r8d
           │     0x00007f3304f737e3:   jg     0x00007f3304f76690
   0.18%   │     0x00007f3304f737e9:   cmp    $0xa,%ecx
           │     0x00007f3304f737ec:   je     0x00007f3304f75e3c
   0.06%   │     0x00007f3304f737f2:   cmp    $0xd,%ecx
           │     0x00007f3304f737f5:   je     0x00007f3304f75e78
   0.16%   │     0x00007f3304f737fb:   mov    %ecx,%edi
   0.06%   │     0x00007f3304f737fd:   or     $0x1,%edi                    ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
           │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%   │     0x00007f3304f73800:   cmp    $0x2029,%edi
           │     0x00007f3304f73806:   je     0x00007f3304f75eb4           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%   │     0x00007f3304f7380c:   cmp    $0x85,%ecx
           │     0x00007f3304f73812:   je     0x00007f3304f75ef4           ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
           │                                                               ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
           │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%   │     0x00007f3304f73818:   cmp    %eax,%r8d
          ╭│     0x00007f3304f7381b:   jge    0x00007f3304f73822           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          ││                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          ││                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          ││                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          ││                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          ││                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          ││     0x00007f3304f7381d:   mov    %r8d,%r10d
          │╰     0x00007f3304f73820:   jmp    0x00007f3304f737d2
   0.06%  ↘      0x00007f3304f73822:   cmp    %r11d,%r8d
                 0x00007f3304f73825:   jge    0x00007f3304f73ac5           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                           ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%    ╭    0x00007f3304f7382b:   jmp    0x00007f3304f738a2
   0.04%    │↗   0x00007f3304f73830:   mov    %r10d,%r8d                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
            ││                                                             ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            ││                                                             ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            ││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%    ││↗  0x00007f3304f73833:   movzbl 0x10(%rdx,%r8,1),%ecx        ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.lang.Character::codePointAt@0 (line 8910)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.45%    │││  0x00007f3304f73839:   cmp    $0xa,%ecx
   0.01%    │││  0x00007f3304f7383c:   nopl   0x0(%rax)
   0.00%    │││  0x00007f3304f73840:   je     0x00007f3304f75e3f           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%    │││  0x00007f3304f73846:   cmp    $0xd,%ecx
            │││  0x00007f3304f73849:   je     0x00007f3304f75e7b           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.36%    │││  0x00007f3304f7384f:   mov    %ecx,%edi
   0.00%    │││  0x00007f3304f73851:   or     $0x1,%edi                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%    │││  0x00007f3304f73854:   nopl   0x0(%rax,%rax,1)
   0.17%    │││  0x00007f3304f7385c:   data16 data16 xchg %ax,%ax
   0.40%    │││  0x00007f3304f73860:   cmp    $0x2029,%edi
            │││  0x00007f3304f73866:   je     0x00007f3304f75eb7           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%    │││  0x00007f3304f7386c:   cmp    $0x85,%ecx
            │││  0x00007f3304f73872:   je     0x00007f3304f75ef7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
            │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%    │││  0x00007f3304f73878:   mov    %r8d,%r10d
   0.16%    │││  0x00007f3304f7387b:   inc    %r10d                        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
            │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.35%    │││  0x00007f3304f7387e:   xchg   %ax,%ax
   0.00%    │││  0x00007f3304f73880:   cmp    %ebx,%r10d
            │╰│  0x00007f3304f73883:   jl     0x00007f3304f73830           ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - java.util.regex.Pattern$GroupHead::match@1 (line 4787)
            │ │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │ │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
            │ │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
            │ │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
            │ │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
            │ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%    │ │  0x00007f3304f73885:   mov    0x348(%r15),%rcx
   0.31%    │ │  0x00007f3304f7388c:   sub    0x20(%rsp),%r8d
   0.13%    │ │  0x00007f3304f73891:   inc    %r8d                         ; ImmutableOopMap {r9=Oop rdx=Oop [0]=Oop [128]=Oop [136]=Oop }
            │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
            │ │                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@83 (line 4285)
   0.04%    │ │  0x00007f3304f73894:   test   %eax,(%rcx)                  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - java.lang.Character::charCount@3 (line 8862)
            │ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@27 (line 4274)
            │ │                                                            ;   {poll}
   0.17%    │ │  0x00007f3304f73896:   cmp    %r11d,%r10d
            │ │  0x00007f3304f73899:   jge    0x00007f3304f73ad8           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
            │ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
            │ │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
            │ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
            │ │  0x00007f3304f7389f:   mov    %r10d,%r8d
   0.16%    ↘ │  0x00007f3304f738a2:   mov    %r11d,%ebx
              │  0x00007f3304f738a5:   sub    %r8d,%ebx
              │  0x00007f3304f738a8:   cmp    %r8d,%r11d
   0.08%      │  0x00007f3304f738ab:   cmovl  %esi,%ebx                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
              │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
              │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.15%      │  0x00007f3304f738ae:   cmp    $0x3e8,%ebx
              │  0x00007f3304f738b4:   mov    $0x3e8,%ecx
              │  0x00007f3304f738b9:   cmova  %ecx,%ebx
   0.24%      │  0x00007f3304f738bc:   add    %r8d,%ebx
              │  0x00007f3304f738bf:   nop
              ╰  0x00007f3304f738c0:   jmp    0x00007f3304f73833
                 0x00007f3304f738c5:   mov    %rax,-0x8(%rsp)
                 0x00007f3304f738ca:   mov    0x8(%rsp),%eax
                 0x00007f3304f738ce:   mov    %eax,0x20(%rsp)
                 0x00007f3304f738d2:   mov    -0x8(%rsp),%rax
                 0x00007f3304f738d7:   mov    %rbp,(%rsp)
                 0x00007f3304f738db:   mov    0xc(%rsp),%esi
                 0x00007f3304f738df:   mov    0x24(%rsp),%r10d
                 0x00007f3304f738e4:   mov    0x28(%rsp),%r14
....................................................................................................
  10.22%  <total for region 3>

....[Hottest Regions]...............................................................................
  45.30%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
  10.36%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
  10.22%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   8.14%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   3.80%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 535 
   3.38%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 535 
   2.62%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   2.42%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   2.16%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   2.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 553 
   1.46%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   1.17%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   0.87%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   0.81%         c2, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 545 
   0.68%         c2, level 4  java.util.regex.IntHashSet::add, version 2, compile id 546 
   0.40%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   0.39%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 535 
   0.38%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   0.34%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 535 
   0.27%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 535 
   2.70%  <...other 391 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.08%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   8.35%         c2, level 4  java.util.regex.Matcher::search, version 4, compile id 535 
   5.85%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   2.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 553 
   1.38%              kernel  [unknown] 
   0.81%         c2, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 545 
   0.68%         c2, level 4  java.util.regex.IntHashSet::add, version 2, compile id 546 
   0.17%         c2, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 547 
   0.06%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%        libc-2.31.so  _int_realloc 
   0.01%         interpreter  return entry points  
   0.34%  <...other 121 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.05%         c2, level 4
   1.38%              kernel
   0.30%           libjvm.so
   0.09%        libc-2.31.so
   0.06%                    
   0.04%         interpreter
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%     perf-111941.map
   0.00%              [vdso]
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches
# Parameters: (regexp = ^(.*[aeuio].*){3,}$)

# Run progress: 33.33% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2010.060 us/op
# Warmup Iteration   2: 1684.205 us/op
# Warmup Iteration   3: 1682.473 us/op
# Warmup Iteration   4: 1657.168 us/op
# Warmup Iteration   5: 1693.505 us/op
Iteration   1: 1685.844 us/op
Iteration   2: 1678.678 us/op
Iteration   3: 1679.875 us/op
Iteration   4: 1681.067 us/op
Iteration   5: 1670.610 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches":
  1679.215 ±(99.9%) 21.278 us/op [Average]
  (min, avg, max) = (1670.610, 1679.215, 1685.844), stdev = 5.526
  CI (99.9%): [1657.937, 1700.493] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches:·asm":
PrintAssembly processed: 146925 total address lines.
Perf output processed (skipped 55.815 seconds):
 Column 1: cycles (50619 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 

              0x00007febb8f75545:   jge    0x00007febb8f7554c
              0x00007febb8f75547:   mov    %r9d,%r11d
              0x00007febb8f7554a:   jmp    0x00007febb8f754ee
              0x00007febb8f7554c:   add    %edx,%r11d
              0x00007febb8f7554f:   inc    %r11d                        ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.IntHashSet::add@21 (line 62)
                                                                        ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          ╭   0x00007febb8f75552:   jmp    0x00007febb8f75568
   0.10%  │   0x00007febb8f75554:   cmp    0x34(%rsp),%r11d
          │   0x00007febb8f75559:   jl     0x00007febb8f7af24           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Dollar::match@47 (line 3794)
          │                                                             ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
          │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │   0x00007febb8f7555f:   mov    %r11d,%r8d
   0.09%  │   0x00007febb8f75562:   mov    %r9d,%r11d
          │   0x00007febb8f75565:   mov    %r8d,%r9d                    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.IntHashSet::add@59 (line 67)
          │                                                             ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                             ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                             ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%  ↘   0x00007febb8f75568:   mov    0x98(%rsp),%r8
              0x00007febb8f75570:   movb   $0x1,0x30(%r8)               ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                        ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%      0x00007febb8f75575:   mov    0x50(%rsp),%r8
   0.03%      0x00007febb8f7557a:   mov    0x10(%r8),%ebp               ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Loop::match@133 (line 4897)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%      0x00007febb8f7557e:   xchg   %ax,%ax
              0x00007febb8f75580:   cmp    %ebp,%r11d
              0x00007febb8f75583:   jl     0x00007febb8f7a524           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%      0x00007febb8f75589:   mov    %r9d,0x90(%rsp)              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%      0x00007febb8f75591:   mov    0x50(%rsp),%r8
   0.33%      0x00007febb8f75596:   mov    0xc(%r8),%ebx                ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::charAt@12 (line 1513)
                                                                        ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%      0x00007febb8f7559a:   nopw   0x0(%rax,%rax,1)
   0.21%      0x00007febb8f755a0:   mov    0x8(%r12,%rbx,8),%edx        ; implicit exception: dispatches to 0x00007febb8f7f3dc
                                                                        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.40%      0x00007febb8f755a5:   mov    0x90(%rsp),%ecx
   0.25%      0x00007febb8f755ac:   dec    %ecx                         ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%      0x00007febb8f755ae:   lea    (%r12,%rbx,8),%r8
   0.16%      0x00007febb8f755b2:   mov    0x90(%rsp),%edi
   0.20%      0x00007febb8f755b9:   inc    %edi                         ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%      0x00007febb8f755bb:   nopl   0x0(%rax,%rax,1)
   0.02%      0x00007febb8f755c0:   cmp    $0x1c4f90,%edx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
           ╭  0x00007febb8f755c6:   je     0x00007febb8f758a8           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@47 (line 3954)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%   │  0x00007febb8f755cc:   cmp    $0x1c4b30,%edx               ;   {metadata(&apos;java/util/regex/Pattern$GroupTail&apos;)}
           │  0x00007febb8f755d2:   jne    0x00007febb8f79ef0           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%   │  0x00007febb8f755d8:   mov    0x98(%rsp),%r9
   0.29%   │  0x00007febb8f755e0:   mov    0x40(%r9),%edx               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.IntHashSet::contains@37 (line 51)
           │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%   │  0x00007febb8f755e4:   mov    0x10(%r8),%ebp               ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@135 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%   │  0x00007febb8f755e8:   mov    0xc(%r12,%rdx,8),%r9d        ; implicit exception: dispatches to 0x00007febb8f7f5e4
           │                                                            ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@41 (line 4818)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%   │  0x00007febb8f755ed:   cmp    %r9d,%ebp
           │  0x00007febb8f755f0:   jae    0x00007febb8f79cd1           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.36%   │  0x00007febb8f755f6:   lea    (%r12,%rdx,8),%rbx
   0.01%   │  0x00007febb8f755fa:   mov    0x10(%rbx,%rbp,4),%eax       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.56%   │  0x00007febb8f755fe:   xchg   %ax,%ax
   0.05%   │  0x00007febb8f75600:   test   %eax,%eax
           │  0x00007febb8f75602:   jl     0x00007febb8f7a9c0           ;*synchronization entry
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.43%   │  0x00007febb8f75608:   vmovd  %edx,%xmm1
   0.00%   │  0x00007febb8f7560c:   mov    %edi,0x14(%rsp)
   0.12%   │  0x00007febb8f75610:   mov    %ecx,0x10(%rsp)
   0.03%   │  0x00007febb8f75614:   mov    %r11d,0x60(%rsp)
   0.43%   │  0x00007febb8f75619:   mov    %r13,0x58(%rsp)
   0.01%   │  0x00007febb8f7561e:   mov    %r14d,0xc(%rsp)
   0.11%   │  0x00007febb8f75623:   mov    %r10d,0x24(%rsp)
   0.06%   │  0x00007febb8f75628:   mov    %esi,0x8(%rsp)
   0.45%   │  0x00007febb8f7562c:   mov    0x14(%r8),%r10d              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%   │  0x00007febb8f75630:   mov    %r10d,%edi
   0.11%   │  0x00007febb8f75633:   mov    %r8,0x68(%rsp)
   0.07%   │  0x00007febb8f75638:   mov    0x98(%rsp),%r10
   0.47%   │  0x00007febb8f75640:   mov    0x38(%r10),%r10d             ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.IntHashSet::contains@39 (line 51)
           │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%   │  0x00007febb8f75644:   mov    %r10d,%r13d
   0.14%   │  0x00007febb8f75647:   mov    0xc(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007febb8f7f5f0
           │                                                            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%   │  0x00007febb8f7564c:   mov    %edi,%r10d
   0.44%   │  0x00007febb8f7564f:   cmp    %ecx,%r10d
           │  0x00007febb8f75652:   jae    0x00007febb8f79d34           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.02%   │  0x00007febb8f75658:   inc    %r10d                        ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%   │  0x00007febb8f7565b:   lea    (%r12,%r13,8),%r8
   0.07%   │  0x00007febb8f7565f:   mov    0x10(%r8,%rdi,4),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.49%   │  0x00007febb8f75664:   mov    %r11d,0x70(%rsp)
   0.05%   │  0x00007febb8f75669:   cmp    %ecx,%r10d
           │  0x00007febb8f7566c:   jae    0x00007febb8f79d8c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.11%   │  0x00007febb8f75672:   mov    0x68(%rsp),%r10
   0.11%   │  0x00007febb8f75677:   mov    0xc(%r10),%r10d              ;*iload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.StringLatin1::charAt@0 (line 47)
           │                                                            ; - java.lang.String::charAt@12 (line 1513)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.46%   │  0x00007febb8f7567b:   mov    %r10d,%edx
   0.03%   │  0x00007febb8f7567e:   movslq %edi,%rcx
   0.11%   │  0x00007febb8f75681:   mov    0x14(%r8,%rcx,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%   │  0x00007febb8f75686:   mov    %r10d,0x74(%rsp)
   0.45%   │  0x00007febb8f7568b:   mov    %edi,%r10d
   0.04%   │  0x00007febb8f7568e:   mov    %eax,0x10(%r8,%r10,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.24%   │  0x00007febb8f75693:   mov    0x90(%rsp),%r11d
   0.06%   │  0x00007febb8f7569b:   mov    %r11d,0x14(%r8,%rcx,4)       ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.45%   │  0x00007febb8f756a0:   mov    %edx,%r10d
   0.02%   │  0x00007febb8f756a3:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007febb8f7f5fc
   0.44%   │  0x00007febb8f756a8:   cmp    $0xc39ae0,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
           │  0x00007febb8f756af:   jne    0x00007febb8f79f40           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%   │  0x00007febb8f756b5:   shl    $0x3,%r10                    ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%   │  0x00007febb8f756b9:   mov    %r10,0x78(%rsp)
   0.01%   │  0x00007febb8f756be:   mov    0x14(%r10),%ebp              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%   │  0x00007febb8f756c2:   cmp    %r9d,%ebp
           │  0x00007febb8f756c5:   jae    0x00007febb8f79df0           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@18 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.29%   │  0x00007febb8f756cb:   mov    0x10(%rbx,%rbp,4),%ebp       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   1.48%   │  0x00007febb8f756cf:   mov    0x90(%rsp),%r11d
   0.00%   │  0x00007febb8f756d7:   cmp    %ebp,%r11d
   0.53%   │  0x00007febb8f756da:   nopw   0x0(%rax,%rax,1)
   0.03%   │  0x00007febb8f756e0:   jle    0x00007febb8f7aa14           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.53%   │  0x00007febb8f756e6:   mov    0x10(%r10),%r8d              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%   │  0x00007febb8f756ea:   cmp    %r9d,%r8d
           │  0x00007febb8f756ed:   jae    0x00007febb8f79e70           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@18 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.07%   │  0x00007febb8f756f3:   mov    0x10(%rbx,%r8,4),%r10d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%   │  0x00007febb8f756f8:   mov    %r10d,0x80(%rsp)
   0.55%   │  0x00007febb8f75700:   mov    0x78(%rsp),%r10
   0.03%   │  0x00007febb8f75705:   mov    0x24(%r10),%r13d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@107 (line 4894)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%   │  0x00007febb8f75709:   mov    0x18(%r10),%r10d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%   │  0x00007febb8f7570d:   mov    0x80(%rsp),%r11d
   0.58%   │  0x00007febb8f75715:   inc    %r11d                        ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.32%   │  0x00007febb8f75718:   mov    0x80(%rsp),%edi
   0.09%   │  0x00007febb8f7571f:   nop
   0.02%   │  0x00007febb8f75720:   cmp    %r10d,%edi
           │  0x00007febb8f75723:   jge    0x00007febb8f772ef           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.44%   │  0x00007febb8f75729:   mov    %r11d,0x10(%rbx,%r8,4)
   0.63%   │  0x00007febb8f7572e:   mov    0x8(%r12,%r13,8),%r11d       ; implicit exception: dispatches to 0x00007febb8f7f608
   0.16%   │  0x00007febb8f75733:   nopw   0x0(%rax,%rax,1)
   0.02%   │  0x00007febb8f7573c:   data16 data16 xchg %ax,%ax
   0.06%   │  0x00007febb8f75740:   cmp    $0x269088,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
           │  0x00007febb8f75747:   jne    0x00007febb8f7a160           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.49%   │  0x00007febb8f7574d:   lea    (%r12,%r13,8),%r10           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%   │  0x00007febb8f75751:   mov    %r10,0x88(%rsp)
   0.02%   │  0x00007febb8f75759:   mov    0x10(%r10),%r10d             ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@1 (line 4787)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%   │  0x00007febb8f7575d:   data16 xchg %ax,%ax
   0.44%   │  0x00007febb8f75760:   cmp    %r9d,%r10d
           │  0x00007febb8f75763:   jae    0x00007febb8f7a03c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@18 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.11%   │  0x00007febb8f75769:   mov    0x10(%rbx,%r10,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   1.25%   │  0x00007febb8f7576e:   mov    %r8d,0x84(%rsp)
   1.16%   │  0x00007febb8f75776:   mov    0x90(%rsp),%r11d
   0.01%   │  0x00007febb8f7577e:   mov    %r11d,0x10(%rbx,%r10,4)      ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.47%   │  0x00007febb8f75783:   mov    0x88(%rsp),%r10
   0.00%   │  0x00007febb8f7578b:   mov    0xc(%r10),%ebp               ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@121 (line 4897)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.43%   │  0x00007febb8f7578f:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007febb8f7f614
   0.30%   │  0x00007febb8f75794:   nopl   0x0(%rax,%rax,1)
   0.13%   │  0x00007febb8f7579c:   data16 data16 xchg %ax,%ax
   0.00%   │  0x00007febb8f757a0:   cmp    $0x269bf8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
           │  0x00007febb8f757a7:   jne    0x00007febb8f7a1dc
   0.43%   │  0x00007febb8f757ad:   lea    (%r12,%rbp,8),%rsi           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.String::charAt@4 (line 1512)
           │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%   │  0x00007febb8f757b1:   mov    0x98(%rsp),%rdx
   0.15%   │  0x00007febb8f757b9:   mov    0x90(%rsp),%ecx
           │  0x00007febb8f757c0:   mov    0x58(%rsp),%r8
   0.50%   │  0x00007febb8f757c5:   xchg   %ax,%ax
   0.01%   │  0x00007febb8f757c7:   call   0x00007febb8f74b20           ; ImmutableOopMap {[0]=Oop [80]=Oop [88]=Oop [104]=Oop [120]=Oop [136]=Oop [152]=Oop [160]=Oop }
           │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ;   {optimized virtual_call}
   0.33%   │  0x00007febb8f757cc:   mov    0x88(%rsp),%r10
   0.47%   │  0x00007febb8f757d4:   mov    0x10(%r10),%r8d              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.62%   │  0x00007febb8f757d8:   mov    0x98(%rsp),%r10
   0.32%   │  0x00007febb8f757e0:   mov    0x40(%r10),%r9d              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Loop::match@107 (line 4894)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%   │  0x00007febb8f757e4:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007febb8f7f62c
           │                                                            ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@34 (line 4790)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.62%   │  0x00007febb8f757e9:   cmp    %r10d,%r8d
           │  0x00007febb8f757ec:   jae    0x00007febb8f7a0d4           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.36%   │  0x00007febb8f757f2:   lea    (%r12,%r9,8),%r11
   0.25%   │  0x00007febb8f757f6:   mov    0x84(%rsp),%ebx
           │  0x00007febb8f757fd:   mov    %ebx,0x10(%r11,%r8,4)        ;*synchronization entry
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.20%   │  0x00007febb8f75802:   test   %eax,%eax
           │  0x00007febb8f75804:   jne    0x00007febb8f772e7           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%   │  0x00007febb8f7580a:   mov    0x78(%rsp),%r8
   0.25%   │  0x00007febb8f7580f:   mov    0x10(%r8),%ebp               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%   │  0x00007febb8f75813:   cmp    %r10d,%ebp
           │  0x00007febb8f75816:   jae    0x00007febb8f7a38c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
           │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.21%   │  0x00007febb8f7581c:   mov    0x80(%rsp),%r10d
   0.17%   │  0x00007febb8f75824:   mov    %r10d,0x10(%r11,%rbp,4)      ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.29%   │  0x00007febb8f75829:   xor    %r10d,%r10d                  ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%   │  0x00007febb8f7582c:   mov    0x90(%rsp),%r9d              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%   │  0x00007febb8f75834:   test   %r10d,%r10d
           │  0x00007febb8f75837:   jne    0x00007febb8f7649e           ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@1 (line 4811)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%   │  0x00007febb8f7583d:   mov    0x98(%rsp),%r10
   0.26%   │  0x00007febb8f75845:   mov    0x38(%r10),%r8d              ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.IntHashSet::contains@15 (line 48)
           │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%   │  0x00007febb8f75849:   mov    0x68(%rsp),%r10
   0.14%   │  0x00007febb8f7584e:   mov    0x14(%r10),%ebx              ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.IntHashSet::contains@18 (line 49)
           │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.22%   │  0x00007febb8f75852:   mov    0xc(%r12,%r8,8),%ecx         ; implicit exception: dispatches to 0x00007febb8f7f63c
           │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.44%   │  0x00007febb8f75857:   cmp    %ecx,%ebx
           │  0x00007febb8f75859:   jae    0x00007febb8f7a3ec           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.13%   │  0x00007febb8f7585f:   lea    (%r12,%r8,8),%r10
   0.03%   │  0x00007febb8f75863:   mov    0x70(%rsp),%edi
   0.21%   │  0x00007febb8f75867:   mov    %edi,0x10(%r10,%rbx,4)       ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$Dollar::match@205 (line 3831)
           │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.65%   │  0x00007febb8f7586c:   mov    %ebx,%ebp
           │  0x00007febb8f7586e:   inc    %ebp                         ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.IntHashSet::contains@15 (line 48)
           │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%   │  0x00007febb8f75870:   cmp    %ecx,%ebp
           │  0x00007febb8f75872:   jae    0x00007febb8f7a438           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.18%   │  0x00007febb8f75878:   movslq %ebx,%r11
   0.42%   │  0x00007febb8f7587b:   mov    0x74(%rsp),%r8d
           │  0x00007febb8f75880:   mov    %r8d,0x14(%r10,%r11,4)       ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.String::charAt@1 (line 1512)
           │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%   │  0x00007febb8f75885:   xor    %ebx,%ebx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
           │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
           │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%   │  0x00007febb8f75887:   mov    0x8(%rsp),%esi
   0.36%   │  0x00007febb8f7588b:   mov    0x24(%rsp),%r10d
   0.01%   │  0x00007febb8f75890:   mov    0xc(%rsp),%r14d
   0.13%   │  0x00007febb8f75895:   mov    0x58(%rsp),%r13
   0.19%   │  0x00007febb8f7589a:   mov    0x60(%rsp),%r11d
   0.31%   │  0x00007febb8f7589f:   mov    0x10(%rsp),%ecx
   0.00%   │  0x00007febb8f758a3:   jmp    0x00007febb8f74d2e
           ↘  0x00007febb8f758a8:   mov    0x98(%rsp),%r9
              0x00007febb8f758b0:   mov    0x10(%r9),%ebx
              0x00007febb8f758b4:   mov    0x90(%rsp),%r9d
              0x00007febb8f758bc:   nopl   0x0(%rax)
              0x00007febb8f758c0:   cmp    %ebx,%r9d
              0x00007febb8f758c3:   jge    0x00007febb8f74d1f           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                        ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                        ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                        ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
....................................................................................................
  32.75%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 

                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                0x00007febb8f752b1:   mov    %edi,%edx
                0x00007febb8f752b3:   jmp    0x00007febb8f7525a
                0x00007febb8f752b5:   cmp    %r10d,%edi
                0x00007febb8f752b8:   jge    0x00007febb8f75b9a           ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                0x00007febb8f752be:   xchg   %ax,%ax
                0x00007febb8f752c0:   jmp    0x00007febb8f75ac1
   0.58%        0x00007febb8f752c5:   mov    0x64(%rsp),%r8d
   0.23%        0x00007febb8f752ca:   cmp    %r11d,%r8d
                0x00007febb8f752cd:   jge    0x00007febb8f74d51           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                          ; - java.lang.String::charAt@12 (line 1513)
                                                                          ; - java.lang.Character::codePointBefore@5 (line 9011)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.52%        0x00007febb8f752d3:   mov    0xa0(%rsp),%r8
   0.02%        0x00007febb8f752db:   nopl   0x0(%rax,%rax,1)
   0.14%        0x00007febb8f752e0:   mov    0x8(%r8),%r8d                ; implicit exception: dispatches to 0x00007febb8f7f2d4
                                                                          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.23%        0x00007febb8f752e4:   mov    %r11d,0x34(%rsp)             ;*synchronization entry
                                                                          ; - java.util.regex.Pattern$GroupTail::match@-1 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.51%        0x00007febb8f752e9:   mov    0x10(%rbx),%edx              ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.IntHashSet::add@21 (line 62)
                                                                          ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%        0x00007febb8f752ec:   cmp    $0xeba0,%r8d                 ;   {metadata(&apos;java/lang/String&apos;)}
                0x00007febb8f752f3:   jne    0x00007febb8f785ec           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                          ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%        0x00007febb8f752f9:   mov    0xa0(%rsp),%r13              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%        0x00007febb8f75301:   movsbl 0x10(%r13),%ebp              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.IntHashSet::contains@37 (line 51)
                                                                          ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.58%        0x00007febb8f75306:   test   %ebp,%ebp
                0x00007febb8f75308:   jne    0x00007febb8f78b50           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007febb8f7530e:   mov    0x14(%r13),%ebp              ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.IntHashSet::add@21 (line 62)
                                                                          ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.20%        0x00007febb8f75312:   mov    0xc(%r12,%rbp,8),%r8d        ; implicit exception: dispatches to 0x00007febb8f7f2e0
                                                                          ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.29%        0x00007febb8f75317:   mov    0x64(%rsp),%r11d
   0.51%        0x00007febb8f7531c:   nopl   0x0(%rax)
   0.03%        0x00007febb8f75320:   cmp    %r8d,%r11d
                0x00007febb8f75323:   jae    0x00007febb8f79088           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.16%        0x00007febb8f75329:   lea    (%r12,%rbp,8),%rcx
   0.19%        0x00007febb8f7532d:   movzbl 0x10(%rcx,%r11,1),%eax       ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.IntHashSet::contains@15 (line 48)
                                                                          ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.51%        0x00007febb8f75333:   mov    0x8(%r12,%rdx,8),%r9d        ; implicit exception: dispatches to 0x00007febb8f7f310
   0.03%        0x00007febb8f75338:   nopl   0x0(%rax,%rax,1)
   0.16%        0x00007febb8f75340:   cmp    $0x26ade8,%r9d               ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
                0x00007febb8f75347:   jne    0x00007febb8f7861c           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%        0x00007febb8f7534d:   lea    (%r12,%rdx,8),%r11           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.51%        0x00007febb8f75351:   mov    0xc(%r11),%ebp               ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.IntHashSet::contains@23 (line 49)
                                                                          ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%        0x00007febb8f75355:   mov    0xc(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007febb8f7f31c
                                                                          ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.81%        0x00007febb8f7535a:   nopw   0x0(%rax,%rax,1)
   0.16%        0x00007febb8f75360:   cmp    %r11d,%eax
                0x00007febb8f75363:   jae    0x00007febb8f785bc           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
                                                                          ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.68%        0x00007febb8f75369:   lea    (%r12,%rbp,8),%r11
   0.01%        0x00007febb8f7536d:   movzbl 0x10(%r11,%rax,1),%r11d
   0.05%        0x00007febb8f75373:   test   %r11d,%r11d
                0x00007febb8f75376:   je     0x00007febb8f74d49           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.62%        0x00007febb8f7537c:   mov    0xc(%rbx),%ebp               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::charAt@4 (line 1512)
                                                                          ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.51%        0x00007febb8f7537f:   nop
                0x00007febb8f75380:   mov    0x8(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007febb8f7f558
   0.23%        0x00007febb8f75385:   cmp    $0x269bf8,%r9d               ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
                0x00007febb8f7538c:   jne    0x00007febb8f79a34           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                                                                          ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                          ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.23%        0x00007febb8f75392:   lea    (%r12,%rbp,8),%r11           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%        0x00007febb8f75396:   mov    %r11,0x50(%rsp)
   0.02%        0x00007febb8f7539b:   mov    0x30(%rsp),%r9d
                0x00007febb8f753a0:   cmp    0x34(%rsp),%r9d
          ╭     0x00007febb8f753a5:   jge    0x00007febb8f754cc           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%  │     0x00007febb8f753ab:   cmp    %r8d,%r9d
          │     0x00007febb8f753ae:   jae    0x00007febb8f7a46c           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
          │                                                               ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.03%  │     0x00007febb8f753b4:   movslq %r8d,%r11
   0.01%  │     0x00007febb8f753b7:   cmp    %r11,%rdi
   0.00%  │     0x00007febb8f753ba:   nopw   0x0(%rax,%rax,1)
   0.17%  │     0x00007febb8f753c0:   jae    0x00007febb8f7a46c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.lang.String::isLatin1@3 (line 4549)
          │                                                               ; - java.lang.String::charAt@1 (line 1512)
          │                                                               ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │     0x00007febb8f753c6:   mov    0x50(%rsp),%r11
   0.03%  │     0x00007febb8f753cb:   mov    0x14(%r11),%r8d              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.IntHashSet::contains@37 (line 51)
          │                                                               ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.20%  │     0x00007febb8f753cf:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007febb8f7a46c
   0.38%  │     0x00007febb8f753d4:   nopl   0x0(%rax,%rax,1)
   0.03%  │     0x00007febb8f753dc:   data16 data16 xchg %ax,%ax
          │     0x00007febb8f753e0:   cmp    $0xc39880,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$45+0x0000000800c39880&apos;)}
          │     0x00007febb8f753e7:   jne    0x00007febb8f7a46c           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.lang.StringLatin1::charAt@6 (line 47)
          │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │                                                               ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%  │     0x00007febb8f753ed:   mov    $0xffffffff,%edx
   0.09%  │     0x00007febb8f753f2:   sub    0x64(%rsp),%edx              ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │     0x00007febb8f753f6:   mov    0x64(%rsp),%edi
          │     0x00007febb8f753fa:   add    $0x2,%edi
   0.09%  │     0x00007febb8f753fd:   cmp    0x34(%rsp),%edi
   0.12%  │     0x00007febb8f75401:   mov    0x34(%rsp),%r8d
   0.02%  │     0x00007febb8f75406:   cmovg  %r8d,%edi
          │     0x00007febb8f7540a:   mov    %r9d,%r11d                   ;*getfield entries {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.IntHashSet::add@37 (line 65)
          │                                                               ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%  │ ↗   0x00007febb8f7540d:   movzbl 0x10(%rcx,%r11,1),%r8d       ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.IntHashSet::add@32 (line 63)
          │ │                                                             ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │ │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%  │ │   0x00007febb8f75413:   mov    %r11d,%r9d
   0.03%  │ │   0x00007febb8f75416:   inc    %r9d                         ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │ │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │ │   0x00007febb8f75419:   nopl   0x0(%rax)
   0.09%  │ │   0x00007febb8f75420:   cmp    0x34(%rsp),%r9d
          │ │   0x00007febb8f75425:   jg     0x00007febb8f7a49c           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.IntHashSet::add@43 (line 65)
          │ │                                                             ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │ │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%  │ │   0x00007febb8f7542b:   cmp    $0xa,%r8d
          │ │   0x00007febb8f7542f:   je     0x00007febb8f78b80
   0.02%  │ │   0x00007febb8f75435:   cmp    $0xd,%r8d
          │ │   0x00007febb8f75439:   je     0x00007febb8f78be0           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.IntHashSet::add@44 (line 65)
          │ │                                                             ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │ │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │ │   0x00007febb8f7543f:   mov    %r8d,%ebx
   0.10%  │ │   0x00007febb8f75442:   or     $0x1,%ebx                    ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                             ; - java.util.regex.IntHashSet::add@30 (line 63)
          │ │                                                             ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │ │                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%  │ │   0x00007febb8f75445:   cmp    $0x2029,%ebx
          │ │   0x00007febb8f7544b:   je     0x00007febb8f78c40
   0.01%  │ │   0x00007febb8f75451:   cmp    $0x85,%r8d
          │ │   0x00007febb8f75458:   je     0x00007febb8f78ca4
   0.00%  │ │   0x00007febb8f7545e:   xchg   %ax,%ax
   0.11%  │ │   0x00007febb8f75460:   cmp    %edi,%r9d
          │╭│   0x00007febb8f75463:   jge    0x00007febb8f7546a           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                             ; - java.util.regex.IntHashSet::add@44 (line 65)
          │││                                                             ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │││   0x00007febb8f75465:   mov    %r9d,%r11d
          ││╰   0x00007febb8f75468:   jmp    0x00007febb8f7540d
   0.11%  │↘    0x00007febb8f7546a:   cmp    0x34(%rsp),%r9d
          │  ╭  0x00007febb8f7546f:   jge    0x00007febb8f754d4           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.IntHashSet::add@59 (line 67)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │  │  0x00007febb8f75475:   jmp    0x00007febb8f760e2
   0.17%  │  │  0x00007febb8f7547a:   movsbl 0x10(%r13),%ebp              ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@34 (line 4790)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.39%  │  │  0x00007febb8f7547f:   nop
          │  │  0x00007febb8f75480:   test   %ebp,%ebp
          │  │  0x00007febb8f75482:   jne    0x00007febb8f79f98           ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@21 (line 4815)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%  │  │  0x00007febb8f75488:   mov    0x14(%r13),%ebp              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.IntHashSet::add@30 (line 63)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │  │  0x00007febb8f7548c:   mov    0xc(%r12,%rbp,8),%edi        ; implicit exception: dispatches to 0x00007febb8f7f504
   0.33%  │  │  0x00007febb8f75491:   cmp    %edi,%ecx
          │  │  0x00007febb8f75493:   jae    0x00007febb8f7a338           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │  │  0x00007febb8f75499:   mov    0x348(%r15),%rdi
   0.05%  │  │  0x00007febb8f754a0:   mov    0x30(%rsp),%r9d
   0.08%  │  │  0x00007febb8f754a5:   cmp    %ecx,%r9d
   0.21%  │  │  0x00007febb8f754a8:   mov    0x30(%rsp),%r8d
   0.06%  │  │  0x00007febb8f754ad:   cmovl  %ecx,%r8d
   0.05%  │  │  0x00007febb8f754b1:   dec    %r11d                        ; ImmutableOopMap {r13=Oop [0]=Oop [80]=Oop [152]=Oop [160]=Oop }
          │  │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │  │                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@155 (line 4299)
          │  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%  │  │  0x00007febb8f754b4:   test   %eax,(%rdi)                  ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
          │  │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
          │  │                                                            ;   {poll}
   0.23%  │  │  0x00007febb8f754b6:   cmp    %ebx,%r11d
          │  │  0x00007febb8f754b9:   jl     0x00007febb8f79ff0           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │  │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │  │  0x00007febb8f754bf:   mov    %r8d,0x90(%rsp)
   0.04%  │  │  0x00007febb8f754c7:   jmp    0x00007febb8f75591
   0.01%  ↘  │  0x00007febb8f754cc:   xor    %r11d,%r11d
   0.03%     │  0x00007febb8f754cf:   jmp    0x00007febb8f75568
   0.15%     ↘  0x00007febb8f754d4:   add    %edx,%r11d
                0x00007febb8f754d7:   inc    %r11d                        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.IntHashSet::add@44 (line 65)
                                                                          ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                0x00007febb8f754da:   mov    %r11d,%r8d
                0x00007febb8f754dd:   mov    %r9d,%r11d
   0.12%        0x00007febb8f754e0:   mov    %r8d,%r9d                    ;*getfield hashes {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.IntHashSet::add@51 (line 67)
                                                                          ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%        0x00007febb8f754e3:   cmp    0x34(%rsp),%r11d
                0x00007febb8f754e8:   jge    0x00007febb8f75554
                0x00007febb8f754ee:   movzbl 0x10(%rcx,%r11,1),%r8d
                0x00007febb8f754f4:   mov    %r11d,%r9d
                0x00007febb8f754f7:   inc    %r9d
                0x00007febb8f754fa:   nopw   0x0(%rax,%rax,1)
                0x00007febb8f75500:   cmp    0x34(%rsp),%r9d
....................................................................................................
  14.08%  <total for region 2>

....[Hottest Regions]...............................................................................
  32.75%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
  14.08%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   9.46%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   9.21%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   8.77%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   3.15%         c2, level 4  java.util.regex.Matcher::match, version 2, compile id 535 
   2.78%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   2.32%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   2.20%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   1.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 551 
   1.83%         c2, level 4  java.util.regex.Matcher::match, version 2, compile id 535 
   1.58%         c2, level 4  java.util.regex.Matcher::match, version 2, compile id 535 
   1.53%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   1.31%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   1.22%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   0.81%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   0.72%         c2, level 4  java.util.regex.Matcher::match, version 2, compile id 535 
   0.39%         c2, level 4  java.util.regex.Matcher::match, version 2, compile id 535 
   0.36%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   0.33%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   3.22%  <...other 474 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  82.45%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 518 
   7.66%         c2, level 4  java.util.regex.Matcher::match, version 2, compile id 535 
   5.52%         c2, level 4  java.util.regex.Matcher::&lt;init&gt;, version 2, compile id 542 
   1.97%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 551 
   1.63%              kernel  [unknown] 
   0.12%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 543 
   0.05%                      <unknown> 
   0.03%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%        libc-2.31.so  __strchr_sse2 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.39%  <...other 137 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.71%         c2, level 4
   1.63%              kernel
   0.38%           libjvm.so
   0.11%        libc-2.31.so
   0.05%                    
   0.05%         interpreter
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%       libdl-2.31.so
   0.00%         c1, level 3
   0.00%     perf-112002.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.6, OpenJDK 64-Bit Server VM, 17.0.6+10
# VM invoker: /home/gogu/bench_jdks/jdk-17.0.6+10/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches
# Parameters: (regexp = ^(.*[aeuio].*){3,}$)

# Run progress: 66.67% complete, ETA 00:01:49
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3180.195 us/op
# Warmup Iteration   2: 2406.207 us/op
# Warmup Iteration   3: 2407.386 us/op
# Warmup Iteration   4: 2404.939 us/op
# Warmup Iteration   5: 2406.353 us/op
Iteration   1: 2403.658 us/op
Iteration   2: 2403.956 us/op
Iteration   3: 2403.796 us/op
Iteration   4: 2404.160 us/op
Iteration   5: 2402.360 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches":
  2403.586 ±(99.9%) 2.735 us/op [Average]
  (min, avg, max) = (2402.360, 2403.586, 2404.160), stdev = 0.710
  CI (99.9%): [2400.851, 2406.321] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches:·asm":
PrintAssembly processed: 166814 total address lines.
Perf output processed (skipped 55.827 seconds):
 Column 1: cycles (50628 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 536 

                  0x00007f138cf74ebe:   mov    %ecx,%edx
                  0x00007f138cf74ec0:   jmp    0x00007f138cf74e6b
                  0x00007f138cf74ec2:   cmp    %r8d,%ecx
                  0x00007f138cf74ec5:   jge    0x00007f138cf75696           ;*synchronization entry
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                  0x00007f138cf74ecb:   jmp    0x00007f138cf755c9
   0.15%          0x00007f138cf74ed0:   mov    0x58(%rsp),%r9d
   0.41%          0x00007f138cf74ed5:   cmp    0x4c(%rsp),%r9d
   0.29%          0x00007f138cf74eda:   nopw   0x0(%rax,%rax,1)
   0.29%          0x00007f138cf74ee0:   jge    0x00007f138cf74951           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::charAt@1 (line 1512)
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%          0x00007f138cf74ee6:   mov    0x10(%rdi),%edx              ;*synchronization entry
                                                                            ; - java.util.regex.Pattern$Loop::match@-1 (line 4870)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.32%          0x00007f138cf74ee9:   test   %ecx,%ecx
                  0x00007f138cf74eeb:   jne    0x00007f138cf776f4           ;*synchronization entry
                                                                            ; - java.lang.String::isLatin1@-1 (line 4549)
                                                                            ; - java.lang.String::charAt@1 (line 1512)
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%          0x00007f138cf74ef1:   mov    0xc(%r12,%rax,8),%ecx        ; implicit exception: dispatches to 0x00007f138cf7d0cc
                                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%          0x00007f138cf74ef6:   cmp    %ecx,%r9d
                  0x00007f138cf74ef9:   jae    0x00007f138cf77d10           ;*invokestatic lambda$DOT$4 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.03%          0x00007f138cf74eff:   lea    (%r12,%rax,8),%r13
   0.27%          0x00007f138cf74f03:   movzbl 0x10(%r13,%r9,1),%ebx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%          0x00007f138cf74f09:   mov    0x8(%r12,%rdx,8),%r11d       ; implicit exception: dispatches to 0x00007f138cf7d104
   0.17%          0x00007f138cf74f0e:   cmp    $0x26ade8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
                  0x00007f138cf74f15:   jne    0x00007f138cf7714c           ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%          0x00007f138cf74f1b:   lea    (%r12,%rdx,8),%r11           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%          0x00007f138cf74f1f:   mov    0xc(%r11),%ebp               ;*synchronization entry
                                                                            ; - java.lang.Character::isLowSurrogate@-1 (line 8796)
                                                                            ; - java.lang.Character::codePointBefore@12 (line 9012)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.25%          0x00007f138cf74f23:   mov    0xc(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f138cf7d110
                                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.79%          0x00007f138cf74f28:   cmp    %r11d,%ebx
                  0x00007f138cf74f2b:   jae    0x00007f138cf7711c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
                                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.20%          0x00007f138cf74f31:   lea    (%r12,%rbp,8),%r11
   0.23%          0x00007f138cf74f35:   movzbl 0x10(%r11,%rbx,1),%ebx
   0.15%          0x00007f138cf74f3b:   test   %ebx,%ebx
   0.21%          0x00007f138cf74f3d:   data16 xchg %ax,%ax
   0.03%          0x00007f138cf74f40:   je     0x00007f138cf74949           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.45%          0x00007f138cf74f46:   mov    0xc(%rdi),%ebp               ;*synchronization entry
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%          0x00007f138cf74f49:   mov    0x8(%r12,%rbp,8),%ebx        ; implicit exception: dispatches to 0x00007f138cf7d394
   0.15%          0x00007f138cf74f4e:   cmp    $0x269bf8,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
                  0x00007f138cf74f54:   jne    0x00007f138cf78948           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          0x00007f138cf74f5a:   lea    (%r12,%rbp,8),%rdi           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%          0x00007f138cf74f5e:   mov    0x30(%rsp),%r11d
   0.01%          0x00007f138cf74f63:   cmp    0x4c(%rsp),%r11d
          ╭       0x00007f138cf74f68:   jge    0x00007f138cf75088           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │       0x00007f138cf74f6e:   mov    %r11d,%ebx
   0.02%  │       0x00007f138cf74f71:   cmp    %ecx,%ebx
          │       0x00007f138cf74f73:   jae    0x00007f138cf792bc           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
          │                                                                 ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
          │                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.13%  │       0x00007f138cf74f79:   movslq %ecx,%r11
          │       0x00007f138cf74f7c:   nopl   0x0(%rax)
          │       0x00007f138cf74f80:   cmp    %r11,%r8
          │       0x00007f138cf74f83:   jae    0x00007f138cf792bc           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │       0x00007f138cf74f89:   mov    0x14(%rdi),%r8d              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::codePointBefore@15 (line 9012)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%  │       0x00007f138cf74f8d:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f138cf792bc
   0.05%  │       0x00007f138cf74f92:   data16 nopw 0x0(%rax,%rax,1)
          │       0x00007f138cf74f9c:   data16 data16 xchg %ax,%ax
   0.01%  │       0x00007f138cf74fa0:   cmp    $0xc39880,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$45+0x0000000800c39880&apos;)}
          │       0x00007f138cf74fa7:   jne    0x00007f138cf792bc           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%  │       0x00007f138cf74fad:   mov    0x58(%rsp),%ebp
          │       0x00007f138cf74fb1:   add    $0x2,%ebp
          │       0x00007f138cf74fb4:   cmp    0x4c(%rsp),%ebp
   0.00%  │       0x00007f138cf74fb8:   mov    0x4c(%rsp),%r11d
   0.13%  │       0x00007f138cf74fbd:   cmovg  %r11d,%ebp
          │       0x00007f138cf74fc1:   mov    $0xffffffff,%ebx
          │       0x00007f138cf74fc6:   sub    0x58(%rsp),%ebx              ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$Loop::match@2 (line 4870)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │       0x00007f138cf74fca:   mov    0x30(%rsp),%ecx              ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.StringLatin1::charAt@21 (line 50)
          │                                                                 ; - java.lang.String::charAt@12 (line 1513)
          │                                                                 ; - java.lang.Character::codePointBefore@5 (line 9011)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%  │ ↗     0x00007f138cf74fce:   movzbl 0x10(%r13,%rcx,1),%r8d
          │ │     0x00007f138cf74fd4:   mov    %ecx,%r11d
          │ │     0x00007f138cf74fd7:   inc    %r11d                        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@7 (line 47)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │ │     0x00007f138cf74fda:   nopw   0x0(%rax,%rax,1)
   0.15%  │ │     0x00007f138cf74fe0:   cmp    0x4c(%rsp),%r11d
          │ │     0x00007f138cf74fe5:   jg     0x00007f138cf79304           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@21 (line 50)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │ │     0x00007f138cf74feb:   cmp    $0xa,%r8d
          │ │     0x00007f138cf74fef:   je     0x00007f138cf7772c           ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │ │     0x00007f138cf74ff5:   cmp    $0xd,%r8d
          │ │     0x00007f138cf74ff9:   je     0x00007f138cf77794           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@21 (line 50)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%  │ │     0x00007f138cf74fff:   mov    %r8d,%edx
   0.14%  │ │     0x00007f138cf75002:   or     $0x1,%edx                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                               ; - java.lang.StringLatin1::charAt@7 (line 47)
          │ │                                                               ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │ │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │ │                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │ │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │ │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │ │     0x00007f138cf75005:   cmp    $0x2029,%edx
          │ │     0x00007f138cf7500b:   je     0x00007f138cf777fc
   0.01%  │ │     0x00007f138cf75011:   cmp    $0x85,%r8d
          │ │     0x00007f138cf75018:   je     0x00007f138cf77868
   0.02%  │ │     0x00007f138cf7501e:   xchg   %ax,%ax
   0.16%  │ │     0x00007f138cf75020:   cmp    %ebp,%r11d
          │╭│     0x00007f138cf75023:   jge    0x00007f138cf7502a           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - java.lang.StringLatin1::charAt@21 (line 50)
          │││                                                               ; - java.lang.String::charAt@12 (line 1513)
          │││                                                               ; - java.lang.Character::codePointBefore@5 (line 9011)
          │││                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │││                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │││                                                               ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │││                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │││                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │││     0x00007f138cf75025:   mov    %r11d,%ecx
          ││╰     0x00007f138cf75028:   jmp    0x00007f138cf74fce
          │↘      0x00007f138cf7502a:   cmp    0x4c(%rsp),%r11d
          │       0x00007f138cf7502f:   jge    0x00007f138cf75be8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::codePointBefore@15 (line 9012)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │       0x00007f138cf75035:   jmp    0x00007f138cf75bbe
   0.05%  │       0x00007f138cf7503a:   movsbl 0x10(%r14),%edx              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.22%  │       0x00007f138cf7503f:   mov    %r8d,%ebx
   0.04%  │       0x00007f138cf75042:   dec    %ebx                         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │       0x00007f138cf75044:   test   %edx,%edx
          │       0x00007f138cf75046:   jne    0x00007f138cf78e54           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.StringLatin1::charAt@1 (line 47)
          │                                                                 ; - java.lang.String::charAt@12 (line 1513)
          │                                                                 ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │       0x00007f138cf7504c:   mov    0x14(%r14),%ebp              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$Loop::match@74 (line 4884)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%  │       0x00007f138cf75050:   mov    0xc(%r12,%rbp,8),%edx        ; implicit exception: dispatches to 0x00007f138cf7d340
   0.09%  │       0x00007f138cf75055:   cmp    %edx,%ebx
          │       0x00007f138cf75057:   jae    0x00007f138cf791b0           ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@1 (line 4787)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │       0x00007f138cf7505d:   mov    0x348(%r15),%rdx
   0.01%  │       0x00007f138cf75064:   mov    0x30(%rsp),%r8d
   0.17%  │       0x00007f138cf75069:   cmp    %ebx,%r8d
   0.05%  │       0x00007f138cf7506c:   cmovl  %ebx,%r8d
   0.08%  │       0x00007f138cf75070:   dec    %r11d                        ; ImmutableOopMap {rdi=Oop r14=Oop [0]=Oop [128]=Oop [136]=Oop }
          │                                                                 ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                                                                 ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@155 (line 4299)
          │                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%  │       0x00007f138cf75073:   test   %eax,(%rdx)                  ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.lang.Character::charCount@3 (line 8862)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@27 (line 4274)
          │                                                                 ;   {poll}
   0.15%  │       0x00007f138cf75075:   cmp    %ecx,%r11d
          │       0x00007f138cf75078:   jl     0x00007f138cf78eb4           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
          │                                                                 ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                 ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                                 ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │       0x00007f138cf7507e:   mov    %r8d,0xa4(%rsp)
   0.07%  │  ╭    0x00007f138cf75086:   jmp    0x00007f138cf750ba
   0.01%  ↘  │    0x00007f138cf75088:   mov    %r11d,%ecx
   0.01%     │    0x00007f138cf7508b:   xor    %r11d,%r11d
   0.01%     │╭   0x00007f138cf7508e:   jmp    0x00007f138cf7509a
             ││   0x00007f138cf75090:   add    %ebx,%ecx
             ││   0x00007f138cf75092:   mov    %ecx,%r11d
             ││   0x00007f138cf75095:   inc    %r11d                        ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - java.lang.String::charAt@1 (line 1512)
             ││                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
             ││                                                             ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                             ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             ││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             ││   0x00007f138cf75098:   mov    %eax,%ecx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             ││                                                             ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             ││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             ││                                                             ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                             ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             ││                                                             ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             ││                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%     │↘   0x00007f138cf7509a:   mov    0x80(%rsp),%r8
   0.00%     │    0x00007f138cf750a2:   movb   $0x1,0x30(%r8)               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.27%     │    0x00007f138cf750a7:   mov    0x10(%rdi),%ebp              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%     │    0x00007f138cf750aa:   cmp    %ebp,%r11d
             │    0x00007f138cf750ad:   jl     0x00007f138cf7939c           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%     │    0x00007f138cf750b3:   mov    %ecx,0xa4(%rsp)              ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
             │                                                              ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             │                                                              ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
             │                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     ↘    0x00007f138cf750ba:   mov    0xc(%rdi),%ebx               ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.Character::charCount@3 (line 8862)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@144 (line 4297)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.24%          0x00007f138cf750bd:   data16 xchg %ax,%ax
   0.06%          0x00007f138cf750c0:   mov    0x8(%r12,%rbx,8),%edx        ; implicit exception: dispatches to 0x00007f138cf7d208
                                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
                                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.25%          0x00007f138cf750c5:   lea    (%r12,%rbx,8),%rcx
   0.00%          0x00007f138cf750c9:   cmp    $0x1c4f90,%edx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
               ╭  0x00007f138cf750cf:   je     0x00007f138cf753ca           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@7 (line 1513)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.26%       │  0x00007f138cf750d5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.06%       │  0x00007f138cf750e0:   cmp    $0x1c4b30,%edx               ;   {metadata(&apos;java/util/regex/Pattern$GroupTail&apos;)}
               │  0x00007f138cf750e6:   jne    0x00007f138cf78da4           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%       │  0x00007f138cf750ec:   mov    0x80(%rsp),%r8
               │  0x00007f138cf750f4:   mov    0x40(%r8),%eax               ;*iconst_1 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.Character::charCount@10 (line 8862)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@144 (line 4297)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%       │  0x00007f138cf750f8:   mov    0x10(%rcx),%ebp              ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%       │  0x00007f138cf750fb:   nopl   0x0(%rax,%rax,1)
   0.18%       │  0x00007f138cf75100:   mov    0xc(%r12,%rax,8),%edx        ; implicit exception: dispatches to 0x00007f138cf7d40c
               │                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.27%       │  0x00007f138cf75105:   cmp    %edx,%ebp
               │  0x00007f138cf75107:   jae    0x00007f138cf78bb4           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.22%       │  0x00007f138cf7510d:   lea    (%r12,%rax,8),%r8
   0.09%       │  0x00007f138cf75111:   mov    0x10(%r8,%rbp,4),%ebx        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%       │  0x00007f138cf75116:   test   %ebx,%ebx
               │  0x00007f138cf75118:   jl     0x00007f138cf79500           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%       │  0x00007f138cf7511e:   vmovd  %ebx,%xmm0
   0.24%       │  0x00007f138cf75122:   mov    %r11d,0x68(%rsp)
   0.07%       │  0x00007f138cf75127:   mov    %rdi,0x60(%rsp)
   0.14%       │  0x00007f138cf7512c:   mov    %r9d,0x10(%rsp)
               │  0x00007f138cf75131:   mov    %r14,0x58(%rsp)
   0.24%       │  0x00007f138cf75136:   mov    %r10d,0x18(%rsp)
   0.07%       │  0x00007f138cf7513b:   mov    %esi,0x8(%rsp)
   0.14%       │  0x00007f138cf7513f:   mov    0x14(%rcx),%r10d             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%       │  0x00007f138cf75143:   mov    %r10d,%r13d
   0.22%       │  0x00007f138cf75146:   mov    %rcx,0x70(%rsp)
   0.06%       │  0x00007f138cf7514b:   mov    0x80(%rsp),%r10
   0.14%       │  0x00007f138cf75153:   mov    0x38(%r10),%r10d             ;*invokestatic max {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f138cf75157:   mov    %r10d,%ecx
   0.22%       │  0x00007f138cf7515a:   nopw   0x0(%rax,%rax,1)
   0.06%       │  0x00007f138cf75160:   mov    0xc(%r12,%r10,8),%ebx        ; implicit exception: dispatches to 0x00007f138cf7d418
               │                                                            ;*invokestatic lambda$DOT$4 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%       │  0x00007f138cf75165:   mov    %r13d,%r10d
               │  0x00007f138cf75168:   cmp    %ebx,%r10d
               │  0x00007f138cf7516b:   jae    0x00007f138cf78c04           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.26%       │  0x00007f138cf75171:   inc    %r10d                        ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@38 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%       │  0x00007f138cf75174:   lea    (%r12,%rcx,8),%r9
   0.11%       │  0x00007f138cf75178:   mov    0x10(%r9,%r13,4),%r11d       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%       │  0x00007f138cf7517d:   mov    %r11d,0x6c(%rsp)
   0.27%       │  0x00007f138cf75182:   cmp    %ebx,%r10d
               │  0x00007f138cf75185:   jae    0x00007f138cf78c50           ;*synchronization entry
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.08%       │  0x00007f138cf7518b:   mov    0x70(%rsp),%r10
   0.19%       │  0x00007f138cf75190:   mov    0xc(%r10),%r10d              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@100 (line 4289)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f138cf75194:   mov    %r10d,%edi
   0.23%       │  0x00007f138cf75197:   movslq %r13d,%rcx
   0.06%       │  0x00007f138cf7519a:   mov    0x14(%r9,%rcx,4),%r10d       ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%       │  0x00007f138cf7519f:   mov    %r10d,0x78(%rsp)
   0.01%       │  0x00007f138cf751a4:   mov    %r13d,%r10d
   0.26%       │  0x00007f138cf751a7:   vmovd  %xmm0,%r11d
   0.05%       │  0x00007f138cf751ac:   mov    %r11d,0x10(%r9,%r10,4)       ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%       │  0x00007f138cf751b1:   mov    0xa4(%rsp),%r11d
   0.01%       │  0x00007f138cf751b9:   mov    %r11d,0x14(%r9,%rcx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@73 (line 4881)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.26%       │  0x00007f138cf751be:   mov    %edi,%r10d
   0.07%       │  0x00007f138cf751c1:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f138cf7d428
   0.26%       │  0x00007f138cf751c6:   cmp    $0xc39ae0,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
               │  0x00007f138cf751cd:   jne    0x00007f138cf78df4           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%       │  0x00007f138cf751d3:   shl    $0x3,%r10                    ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%       │  0x00007f138cf751d7:   mov    %r10,0x90(%rsp)
   0.06%       │  0x00007f138cf751df:   mov    0x14(%r10),%ebp              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%       │  0x00007f138cf751e3:   cmp    %edx,%ebp
               │  0x00007f138cf751e5:   jae    0x00007f138cf78cac           ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.14%       │  0x00007f138cf751eb:   mov    0x10(%r8,%rbp,4),%ebp        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.81%       │  0x00007f138cf751f0:   mov    0xa4(%rsp),%r10d
   0.05%       │  0x00007f138cf751f8:   cmp    %ebp,%r10d
   0.35%       │  0x00007f138cf751fb:   nopl   0x0(%rax,%rax,1)
               │  0x00007f138cf75200:   jle    0x00007f138cf79554           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%       │  0x00007f138cf75206:   mov    0x90(%rsp),%r10
   0.04%       │  0x00007f138cf7520e:   mov    0x10(%r10),%r9d              ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%       │  0x00007f138cf75212:   cmp    %edx,%r9d
               │  0x00007f138cf75215:   jae    0x00007f138cf78d2c           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.06%       │  0x00007f138cf7521b:   mov    0x10(%r8,%r9,4),%r10d        ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.66%       │  0x00007f138cf75220:   mov    %r10d,0x7c(%rsp)
   0.62%       │  0x00007f138cf75225:   mov    0x90(%rsp),%r10
   0.06%       │  0x00007f138cf7522d:   mov    0x18(%r10),%r10d             ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f138cf75231:   mov    0x7c(%rsp),%ecx
   0.40%       │  0x00007f138cf75235:   inc    %ecx                         ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.36%       │  0x00007f138cf75237:   mov    %ecx,0x40(%rsp)
   0.84%       │  0x00007f138cf7523b:   mov    0x7c(%rsp),%r11d
               │  0x00007f138cf75240:   cmp    %r10d,%r11d
               │  0x00007f138cf75243:   jge    0x00007f138cf76985           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@1 (line 1512)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f138cf75249:   mov    %ecx,0x10(%r8,%r9,4)         ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.42%       │  0x00007f138cf7524e:   mov    0x90(%rsp),%r10
   0.03%       │  0x00007f138cf75256:   mov    0x24(%r10),%ebp              ;*synchronization entry
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@-1 (line 4787)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%       │  0x00007f138cf7525a:   nopw   0x0(%rax,%rax,1)
   0.01%       │  0x00007f138cf75260:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f138cf7d434
   0.45%       │  0x00007f138cf75265:   cmp    $0x269088,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
               │  0x00007f138cf7526c:   jne    0x00007f138cf79038           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%       │  0x00007f138cf75272:   lea    (%r12,%rbp,8),%r10
               │  0x00007f138cf75276:   mov    %r10,0x98(%rsp)
   0.01%       │  0x00007f138cf7527e:   mov    0x10(%r10),%r10d             ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.33%       │  0x00007f138cf75282:   cmp    %edx,%r10d
               │  0x00007f138cf75285:   jae    0x00007f138cf78f08           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.05%       │  0x00007f138cf7528b:   mov    0x10(%r8,%r10,4),%r9d        ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.44%       │  0x00007f138cf75290:   mov    %r9d,0xa0(%rsp)
   0.58%       │  0x00007f138cf75298:   mov    0xa4(%rsp),%r11d
   0.12%       │  0x00007f138cf752a0:   mov    %r11d,0x10(%r8,%r10,4)       ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.26%       │  0x00007f138cf752a5:   mov    0x98(%rsp),%r10
               │  0x00007f138cf752ad:   mov    0xc(%r10),%ebp               ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@38 (line 4790)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.26%       │  0x00007f138cf752b1:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007f138cf7d440
   0.69%       │  0x00007f138cf752b6:   data16 nopw 0x0(%rax,%rax,1)
   0.12%       │  0x00007f138cf752c0:   cmp    $0x269bf8,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
               │  0x00007f138cf752c7:   jne    0x00007f138cf790b0
   0.23%       │  0x00007f138cf752cd:   lea    (%r12,%rbp,8),%rsi           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%       │  0x00007f138cf752d1:   mov    0x80(%rsp),%rdx
   0.08%       │  0x00007f138cf752d9:   mov    0xa4(%rsp),%ecx
   0.09%       │  0x00007f138cf752e0:   mov    %r14,%r8
   0.26%       │  0x00007f138cf752e3:   call   0x00007f138cf74720           ; ImmutableOopMap {[0]=Oop [88]=Oop [96]=Oop [112]=Oop [128]=Oop [136]=Oop [144]=Oop [152]=Oop }
               │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ;   {optimized virtual_call}
   0.26%       │  0x00007f138cf752e8:   mov    0x98(%rsp),%r10
   0.31%       │  0x00007f138cf752f0:   mov    0x10(%r10),%r11d             ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%       │  0x00007f138cf752f4:   mov    0x80(%rsp),%r10
   0.19%       │  0x00007f138cf752fc:   mov    0x40(%r10),%r9d              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.20%       │  0x00007f138cf75300:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f138cf7d45c
               │                                                            ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
               │                                                            ; - java.util.regex.Pattern$$Lambda$45/0x0000000800c39880::is@1
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.38%       │  0x00007f138cf75305:   cmp    %r10d,%r11d
               │  0x00007f138cf75308:   jae    0x00007f138cf78fb8           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.10%       │  0x00007f138cf7530e:   lea    (%r12,%r9,8),%r8
   0.20%       │  0x00007f138cf75312:   mov    0xa0(%rsp),%ebx
   0.15%       │  0x00007f138cf75319:   mov    %ebx,0x10(%r8,%r11,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.22%       │  0x00007f138cf7531e:   xchg   %ax,%ax
   0.00%       │  0x00007f138cf75320:   test   %eax,%eax
               │  0x00007f138cf75322:   jne    0x00007f138cf7697b           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.String::charAt@1 (line 1512)
               │                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%       │  0x00007f138cf75328:   mov    0x90(%rsp),%r11
   0.12%       │  0x00007f138cf75330:   mov    0x10(%r11),%ebp              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%       │  0x00007f138cf75334:   cmp    %r10d,%ebp
               │  0x00007f138cf75337:   jae    0x00007f138cf79204           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.01%       │  0x00007f138cf7533d:   mov    0x7c(%rsp),%r10d
   0.18%       │  0x00007f138cf75342:   mov    %r10d,0x10(%r8,%rbp,4)       ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%       │  0x00007f138cf75347:   xor    %r11d,%r11d                  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%       │  0x00007f138cf7534a:   test   %r11d,%r11d
               │  0x00007f138cf7534d:   jne    0x00007f138cf75fe5           ;*invokestatic codePointAt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%       │  0x00007f138cf75353:   mov    0x80(%rsp),%r10
   0.17%       │  0x00007f138cf7535b:   mov    0x38(%r10),%r9d              ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
               │                                                            ; - java.lang.String::charAt@12 (line 1513)
               │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%       │  0x00007f138cf7535f:   mov    0x70(%rsp),%r8
   0.09%       │  0x00007f138cf75364:   mov    0x14(%r8),%ecx               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%       │  0x00007f138cf75368:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f138cf7d46c
               │                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.40%       │  0x00007f138cf7536d:   cmp    %r11d,%ecx
               │  0x00007f138cf75370:   jae    0x00007f138cf79244           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.17%       │  0x00007f138cf75376:   lea    (%r12,%r9,8),%r10
   0.03%       │  0x00007f138cf7537a:   mov    0x6c(%rsp),%r8d
               │  0x00007f138cf7537f:   mov    %r8d,0x10(%r10,%rcx,4)       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.40%       │  0x00007f138cf75384:   mov    %ecx,%ebp
   0.10%       │  0x00007f138cf75386:   inc    %ebp                         ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%       │  0x00007f138cf75388:   cmp    %r11d,%ebp
               │  0x00007f138cf7538b:   jae    0x00007f138cf79290           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
               │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@-1 (line 4268)
   0.00%       │  0x00007f138cf75391:   movslq %ecx,%r11
   0.29%       │  0x00007f138cf75394:   mov    0x78(%rsp),%r9d
   0.09%       │  0x00007f138cf75399:   mov    %r9d,0x14(%r10,%r11,4)
   0.17%       │  0x00007f138cf7539e:   xor    %ecx,%ecx                    ;*iaload {reexecute=0 rethrow=0 return_oop=0}
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
               │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
               │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
               │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
               │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%       │  0x00007f138cf753a0:   mov    0x8(%rsp),%esi
   0.27%       │  0x00007f138cf753a4:   mov    0x18(%rsp),%r10d
   0.10%       │  0x00007f138cf753a9:   mov    0x58(%rsp),%r14
   0.10%       │  0x00007f138cf753ae:   mov    0x10(%rsp),%r9d
   0.05%       │  0x00007f138cf753b3:   mov    0x60(%rsp),%rdi
   0.24%       │  0x00007f138cf753b8:   mov    0x68(%rsp),%r11d
   0.08%       │  0x00007f138cf753bd:   mov    0xa4(%rsp),%r8d
   0.09%       │  0x00007f138cf753c5:   jmp    0x00007f138cf74932
               ↘  0x00007f138cf753ca:   mov    0x80(%rsp),%r8
                  0x00007f138cf753d2:   mov    0x10(%r8),%ebx
                  0x00007f138cf753d6:   mov    0xa4(%rsp),%r8d
                  0x00007f138cf753de:   xchg   %ax,%ax
                  0x00007f138cf753e0:   cmp    %ebx,%r8d
                  0x00007f138cf753e3:   jge    0x00007f138cf74924           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::charAt@4 (line 1512)
                                                                            ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
....................................................................................................
  31.65%  <total for region 1>

....[Hottest Regions]...............................................................................
  31.65%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 536 
   7.44%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 536 
   7.36%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 536 
   5.81%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 536 
   4.43%         c2, level 4  java.lang.String::matches, version 2, compile id 615 
   3.92%         c2, level 4  java.util.regex.Pattern::sequence, version 2, compile id 595 
   3.64%         c2, level 4  java.util.regex.Pattern::closure, version 2, compile id 560 
   3.25%         c2, level 4  java.util.regex.Pattern$Prolog::match, version 2, compile id 616 
   1.82%         c2, level 4  java.util.regex.Pattern::sequence, version 2, compile id 595 
   1.75%         c2, level 4  java.util.regex.Pattern::compile, version 2, compile id 570 
   1.64%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 536 
   1.60%         c2, level 4  java.lang.String::matches, version 2, compile id 615 
   1.47%         c2, level 4  java.util.regex.Pattern::clazz, version 2, compile id 601 
   1.37%         c2, level 4  java.util.regex.Pattern::group0, version 2, compile id 609 
   1.24%         c2, level 4  java.util.regex.Pattern::clazz, version 2, compile id 601 
   1.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 622 
   1.07%         c2, level 4  java.util.regex.Pattern$Prolog::match, version 2, compile id 616 
   1.03%         c2, level 4  java.util.regex.Pattern::compile, version 2, compile id 570 
   0.99%         c2, level 4  java.util.regex.Pattern::group0, version 2, compile id 609 
   0.98%         c2, level 4  java.util.regex.Pattern::sequence, version 2, compile id 595 
  16.30%  <...other 436 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.47%         c2, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 536 
   7.32%         c2, level 4  java.util.regex.Pattern::sequence, version 2, compile id 595 
   6.72%         c2, level 4  java.util.regex.Pattern::compile, version 2, compile id 570 
   6.48%         c2, level 4  java.lang.String::matches, version 2, compile id 615 
   5.19%         c2, level 4  java.util.regex.Pattern::group0, version 2, compile id 609 
   4.32%         c2, level 4  java.util.regex.Pattern$Prolog::match, version 2, compile id 616 
   4.31%         c2, level 4  java.util.regex.Pattern::closure, version 2, compile id 560 
   3.39%         c2, level 4  java.util.regex.Pattern::clazz, version 2, compile id 601 
   1.34%              kernel  [unknown] 
   1.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 622 
   0.97%         c2, level 4  java.util.regex.Pattern::RemoveQEQuoting, version 2, compile id 568 
   0.59%         c2, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 608 
   0.41%         c2, level 4  java.util.regex.IntHashSet::add, version 2, compile id 611 
   0.26%         c2, level 4  java.lang.String::length, version 2, compile id 127 
   0.13%         c2, level 4  java.util.regex.Pattern$Node::study, version 2, compile id 592 
   0.12%         c2, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 612 
   0.06%                      <unknown> 
   0.06%        libc-2.31.so  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.58%  <...other 147 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.92%         c2, level 4
   1.34%              kernel
   0.44%           libjvm.so
   0.13%        libc-2.31.so
   0.06%                    
   0.04%  libpthread-2.31.so
   0.03%         interpreter
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%     perf-112066.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:26

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

Benchmark                                                      (regexp)  Mode  Cnt     Score    Error  Units
StringPatternMatcherBenchmark.pattern_find          ^(.*[aeuio].*){3,}$  avgt    5  1640.719 ±  2.874  us/op
StringPatternMatcherBenchmark.pattern_find:·asm     ^(.*[aeuio].*){3,}$  avgt            NaN             ---
StringPatternMatcherBenchmark.pattern_matches       ^(.*[aeuio].*){3,}$  avgt    5  1679.215 ± 21.278  us/op
StringPatternMatcherBenchmark.pattern_matches:·asm  ^(.*[aeuio].*){3,}$  avgt            NaN             ---
StringPatternMatcherBenchmark.string_matches        ^(.*[aeuio].*){3,}$  avgt    5  2403.586 ±  2.735  us/op
StringPatternMatcherBenchmark.string_matches:·asm   ^(.*[aeuio].*){3,}$  avgt            NaN             ---
