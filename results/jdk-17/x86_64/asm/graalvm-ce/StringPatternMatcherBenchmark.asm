# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
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
# Warmup Iteration   1: 1567.298 us/op
# Warmup Iteration   2: 1446.787 us/op
# Warmup Iteration   3: 1447.548 us/op
# Warmup Iteration   4: 1449.374 us/op
# Warmup Iteration   5: 1447.582 us/op
Iteration   1: 1459.247 us/op
Iteration   2: 1448.235 us/op
Iteration   3: 1447.932 us/op
Iteration   4: 1447.444 us/op
Iteration   5: 1447.149 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_find":
  1450.001 ±(99.9%) 19.969 us/op [Average]
  (min, avg, max) = (1447.149, 1450.001, 1459.247), stdev = 5.186
  CI (99.9%): [1430.033, 1469.970] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_find:·asm":
PrintAssembly processed: 213839 total address lines.
Perf output processed (skipped 58.910 seconds):
 Column 1: cycles (50749 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 

                              0x00007fd327000798:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                              0x00007fd32700079c:   0xf4f4f4f4                              
                            --------------------------------------------------------------------------------
                            [Entry Point]
                              # {method} {0x00000008002686c0} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$CharPropertyGreedy&apos;
                              # this:     rsi:rsi   = &apos;java/util/regex/Pattern$CharPropertyGreedy&apos;
                              # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
                              # parm1:    rcx       = int
                              # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                              #           [sp+0xa0]  (sp of caller)
   0.33%               ↗  ↗   0x00007fd3270007a0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.10%               │  │   0x00007fd3270007a4:   movabs $0x800000000,%r12
   0.69%               │  │   0x00007fd3270007ae:   add    %r12,%r10
   0.33%               │  │   0x00007fd3270007b1:   xor    %r12,%r12
   0.06%               │  │   0x00007fd3270007b4:   cmp    %r10,%rax
                       │  │   0x00007fd3270007b7:   jne    0x00007fd31f4ff780           ;   {runtime_call ic_miss_stub}
   0.12%               │  │   0x00007fd3270007bd:   nop
   0.67%               │  │   0x00007fd3270007be:   xchg   %ax,%ax
                       │  │ [Verified Entry Point]
   0.22%               │  │   0x00007fd3270007c0:   mov    %eax,-0x14000(%rsp)
   0.25%               │  │   0x00007fd3270007c7:   sub    $0x98,%rsp
   0.65%               │  │   0x00007fd3270007ce:   mov    %rbp,0x90(%rsp)
   0.50%               │  │   0x00007fd3270007d6:   mov    %rsi,0x48(%rsp)
   0.09%               │  │   0x00007fd3270007db:   mov    %rdx,0x40(%rsp)
   0.14%               │  │   0x00007fd3270007e0:   mov    %ecx,0x84(%rsp)
   0.63%               │  │   0x00007fd3270007e7:   mov    %r8,0x38(%rsp)               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.23%               │  │   0x00007fd3270007ec:   mov    0x10(%rdx),%r10d             ; implicit exception: dispatches to 0x00007fd327001b71
   0.08%               │  │   0x00007fd3270007f0:   cmp    %ecx,%r10d
                       │  │   0x00007fd3270007f3:   jle    0x00007fd327000fa7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
   0.10%               │  │   0x00007fd3270007f9:   nopl   0x0(%rax)
   0.40%               │  │   0x00007fd327000800:   test   %ecx,%ecx
                       │  │   0x00007fd327000802:   jl     0x00007fd327001a91           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@1 (line 47)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.23%               │  │   0x00007fd327000808:   mov    %ecx,%r11d
   0.02%               │  │   0x00007fd32700080b:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@35 (line 4275)
   0.08%               │  │   0x00007fd32700080e:   cmp    %r10d,%r11d
                       │  │   0x00007fd327000811:   jg     0x00007fd327001ad8           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@38 (line 4275)
   0.36%               │  │   0x00007fd327000817:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.25%               │  │   0x00007fd327000820:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007fd327001b8d
                       │  │                                                             ;   {metadata(&apos;java/lang/String&apos;)}
   0.05%               │  │   0x00007fd327000828:   jne    0x00007fd327001a72           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.11%               │  │   0x00007fd32700082e:   cmpb   $0x0,0x10(%r8)
   0.47%               │  │   0x00007fd327000833:   jne    0x00007fd327001aea           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
                       │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.20%               │  │   0x00007fd327000839:   mov    0x14(%r8),%r9d               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.03%               │  │   0x00007fd32700083d:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007fd327001ba9
   0.13%               │  │   0x00007fd327000845:   cmp    %ecx,%ebx
                       │  │   0x00007fd327000847:   jle    0x00007fd3270019c7           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.38%               │  │   0x00007fd32700084d:   cmp    %ecx,%ebx
                       │  │   0x00007fd32700084f:   jbe    0x00007fd327001ac6           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.20%               │  │   0x00007fd327000855:   movzbl 0x10(%rcx,%r9,8),%edi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.04%               │  │   0x00007fd32700085b:   nopl   0x0(%rax,%rax,1)
   0.07%               │  │   0x00007fd327000860:   cmp    $0xa,%edi
                       │  │   0x00007fd327000863:   je     0x00007fd3270018fc           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.42%               │  │   0x00007fd327000869:   cmp    $0xd,%edi
                       │  │   0x00007fd32700086c:   je     0x00007fd327001a60           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.23%               │  │   0x00007fd327000872:   cmp    $0x85,%edi
                       │  │   0x00007fd327000878:   je     0x00007fd327001b4d           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.07%               │  │   0x00007fd32700087e:   mov    0x14(%rsi),%edi              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.08%               │  │   0x00007fd327000881:   cmpl   $0xc39c78,0x8(,%rdi,8)       ; implicit exception: dispatches to 0x00007fd327001bc6
                       │  │                                                             ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$54+0x0000000800c39c78&apos;)}
   0.64%               │  │   0x00007fd32700088c:   jne    0x00007fd327001b20           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.07%               │  │   0x00007fd327000892:   mov    %r11d,%edi
   0.06%               │  │   0x00007fd327000895:   mov    $0x1,%r11d
   0.42%  ╭            │  │   0x00007fd32700089b:   jmp    0x00007fd3270008e3           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │            │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
   0.82%  │↗           │  │   0x00007fd3270008a0:   cmp    %edi,%ebx
          ││           │  │   0x00007fd3270008a2:   jbe    0x00007fd327001b14           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
          ││           │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
          ││           │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.23%  ││           │  │   0x00007fd3270008a8:   mov    %edi,%eax
   0.00%  ││           │  │   0x00007fd3270008aa:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@35 (line 4275)
   0.04%  ││           │  │   0x00007fd3270008ac:   cmp    %r10d,%eax
          ││           │  │   0x00007fd3270008af:   jg     0x00007fd327001975           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@38 (line 4275)
   0.75%  ││           │  │   0x00007fd3270008b5:   movzbl 0x10(%rdi,%r9,8),%ebp        ;*iand {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
          ││           │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
          ││           │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.13%  ││           │  │   0x00007fd3270008bb:   nopl   0x0(%rax,%rax,1)
          ││           │  │   0x00007fd3270008c0:   cmp    $0xa,%ebp
          ││           │  │   0x00007fd3270008c3:   je     0x00007fd327001a85           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.03%  ││           │  │   0x00007fd3270008c9:   cmp    $0xd,%ebp
          ││           │  │   0x00007fd3270008cc:   je     0x00007fd327001935           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.76%  ││           │  │   0x00007fd3270008d2:   cmp    $0x85,%ebp
          ││           │  │   0x00007fd3270008d8:   je     0x00007fd327001426           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.18%  ││           │  │   0x00007fd3270008de:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@80 (line 4284)
          ││           │  │   0x00007fd3270008e1:   mov    %eax,%edi                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
   0.20%  ↘│           │  │   0x00007fd3270008e3:   cmp    %edi,%r10d
           ╰           │  │   0x00007fd3270008e6:   jg     0x00007fd3270008a0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
   0.54%               │  │   0x00007fd3270008e8:   mov    %edi,0x80(%rsp)
   0.48%               │  │   0x00007fd3270008ef:   mov    %r11d,0x7c(%rsp)
   0.60%               │  │   0x00007fd3270008f4:   cmp    %edi,%r10d
                       │  │   0x00007fd3270008f7:   jg     0x00007fd3270014b2           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@89 (line 4286)
   0.16%               │  │   0x00007fd3270008fd:   data16 xchg %ax,%ax
   0.38%               │  │   0x00007fd327000900:   cmp    0x10(%rsi),%r11d
                       │  │   0x00007fd327000904:   jl     0x00007fd3270018f0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
   0.11%               │  │   0x00007fd32700090a:   mov    0xc(%rsi),%r9d               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@86 (line 4286)
   0.47%               │  │   0x00007fd32700090e:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007fd327001be6
   0.15%               │  │   0x00007fd327000916:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@94 (line 4287)
   0.39%               │  │   0x00007fd32700091a:   movabs $0x800000000,%r10
   0.09%               │  │   0x00007fd327000924:   lea    (%r10,%rbx,1),%rbx
   0.51%               │  │   0x00007fd327000928:   cmp    -0x1af(%rip),%rbx        # 0x00007fd327000780
                       │  │                                                             ;   {section_word}
   0.20%    ╭          │  │   0x00007fd32700092f:   je     0x00007fd32700094b
   0.13%    │          │  │   0x00007fd327000935:   cmp    -0x1b4(%rip),%rbx        # 0x00007fd327000788
            │          │  │                                                             ;   {section_word}
   0.06%    │          │  │   0x00007fd32700093c:   nopl   0x0(%rax)
   0.00%    │          │  │   0x00007fd327000940:   je     0x00007fd327000fb4
            │          │  │   0x00007fd327000946:   jmp    0x00007fd327001a39
   0.31%    ↘          │  │   0x00007fd32700094b:   mov    0x10(%rsi),%ecx              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@124 (line 4292)
   0.13%               │  │   0x00007fd32700094e:   cmp    0x7c(%rsp),%ecx
             ╭         │  │   0x00007fd327000952:   jne    0x00007fd327000976           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
             │         │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
   0.77%     │     ↗   │  │   0x00007fd327000958:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │     │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@131 (line 4293)
   0.25%     │     │   │  │   0x00007fd32700095d:   mov    0x90(%rsp),%rbp
   0.39%     │     │   │  │   0x00007fd327000965:   add    $0x98,%rsp
   0.32%     │     │   │  │   0x00007fd32700096c:   mov    0x348(%r15),%rcx
   0.56%     │     │   │  │   0x00007fd327000973:   test   %eax,(%rcx)                  ;   {poll_return}
   0.55%     │     │   │  │   0x00007fd327000975:   ret    
   0.67%     ↘     │   │  │   0x00007fd327000976:   mov    0x80(%rsp),%edi
                   │   │  │   0x00007fd32700097d:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@1 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
                   │   │  │   0x00007fd32700097f:   nop
   0.11%           │   │  │   0x00007fd327000980:   test   %edi,%edi
                   │   │  │   0x00007fd327000982:   jl     0x00007fd327001a27           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@1 (line 47)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.59%           │   │  │   0x00007fd327000988:   mov    0x38(%rsp),%r8               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                   │   │  │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.00%           │   │  │   0x00007fd32700098d:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007fd327001c06
                   │   │  │                                                             ;   {metadata(&apos;java/lang/String&apos;)}
   0.02%           │   │  │   0x00007fd327000995:   jne    0x00007fd327001a15           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.13%           │   │  │   0x00007fd32700099b:   movsbl 0x10(%r8),%r10d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::isLatin1@7 (line 4551)
                   │   │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.57%           │   │  │   0x00007fd3270009a0:   test   %r10d,%r10d
                   │   │  │   0x00007fd3270009a3:   jne    0x00007fd327001805           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
                   │   │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.00%           │   │  │   0x00007fd3270009a9:   mov    0x14(%r8),%r11d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r11=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                   │   │  │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.00%           │   │  │   0x00007fd3270009ad:   mov    0xc(,%r11,8),%r9d            ; implicit exception: dispatches to 0x00007fd327001c26
   0.57%           │   │  │   0x00007fd3270009b5:   cmp    %edi,%r9d
                   │   │  │   0x00007fd3270009b8:   jle    0x00007fd3270019d9           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.76%           │   │  │   0x00007fd3270009be:   xchg   %ax,%ax
                   │   │  │   0x00007fd3270009c0:   cmp    %edi,%r9d
                   │   │  │   0x00007fd3270009c3:   jbe    0x00007fd32700178c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.12%           │   │  │   0x00007fd3270009c9:   shl    $0x3,%r11                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::charAt@8 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.07%           │   │  │   0x00007fd3270009cd:   cmp    0x84(%rsp),%edi
   0.55%           │   │  │   0x00007fd3270009d4:   mov    0x84(%rsp),%ebx
   0.00%           │   │  │   0x00007fd3270009db:   cmovg  %edi,%ebx                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Math::max@2 (line 1562)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
   0.12%           │   │  │   0x00007fd3270009de:   mov    0x7c(%rsp),%edi
   0.02%           │   │  │   0x00007fd3270009e2:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
   0.59%           │   │  │   0x00007fd3270009e4:   mov    %ebx,0x68(%rsp)
   0.00%           │   │  │   0x00007fd3270009e8:   mov    %r11,%rbx
   0.11%           │   │  │   0x00007fd3270009eb:   mov    %edi,%r11d
   0.06%           │   │  │   0x00007fd3270009ee:   mov    %r9d,%edi
   0.58%           │   │  │   0x00007fd3270009f1:   mov    %r10d,%r9d
   0.00%           │   │  │   0x00007fd3270009f4:   mov    0x68(%rsp),%r10d
   0.13%      ╭    │   │  │   0x00007fd3270009f9:   jmp    0x00007fd327000b31           ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │    │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
              │    │   │  │   0x00007fd3270009fe:   xchg   %ax,%ax
   0.11%      │    │↗  │  │   0x00007fd327000a00:   mov    0xc(%rsi),%ebp               ; ImmutableOopMap {rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │    ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │    ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.82%      │    ││  │  │   0x00007fd327000a03:   mov    0x8(,%rbp,8),%ecx            ; implicit exception: dispatches to 0x00007fd327001c46
   0.25%      │    ││  │  │   0x00007fd327000a0a:   movabs $0x800000000,%r13
   0.24%      │    ││  │  │   0x00007fd327000a14:   lea    0x0(%r13,%rcx,1),%rcx
   0.63%      │    ││  │  │   0x00007fd327000a19:   cmp    -0x2a0(%rip),%rcx        # 0x00007fd327000780
              │    ││  │  │                                                             ;   {section_word}
   1.10%      │╭   ││  │  │   0x00007fd327000a20:   je     0x00007fd327000a38
   0.18%      ││   ││  │  │   0x00007fd327000a26:   cmp    -0x2a5(%rip),%rcx        # 0x00007fd327000788
              ││   ││  │  │                                                             ;   {section_word}
   0.10%      ││╭  ││  │  │   0x00007fd327000a2d:   je     0x00007fd327000b57
              │││  ││  │  │   0x00007fd327000a33:   jmp    0x00007fd327001985
   0.47%      │↘│  ││  │  │   0x00007fd327000a38:   nopl   0x0(%rax,%rax,1)
   0.05%      │ │  ││  │  │   0x00007fd327000a40:   cmp    0x10(%rdx),%r10d
              │ │╭ ││  │  │   0x00007fd327000a44:   jge    0x00007fd327000b4e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%      │ ││ ││  │  │   0x00007fd327000a4a:   test   %r9d,%r9d
              │ ││ ││  │  │   0x00007fd327000a4d:   jne    0x00007fd327001945           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.56%      │ ││ ││  │  │   0x00007fd327000a53:   cmp    %r10d,%edi
              │ ││ ││  │  │   0x00007fd327000a56:   jbe    0x00007fd327001446           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.43%      │ ││ ││  │  │   0x00007fd327000a5c:   mov    0x10(,%rbp,8),%ecx           ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.07%      │ ││ ││  │  │   0x00007fd327000a63:   cmpl   $0x269380,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007fd327001c66
              │ ││ ││  │  │                                                             ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
   0.55%      │ ││ ││  │  │   0x00007fd327000a6e:   jne    0x00007fd32700195d           ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.47%      │ ││ ││  │  │   0x00007fd327000a74:   cmp    0xc(%rbx),%r10d              ; implicit exception: dispatches to 0x00007fd327001c86
              │ ││ ││  │  │   0x00007fd327000a78:   jae    0x00007fd3270015ec           ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%      │ ││ ││  │  │   0x00007fd327000a7e:   mov    0xc(,%rcx,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.02%      │ ││ ││  │  │   0x00007fd327000a85:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007fd327001ca6
   1.90%      │ ││ ││  │  │   0x00007fd327000a8d:   movsbl 0x10(%rbx,%r10,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%      │ ││ ││  │  │   0x00007fd327000a93:   movzbl %bl,%edi                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%      │ ││ ││  │  │   0x00007fd327000a96:   cmp    %edi,%r9d
              │ ││ ││  │  │   0x00007fd327000a99:   jbe    0x00007fd32700191d
   0.50%      │ ││ ││  │  │   0x00007fd327000a9f:   movzbl %bl,%r9d                     ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.42%      │ ││ ││  │  │   0x00007fd327000aa3:   cmpb   $0x0,0x10(%r9,%rcx,8)
   0.74%      │ ││╭││  │  │   0x00007fd327000aa9:   jne    0x00007fd327000dab           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              │ │││││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
              │ │││││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.85%      │ │││││↗ │ ↗│↗  0x00007fd327000aaf:   mov    0x10(%rsi),%ecx              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
              │ ││││││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@124 (line 4292)
   1.78%      │ ││││││ │ │││  0x00007fd327000ab2:   cmp    0x64(%rsp),%ecx
              │ │││╰││ │ │││  0x00007fd327000ab6:   je     0x00007fd327000958           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
   0.39%      │ │││ ││ │ │││  0x00007fd327000abc:   mov    0x38(%rsp),%r8
   0.21%      │ │││ ││ │ │││  0x00007fd327000ac1:   movsbl 0x10(%r8),%r9d               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::isLatin1@7 (line 4551)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@1 (line 1514)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.49%      │ │││ ││ │ │││  0x00007fd327000ac6:   test   %r9d,%r9d
              │ │││ ││ │ │││  0x00007fd327000ac9:   jne    0x00007fd327001a4e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@1 (line 1514)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.44%      │ │││ ││ │ │││  0x00007fd327000acf:   mov    0x68(%rsp),%r10d
   0.12%      │ │││ ││ │ │││  0x00007fd327000ad4:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.01%      │ │││ ││ │ │││  0x00007fd327000ad7:   test   %r10d,%r10d
              │ │││ ││ │ │││  0x00007fd327000ada:   jl     0x00007fd3270018de           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.29%      │ │││ ││ │ │││  0x00007fd327000ae0:   mov    0x14(%r8),%edx               ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ │││ ││ │ │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.38%      │ │││ ││ │ │││  0x00007fd327000ae4:   mov    0xc(,%rdx,8),%edi            ; implicit exception: dispatches to 0x00007fd327001cc6
   1.52%      │ │││ ││ │ │││  0x00007fd327000aeb:   cmp    %r10d,%edi
              │ │││ ││ │ │││  0x00007fd327000aee:   jle    0x00007fd327001b5f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.39%      │ │││ ││ │ │││  0x00007fd327000af4:   cmp    %r10d,%edi
              │ │││ ││ │ │││  0x00007fd327000af7:   jbe    0x00007fd32700146d           ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.35%      │ │││ ││ │ │││  0x00007fd327000afd:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ │││ ││ │ │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.20%      │ │││ ││ │ │││  0x00007fd327000b04:   test   %eax,(%r11)                  ;   {poll}
   0.17%      │ │││ ││ │ │││  0x00007fd327000b07:   shl    $0x3,%rdx                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@8 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.12%      │ │││ ││ │ │││  0x00007fd327000b0b:   mov    0x64(%rsp),%r11d
   0.31%      │ │││ ││ │ │││  0x00007fd327000b10:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
   0.17%      │ │││ ││ │ │││  0x00007fd327000b13:   cmp    0x84(%rsp),%r10d
   0.18%      │ │││ ││ │ │││  0x00007fd327000b1b:   mov    0x84(%rsp),%ebx
   0.13%      │ │││ ││ │ │││  0x00007fd327000b22:   cmovg  %r10d,%ebx                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.Math::max@2 (line 1562)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
   0.27%      │ │││ ││ │ │││  0x00007fd327000b26:   mov    %ebx,%r10d
   0.17%      │ │││ ││ │ │││  0x00007fd327000b29:   mov    %rdx,%rbx
   0.18%      │ │││ ││ │ │││  0x00007fd327000b2c:   mov    0x40(%rsp),%rdx              ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.13%      ↘ │││ ││ │ │││  0x00007fd327000b31:   mov    %r10d,0x68(%rsp)
   0.90%        │││ ││ │ │││  0x00007fd327000b36:   mov    %r11d,0x64(%rsp)
   0.17%        │││ ││ │ │││  0x00007fd327000b3b:   nopl   0x0(%rax,%rax,1)
   0.38%        │││ ││ │ │││  0x00007fd327000b40:   cmp    %r11d,%ecx
                │││ ╰│ │ │││  0x00007fd327000b43:   jle    0x00007fd327000a00
                │││  │ │ │││  0x00007fd327000b49:   jmp    0x00007fd3270019af           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                │││  │ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
                │↘│  │ │ │││  0x00007fd327000b4e:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                │ │  │ │ │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@50 (line 3957)
                │ │  │ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                │ │  ╰ │ │││  0x00007fd327000b52:   jmp    0x00007fd327000aaf
   0.12%        ↘ │    │ │││  0x00007fd327000b57:   mov    0x40(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.14%          │    │ │││  0x00007fd327000b5a:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007fd327001ce6
   0.11%          │    │ │││  0x00007fd327000b62:   mov    0x10(,%rbp,8),%ebx           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@5 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007fd327000b69:   cmp    %ebx,%r9d
                  │    │ │││  0x00007fd327000b6c:   jbe    0x00007fd3270018c6           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%          │    │ │││  0x00007fd327000b72:   shl    $0x3,%rcx                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@1 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%          │    │ │││  0x00007fd327000b76:   mov    0x10(%rcx,%rbx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007fd327000b7a:   nopw   0x0(%rax,%rax,1)
   0.08%          │    │ │││  0x00007fd327000b80:   test   %ebx,%ebx
                  │    │ │││  0x00007fd327000b82:   jl     0x00007fd327001afc           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │    │ │││  0x00007fd327000b88:   mov    0xc(,%rbp,8),%edi            ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%          │    │ │││  0x00007fd327000b8f:   mov    %edi,0x30(%rsp)
   0.10%          │    │ │││  0x00007fd327000b93:   nopw   0x0(%rax,%rax,1)
   0.07%          │    │ │││  0x00007fd327000b9c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.12%          │    │ │││  0x00007fd327000ba0:   cmpl   $0xc39ed8,0x8(,%rdi,8)       ; implicit exception: dispatches to 0x00007fd327001d06
                  │    │ │││                                                            ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
   0.23%          │    │ │││  0x00007fd327000bab:   jne    0x00007fd32700188d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007fd327000bb1:   mov    0x38(%rdx),%r13d             ; ImmutableOopMap {rcx=Oop rdx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop r13=NarrowOop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.10%          │    │ │││  0x00007fd327000bb5:   mov    0xc(,%r13,8),%r14d           ; implicit exception: dispatches to 0x00007fd327001d26
   0.15%          │    │ │││  0x00007fd327000bbd:   mov    0x14(,%rbp,8),%r8d           ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@21 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │    │ │││  0x00007fd327000bc5:   cmp    %r8d,%r14d
                  │    │ │││  0x00007fd327000bc8:   jbe    0x00007fd327001875           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007fd327000bce:   mov    %r8d,%edx
   0.14%          │    │ │││  0x00007fd327000bd1:   inc    %edx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@60 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%          │    │ │││  0x00007fd327000bd3:   cmp    %edx,%r14d
                  │    │ │││  0x00007fd327000bd6:   jbe    0x00007fd32700185d           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007fd327000bdc:   mov    0x14(,%rdi,8),%r14d          ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007fd327000be4:   cmp    %r14d,%r9d
                  │    │ │││  0x00007fd327000be7:   jbe    0x00007fd327001845           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%          │    │ │││  0x00007fd327000bed:   mov    0x10(,%rdi,8),%r11d          ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%          │    │ │││  0x00007fd327000bf5:   cmp    %r11d,%r9d
                  │    │ │││  0x00007fd327000bf8:   jbe    0x00007fd32700182b           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%          │    │ │││  0x00007fd327000bfe:   shl    $0x3,%r13                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@17 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007fd327000c02:   mov    0x10(%r13,%rdx,4),%esi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%          │    │ │││  0x00007fd327000c07:   mov    %esi,0x60(%rsp)
   0.18%          │    │ │││  0x00007fd327000c0b:   mov    0x10(%r13,%r8,4),%esi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │    │ │││  0x00007fd327000c10:   mov    %esi,0x5c(%rsp)
   0.11%          │    │ │││  0x00007fd327000c14:   mov    %ebx,0x10(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.35%          │    │ │││  0x00007fd327000c19:   mov    %r10d,0x10(%r13,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.42%          │    │ │││  0x00007fd327000c1e:   mov    %ebp,%r13d
   0.01%          │    │ │││  0x00007fd327000c21:   shl    $0x3,%r13                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@107 (line 4290)
   0.08%          │    │ │││  0x00007fd327000c25:   cmp    0x10(%rcx,%r14,4),%r10d
                  │    │ │││  0x00007fd327000c2a:   jle    0x00007fd327001814           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.39%          │    │ │││  0x00007fd327000c30:   mov    %ebp,0x34(%rsp)
   0.01%          │    │ │││  0x00007fd327000c34:   mov    0x10(%rcx,%r11,4),%r14d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │    │ │││  0x00007fd327000c39:   mov    %r14d,0x58(%rsp)
   0.07%          │    │ │││  0x00007fd327000c3e:   mov    %r14d,%r8d
   0.29%          │    │ │││  0x00007fd327000c41:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │    │ │││  0x00007fd327000c44:   mov    %edi,%edx
   0.08%          │    │ │││  0x00007fd327000c46:   shl    $0x3,%rdx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007fd327000c4a:   cmp    0x18(,%rdi,8),%r14d
                  │   ╭│ │││  0x00007fd327000c52:   jge    0x00007fd327000df3           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%          │   ││ │││  0x00007fd327000c58:   mov    %ebx,0x54(%rsp)
   0.11%          │   ││ │││  0x00007fd327000c5c:   mov    0x24(,%rdi,8),%ebx           ; ImmutableOopMap {rcx=Oop rdx=Oop rbx=NarrowOop r13=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   ││ │││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │   ││ │││  0x00007fd327000c63:   cmpl   $0x267620,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007fd327001d46
                  │   ││ │││                                                            ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.29%          │   ││ │││  0x00007fd327000c6e:   jne    0x00007fd327001b32           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │   ││ │││  0x00007fd327000c74:   mov    0x10(,%rbx,8),%r10d          ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │   ││ │││  0x00007fd327000c7c:   nopl   0x0(%rax)
   0.29%          │   ││ │││  0x00007fd327000c80:   cmp    %r10d,%r9d
                  │   ││ │││  0x00007fd327000c83:   jbe    0x00007fd3270017d7           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   ││ │││  0x00007fd327000c89:   mov    %rdx,0x18(%rsp)
   0.08%          │   ││ │││  0x00007fd327000c8e:   mov    %r13,0x8(%rsp)
   0.04%          │   ││ │││  0x00007fd327000c93:   mov    0x68(%rsp),%r9d
   0.29%          │   ││ │││  0x00007fd327000c98:   mov    0x38(%rsp),%rax
   0.02%          │   ││ │││  0x00007fd327000c9d:   mov    0x40(%rsp),%rdi
   0.11%          │   ││ │││  0x00007fd327000ca2:   mov    0xc(,%rbx,8),%ebp            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │   ││ │││  0x00007fd327000ca9:   test   %eax,0x0(,%rbp,8)            ; implicit exception: deoptimizes
                  │   ││ │││                                                            ; ImmutableOopMap {rax=Oop rcx=Oop rbx=NarrowOop rbp=NarrowOop rdi=Oop [8]=Oop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.56%          │   ││ │││  0x00007fd327000cb0:   mov    %r8d,0x10(%rcx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%          │   ││ │││  0x00007fd327000cb5:   mov    0x10(%rcx,%r10,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%          │   ││ │││  0x00007fd327000cba:   mov    %r9d,0x10(%rcx,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.76%          │   ││ │││  0x00007fd327000cbf:   shl    $0x3,%rbp                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%          │   ││ │││  0x00007fd327000cc3:   mov    %ebx,%r10d
   0.03%          │   ││ │││  0x00007fd327000cc6:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%          │   ││ │││  0x00007fd327000cca:   mov    %rbp,%rsi
   0.37%          │   ││ │││  0x00007fd327000ccd:   mov    %rdi,%rdx
   0.03%          │   ││ │││  0x00007fd327000cd0:   mov    %r9d,%ecx
   0.02%          │   ││ │││  0x00007fd327000cd3:   mov    %rax,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%          │   ││ │││  0x00007fd327000cd6:   mov    %r10,(%rsp)
   0.38%          │   ││ │││  0x00007fd327000cda:   mov    %r11d,0x50(%rsp)
   0.04%          │   ││ │││  0x00007fd327000cdf:   mov    %ebx,0x14(%rsp)
   0.03%          │   ││ │││  0x00007fd327000ce3:   xchg   %ax,%ax
   0.02%          │   ││ │││  0x00007fd327000ce5:   movabs $0x800268190,%rax
   0.39%          │   │╰ │││  0x00007fd327000cef:   call   0x00007fd3270007a0           ; ImmutableOopMap {[0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                  │   │  │││                                                            ;   {virtual_call}
   0.15%          │   │  │││  0x00007fd327000cf4:   nop
   0.20%          │   │  │││  0x00007fd327000cf5:   mov    0x40(%rsp),%rdx
   0.66%          │   │  │││  0x00007fd327000cfa:   mov    0x40(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*istore {reexecute=1 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupHead::match@31 (line 4789)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.70%          │   │  │││  0x00007fd327000cfd:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007fd327001d66
   1.54%          │   │  │││  0x00007fd327000d04:   mov    0x14(%rsp),%ebx
   0.00%          │   │  │││  0x00007fd327000d08:   mov    0x10(,%rbx,8),%r8d           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@38 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │  │││  0x00007fd327000d10:   cmp    %r8d,%ecx
                  │   │  │││  0x00007fd327000d13:   jbe    0x00007fd3270017ad           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.42%          │   │  │││  0x00007fd327000d19:   mov    0x50(%rsp),%r11d
   0.04%          │   │  │││  0x00007fd327000d1e:   shl    $0x3,%rsi                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@34 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │  │││  0x00007fd327000d22:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   1.06%          │   │  │││  0x00007fd327000d27:   test   %eax,%eax
                  │   │ ╭│││  0x00007fd327000d29:   jne    0x00007fd327000d53           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@60 (line 4880)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%          │   │ ││││  0x00007fd327000d2f:   mov    0x30(%rsp),%edi
   0.03%          │   │ ││││  0x00007fd327000d33:   mov    0x10(,%rdi,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@68 (line 4881)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │ ││││  0x00007fd327000d3b:   nopl   0x0(%rax,%rax,1)
   0.34%          │   │ ││││  0x00007fd327000d40:   cmp    %r8d,%ecx
                  │   │ ││││  0x00007fd327000d43:   jbe    0x00007fd327001aa5
   0.01%          │   │ ││││  0x00007fd327000d49:   mov    0x58(%rsp),%r14d
   0.04%          │   │ ││││  0x00007fd327000d4e:   mov    %r14d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@73 (line 4881)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │   │ ↘│││  0x00007fd327000d53:   test   %eax,%eax
                  │   │  │││  0x00007fd327000d55:   jne    0x00007fd32700120b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%          │   │  │││  0x00007fd327000d5b:   mov    0x34(%rsp),%ebp
   0.01%          │   │  │││  0x00007fd327000d5f:   mov    0x38(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=NarrowOop [8]=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@73 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%          │   │  │││  0x00007fd327000d62:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007fd327001d86
   0.08%          │   │  │││  0x00007fd327000d69:   mov    0x14(,%rbp,8),%r8d           ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@83 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%          │   │  │││  0x00007fd327000d71:   cmp    %r8d,%ecx
                  │   │  │││  0x00007fd327000d74:   jbe    0x00007fd3270013df           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │  │││  0x00007fd327000d7a:   mov    %r8d,%r10d
   0.03%          │   │  │││  0x00007fd327000d7d:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@98 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │   │  │││  0x00007fd327000d80:   cmp    %r10d,%ecx
                  │   │  │││  0x00007fd327000d83:   jbe    0x00007fd3270013df           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.27%          │   │  │││  0x00007fd327000d89:   mov    0x5c(%rsp),%r11d
   0.00%          │   │  │││  0x00007fd327000d8e:   mov    0x60(%rsp),%r9d
   0.03%          │   │  │││  0x00007fd327000d93:   shl    $0x3,%rsi                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │   │  │││  0x00007fd327000d97:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.36%          │   │  │││  0x00007fd327000d9c:   mov    %r9d,0x10(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │   │  │││  0x00007fd327000da1:   mov    0x48(%rsp),%rsi
   0.05%          │   │  ╰││  0x00007fd327000da6:   jmp    0x00007fd327000aaf           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │   │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@47 (line 3954)
                  │   │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.71%          ↘   │   ││  0x00007fd327000dab:   mov    0xc(,%rbp,8),%esi            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                      │   ││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.47%              │   ││  0x00007fd327000db2:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                      │   ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.34%              │   ││  0x00007fd327000db9:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@28 (line 3954)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%              │   ││  0x00007fd327000dbd:   mov    0x68(%rsp),%r10d
   0.03%              │   ││  0x00007fd327000dc2:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 3954)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%              │   ││  0x00007fd327000dc5:   mov    %rdx,%r11
   0.05%              │   ││  0x00007fd327000dc8:   mov    %r10d,%ecx
   0.20%              │   ││  0x00007fd327000dcb:   mov    0x38(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%              │   ││  0x00007fd327000dd0:   nop
   0.04%              │   ││  0x00007fd327000dd1:   movabs $0x800268190,%rax
   0.07%              │   ╰│  0x00007fd327000ddb:   call   0x00007fd3270007a0           ; ImmutableOopMap {[56]=Oop [64]=Oop [72]=Oop }
                      │    │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                      │    │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                      │    │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                      │    │                                                            ;   {virtual_call}
   0.00%              │    │  0x00007fd327000de0:   nop
   0.11%              │    │  0x00007fd327000de1:   test   %eax,%eax
                      │    │  0x00007fd327000de3:   jne    0x00007fd32700120b
   0.09%              │    │  0x00007fd327000de9:   mov    0x48(%rsp),%rsi
   0.62%              │    ╰  0x00007fd327000dee:   jmp    0x00007fd327000aaf           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
                      ↘       0x00007fd327000df3:   mov    %rdx,0x18(%rsp)
                              0x00007fd327000df8:   mov    %r13,0x8(%rsp)
                              0x00007fd327000dfd:   mov    %esi,%r11d
                              0x00007fd327000e00:   mov    0x60(%rsp),%r9d
                              0x00007fd327000e05:   mov    %ebx,0x54(%rsp)
                              0x00007fd327000e09:   mov    0x48(%rsp),%rsi
                              0x00007fd327000e0e:   cmp    0x1c(,%rdi,8),%r14d
                              0x00007fd327000e16:   jge    0x00007fd32700177d           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.regex.Pattern$Loop::match@83 (line 4888)
....................................................................................................
  67.43%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 

                0x00007fd327000f97:   call   0x00007fd31f4ffd80           ; ImmutableOopMap {[8]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ;   {virtual_call}
                0x00007fd327000f9c:   nop
                0x00007fd327000f9d:   mov    0x40(%rsp),%rdx
                0x00007fd327000fa2:   jmp    0x00007fd327000d53           ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@7 (line 4270)
   0.02%        0x00007fd327000fa7:   mov    $0x0,%r11d
   0.30%        0x00007fd327000fad:   mov    %ecx,%edi
   0.04%        0x00007fd327000faf:   jmp    0x00007fd3270008e8
   0.10%        0x00007fd327000fb4:   mov    0x40(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop r10=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.11%        0x00007fd327000fb8:   mov    0xc(,%r10,8),%ebx            ; implicit exception: dispatches to 0x00007fd327001e26
   0.09%        0x00007fd327000fc0:   mov    0x10(,%r9,8),%eax            ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@5 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%        0x00007fd327000fc8:   cmp    %eax,%ebx
                0x00007fd327000fca:   jbe    0x00007fd327001687           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%        0x00007fd327000fd0:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@1 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%        0x00007fd327000fd4:   mov    0x10(%r10,%rax,4),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%        0x00007fd327000fd9:   nopl   0x0(%rax)
   0.00%        0x00007fd327000fe0:   test   %eax,%eax
                0x00007fd327000fe2:   jl     0x00007fd327001672           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%        0x00007fd327000fe8:   mov    0xc(,%r9,8),%ebp             ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%        0x00007fd327000ff0:   mov    %ebp,0x34(%rsp)
   0.09%        0x00007fd327000ff4:   nopl   0x0(%rax,%rax,1)
   0.00%        0x00007fd327000ffc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r9=NarrowOop r10=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.10%        0x00007fd327001000:   cmpl   $0xc39ed8,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007fd327001e46
                                                                          ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
   0.18%        0x00007fd32700100b:   jne    0x00007fd32700165d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007fd327001011:   mov    0x38(%rdx),%r13d             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r9=NarrowOop r10=Oop r13=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.11%        0x00007fd327001015:   mov    0xc(,%r13,8),%r14d           ; implicit exception: dispatches to 0x00007fd327001e66
   0.12%        0x00007fd32700101d:   mov    0x14(,%r9,8),%r8d            ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@21 (line 4815)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%        0x00007fd327001025:   cmp    %r8d,%r14d
                0x00007fd327001028:   jbe    0x00007fd327001648           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%        0x00007fd32700102e:   mov    %r8d,%edx
   0.09%        0x00007fd327001031:   inc    %edx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@60 (line 4819)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%        0x00007fd327001033:   cmp    %edx,%r14d
                0x00007fd327001036:   jbe    0x00007fd32700161c           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%        0x00007fd32700103c:   mov    0x14(,%rbp,8),%r14d          ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007fd327001044:   cmp    %r14d,%ebx
                0x00007fd327001047:   jbe    0x00007fd32700148e           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%        0x00007fd32700104d:   mov    0x10(,%rbp,8),%r11d          ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%        0x00007fd327001055:   cmp    %r11d,%ebx
                0x00007fd327001058:   jbe    0x00007fd327001631           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%        0x00007fd32700105e:   shl    $0x3,%r13                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@17 (line 4815)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%        0x00007fd327001062:   mov    0x10(%r13,%rdx,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%        0x00007fd327001067:   mov    %ecx,0x78(%rsp)
   0.11%        0x00007fd32700106b:   mov    0x10(%r13,%r8,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%        0x00007fd327001070:   mov    %ecx,0x74(%rsp)
   0.01%        0x00007fd327001074:   mov    %eax,0x10(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%        0x00007fd327001079:   mov    %edi,0x10(%r13,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%        0x00007fd32700107e:   mov    %r9d,%r13d
   0.07%        0x00007fd327001081:   shl    $0x3,%r13                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@107 (line 4290)
   0.00%        0x00007fd327001085:   cmp    0x10(%r10,%r14,4),%edi
                0x00007fd32700108a:   jle    0x00007fd327001605           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.25%        0x00007fd327001090:   mov    %r9d,0x30(%rsp)
   0.07%        0x00007fd327001095:   mov    0x10(%r10,%r11,4),%r14d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007fd32700109a:   mov    %r14d,0x70(%rsp)
   0.09%        0x00007fd32700109f:   mov    %r14d,%r8d
   0.14%        0x00007fd3270010a2:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%        0x00007fd3270010a5:   mov    %ebp,%edx
   0.01%        0x00007fd3270010a7:   shl    $0x3,%rdx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%        0x00007fd3270010ab:   cmp    0x18(,%rbp,8),%r14d
          ╭     0x00007fd3270010b3:   jge    0x00007fd327001229           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%  │     0x00007fd3270010b9:   mov    %eax,0x6c(%rsp)
   0.01%  │     0x00007fd3270010bd:   mov    0x24(,%rbp,8),%eax           ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop r10=Oop r13=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%  │     0x00007fd3270010c4:   cmpl   $0x267620,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fd327001e86
          │                                                               ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.19%  │     0x00007fd3270010cf:   jne    0x00007fd3270015d1           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │     0x00007fd3270010d5:   mov    0x10(,%rax,8),%edi           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │     0x00007fd3270010dc:   nopl   0x0(%rax)
   0.13%  │     0x00007fd3270010e0:   cmp    %edi,%ebx
          │     0x00007fd3270010e2:   jbe    0x00007fd3270015b9           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │     0x00007fd3270010e8:   mov    %rdx,0x28(%rsp)
   0.03%  │     0x00007fd3270010ed:   mov    %r13,0x20(%rsp)
   0.09%  │     0x00007fd3270010f2:   mov    0x80(%rsp),%r9d
   0.13%  │     0x00007fd3270010fa:   mov    0x38(%rsp),%rbp
   0.06%  │     0x00007fd3270010ff:   mov    0x40(%rsp),%rbx
   0.04%  │     0x00007fd327001104:   mov    0xc(,%rax,8),%r13d           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%  │     0x00007fd32700110c:   test   %eax,0x0(,%r13,8)            ; implicit exception: deoptimizes
          │                                                               ; ImmutableOopMap {rax=NarrowOop rbx=Oop rbp=Oop r10=Oop r13=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.44%  │     0x00007fd327001114:   mov    %r8d,0x10(%r10,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%  │     0x00007fd327001119:   mov    0x10(%r10,%rdi,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%  │     0x00007fd32700111e:   mov    %r9d,0x10(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.62%  │     0x00007fd327001123:   shl    $0x3,%r13                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%  │     0x00007fd327001127:   mov    %eax,%r10d
   0.00%  │     0x00007fd32700112a:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │     0x00007fd32700112e:   mov    %r13,%rsi
   0.26%  │     0x00007fd327001131:   mov    %rbx,%rdx
   0.03%  │     0x00007fd327001134:   mov    %r9d,%ecx
   0.01%  │     0x00007fd327001137:   mov    %rbp,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%  │     0x00007fd32700113a:   mov    %r10,0x18(%rsp)
   0.23%  │     0x00007fd32700113f:   mov    %r11d,0x68(%rsp)
   0.02%  │     0x00007fd327001144:   mov    %eax,0x14(%rsp)
   0.01%  │     0x00007fd327001148:   nop
   0.01%  │     0x00007fd327001149:   movabs $0x800268190,%rax
   0.25%  │     0x00007fd327001153:   call   0x00007fd3270007a0           ; ImmutableOopMap {[20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │                                                               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                               ;   {virtual_call}
   0.07%  │     0x00007fd327001158:   nop
          │     0x00007fd327001159:   mov    0x40(%rsp),%rdx
   0.23%  │     0x00007fd32700115e:   mov    0x40(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │                                                               ;*istore {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) java.util.regex.Pattern$GroupHead::match@31 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%  │     0x00007fd327001161:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007fd327001ea6
   0.20%  │     0x00007fd327001168:   mov    0x14(%rsp),%r8d
   0.14%  │     0x00007fd32700116d:   mov    0x10(,%r8,8),%r8d            ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@38 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%  │     0x00007fd327001175:   cmp    %r8d,%ecx
          │     0x00007fd327001178:   jbe    0x00007fd327001589           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%  │     0x00007fd32700117e:   mov    0x68(%rsp),%r11d
          │     0x00007fd327001183:   shl    $0x3,%rsi                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@34 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%  │     0x00007fd327001187:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.22%  │     0x00007fd32700118c:   test   %eax,%eax
          │╭    0x00007fd32700118e:   jne    0x00007fd3270011b3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Pattern$Loop::match@60 (line 4880)
          ││                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          ││                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%  ││    0x00007fd327001194:   mov    0x34(%rsp),%ebp
          ││    0x00007fd327001198:   mov    0x10(,%rbp,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Pattern$Loop::match@68 (line 4881)
          ││                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          ││                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%  ││    0x00007fd3270011a0:   cmp    %r8d,%ecx
          ││    0x00007fd3270011a3:   jbe    0x00007fd3270018a5
   0.14%  ││    0x00007fd3270011a9:   mov    0x70(%rsp),%r14d
   0.02%  ││    0x00007fd3270011ae:   mov    %r14d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Pattern$Loop::match@73 (line 4881)
          ││                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          ││                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%  │↘ ↗  0x00007fd3270011b3:   test   %eax,%eax
          │ ╭│  0x00007fd3270011b5:   jne    0x00007fd32700120b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%  │ ││  0x00007fd3270011bb:   mov    0x30(%rsp),%r9d
   0.08%  │ ││  0x00007fd3270011c0:   mov    0x38(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r9=NarrowOop [32]=Oop [56]=Oop [64]=Oop [72]=Oop }
          │ ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@73 (line 4820)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%  │ ││  0x00007fd3270011c3:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007fd327001ec6
   0.08%  │ ││  0x00007fd3270011ca:   mov    0x14(,%r9,8),%r8d            ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@83 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%  │ ││  0x00007fd3270011d2:   cmp    %r8d,%ecx
          │ ││  0x00007fd3270011d5:   jbe    0x00007fd3270013fb           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%  │ ││  0x00007fd3270011db:   mov    %r8d,%r10d
   0.02%  │ ││  0x00007fd3270011de:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@98 (line 4824)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%  │ ││  0x00007fd3270011e1:   cmp    %r10d,%ecx
          │ ││  0x00007fd3270011e4:   jbe    0x00007fd3270013fb           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%  │ ││  0x00007fd3270011ea:   mov    0x74(%rsp),%ecx
   0.11%  │ ││  0x00007fd3270011ee:   mov    0x78(%rsp),%r11d
   0.02%  │ ││  0x00007fd3270011f3:   shl    $0x3,%rsi                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%  │ ││  0x00007fd3270011f7:   mov    %ecx,0x10(%rsi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.29%  │ ││  0x00007fd3270011fc:   mov    %r11d,0x10(%rsi,%r10,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.33%  │ ││  0x00007fd327001201:   mov    0x48(%rsp),%rsi
   0.02%  │ ││  0x00007fd327001206:   jmp    0x00007fd32700094b
   0.12%  │ ↘│  0x00007fd32700120b:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@120 (line 4291)
          │  │  0x00007fd327001210:   mov    0x90(%rsp),%rbp
   0.24%  │  │  0x00007fd327001218:   add    $0x98,%rsp
   0.04%  │  │  0x00007fd32700121f:   mov    0x348(%r15),%rcx
   0.09%  │  │  0x00007fd327001226:   test   %eax,(%rcx)                  ;   {poll_return}
   0.21%  │  │  0x00007fd327001228:   ret    
   0.03%  ↘  │  0x00007fd327001229:   mov    %rdx,0x28(%rsp)
   0.03%     │  0x00007fd32700122e:   mov    %r13,0x20(%rsp)
   0.02%     │  0x00007fd327001233:   mov    0x78(%rsp),%r11d
   0.01%     │  0x00007fd327001238:   mov    %eax,0x6c(%rsp)
             │  0x00007fd32700123c:   nopl   0x0(%rax)
             │  0x00007fd327001240:   cmp    0x1c(,%rbp,8),%r14d
             │  0x00007fd327001248:   jge    0x00007fd32700157a           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@83 (line 4888)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007fd32700124e:   mov    0x20(,%rbp,8),%esi           ;*getfield posIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@87 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd327001255:   cmp    $0xffffffff,%esi
             │  0x00007fd327001258:   je     0x00007fd32700156b           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@91 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     │  0x00007fd32700125e:   mov    0x40(%rsp),%rdx
   0.01%     │  0x00007fd327001263:   mov    0x44(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%     │  0x00007fd327001267:   cmp    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007fd327001ee6
             │  0x00007fd32700126f:   jae    0x00007fd32700154a           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@102 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%     │  0x00007fd327001275:   mov    %r8d,0x68(%rsp)
   0.01%     │  0x00007fd32700127a:   shl    $0x3,%r10                    ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@95 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     │  0x00007fd32700127e:   mov    0x10(%r10,%rsi,4),%esi       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     │  0x00007fd327001283:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rsi=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.09%     │  0x00007fd32700128a:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@102 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd32700128e:   mov    0x80(%rsp),%edx              ;*invokevirtual contains {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd327001295:   xchg   %ax,%ax
             │  0x00007fd327001297:   call   0x00007fd31fc26c60           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual contains {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {optimized virtual_call}
             │  0x00007fd32700129c:   nop
             │  0x00007fd32700129d:   data16 xchg %ax,%ax
   0.02%     │  0x00007fd3270012a0:   test   %eax,%eax
             │  0x00007fd3270012a2:   jne    0x00007fd32700153b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@107 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012a8:   mov    0x34(%rsp),%ebp
             │  0x00007fd3270012ac:   mov    0x40(%rsp),%rdx
   0.02%     │  0x00007fd3270012b1:   mov    0x40(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@107 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012b4:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007fd327001f06
             │  0x00007fd3270012bb:   mov    0x10(,%rbp,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@126 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012c3:   cmp    %r8d,%ecx
             │  0x00007fd3270012c6:   jbe    0x00007fd327001515           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@133 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007fd3270012cc:   mov    0x68(%rsp),%ecx
             │  0x00007fd3270012d0:   mov    0x24(,%rbp,8),%r10d          ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@107 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012d8:   test   %eax,0x0(,%r10,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.02%     │  0x00007fd3270012e0:   shl    $0x3,%rsi                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@122 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012e4:   mov    %ecx,0x10(%rsi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@133 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012e9:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@135 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012ed:   mov    %r10,%rsi
   0.03%     │  0x00007fd3270012f0:   mov    %rdx,%r10
             │  0x00007fd3270012f3:   mov    0x80(%rsp),%ecx
             │  0x00007fd3270012fa:   mov    0x38(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270012ff:   xchg   %ax,%ax
   0.03%     │  0x00007fd327001301:   movabs $0x800267620,%rax
             │  0x00007fd32700130b:   call   0x00007fd31fc1cd40           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {virtual_call}
   0.00%     │  0x00007fd327001310:   nop
             │  0x00007fd327001311:   test   %eax,%eax
             │  0x00007fd327001313:   jne    0x00007fd327001506           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@148 (line 4901)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%     │  0x00007fd327001319:   mov    0x34(%rsp),%ebp
             │  0x00007fd32700131d:   mov    0x20(,%rbp,8),%esi           ;*getfield posIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@165 (line 4905)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd327001324:   cmp    $0xffffffff,%esi
             │  0x00007fd327001327:   je     0x00007fd3270014f7           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@169 (line 4905)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%     │  0x00007fd32700132d:   mov    0x40(%rsp),%rdx
             │  0x00007fd327001332:   mov    0x40(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*istore {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@144 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd327001336:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fd327001f26
             │  0x00007fd32700133e:   mov    0x10(,%rbp,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@158 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%     │  0x00007fd327001346:   cmp    %r8d,%r11d
             │  0x00007fd327001349:   jbe    0x00007fd3270014d1           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@163 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd32700134f:   mov    0x44(%rdx),%r11d             ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@173 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd327001353:   nopw   0x0(%rax,%rax,1)
             │  0x00007fd32700135c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop r10=NarrowOop r11=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*istore {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@144 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007fd327001360:   cmp    0xc(,%r11,8),%esi            ; implicit exception: dispatches to 0x00007fd327001f46
             │  0x00007fd327001368:   jae    0x00007fd3270017f2           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd32700136e:   mov    0x70(%rsp),%r14d
             │  0x00007fd327001373:   shl    $0x3,%r11                    ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@173 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007fd327001377:   mov    0x10(%r11,%rsi,4),%esi       ;*istore {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@144 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     │  0x00007fd32700137c:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rsi=NarrowOop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │  0x00007fd327001383:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@154 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007fd327001387:   mov    %r14d,0x10(%r10,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@163 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd32700138c:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd327001390:   mov    0x80(%rsp),%edx
             │  0x00007fd327001397:   call   0x00007fd31fc27380           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {optimized virtual_call}
             │  0x00007fd32700139c:   nop
             │  0x00007fd32700139d:   mov    0x34(%rsp),%ebp
   0.02%     │  0x00007fd3270013a1:   mov    0xc(,%rbp,8),%esi            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@185 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270013a8:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rsi=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │  0x00007fd3270013af:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@186 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007fd3270013b3:   mov    0x40(%rsp),%rdx
             │  0x00007fd3270013b8:   mov    0x80(%rsp),%ecx
             │  0x00007fd3270013bf:   mov    0x38(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007fd3270013c4:   nop
   0.02%     │  0x00007fd3270013c5:   movabs $0x800267f68,%rax
             │  0x00007fd3270013cf:   call   0x00007fd31fc24c20           ; ImmutableOopMap {[32]=Oop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {virtual_call}
   0.04%     │  0x00007fd3270013d4:   nop
             │  0x00007fd3270013d5:   mov    0x40(%rsp),%rdx
             ╰  0x00007fd3270013da:   jmp    0x00007fd3270011b3
                0x00007fd3270013df:   movl   $0xffffffe5,0x370(%r15)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
....................................................................................................
  11.80%  <total for region 2>

....[Hottest Regions]...............................................................................
  67.43%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 
  11.80%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 
   4.26%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 816 
   3.03%       jvmci, level 4  java.util.regex.Pattern$Begin::match, version 2, compile id 806 
   2.43%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 803 
   2.26%       jvmci, level 4  java.util.regex.IntHashSet::&lt;init&gt;, version 2, compile id 804 
   1.51%       jvmci, level 4  java.util.regex.Pattern$Begin::match, version 2, compile id 806 
   1.41%       jvmci, level 4  java.util.regex.IntHashSet::&lt;init&gt;, version 2, compile id 804 
   1.18%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 803 
   0.87%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 812 
   0.56%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 813 
   0.45%       jvmci, level 4  java.util.regex.IntHashSet::&lt;init&gt;, version 2, compile id 804 
   0.28%       jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 794 
   0.26%       jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 814 
   0.16%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 803 
   0.14%               kernel  [unknown] 
   0.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 816 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   0.08%               kernel  [unknown] 
   1.61%  <...other 381 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  79.23%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 
   4.54%       jvmci, level 4  java.util.regex.Pattern$Begin::match, version 2, compile id 806 
   4.39%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 816 
   4.11%       jvmci, level 4  java.util.regex.IntHashSet::&lt;init&gt;, version 2, compile id 804 
   3.83%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 803 
   1.25%               kernel  [unknown] 
   0.87%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 812 
   0.56%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 813 
   0.28%       jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 794 
   0.26%       jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 814 
   0.07%         libc-2.31.so  [unknown] 
   0.06%                       <unknown> 
   0.03%         libc-2.31.so  __strxfrm_l 
   0.02%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%            libjvm.so  HeapRegionManager::par_iterate 
   0.02%       hsdis-amd64.so  print_insn 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.02%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%         libc-2.31.so  _int_memalign 
   0.41%  <...other 139 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%       jvmci, level 4
   1.25%               kernel
   0.32%            libjvm.so
   0.15%         libc-2.31.so
   0.06%                     
   0.05%          interpreter
   0.04%  libjvmcicompiler.so
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.01%           ld-2.31.so
   0.01%      perf-114332.map
   0.00%          c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches
# Parameters: (regexp = ^(.*[aeuio].*){3,}$)

# Run progress: 33.33% complete, ETA 00:03:45
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1523.653 us/op
# Warmup Iteration   2: 1410.685 us/op
# Warmup Iteration   3: 1409.681 us/op
# Warmup Iteration   4: 1409.067 us/op
# Warmup Iteration   5: 1410.775 us/op
Iteration   1: 1411.019 us/op
Iteration   2: 1410.493 us/op
Iteration   3: 1410.082 us/op
Iteration   4: 1410.205 us/op
Iteration   5: 1410.127 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches":
  1410.385 ±(99.9%) 1.497 us/op [Average]
  (min, avg, max) = (1410.082, 1410.385, 1411.019), stdev = 0.389
  CI (99.9%): [1408.888, 1411.882] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches:·asm":
PrintAssembly processed: 212062 total address lines.
Perf output processed (skipped 58.868 seconds):
 Column 1: cycles (50779 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 

                              0x00007f47e3001718:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                              0x00007f47e300171c:   0xf4f4f4f4                              
                            --------------------------------------------------------------------------------
                            [Entry Point]
                              # {method} {0x00000008002686c0} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$CharPropertyGreedy&apos;
                              # this:     rsi:rsi   = &apos;java/util/regex/Pattern$CharPropertyGreedy&apos;
                              # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
                              # parm1:    rcx       = int
                              # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                              #           [sp+0xa0]  (sp of caller)
   0.37%               ↗  ↗   0x00007f47e3001720:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.14%               │  │   0x00007f47e3001724:   movabs $0x800000000,%r12
   0.56%               │  │   0x00007f47e300172e:   add    %r12,%r10
   0.36%               │  │   0x00007f47e3001731:   xor    %r12,%r12
   0.08%               │  │   0x00007f47e3001734:   cmp    %r10,%rax
                       │  │   0x00007f47e3001737:   jne    0x00007f47db4ff780           ;   {runtime_call ic_miss_stub}
   0.15%               │  │   0x00007f47e300173d:   nop
   0.70%               │  │   0x00007f47e300173e:   xchg   %ax,%ax
                       │  │ [Verified Entry Point]
   0.28%               │  │   0x00007f47e3001740:   mov    %eax,-0x14000(%rsp)
   0.28%               │  │   0x00007f47e3001747:   sub    $0x98,%rsp
   0.64%               │  │   0x00007f47e300174e:   mov    %rbp,0x90(%rsp)
   0.44%               │  │   0x00007f47e3001756:   mov    %rsi,0x48(%rsp)
   0.06%               │  │   0x00007f47e300175b:   mov    %rdx,0x40(%rsp)
   0.18%               │  │   0x00007f47e3001760:   mov    %ecx,0x84(%rsp)
   0.64%               │  │   0x00007f47e3001767:   mov    %r8,0x38(%rsp)               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.30%               │  │   0x00007f47e300176c:   mov    0x10(%rdx),%r10d             ; implicit exception: dispatches to 0x00007f47e3002af1
   0.09%               │  │   0x00007f47e3001770:   cmp    %ecx,%r10d
                       │  │   0x00007f47e3001773:   jle    0x00007f47e3001f27           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
   0.12%               │  │   0x00007f47e3001779:   nopl   0x0(%rax)
   0.38%               │  │   0x00007f47e3001780:   test   %ecx,%ecx
                       │  │   0x00007f47e3001782:   jl     0x00007f47e3002a11           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@1 (line 47)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.22%               │  │   0x00007f47e3001788:   mov    %ecx,%r11d
   0.03%               │  │   0x00007f47e300178b:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@35 (line 4275)
   0.10%               │  │   0x00007f47e300178e:   cmp    %r10d,%r11d
                       │  │   0x00007f47e3001791:   jg     0x00007f47e3002a58           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@38 (line 4275)
   0.41%               │  │   0x00007f47e3001797:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.31%               │  │   0x00007f47e30017a0:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007f47e3002b0d
                       │  │                                                             ;   {metadata(&apos;java/lang/String&apos;)}
   0.07%               │  │   0x00007f47e30017a8:   jne    0x00007f47e30029f2           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.10%               │  │   0x00007f47e30017ae:   cmpb   $0x0,0x10(%r8)
   0.36%               │  │   0x00007f47e30017b3:   jne    0x00007f47e3002a6a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
                       │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.29%               │  │   0x00007f47e30017b9:   mov    0x14(%r8),%r9d               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.03%               │  │   0x00007f47e30017bd:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f47e3002b29
   0.15%               │  │   0x00007f47e30017c5:   cmp    %ecx,%ebx
                       │  │   0x00007f47e30017c7:   jle    0x00007f47e3002947           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.38%               │  │   0x00007f47e30017cd:   cmp    %ecx,%ebx
                       │  │   0x00007f47e30017cf:   jbe    0x00007f47e3002a46           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.33%               │  │   0x00007f47e30017d5:   movzbl 0x10(%rcx,%r9,8),%edi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.04%               │  │   0x00007f47e30017db:   nopl   0x0(%rax,%rax,1)
   0.10%               │  │   0x00007f47e30017e0:   cmp    $0xa,%edi
                       │  │   0x00007f47e30017e3:   je     0x00007f47e300287c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.35%               │  │   0x00007f47e30017e9:   cmp    $0xd,%edi
                       │  │   0x00007f47e30017ec:   je     0x00007f47e30029e0           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.29%               │  │   0x00007f47e30017f2:   cmp    $0x85,%edi
                       │  │   0x00007f47e30017f8:   je     0x00007f47e3002acd           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.08%               │  │   0x00007f47e30017fe:   mov    0x14(%rsi),%edi              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.07%               │  │   0x00007f47e3001801:   cmpl   $0xc39c78,0x8(,%rdi,8)       ; implicit exception: dispatches to 0x00007f47e3002b46
                       │  │                                                             ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$54+0x0000000800c39c78&apos;)}
   0.67%               │  │   0x00007f47e300180c:   jne    0x00007f47e3002aa0           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.09%               │  │   0x00007f47e3001812:   mov    %r11d,%edi
   0.08%               │  │   0x00007f47e3001815:   mov    $0x1,%r11d
   0.32%  ╭            │  │   0x00007f47e300181b:   jmp    0x00007f47e3001863           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │            │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
   0.90%  │↗           │  │   0x00007f47e3001820:   cmp    %edi,%ebx
          ││           │  │   0x00007f47e3001822:   jbe    0x00007f47e3002a94           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
          ││           │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
          ││           │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.27%  ││           │  │   0x00007f47e3001828:   mov    %edi,%eax
   0.00%  ││           │  │   0x00007f47e300182a:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@35 (line 4275)
   0.05%  ││           │  │   0x00007f47e300182c:   cmp    %r10d,%eax
          ││           │  │   0x00007f47e300182f:   jg     0x00007f47e30028f5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@38 (line 4275)
   0.85%  ││           │  │   0x00007f47e3001835:   movzbl 0x10(%rdi,%r9,8),%ebp        ;*iand {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
          ││           │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
          ││           │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.19%  ││           │  │   0x00007f47e300183b:   nopl   0x0(%rax,%rax,1)
          ││           │  │   0x00007f47e3001840:   cmp    $0xa,%ebp
          ││           │  │   0x00007f47e3001843:   je     0x00007f47e3002a05           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.04%  ││           │  │   0x00007f47e3001849:   cmp    $0xd,%ebp
          ││           │  │   0x00007f47e300184c:   je     0x00007f47e30028b5           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.75%  ││           │  │   0x00007f47e3001852:   cmp    $0x85,%ebp
          ││           │  │   0x00007f47e3001858:   je     0x00007f47e30023a6           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c39c78::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.24%  ││           │  │   0x00007f47e300185e:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@80 (line 4284)
   0.00%  ││           │  │   0x00007f47e3001861:   mov    %eax,%edi                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
   0.25%  ↘│           │  │   0x00007f47e3001863:   cmp    %edi,%r10d
           ╰           │  │   0x00007f47e3001866:   jg     0x00007f47e3001820           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
   0.81%               │  │   0x00007f47e3001868:   mov    %edi,0x80(%rsp)
   0.62%               │  │   0x00007f47e300186f:   mov    %r11d,0x7c(%rsp)
   0.65%               │  │   0x00007f47e3001874:   cmp    %edi,%r10d
                       │  │   0x00007f47e3001877:   jg     0x00007f47e3002432           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@89 (line 4286)
   0.12%               │  │   0x00007f47e300187d:   data16 xchg %ax,%ax
   0.51%               │  │   0x00007f47e3001880:   cmp    0x10(%rsi),%r11d
                       │  │   0x00007f47e3001884:   jl     0x00007f47e3002870           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
   0.10%               │  │   0x00007f47e300188a:   mov    0xc(%rsi),%r9d               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@86 (line 4286)
   0.54%               │  │   0x00007f47e300188e:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f47e3002b66
   0.13%               │  │   0x00007f47e3001896:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@94 (line 4287)
   0.45%               │  │   0x00007f47e300189a:   movabs $0x800000000,%r10
   0.08%               │  │   0x00007f47e30018a4:   lea    (%r10,%rbx,1),%rbx
   0.48%               │  │   0x00007f47e30018a8:   cmp    -0x1af(%rip),%rbx        # 0x00007f47e3001700
                       │  │                                                             ;   {section_word}
   0.20%    ╭          │  │   0x00007f47e30018af:   je     0x00007f47e30018cb
   0.15%    │          │  │   0x00007f47e30018b5:   cmp    -0x1b4(%rip),%rbx        # 0x00007f47e3001708
            │          │  │                                                             ;   {section_word}
   0.12%    │          │  │   0x00007f47e30018bc:   nopl   0x0(%rax)
   0.01%    │          │  │   0x00007f47e30018c0:   je     0x00007f47e3001f34
            │          │  │   0x00007f47e30018c6:   jmp    0x00007f47e30029b9
   0.38%    ↘          │  │   0x00007f47e30018cb:   mov    0x10(%rsi),%ecx              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@124 (line 4292)
   0.13%               │  │   0x00007f47e30018ce:   cmp    0x7c(%rsp),%ecx
             ╭         │  │   0x00007f47e30018d2:   jne    0x00007f47e30018f6           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
             │         │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
   0.84%     │     ↗   │  │   0x00007f47e30018d8:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │     │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@131 (line 4293)
   0.19%     │     │   │  │   0x00007f47e30018dd:   mov    0x90(%rsp),%rbp
   0.35%     │     │   │  │   0x00007f47e30018e5:   add    $0x98,%rsp
   0.35%     │     │   │  │   0x00007f47e30018ec:   mov    0x348(%r15),%rcx
   0.57%     │     │   │  │   0x00007f47e30018f3:   test   %eax,(%rcx)                  ;   {poll_return}
   0.55%     │     │   │  │   0x00007f47e30018f5:   ret    
   0.58%     ↘     │   │  │   0x00007f47e30018f6:   mov    0x80(%rsp),%edi
                   │   │  │   0x00007f47e30018fd:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@1 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
                   │   │  │   0x00007f47e30018ff:   nop
   0.12%           │   │  │   0x00007f47e3001900:   test   %edi,%edi
                   │   │  │   0x00007f47e3001902:   jl     0x00007f47e30029a7           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@1 (line 47)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.69%           │   │  │   0x00007f47e3001908:   mov    0x38(%rsp),%r8               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                   │   │  │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.00%           │   │  │   0x00007f47e300190d:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007f47e3002b86
                   │   │  │                                                             ;   {metadata(&apos;java/lang/String&apos;)}
   0.04%           │   │  │   0x00007f47e3001915:   jne    0x00007f47e3002995           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.14%           │   │  │   0x00007f47e300191b:   movsbl 0x10(%r8),%r10d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::isLatin1@7 (line 4551)
                   │   │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.65%           │   │  │   0x00007f47e3001920:   test   %r10d,%r10d
                   │   │  │   0x00007f47e3001923:   jne    0x00007f47e3002785           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
                   │   │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.01%           │   │  │   0x00007f47e3001929:   mov    0x14(%r8),%r11d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r11=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                   │   │  │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.00%           │   │  │   0x00007f47e300192d:   mov    0xc(,%r11,8),%r9d            ; implicit exception: dispatches to 0x00007f47e3002ba6
   0.52%           │   │  │   0x00007f47e3001935:   cmp    %edi,%r9d
                   │   │  │   0x00007f47e3001938:   jle    0x00007f47e3002959           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.76%           │   │  │   0x00007f47e300193e:   xchg   %ax,%ax
                   │   │  │   0x00007f47e3001940:   cmp    %edi,%r9d
                   │   │  │   0x00007f47e3001943:   jbe    0x00007f47e300270c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.10%           │   │  │   0x00007f47e3001949:   shl    $0x3,%r11                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::charAt@8 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.05%           │   │  │   0x00007f47e300194d:   cmp    0x84(%rsp),%edi
   0.58%           │   │  │   0x00007f47e3001954:   mov    0x84(%rsp),%ebx
   0.00%           │   │  │   0x00007f47e300195b:   cmovg  %edi,%ebx                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Math::max@2 (line 1562)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
   0.11%           │   │  │   0x00007f47e300195e:   mov    0x7c(%rsp),%edi
   0.05%           │   │  │   0x00007f47e3001962:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
   0.59%           │   │  │   0x00007f47e3001964:   mov    %ebx,0x68(%rsp)
   0.00%           │   │  │   0x00007f47e3001968:   mov    %r11,%rbx
   0.12%           │   │  │   0x00007f47e300196b:   mov    %edi,%r11d
   0.04%           │   │  │   0x00007f47e300196e:   mov    %r9d,%edi
   0.60%           │   │  │   0x00007f47e3001971:   mov    %r10d,%r9d
   0.00%           │   │  │   0x00007f47e3001974:   mov    0x68(%rsp),%r10d
   0.11%      ╭    │   │  │   0x00007f47e3001979:   jmp    0x00007f47e3001ab1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │    │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
              │    │   │  │   0x00007f47e300197e:   xchg   %ax,%ax
   0.14%      │    │↗  │  │   0x00007f47e3001980:   mov    0xc(%rsi),%ebp               ; ImmutableOopMap {rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │    ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │    ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.93%      │    ││  │  │   0x00007f47e3001983:   mov    0x8(,%rbp,8),%ecx            ; implicit exception: dispatches to 0x00007f47e3002bc6
   0.28%      │    ││  │  │   0x00007f47e300198a:   movabs $0x800000000,%r13
   0.23%      │    ││  │  │   0x00007f47e3001994:   lea    0x0(%r13,%rcx,1),%rcx
   0.66%      │    ││  │  │   0x00007f47e3001999:   cmp    -0x2a0(%rip),%rcx        # 0x00007f47e3001700
              │    ││  │  │                                                             ;   {section_word}
   1.18%      │╭   ││  │  │   0x00007f47e30019a0:   je     0x00007f47e30019b8
   0.18%      ││   ││  │  │   0x00007f47e30019a6:   cmp    -0x2a5(%rip),%rcx        # 0x00007f47e3001708
              ││   ││  │  │                                                             ;   {section_word}
   0.08%      ││╭  ││  │  │   0x00007f47e30019ad:   je     0x00007f47e3001ad7
              │││  ││  │  │   0x00007f47e30019b3:   jmp    0x00007f47e3002905
   0.45%      │↘│  ││  │  │   0x00007f47e30019b8:   nopl   0x0(%rax,%rax,1)
   0.06%      │ │  ││  │  │   0x00007f47e30019c0:   cmp    0x10(%rdx),%r10d
              │ │╭ ││  │  │   0x00007f47e30019c4:   jge    0x00007f47e3001ace           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%      │ ││ ││  │  │   0x00007f47e30019ca:   test   %r9d,%r9d
              │ ││ ││  │  │   0x00007f47e30019cd:   jne    0x00007f47e30028c5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.52%      │ ││ ││  │  │   0x00007f47e30019d3:   cmp    %r10d,%edi
              │ ││ ││  │  │   0x00007f47e30019d6:   jbe    0x00007f47e30023c6           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.47%      │ ││ ││  │  │   0x00007f47e30019dc:   mov    0x10(,%rbp,8),%ecx           ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.05%      │ ││ ││  │  │   0x00007f47e30019e3:   cmpl   $0x269380,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007f47e3002be6
              │ ││ ││  │  │                                                             ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
   0.47%      │ ││ ││  │  │   0x00007f47e30019ee:   jne    0x00007f47e30028dd           ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.42%      │ ││ ││  │  │   0x00007f47e30019f4:   cmp    0xc(%rbx),%r10d              ; implicit exception: dispatches to 0x00007f47e3002c06
              │ ││ ││  │  │   0x00007f47e30019f8:   jae    0x00007f47e300256c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%      │ ││ ││  │  │   0x00007f47e30019fe:   mov    0xc(,%rcx,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.03%      │ ││ ││  │  │   0x00007f47e3001a05:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007f47e3002c26
   2.00%      │ ││ ││  │  │   0x00007f47e3001a0d:   movsbl 0x10(%rbx,%r10,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%      │ ││ ││  │  │   0x00007f47e3001a13:   movzbl %bl,%edi                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%      │ ││ ││  │  │   0x00007f47e3001a16:   cmp    %edi,%r9d
              │ ││ ││  │  │   0x00007f47e3001a19:   jbe    0x00007f47e300289d
   0.50%      │ ││ ││  │  │   0x00007f47e3001a1f:   movzbl %bl,%r9d                     ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.38%      │ ││ ││  │  │   0x00007f47e3001a23:   cmpb   $0x0,0x10(%r9,%rcx,8)
   0.59%      │ ││╭││  │  │   0x00007f47e3001a29:   jne    0x00007f47e3001d2b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              │ │││││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
              │ │││││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.88%      │ │││││↗ │ ↗│↗  0x00007f47e3001a2f:   mov    0x10(%rsi),%ecx              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
              │ ││││││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@124 (line 4292)
   1.95%      │ ││││││ │ │││  0x00007f47e3001a32:   cmp    0x64(%rsp),%ecx
              │ │││╰││ │ │││  0x00007f47e3001a36:   je     0x00007f47e30018d8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
   0.31%      │ │││ ││ │ │││  0x00007f47e3001a3c:   mov    0x38(%rsp),%r8
   0.16%      │ │││ ││ │ │││  0x00007f47e3001a41:   movsbl 0x10(%r8),%r9d               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::isLatin1@7 (line 4551)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@1 (line 1514)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.40%      │ │││ ││ │ │││  0x00007f47e3001a46:   test   %r9d,%r9d
              │ │││ ││ │ │││  0x00007f47e3001a49:   jne    0x00007f47e30029ce           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@1 (line 1514)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.45%      │ │││ ││ │ │││  0x00007f47e3001a4f:   mov    0x68(%rsp),%r10d
   0.12%      │ │││ ││ │ │││  0x00007f47e3001a54:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.03%      │ │││ ││ │ │││  0x00007f47e3001a57:   test   %r10d,%r10d
              │ │││ ││ │ │││  0x00007f47e3001a5a:   jl     0x00007f47e300285e           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.29%      │ │││ ││ │ │││  0x00007f47e3001a60:   mov    0x14(%r8),%edx               ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ │││ ││ │ │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.42%      │ │││ ││ │ │││  0x00007f47e3001a64:   mov    0xc(,%rdx,8),%edi            ; implicit exception: dispatches to 0x00007f47e3002c46
   1.54%      │ │││ ││ │ │││  0x00007f47e3001a6b:   cmp    %r10d,%edi
              │ │││ ││ │ │││  0x00007f47e3001a6e:   jle    0x00007f47e3002adf           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.41%      │ │││ ││ │ │││  0x00007f47e3001a74:   cmp    %r10d,%edi
              │ │││ ││ │ │││  0x00007f47e3001a77:   jbe    0x00007f47e30023ed           ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.32%      │ │││ ││ │ │││  0x00007f47e3001a7d:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ │││ ││ │ │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.22%      │ │││ ││ │ │││  0x00007f47e3001a84:   test   %eax,(%r11)                  ;   {poll}
   0.20%      │ │││ ││ │ │││  0x00007f47e3001a87:   shl    $0x3,%rdx                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@8 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.10%      │ │││ ││ │ │││  0x00007f47e3001a8b:   mov    0x64(%rsp),%r11d
   0.30%      │ │││ ││ │ │││  0x00007f47e3001a90:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
   0.19%      │ │││ ││ │ │││  0x00007f47e3001a93:   cmp    0x84(%rsp),%r10d
   0.18%      │ │││ ││ │ │││  0x00007f47e3001a9b:   mov    0x84(%rsp),%ebx
   0.07%      │ │││ ││ │ │││  0x00007f47e3001aa2:   cmovg  %r10d,%ebx                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.Math::max@2 (line 1562)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
   0.27%      │ │││ ││ │ │││  0x00007f47e3001aa6:   mov    %ebx,%r10d
   0.19%      │ │││ ││ │ │││  0x00007f47e3001aa9:   mov    %rdx,%rbx
   0.16%      │ │││ ││ │ │││  0x00007f47e3001aac:   mov    0x40(%rsp),%rdx              ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.14%      ↘ │││ ││ │ │││  0x00007f47e3001ab1:   mov    %r10d,0x68(%rsp)
   0.91%        │││ ││ │ │││  0x00007f47e3001ab6:   mov    %r11d,0x64(%rsp)
   0.19%        │││ ││ │ │││  0x00007f47e3001abb:   nopl   0x0(%rax,%rax,1)
   0.30%        │││ ││ │ │││  0x00007f47e3001ac0:   cmp    %r11d,%ecx
                │││ ╰│ │ │││  0x00007f47e3001ac3:   jle    0x00007f47e3001980
                │││  │ │ │││  0x00007f47e3001ac9:   jmp    0x00007f47e300292f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                │││  │ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
                │↘│  │ │ │││  0x00007f47e3001ace:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                │ │  │ │ │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@50 (line 3957)
                │ │  │ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                │ │  ╰ │ │││  0x00007f47e3001ad2:   jmp    0x00007f47e3001a2f
   0.14%        ↘ │    │ │││  0x00007f47e3001ad7:   mov    0x40(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.16%          │    │ │││  0x00007f47e3001ada:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007f47e3002c66
   0.13%          │    │ │││  0x00007f47e3001ae2:   mov    0x10(,%rbp,8),%ebx           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@5 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f47e3001ae9:   cmp    %ebx,%r9d
                  │    │ │││  0x00007f47e3001aec:   jbe    0x00007f47e3002846           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │    │ │││  0x00007f47e3001af2:   shl    $0x3,%rcx                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@1 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%          │    │ │││  0x00007f47e3001af6:   mov    0x10(%rcx,%rbx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007f47e3001afa:   nopw   0x0(%rax,%rax,1)
   0.08%          │    │ │││  0x00007f47e3001b00:   test   %ebx,%ebx
                  │    │ │││  0x00007f47e3001b02:   jl     0x00007f47e3002a7c           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │    │ │││  0x00007f47e3001b08:   mov    0xc(,%rbp,8),%edi            ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.15%          │    │ │││  0x00007f47e3001b0f:   mov    %edi,0x30(%rsp)
   0.10%          │    │ │││  0x00007f47e3001b13:   nopw   0x0(%rax,%rax,1)
   0.09%          │    │ │││  0x00007f47e3001b1c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.14%          │    │ │││  0x00007f47e3001b20:   cmpl   $0xc39ed8,0x8(,%rdi,8)       ; implicit exception: dispatches to 0x00007f47e3002c86
                  │    │ │││                                                            ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
   0.26%          │    │ │││  0x00007f47e3001b2b:   jne    0x00007f47e300280d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007f47e3001b31:   mov    0x38(%rdx),%r13d             ; ImmutableOopMap {rcx=Oop rdx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop r13=NarrowOop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.10%          │    │ │││  0x00007f47e3001b35:   mov    0xc(,%r13,8),%r14d           ; implicit exception: dispatches to 0x00007f47e3002ca6
   0.18%          │    │ │││  0x00007f47e3001b3d:   mov    0x14(,%rbp,8),%r8d           ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@21 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007f47e3001b45:   cmp    %r8d,%r14d
                  │    │ │││  0x00007f47e3001b48:   jbe    0x00007f47e30027f5           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f47e3001b4e:   mov    %r8d,%edx
   0.14%          │    │ │││  0x00007f47e3001b51:   inc    %edx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@60 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%          │    │ │││  0x00007f47e3001b53:   cmp    %edx,%r14d
                  │    │ │││  0x00007f47e3001b56:   jbe    0x00007f47e30027dd           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007f47e3001b5c:   mov    0x14(,%rdi,8),%r14d          ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │    │ │││  0x00007f47e3001b64:   cmp    %r14d,%r9d
                  │    │ │││  0x00007f47e3001b67:   jbe    0x00007f47e30027c5           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │    │ │││  0x00007f47e3001b6d:   mov    0x10(,%rdi,8),%r11d          ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%          │    │ │││  0x00007f47e3001b75:   cmp    %r11d,%r9d
                  │    │ │││  0x00007f47e3001b78:   jbe    0x00007f47e30027ab           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │    │ │││  0x00007f47e3001b7e:   shl    $0x3,%r13                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@17 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │    │ │││  0x00007f47e3001b82:   mov    0x10(%r13,%rdx,4),%esi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%          │    │ │││  0x00007f47e3001b87:   mov    %esi,0x60(%rsp)
   0.22%          │    │ │││  0x00007f47e3001b8b:   mov    0x10(%r13,%r8,4),%esi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007f47e3001b90:   mov    %esi,0x5c(%rsp)
   0.09%          │    │ │││  0x00007f47e3001b94:   mov    %ebx,0x10(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%          │    │ │││  0x00007f47e3001b99:   mov    %r10d,0x10(%r13,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.47%          │    │ │││  0x00007f47e3001b9e:   mov    %ebp,%r13d
   0.00%          │    │ │││  0x00007f47e3001ba1:   shl    $0x3,%r13                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@107 (line 4290)
   0.08%          │    │ │││  0x00007f47e3001ba5:   cmp    0x10(%rcx,%r14,4),%r10d
                  │    │ │││  0x00007f47e3001baa:   jle    0x00007f47e3002794           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.38%          │    │ │││  0x00007f47e3001bb0:   mov    %ebp,0x34(%rsp)
   0.02%          │    │ │││  0x00007f47e3001bb4:   mov    0x10(%rcx,%r11,4),%r14d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f47e3001bb9:   mov    %r14d,0x58(%rsp)
   0.05%          │    │ │││  0x00007f47e3001bbe:   mov    %r14d,%r8d
   0.33%          │    │ │││  0x00007f47e3001bc1:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%          │    │ │││  0x00007f47e3001bc4:   mov    %edi,%edx
   0.09%          │    │ │││  0x00007f47e3001bc6:   shl    $0x3,%rdx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │    │ │││  0x00007f47e3001bca:   cmp    0x18(,%rdi,8),%r14d
                  │   ╭│ │││  0x00007f47e3001bd2:   jge    0x00007f47e3001d73           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.34%          │   ││ │││  0x00007f47e3001bd8:   mov    %ebx,0x54(%rsp)
   0.07%          │   ││ │││  0x00007f47e3001bdc:   mov    0x24(,%rdi,8),%ebx           ; ImmutableOopMap {rcx=Oop rdx=Oop rbx=NarrowOop r13=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   ││ │││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │   ││ │││  0x00007f47e3001be3:   cmpl   $0x267620,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f47e3002cc6
                  │   ││ │││                                                            ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.33%          │   ││ │││  0x00007f47e3001bee:   jne    0x00007f47e3002ab2           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%          │   ││ │││  0x00007f47e3001bf4:   mov    0x10(,%rbx,8),%r10d          ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │   ││ │││  0x00007f47e3001bfc:   nopl   0x0(%rax)
   0.30%          │   ││ │││  0x00007f47e3001c00:   cmp    %r10d,%r9d
                  │   ││ │││  0x00007f47e3001c03:   jbe    0x00007f47e3002757           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   ││ │││  0x00007f47e3001c09:   mov    %rdx,0x18(%rsp)
   0.07%          │   ││ │││  0x00007f47e3001c0e:   mov    %r13,0x8(%rsp)
   0.07%          │   ││ │││  0x00007f47e3001c13:   mov    0x68(%rsp),%r9d
   0.27%          │   ││ │││  0x00007f47e3001c18:   mov    0x38(%rsp),%rax
   0.01%          │   ││ │││  0x00007f47e3001c1d:   mov    0x40(%rsp),%rdi
   0.08%          │   ││ │││  0x00007f47e3001c22:   mov    0xc(,%rbx,8),%ebp            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │   ││ │││  0x00007f47e3001c29:   test   %eax,0x0(,%rbp,8)            ; implicit exception: deoptimizes
                  │   ││ │││                                                            ; ImmutableOopMap {rax=Oop rcx=Oop rbx=NarrowOop rbp=NarrowOop rdi=Oop [8]=Oop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.58%          │   ││ │││  0x00007f47e3001c30:   mov    %r8d,0x10(%rcx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │   ││ │││  0x00007f47e3001c35:   mov    0x10(%rcx,%r10,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%          │   ││ │││  0x00007f47e3001c3a:   mov    %r9d,0x10(%rcx,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.73%          │   ││ │││  0x00007f47e3001c3f:   shl    $0x3,%rbp                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%          │   ││ │││  0x00007f47e3001c43:   mov    %ebx,%r10d
   0.02%          │   ││ │││  0x00007f47e3001c46:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   ││ │││  0x00007f47e3001c4a:   mov    %rbp,%rsi
   0.39%          │   ││ │││  0x00007f47e3001c4d:   mov    %rdi,%rdx
   0.03%          │   ││ │││  0x00007f47e3001c50:   mov    %r9d,%ecx
   0.03%          │   ││ │││  0x00007f47e3001c53:   mov    %rax,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%          │   ││ │││  0x00007f47e3001c56:   mov    %r10,(%rsp)
   0.40%          │   ││ │││  0x00007f47e3001c5a:   mov    %r11d,0x50(%rsp)
   0.05%          │   ││ │││  0x00007f47e3001c5f:   mov    %ebx,0x14(%rsp)
   0.03%          │   ││ │││  0x00007f47e3001c63:   xchg   %ax,%ax
   0.02%          │   ││ │││  0x00007f47e3001c65:   movabs $0x800268190,%rax
   0.35%          │   │╰ │││  0x00007f47e3001c6f:   call   0x00007f47e3001720           ; ImmutableOopMap {[0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                  │   │  │││                                                            ;   {virtual_call}
   0.11%          │   │  │││  0x00007f47e3001c74:   nop
   0.21%          │   │  │││  0x00007f47e3001c75:   mov    0x40(%rsp),%rdx
   0.70%          │   │  │││  0x00007f47e3001c7a:   mov    0x40(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*istore {reexecute=1 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupHead::match@31 (line 4789)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.66%          │   │  │││  0x00007f47e3001c7d:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f47e3002ce6
   1.43%          │   │  │││  0x00007f47e3001c84:   mov    0x14(%rsp),%ebx
   0.00%          │   │  │││  0x00007f47e3001c88:   mov    0x10(,%rbx,8),%r8d           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@38 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │  │││  0x00007f47e3001c90:   cmp    %r8d,%ecx
                  │   │  │││  0x00007f47e3001c93:   jbe    0x00007f47e300272d           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.41%          │   │  │││  0x00007f47e3001c99:   mov    0x50(%rsp),%r11d
   0.06%          │   │  │││  0x00007f47e3001c9e:   shl    $0x3,%rsi                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@34 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%          │   │  │││  0x00007f47e3001ca2:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   1.03%          │   │  │││  0x00007f47e3001ca7:   test   %eax,%eax
                  │   │ ╭│││  0x00007f47e3001ca9:   jne    0x00007f47e3001cd3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@60 (line 4880)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │ ││││  0x00007f47e3001caf:   mov    0x30(%rsp),%edi
   0.03%          │   │ ││││  0x00007f47e3001cb3:   mov    0x10(,%rdi,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@68 (line 4881)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │ ││││  0x00007f47e3001cbb:   nopl   0x0(%rax,%rax,1)
   0.36%          │   │ ││││  0x00007f47e3001cc0:   cmp    %r8d,%ecx
                  │   │ ││││  0x00007f47e3001cc3:   jbe    0x00007f47e3002a25
   0.00%          │   │ ││││  0x00007f47e3001cc9:   mov    0x58(%rsp),%r14d
   0.03%          │   │ ││││  0x00007f47e3001cce:   mov    %r14d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@73 (line 4881)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │   │ ↘│││  0x00007f47e3001cd3:   test   %eax,%eax
                  │   │  │││  0x00007f47e3001cd5:   jne    0x00007f47e300218b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%          │   │  │││  0x00007f47e3001cdb:   mov    0x34(%rsp),%ebp
   0.01%          │   │  │││  0x00007f47e3001cdf:   mov    0x38(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=NarrowOop [8]=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@73 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │   │  │││  0x00007f47e3001ce2:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f47e3002d06
   0.06%          │   │  │││  0x00007f47e3001ce9:   mov    0x14(,%rbp,8),%r8d           ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@83 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%          │   │  │││  0x00007f47e3001cf1:   cmp    %r8d,%ecx
                  │   │  │││  0x00007f47e3001cf4:   jbe    0x00007f47e300235f           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │  │││  0x00007f47e3001cfa:   mov    %r8d,%r10d
   0.05%          │   │  │││  0x00007f47e3001cfd:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@98 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │   │  │││  0x00007f47e3001d00:   cmp    %r10d,%ecx
                  │   │  │││  0x00007f47e3001d03:   jbe    0x00007f47e300235f           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%          │   │  │││  0x00007f47e3001d09:   mov    0x5c(%rsp),%r11d
   0.01%          │   │  │││  0x00007f47e3001d0e:   mov    0x60(%rsp),%r9d
   0.04%          │   │  │││  0x00007f47e3001d13:   shl    $0x3,%rsi                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │   │  │││  0x00007f47e3001d17:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.34%          │   │  │││  0x00007f47e3001d1c:   mov    %r9d,0x10(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │   │  │││  0x00007f47e3001d21:   mov    0x48(%rsp),%rsi
   0.04%          │   │  ╰││  0x00007f47e3001d26:   jmp    0x00007f47e3001a2f           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │   │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@47 (line 3954)
                  │   │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.64%          ↘   │   ││  0x00007f47e3001d2b:   mov    0xc(,%rbp,8),%esi            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                      │   ││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.49%              │   ││  0x00007f47e3001d32:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                      │   ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.25%              │   ││  0x00007f47e3001d39:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@28 (line 3954)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%              │   ││  0x00007f47e3001d3d:   mov    0x68(%rsp),%r10d
   0.04%              │   ││  0x00007f47e3001d42:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 3954)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%              │   ││  0x00007f47e3001d45:   mov    %rdx,%r11
   0.05%              │   ││  0x00007f47e3001d48:   mov    %r10d,%ecx
   0.19%              │   ││  0x00007f47e3001d4b:   mov    0x38(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%              │   ││  0x00007f47e3001d50:   nop
   0.06%              │   ││  0x00007f47e3001d51:   movabs $0x800268190,%rax
   0.05%              │   ╰│  0x00007f47e3001d5b:   call   0x00007f47e3001720           ; ImmutableOopMap {[56]=Oop [64]=Oop [72]=Oop }
                      │    │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                      │    │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                      │    │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                      │    │                                                            ;   {virtual_call}
   0.01%              │    │  0x00007f47e3001d60:   nop
   0.08%              │    │  0x00007f47e3001d61:   test   %eax,%eax
                      │    │  0x00007f47e3001d63:   jne    0x00007f47e300218b
   0.06%              │    │  0x00007f47e3001d69:   mov    0x48(%rsp),%rsi
   0.63%              │    ╰  0x00007f47e3001d6e:   jmp    0x00007f47e3001a2f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
                      ↘       0x00007f47e3001d73:   mov    %rdx,0x18(%rsp)
                              0x00007f47e3001d78:   mov    %r13,0x8(%rsp)
                              0x00007f47e3001d7d:   mov    %esi,%r11d
                              0x00007f47e3001d80:   mov    0x60(%rsp),%r9d
                              0x00007f47e3001d85:   mov    %ebx,0x54(%rsp)
                              0x00007f47e3001d89:   mov    0x48(%rsp),%rsi
                              0x00007f47e3001d8e:   cmp    0x1c(,%rdi,8),%r14d
                              0x00007f47e3001d96:   jge    0x00007f47e30026fd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.regex.Pattern$Loop::match@83 (line 4888)
....................................................................................................
  69.05%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 

                0x00007f47e3001f17:   call   0x00007f47db4ffd80           ; ImmutableOopMap {[8]=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                          ;   {virtual_call}
                0x00007f47e3001f1c:   nop
                0x00007f47e3001f1d:   mov    0x40(%rsp),%rdx
                0x00007f47e3001f22:   jmp    0x00007f47e3001cd3           ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@7 (line 4270)
   0.05%        0x00007f47e3001f27:   mov    $0x0,%r11d
   0.26%        0x00007f47e3001f2d:   mov    %ecx,%edi
   0.05%        0x00007f47e3001f2f:   jmp    0x00007f47e3001868
   0.10%        0x00007f47e3001f34:   mov    0x40(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop r10=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.14%        0x00007f47e3001f38:   mov    0xc(,%r10,8),%ebx            ; implicit exception: dispatches to 0x00007f47e3002da6
   0.10%        0x00007f47e3001f40:   mov    0x10(,%r9,8),%eax            ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@5 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                0x00007f47e3001f48:   cmp    %eax,%ebx
                0x00007f47e3001f4a:   jbe    0x00007f47e3002607           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%        0x00007f47e3001f50:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@1 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%        0x00007f47e3001f54:   mov    0x10(%r10,%rax,4),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%        0x00007f47e3001f59:   nopl   0x0(%rax)
                0x00007f47e3001f60:   test   %eax,%eax
                0x00007f47e3001f62:   jl     0x00007f47e30025f2           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%        0x00007f47e3001f68:   mov    0xc(,%r9,8),%ebp             ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%        0x00007f47e3001f70:   mov    %ebp,0x34(%rsp)
   0.10%        0x00007f47e3001f74:   nopl   0x0(%rax,%rax,1)
   0.00%        0x00007f47e3001f7c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r9=NarrowOop r10=Oop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.11%        0x00007f47e3001f80:   cmpl   $0xc39ed8,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007f47e3002dc6
                                                                          ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
   0.23%        0x00007f47e3001f8b:   jne    0x00007f47e30025dd           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007f47e3001f91:   mov    0x38(%rdx),%r13d             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r9=NarrowOop r10=Oop r13=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                                                                          ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.06%        0x00007f47e3001f95:   mov    0xc(,%r13,8),%r14d           ; implicit exception: dispatches to 0x00007f47e3002de6
   0.13%        0x00007f47e3001f9d:   mov    0x14(,%r9,8),%r8d            ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@21 (line 4815)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%        0x00007f47e3001fa5:   cmp    %r8d,%r14d
                0x00007f47e3001fa8:   jbe    0x00007f47e30025c8           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%        0x00007f47e3001fae:   mov    %r8d,%edx
   0.11%        0x00007f47e3001fb1:   inc    %edx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@60 (line 4819)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%        0x00007f47e3001fb3:   cmp    %edx,%r14d
                0x00007f47e3001fb6:   jbe    0x00007f47e300259c           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%        0x00007f47e3001fbc:   mov    0x14(,%rbp,8),%r14d          ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007f47e3001fc4:   cmp    %r14d,%ebx
                0x00007f47e3001fc7:   jbe    0x00007f47e300240e           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%        0x00007f47e3001fcd:   mov    0x10(,%rbp,8),%r11d          ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%        0x00007f47e3001fd5:   cmp    %r11d,%ebx
                0x00007f47e3001fd8:   jbe    0x00007f47e30025b1           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%        0x00007f47e3001fde:   shl    $0x3,%r13                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@17 (line 4815)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007f47e3001fe2:   mov    0x10(%r13,%rdx,4),%ecx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%        0x00007f47e3001fe7:   mov    %ecx,0x78(%rsp)
   0.10%        0x00007f47e3001feb:   mov    0x10(%r13,%r8,4),%ecx        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%        0x00007f47e3001ff0:   mov    %ecx,0x74(%rsp)
   0.03%        0x00007f47e3001ff4:   mov    %eax,0x10(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%        0x00007f47e3001ff9:   mov    %edi,0x10(%r13,%rdx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%        0x00007f47e3001ffe:   mov    %r9d,%r13d
   0.06%        0x00007f47e3002001:   shl    $0x3,%r13                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@107 (line 4290)
   0.00%        0x00007f47e3002005:   cmp    0x10(%r10,%r14,4),%edi
                0x00007f47e300200a:   jle    0x00007f47e3002585           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.24%        0x00007f47e3002010:   mov    %r9d,0x30(%rsp)
   0.06%        0x00007f47e3002015:   mov    0x10(%r10,%r11,4),%r14d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%        0x00007f47e300201a:   mov    %r14d,0x70(%rsp)
   0.09%        0x00007f47e300201f:   mov    %r14d,%r8d
   0.16%        0x00007f47e3002022:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
                                                                          ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%        0x00007f47e3002025:   mov    %ebp,%edx
   0.00%        0x00007f47e3002027:   shl    $0x3,%rdx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%        0x00007f47e300202b:   cmp    0x18(,%rbp,8),%r14d
          ╭     0x00007f47e3002033:   jge    0x00007f47e30021a9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.18%  │     0x00007f47e3002039:   mov    %eax,0x6c(%rsp)
   0.00%  │     0x00007f47e300203d:   mov    0x24(,%rbp,8),%eax           ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop r10=Oop r13=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%  │     0x00007f47e3002044:   cmpl   $0x267620,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007f47e3002e06
          │                                                               ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.19%  │     0x00007f47e300204f:   jne    0x00007f47e3002551           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │     0x00007f47e3002055:   mov    0x10(,%rax,8),%edi           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%  │     0x00007f47e300205c:   nopl   0x0(%rax)
   0.11%  │     0x00007f47e3002060:   cmp    %edi,%ebx
          │     0x00007f47e3002062:   jbe    0x00007f47e3002539           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │     0x00007f47e3002068:   mov    %rdx,0x28(%rsp)
   0.04%  │     0x00007f47e300206d:   mov    %r13,0x20(%rsp)
   0.09%  │     0x00007f47e3002072:   mov    0x80(%rsp),%r9d
   0.13%  │     0x00007f47e300207a:   mov    0x38(%rsp),%rbp
   0.04%  │     0x00007f47e300207f:   mov    0x40(%rsp),%rbx
   0.04%  │     0x00007f47e3002084:   mov    0xc(,%rax,8),%r13d           ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │     0x00007f47e300208c:   test   %eax,0x0(,%r13,8)            ; implicit exception: deoptimizes
          │                                                               ; ImmutableOopMap {rax=NarrowOop rbx=Oop rbp=Oop r10=Oop r13=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.45%  │     0x00007f47e3002094:   mov    %r8d,0x10(%r10,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │     0x00007f47e3002099:   mov    0x10(%r10,%rdi,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%  │     0x00007f47e300209e:   mov    %r9d,0x10(%r10,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.67%  │     0x00007f47e30020a3:   shl    $0x3,%r13                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │     0x00007f47e30020a7:   mov    %eax,%r10d
   0.00%  │     0x00007f47e30020aa:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%  │     0x00007f47e30020ae:   mov    %r13,%rsi
   0.25%  │     0x00007f47e30020b1:   mov    %rbx,%rdx
   0.03%  │     0x00007f47e30020b4:   mov    %r9d,%ecx
   0.00%  │     0x00007f47e30020b7:   mov    %rbp,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%  │     0x00007f47e30020ba:   mov    %r10,0x18(%rsp)
   0.24%  │     0x00007f47e30020bf:   mov    %r11d,0x68(%rsp)
   0.02%  │     0x00007f47e30020c4:   mov    %eax,0x14(%rsp)
   0.01%  │     0x00007f47e30020c8:   nop
   0.03%  │     0x00007f47e30020c9:   movabs $0x800268190,%rax
   0.24%  │     0x00007f47e30020d3:   call   0x00007f47e3001720           ; ImmutableOopMap {[20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │                                                               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
          │                                                               ;   {virtual_call}
   0.06%  │     0x00007f47e30020d8:   nop
          │     0x00007f47e30020d9:   mov    0x40(%rsp),%rdx
   0.24%  │     0x00007f47e30020de:   mov    0x40(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [20]=NarrowOop [24]=Oop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
          │                                                               ;*istore {reexecute=1 rethrow=0 return_oop=0}
          │                                                               ; - (reexecute) java.util.regex.Pattern$GroupHead::match@31 (line 4789)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%  │     0x00007f47e30020e1:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f47e3002e26
   0.22%  │     0x00007f47e30020e8:   mov    0x14(%rsp),%r8d
   0.14%  │     0x00007f47e30020ed:   mov    0x10(,%r8,8),%r8d            ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@38 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%  │     0x00007f47e30020f5:   cmp    %r8d,%ecx
          │     0x00007f47e30020f8:   jbe    0x00007f47e3002509           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%  │     0x00007f47e30020fe:   mov    0x68(%rsp),%r11d
   0.00%  │     0x00007f47e3002103:   shl    $0x3,%rsi                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@34 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.14%  │     0x00007f47e3002107:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
          │                                                               ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │                                                               ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          │                                                               ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.29%  │     0x00007f47e300210c:   test   %eax,%eax
          │╭    0x00007f47e300210e:   jne    0x00007f47e3002133           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Pattern$Loop::match@60 (line 4880)
          ││                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          ││                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%  ││    0x00007f47e3002114:   mov    0x34(%rsp),%ebp
          ││    0x00007f47e3002118:   mov    0x10(,%rbp,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Pattern$Loop::match@68 (line 4881)
          ││                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          ││                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.13%  ││    0x00007f47e3002120:   cmp    %r8d,%ecx
          ││    0x00007f47e3002123:   jbe    0x00007f47e3002825
   0.13%  ││    0x00007f47e3002129:   mov    0x70(%rsp),%r14d
   0.02%  ││    0x00007f47e300212e:   mov    %r14d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                              ; - java.util.regex.Pattern$Loop::match@73 (line 4881)
          ││                                                              ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
          ││                                                              ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%  │↘ ↗  0x00007f47e3002133:   test   %eax,%eax
          │ ╭│  0x00007f47e3002135:   jne    0x00007f47e300218b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.11%  │ ││  0x00007f47e300213b:   mov    0x30(%rsp),%r9d
   0.09%  │ ││  0x00007f47e3002140:   mov    0x38(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r9=NarrowOop [32]=Oop [56]=Oop [64]=Oop [72]=Oop }
          │ ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │ ││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@73 (line 4820)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%  │ ││  0x00007f47e3002143:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f47e3002e46
   0.08%  │ ││  0x00007f47e300214a:   mov    0x14(,%r9,8),%r8d            ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@83 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%  │ ││  0x00007f47e3002152:   cmp    %r8d,%ecx
          │ ││  0x00007f47e3002155:   jbe    0x00007f47e300237b           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%  │ ││  0x00007f47e300215b:   mov    %r8d,%r10d
   0.02%  │ ││  0x00007f47e300215e:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@98 (line 4824)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%  │ ││  0x00007f47e3002161:   cmp    %r10d,%ecx
          │ ││  0x00007f47e3002164:   jbe    0x00007f47e300237b           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%  │ ││  0x00007f47e300216a:   mov    0x74(%rsp),%ecx
   0.13%  │ ││  0x00007f47e300216e:   mov    0x78(%rsp),%r11d
   0.02%  │ ││  0x00007f47e3002173:   shl    $0x3,%rsi                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%  │ ││  0x00007f47e3002177:   mov    %ecx,0x10(%rsi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.26%  │ ││  0x00007f47e300217c:   mov    %r11d,0x10(%rsi,%r10,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
          │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.31%  │ ││  0x00007f47e3002181:   mov    0x48(%rsp),%rsi
   0.02%  │ ││  0x00007f47e3002186:   jmp    0x00007f47e30018cb
   0.15%  │ ↘│  0x00007f47e300218b:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@120 (line 4291)
          │  │  0x00007f47e3002190:   mov    0x90(%rsp),%rbp
   0.25%  │  │  0x00007f47e3002198:   add    $0x98,%rsp
   0.02%  │  │  0x00007f47e300219f:   mov    0x348(%r15),%rcx
   0.07%  │  │  0x00007f47e30021a6:   test   %eax,(%rcx)                  ;   {poll_return}
   0.24%  │  │  0x00007f47e30021a8:   ret    
   0.03%  ↘  │  0x00007f47e30021a9:   mov    %rdx,0x28(%rsp)
   0.04%     │  0x00007f47e30021ae:   mov    %r13,0x20(%rsp)
   0.02%     │  0x00007f47e30021b3:   mov    0x78(%rsp),%r11d
   0.01%     │  0x00007f47e30021b8:   mov    %eax,0x6c(%rsp)
   0.00%     │  0x00007f47e30021bc:   nopl   0x0(%rax)
             │  0x00007f47e30021c0:   cmp    0x1c(,%rbp,8),%r14d
             │  0x00007f47e30021c8:   jge    0x00007f47e30024fa           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@83 (line 4888)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%     │  0x00007f47e30021ce:   mov    0x20(,%rbp,8),%esi           ;*getfield posIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@87 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%     │  0x00007f47e30021d5:   cmp    $0xffffffff,%esi
             │  0x00007f47e30021d8:   je     0x00007f47e30024eb           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@91 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     │  0x00007f47e30021de:   mov    0x40(%rsp),%rdx
   0.01%     │  0x00007f47e30021e3:   mov    0x44(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%     │  0x00007f47e30021e7:   cmp    0xc(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007f47e3002e66
             │  0x00007f47e30021ef:   jae    0x00007f47e30024ca           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@102 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%     │  0x00007f47e30021f5:   mov    %r8d,0x68(%rsp)
             │  0x00007f47e30021fa:   shl    $0x3,%r10                    ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@95 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     │  0x00007f47e30021fe:   mov    0x10(%r10,%rsi,4),%esi       ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%     │  0x00007f47e3002203:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rsi=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.09%     │  0x00007f47e300220a:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@102 (line 4893)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e300220e:   mov    0x80(%rsp),%edx              ;*invokevirtual contains {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002215:   xchg   %ax,%ax
             │  0x00007f47e3002217:   call   0x00007f47dbc263e0           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual contains {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@104 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {optimized virtual_call}
             │  0x00007f47e300221c:   nop
             │  0x00007f47e300221d:   data16 xchg %ax,%ax
   0.01%     │  0x00007f47e3002220:   test   %eax,%eax
             │  0x00007f47e3002222:   jne    0x00007f47e30024bb           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@107 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002228:   mov    0x34(%rsp),%ebp
             │  0x00007f47e300222c:   mov    0x40(%rsp),%rdx
   0.01%     │  0x00007f47e3002231:   mov    0x40(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@107 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002234:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f47e3002e86
             │  0x00007f47e300223b:   mov    0x10(,%rbp,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@126 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002243:   cmp    %r8d,%ecx
             │  0x00007f47e3002246:   jbe    0x00007f47e3002495           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@133 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007f47e300224c:   mov    0x68(%rsp),%ecx
             │  0x00007f47e3002250:   mov    0x24(,%rbp,8),%r10d          ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@107 (line 4894)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002258:   test   %eax,0x0(,%r10,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.03%     │  0x00007f47e3002260:   shl    $0x3,%rsi                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@122 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002264:   mov    %ecx,0x10(%rsi,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@133 (line 4897)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002269:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@135 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e300226d:   mov    %r10,%rsi
   0.04%     │  0x00007f47e3002270:   mov    %rdx,%r10
             │  0x00007f47e3002273:   mov    0x80(%rsp),%ecx
             │  0x00007f47e300227a:   mov    0x38(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e300227f:   xchg   %ax,%ax
   0.02%     │  0x00007f47e3002281:   movabs $0x800267620,%rax
             │  0x00007f47e300228b:   call   0x00007f47dbc1acc0           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@141 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {virtual_call}
             │  0x00007f47e3002290:   nop
             │  0x00007f47e3002291:   test   %eax,%eax
             │  0x00007f47e3002293:   jne    0x00007f47e3002486           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@148 (line 4901)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%     │  0x00007f47e3002299:   mov    0x34(%rsp),%ebp
             │  0x00007f47e300229d:   mov    0x20(,%rbp,8),%esi           ;*getfield posIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@165 (line 4905)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e30022a4:   cmp    $0xffffffff,%esi
             │  0x00007f47e30022a7:   je     0x00007f47e3002477           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@169 (line 4905)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007f47e30022ad:   mov    0x40(%rsp),%rdx
             │  0x00007f47e30022b2:   mov    0x40(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*istore {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@144 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e30022b6:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f47e3002ea6
             │  0x00007f47e30022be:   mov    0x10(,%rbp,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@158 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007f47e30022c6:   cmp    %r8d,%r11d
             │  0x00007f47e30022c9:   jbe    0x00007f47e3002451           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@163 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e30022cf:   mov    0x44(%rdx),%r11d             ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@173 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e30022d3:   nopw   0x0(%rax,%rax,1)
             │  0x00007f47e30022dc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop r10=NarrowOop r11=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*istore {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@144 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%     │  0x00007f47e30022e0:   cmp    0xc(,%r11,8),%esi            ; implicit exception: dispatches to 0x00007f47e3002ec6
             │  0x00007f47e30022e8:   jae    0x00007f47e3002772           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e30022ee:   mov    0x70(%rsp),%r14d
             │  0x00007f47e30022f3:   shl    $0x3,%r11                    ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@173 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%     │  0x00007f47e30022f7:   mov    0x10(%r11,%rsi,4),%esi       ;*istore {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@144 (line 4898)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e30022fc:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rsi=NarrowOop r10=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │  0x00007f47e3002303:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@154 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007f47e3002307:   mov    %r14d,0x10(%r10,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@163 (line 4903)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e300230c:   shl    $0x3,%rsi                    ;*aaload {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@180 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002310:   mov    0x80(%rsp),%edx
             │  0x00007f47e3002317:   call   0x00007f47dbc26b00           ; ImmutableOopMap {[32]=Oop [40]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@182 (line 4906)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {optimized virtual_call}
             │  0x00007f47e300231c:   nop
             │  0x00007f47e300231d:   mov    0x34(%rsp),%ebp
   0.04%     │  0x00007f47e3002321:   mov    0xc(,%rbp,8),%esi            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
             │                                                            ; - (reexecute) java.util.regex.Pattern$Loop::match@185 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002328:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
             │                                                            ; ImmutableOopMap {rsi=NarrowOop [32]=Oop [40]=Oop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.00%     │  0x00007f47e300232f:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@186 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%     │  0x00007f47e3002333:   mov    0x40(%rsp),%rdx
             │  0x00007f47e3002338:   mov    0x80(%rsp),%ecx
             │  0x00007f47e300233f:   mov    0x38(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │  0x00007f47e3002344:   nop
   0.03%     │  0x00007f47e3002345:   movabs $0x800267f68,%rax
             │  0x00007f47e300234f:   call   0x00007f47dbc243a0           ; ImmutableOopMap {[32]=Oop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
             │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern$Loop::match@192 (line 4910)
             │                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
             │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
             │                                                            ;   {virtual_call}
   0.03%     │  0x00007f47e3002354:   nop
             │  0x00007f47e3002355:   mov    0x40(%rsp),%rdx
             ╰  0x00007f47e300235a:   jmp    0x00007f47e3002133
                0x00007f47e300235f:   movl   $0xffffffe5,0x370(%r15)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                                                                          ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
....................................................................................................
  11.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  69.05%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 
  11.98%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 
   4.96%       jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 798 
   2.61%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 801 
   2.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 815 
   1.91%       jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 798 
   1.21%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 801 
   0.99%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 811 
   0.87%       jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 798 
   0.71%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 813 
   0.62%       jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 798 
   0.44%               kernel  [unknown] 
   0.29%       jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 812 
   0.27%       jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 793 
   0.16%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 801 
   0.13%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.09%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   0.06%               kernel  [unknown] 
   1.39%  <...other 384 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.03%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 789 
   8.36%       jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 798 
   3.98%       jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 801 
   2.09%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 815 
   1.60%               kernel  [unknown] 
   0.99%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 811 
   0.71%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 813 
   0.29%       jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 812 
   0.27%       jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 793 
   0.07%         libc-2.31.so  [unknown] 
   0.06%                       <unknown> 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%         libc-2.31.so  __strncat_ssse3 
   0.02%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%          interpreter  invokevirtual  182 invokevirtual  
   0.01%            libjvm.so  HeapRegionManager::par_iterate 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.40%  <...other 142 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.73%       jvmci, level 4
   1.60%               kernel
   0.33%            libjvm.so
   0.14%         libc-2.31.so
   0.06%                     
   0.04%          interpreter
   0.03%  libjvmcicompiler.so
   0.02%   libpthread-2.31.so
   0.01%       hsdis-amd64.so
   0.01%           ld-2.31.so
   0.01%      perf-114393.map
   0.00%         libjimage.so
   0.00%          c1, level 3
   0.00%            libnio.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, OpenJDK 64-Bit Server VM, 17.0.5+8-jvmci-22.3-b08
# VM invoker: /home/gogu/bench_jdks/graalvm-ce-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches
# Parameters: (regexp = ^(.*[aeuio].*){3,}$)

# Run progress: 66.67% complete, ETA 00:01:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2677.940 us/op
# Warmup Iteration   2: 2145.459 us/op
# Warmup Iteration   3: 2144.645 us/op
# Warmup Iteration   4: 2144.556 us/op
# Warmup Iteration   5: 2144.164 us/op
Iteration   1: 2148.868 us/op
Iteration   2: 2153.013 us/op
Iteration   3: 2145.004 us/op
Iteration   4: 2143.591 us/op
Iteration   5: 2144.025 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches":
  2146.900 ±(99.9%) 15.408 us/op [Average]
  (min, avg, max) = (2143.591, 2146.900, 2153.013), stdev = 4.001
  CI (99.9%): [2131.492, 2162.308] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches:·asm":
PrintAssembly processed: 242687 total address lines.
Perf output processed (skipped 58.919 seconds):
 Column 1: cycles (50842 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 816 

                              0x00007f1bf3000a18:   0xf4f4f4f4      0xf4f4f4f4f4f4f4f4      
                              0x00007f1bf3000a1c:   0xf4f4f4f4                              
                            --------------------------------------------------------------------------------
                            [Entry Point]
                              # {method} {0x00000008002686c0} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$CharPropertyGreedy&apos;
                              # this:     rsi:rsi   = &apos;java/util/regex/Pattern$CharPropertyGreedy&apos;
                              # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
                              # parm1:    rcx       = int
                              # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                              #           [sp+0xa0]  (sp of caller)
   0.37%               ↗  ↗   0x00007f1bf3000a20:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.03%               │  │   0x00007f1bf3000a24:   movabs $0x800000000,%r12
   0.30%               │  │   0x00007f1bf3000a2e:   add    %r12,%r10
   0.29%               │  │   0x00007f1bf3000a31:   xor    %r12,%r12
   0.06%               │  │   0x00007f1bf3000a34:   cmp    %r10,%rax
                       │  │   0x00007f1bf3000a37:   jne    0x00007f1beb4ff780           ;   {runtime_call ic_miss_stub}
   0.07%               │  │   0x00007f1bf3000a3d:   nop
   0.40%               │  │   0x00007f1bf3000a3e:   xchg   %ax,%ax
                       │  │ [Verified Entry Point]
   0.32%               │  │   0x00007f1bf3000a40:   mov    %eax,-0x14000(%rsp)
   0.19%               │  │   0x00007f1bf3000a47:   sub    $0x98,%rsp
   0.28%               │  │   0x00007f1bf3000a4e:   mov    %rbp,0x90(%rsp)
   0.45%               │  │   0x00007f1bf3000a56:   mov    %rsi,0x48(%rsp)
   0.11%               │  │   0x00007f1bf3000a5b:   mov    %rdx,0x40(%rsp)
   0.14%               │  │   0x00007f1bf3000a60:   mov    %ecx,0x84(%rsp)
   0.39%               │  │   0x00007f1bf3000a67:   mov    %r8,0x38(%rsp)               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.33%               │  │   0x00007f1bf3000a6c:   mov    0x10(%rdx),%r10d             ; implicit exception: dispatches to 0x00007f1bf3001df1
   0.09%               │  │   0x00007f1bf3000a70:   cmp    %ecx,%r10d
                       │  │   0x00007f1bf3000a73:   jle    0x00007f1bf3001227           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
   0.05%               │  │   0x00007f1bf3000a79:   nopl   0x0(%rax)
   0.20%               │  │   0x00007f1bf3000a80:   test   %ecx,%ecx
                       │  │   0x00007f1bf3000a82:   jl     0x00007f1bf3001d11           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@1 (line 47)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.25%               │  │   0x00007f1bf3000a88:   mov    %ecx,%r11d
   0.06%               │  │   0x00007f1bf3000a8b:   inc    %r11d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@35 (line 4275)
   0.03%               │  │   0x00007f1bf3000a8e:   cmp    %r10d,%r11d
                       │  │   0x00007f1bf3000a91:   jg     0x00007f1bf3001d58           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@38 (line 4275)
   0.18%               │  │   0x00007f1bf3000a97:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.24%               │  │   0x00007f1bf3000aa0:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007f1bf3001e0d
                       │  │                                                             ;   {metadata(&apos;java/lang/String&apos;)}
   0.07%               │  │   0x00007f1bf3000aa8:   jne    0x00007f1bf3001cf2           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.04%               │  │   0x00007f1bf3000aae:   cmpb   $0x0,0x10(%r8)
   0.21%               │  │   0x00007f1bf3000ab3:   jne    0x00007f1bf3001d6a           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
                       │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.23%               │  │   0x00007f1bf3000ab9:   mov    0x14(%r8),%r9d               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.06%               │  │   0x00007f1bf3000abd:   mov    0xc(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f1bf3001e29
   0.08%               │  │   0x00007f1bf3000ac5:   cmp    %ecx,%ebx
                       │  │   0x00007f1bf3000ac7:   jle    0x00007f1bf3001c47           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.19%               │  │   0x00007f1bf3000acd:   cmp    %ecx,%ebx
                       │  │   0x00007f1bf3000acf:   jbe    0x00007f1bf3001d46           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.25%               │  │   0x00007f1bf3000ad5:   movzbl 0x10(%rcx,%r9,8),%edi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
                       │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                       │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.06%               │  │   0x00007f1bf3000adb:   nopl   0x0(%rax,%rax,1)
   0.03%               │  │   0x00007f1bf3000ae0:   cmp    $0xa,%edi
                       │  │   0x00007f1bf3000ae3:   je     0x00007f1bf3001b7c           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c3a1e8::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.21%               │  │   0x00007f1bf3000ae9:   cmp    $0xd,%edi
                       │  │   0x00007f1bf3000aec:   je     0x00007f1bf3001ce0           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c3a1e8::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.23%               │  │   0x00007f1bf3000af2:   cmp    $0x85,%edi
                       │  │   0x00007f1bf3000af8:   je     0x00007f1bf3001dcd           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
                       │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c3a1e8::is@1
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.07%               │  │   0x00007f1bf3000afe:   mov    0x14(%rsi),%edi              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@0 (line 4268)
   0.03%               │  │   0x00007f1bf3000b01:   cmpl   $0xc3a1e8,0x8(,%rdi,8)       ; implicit exception: dispatches to 0x00007f1bf3001e46
                       │  │                                                             ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$54+0x0000000800c3a1e8&apos;)}
   0.42%               │  │   0x00007f1bf3000b0c:   jne    0x00007f1bf3001da0           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.10%               │  │   0x00007f1bf3000b12:   mov    %r11d,%edi
   0.02%               │  │   0x00007f1bf3000b15:   mov    $0x1,%r11d
   0.18%  ╭            │  │   0x00007f1bf3000b1b:   jmp    0x00007f1bf3000b63           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │            │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
   0.57%  │↗           │  │   0x00007f1bf3000b20:   cmp    %edi,%ebx
          ││           │  │   0x00007f1bf3000b22:   jbe    0x00007f1bf3001d94           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
          ││           │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
          ││           │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.12%  ││           │  │   0x00007f1bf3000b28:   mov    %edi,%eax
   0.01%  ││           │  │   0x00007f1bf3000b2a:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@35 (line 4275)
   0.03%  ││           │  │   0x00007f1bf3000b2c:   cmp    %r10d,%eax
          ││           │  │   0x00007f1bf3000b2f:   jg     0x00007f1bf3001bf5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@38 (line 4275)
   0.50%  ││           │  │   0x00007f1bf3000b35:   movzbl 0x10(%rdi,%r9,8),%ebp        ;*iand {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
          ││           │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
          ││           │  │                                                             ; - java.lang.Character::codePointAt@2 (line 8910)
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
   0.10%  ││           │  │   0x00007f1bf3000b3b:   nopl   0x0(%rax,%rax,1)
   0.00%  ││           │  │   0x00007f1bf3000b40:   cmp    $0xa,%ebp
          ││           │  │   0x00007f1bf3000b43:   je     0x00007f1bf3001d05           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@3 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c3a1e8::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.01%  ││           │  │   0x00007f1bf3000b49:   cmp    $0xd,%ebp
          ││           │  │   0x00007f1bf3000b4c:   je     0x00007f1bf3001bb5           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@9 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c3a1e8::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.48%  ││           │  │   0x00007f1bf3000b52:   cmp    $0x85,%ebp
          ││           │  │   0x00007f1bf3000b58:   je     0x00007f1bf30016a6           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern::lambda$DOT$4@25 (line 5676)
          ││           │  │                                                             ; - java.util.regex.Pattern$$Lambda$54/0x0000000800c3a1e8::is@1
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
   0.15%  ││           │  │   0x00007f1bf3000b5e:   inc    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@80 (line 4284)
          ││           │  │   0x00007f1bf3000b61:   mov    %eax,%edi                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││           │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
   0.22%  ↘│           │  │   0x00007f1bf3000b63:   cmp    %edi,%r10d
           ╰           │  │   0x00007f1bf3000b66:   jg     0x00007f1bf3000b20           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@15 (line 4272)
   0.44%               │  │   0x00007f1bf3000b68:   mov    %edi,0x80(%rsp)
   0.34%               │  │   0x00007f1bf3000b6f:   mov    %r11d,0x7c(%rsp)
   0.34%               │  │   0x00007f1bf3000b74:   cmp    %edi,%r10d
                       │  │   0x00007f1bf3000b77:   jg     0x00007f1bf3001732           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@89 (line 4286)
   0.19%               │  │   0x00007f1bf3000b7d:   data16 xchg %ax,%ax
   0.30%               │  │   0x00007f1bf3000b80:   cmp    0x10(%rsi),%r11d
                       │  │   0x00007f1bf3000b84:   jl     0x00007f1bf3001b70           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
   0.06%               │  │   0x00007f1bf3000b8a:   mov    0xc(%rsi),%r9d               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                       │  │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                       │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@86 (line 4286)
   0.24%               │  │   0x00007f1bf3000b8e:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f1bf3001e66
   0.28%               │  │   0x00007f1bf3000b96:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@94 (line 4287)
   0.32%               │  │   0x00007f1bf3000b9a:   movabs $0x800000000,%r10
   0.05%               │  │   0x00007f1bf3000ba4:   lea    (%r10,%rbx,1),%rbx
   0.25%               │  │   0x00007f1bf3000ba8:   cmp    -0x1af(%rip),%rbx        # 0x00007f1bf3000a00
                       │  │                                                             ;   {section_word}
   0.23%    ╭          │  │   0x00007f1bf3000baf:   je     0x00007f1bf3000bcb
   0.06%    │          │  │   0x00007f1bf3000bb5:   cmp    -0x1b4(%rip),%rbx        # 0x00007f1bf3000a08
            │          │  │                                                             ;   {section_word}
   0.02%    │          │  │   0x00007f1bf3000bbc:   nopl   0x0(%rax)
   0.00%    │          │  │   0x00007f1bf3000bc0:   je     0x00007f1bf3001234
            │          │  │   0x00007f1bf3000bc6:   jmp    0x00007f1bf3001cb9
   0.30%    ↘          │  │   0x00007f1bf3000bcb:   mov    0x10(%rsi),%ecx              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
                       │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@124 (line 4292)
   0.13%               │  │   0x00007f1bf3000bce:   cmp    0x7c(%rsp),%ecx
             ╭         │  │   0x00007f1bf3000bd2:   jne    0x00007f1bf3000bf6           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
             │         │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
   0.46%     │     ↗   │  │   0x00007f1bf3000bd8:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
             │     │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@131 (line 4293)
   0.13%     │     │   │  │   0x00007f1bf3000bdd:   mov    0x90(%rsp),%rbp
   0.40%     │     │   │  │   0x00007f1bf3000be5:   add    $0x98,%rsp
   0.11%     │     │   │  │   0x00007f1bf3000bec:   mov    0x348(%r15),%rcx
   0.28%     │     │   │  │   0x00007f1bf3000bf3:   test   %eax,(%rcx)                  ;   {poll_return}
   0.43%     │     │   │  │   0x00007f1bf3000bf5:   ret    
   0.44%     ↘     │   │  │   0x00007f1bf3000bf6:   mov    0x80(%rsp),%edi
   0.00%           │   │  │   0x00007f1bf3000bfd:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@1 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
                   │   │  │   0x00007f1bf3000bff:   nop
   0.13%           │   │  │   0x00007f1bf3000c00:   test   %edi,%edi
                   │   │  │   0x00007f1bf3000c02:   jl     0x00007f1bf3001ca7           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@1 (line 47)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.36%           │   │  │   0x00007f1bf3000c08:   mov    0x38(%rsp),%r8               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
                   │   │  │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.01%           │   │  │   0x00007f1bf3000c0d:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007f1bf3001e86
                   │   │  │                                                             ;   {metadata(&apos;java/lang/String&apos;)}
   0.06%           │   │  │   0x00007f1bf3000c15:   jne    0x00007f1bf3001c95           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.14%           │   │  │   0x00007f1bf3000c1b:   movsbl 0x10(%r8),%r10d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::isLatin1@7 (line 4551)
                   │   │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.34%           │   │  │   0x00007f1bf3000c20:   test   %r10d,%r10d
                   │   │  │   0x00007f1bf3000c23:   jne    0x00007f1bf3001a85           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
                   │   │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.00%           │   │  │   0x00007f1bf3000c29:   mov    0x14(%r8),%r11d              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r11=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                   │   │  │                                                             ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
                   │   │  │   0x00007f1bf3000c2d:   mov    0xc(,%r11,8),%r9d            ; implicit exception: dispatches to 0x00007f1bf3001ea6
   0.58%           │   │  │   0x00007f1bf3000c35:   cmp    %edi,%r9d
                   │   │  │   0x00007f1bf3000c38:   jle    0x00007f1bf3001c59           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.68%           │   │  │   0x00007f1bf3000c3e:   xchg   %ax,%ax
                   │   │  │   0x00007f1bf3000c40:   cmp    %edi,%r9d
                   │   │  │   0x00007f1bf3000c43:   jbe    0x00007f1bf3001a0c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
                   │   │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.17%           │   │  │   0x00007f1bf3000c49:   shl    $0x3,%r11                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.String::charAt@8 (line 1515)
                   │   │  │                                                             ; - java.lang.Character::codePointBefore@5 (line 9011)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.02%           │   │  │   0x00007f1bf3000c4d:   cmp    0x84(%rsp),%edi
   0.32%           │   │  │   0x00007f1bf3000c54:   mov    0x84(%rsp),%ebx
                   │   │  │   0x00007f1bf3000c5b:   cmovg  %edi,%ebx                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.lang.Math::max@2 (line 1562)
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
   0.15%           │   │  │   0x00007f1bf3000c5e:   mov    0x7c(%rsp),%edi
   0.02%           │   │  │   0x00007f1bf3000c62:   dec    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                   │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
   0.29%           │   │  │   0x00007f1bf3000c64:   mov    %ebx,0x68(%rsp)
   0.00%           │   │  │   0x00007f1bf3000c68:   mov    %r11,%rbx
   0.19%           │   │  │   0x00007f1bf3000c6b:   mov    %edi,%r11d
   0.02%           │   │  │   0x00007f1bf3000c6e:   mov    %r9d,%edi
   0.30%           │   │  │   0x00007f1bf3000c71:   mov    %r10d,%r9d
                   │   │  │   0x00007f1bf3000c74:   mov    0x68(%rsp),%r10d
   0.18%      ╭    │   │  │   0x00007f1bf3000c79:   jmp    0x00007f1bf3000db1           ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │    │   │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
              │    │   │  │   0x00007f1bf3000c7e:   xchg   %ax,%ax
   0.11%      │    │↗  │  │   0x00007f1bf3000c80:   mov    0xc(%rsi),%ebp               ; ImmutableOopMap {rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │    ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │    ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.63%      │    ││  │  │   0x00007f1bf3000c83:   mov    0x8(,%rbp,8),%ecx            ; implicit exception: dispatches to 0x00007f1bf3001ec6
   0.13%      │    ││  │  │   0x00007f1bf3000c8a:   movabs $0x800000000,%r13
   0.23%      │    ││  │  │   0x00007f1bf3000c94:   lea    0x0(%r13,%rcx,1),%rcx
   0.41%      │    ││  │  │   0x00007f1bf3000c99:   cmp    -0x2a0(%rip),%rcx        # 0x00007f1bf3000a00
              │    ││  │  │                                                             ;   {section_word}
   0.76%      │╭   ││  │  │   0x00007f1bf3000ca0:   je     0x00007f1bf3000cb8
   0.13%      ││   ││  │  │   0x00007f1bf3000ca6:   cmp    -0x2a5(%rip),%rcx        # 0x00007f1bf3000a08
              ││   ││  │  │                                                             ;   {section_word}
   0.09%      ││╭  ││  │  │   0x00007f1bf3000cad:   je     0x00007f1bf3000dd7
              │││  ││  │  │   0x00007f1bf3000cb3:   jmp    0x00007f1bf3001c05
   0.27%      │↘│  ││  │  │   0x00007f1bf3000cb8:   nopl   0x0(%rax,%rax,1)
   0.10%      │ │  ││  │  │   0x00007f1bf3000cc0:   cmp    0x10(%rdx),%r10d
              │ │╭ ││  │  │   0x00007f1bf3000cc4:   jge    0x00007f1bf3000dce           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%      │ ││ ││  │  │   0x00007f1bf3000cca:   test   %r9d,%r9d
              │ ││ ││  │  │   0x00007f1bf3000ccd:   jne    0x00007f1bf3001bc5           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.String::isLatin1@10 (line 4551)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@1 (line 1514)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%      │ ││ ││  │  │   0x00007f1bf3000cd3:   cmp    %r10d,%edi
              │ ││ ││  │  │   0x00007f1bf3000cd6:   jbe    0x00007f1bf30016c6           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@7 (line 47)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.25%      │ ││ ││  │  │   0x00007f1bf3000cdc:   mov    0x10(,%rbp,8),%ecx           ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.11%      │ ││ ││  │  │   0x00007f1bf3000ce3:   cmpl   $0x269380,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007f1bf3001ee6
              │ ││ ││  │  │                                                             ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
   0.33%      │ ││ ││  │  │   0x00007f1bf3000cee:   jne    0x00007f1bf3001bdd           ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.27%      │ ││ ││  │  │   0x00007f1bf3000cf4:   cmp    0xc(%rbx),%r10d              ; implicit exception: dispatches to 0x00007f1bf3001f06
              │ ││ ││  │  │   0x00007f1bf3000cf8:   jae    0x00007f1bf300186c           ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%      │ ││ ││  │  │   0x00007f1bf3000cfe:   mov    0xc(,%rcx,8),%ecx            ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ ││ ││  │  │                                                             ;*iload {reexecute=1 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.02%      │ ││ ││  │  │   0x00007f1bf3000d05:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007f1bf3001f26
   1.74%      │ ││ ││  │  │   0x00007f1bf3000d0d:   movsbl 0x10(%rbx,%r10,1),%ebx       ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%      │ ││ ││  │  │   0x00007f1bf3000d13:   movzbl %bl,%edi                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.lang.StringLatin1::charAt@25 (line 50)
              │ ││ ││  │  │                                                             ; - java.lang.String::charAt@12 (line 1515)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%      │ ││ ││  │  │   0x00007f1bf3000d16:   cmp    %edi,%r9d
              │ ││ ││  │  │   0x00007f1bf3000d19:   jbe    0x00007f1bf3001b9d
   0.55%      │ ││ ││  │  │   0x00007f1bf3000d1f:   movzbl %bl,%r9d                     ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
              │ ││ ││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%      │ ││ ││  │  │   0x00007f1bf3000d23:   cmpb   $0x0,0x10(%r9,%rcx,8)
   0.66%      │ ││╭││  │  │   0x00007f1bf3000d29:   jne    0x00007f1bf300102b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
              │ │││││  │  │                                                             ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
              │ │││││  │  │                                                             ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.69%      │ │││││↗ │ ↗│↗  0x00007f1bf3000d2f:   mov    0x10(%rsi),%ecx              ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
              │ ││││││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@124 (line 4292)
   1.09%      │ ││││││ │ │││  0x00007f1bf3000d32:   cmp    0x64(%rsp),%ecx
              │ │││╰││ │ │││  0x00007f1bf3000d36:   je     0x00007f1bf3000bd8           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
   0.27%      │ │││ ││ │ │││  0x00007f1bf3000d3c:   mov    0x38(%rsp),%r8
   0.11%      │ │││ ││ │ │││  0x00007f1bf3000d41:   movsbl 0x10(%r8),%r9d               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::isLatin1@7 (line 4551)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@1 (line 1514)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.38%      │ │││ ││ │ │││  0x00007f1bf3000d46:   test   %r9d,%r9d
              │ │││ ││ │ │││  0x00007f1bf3000d49:   jne    0x00007f1bf3001cce           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@1 (line 1514)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.22%      │ │││ ││ │ │││  0x00007f1bf3000d4f:   mov    0x68(%rsp),%r10d
   0.08%      │ │││ ││ │ │││  0x00007f1bf3000d54:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.01%      │ │││ ││ │ │││  0x00007f1bf3000d57:   test   %r10d,%r10d
              │ │││ ││ │ │││  0x00007f1bf3000d5a:   jl     0x00007f1bf3001b5e           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.27%      │ │││ ││ │ │││  0x00007f1bf3000d60:   mov    0x14(%r8),%edx               ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ │││ ││ │ │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.18%      │ │││ ││ │ │││  0x00007f1bf3000d64:   mov    0xc(,%rdx,8),%edi            ; implicit exception: dispatches to 0x00007f1bf3001f46
   1.01%      │ │││ ││ │ │││  0x00007f1bf3000d6b:   cmp    %r10d,%edi
              │ │││ ││ │ │││  0x00007f1bf3000d6e:   jle    0x00007f1bf3001ddf           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.29%      │ │││ ││ │ │││  0x00007f1bf3000d74:   cmp    %r10d,%edi
              │ │││ ││ │ │││  0x00007f1bf3000d77:   jbe    0x00007f1bf30016ed           ;*baload {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.30%      │ │││ ││ │ │││  0x00007f1bf3000d7d:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rdx=NarrowOop rsi=Oop r8=Oop [56]=Oop [64]=Oop [72]=Oop }
              │ │││ ││ │ │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
   0.06%      │ │││ ││ │ │││  0x00007f1bf3000d84:   test   %eax,(%r11)                  ;   {poll}
   0.10%      │ │││ ││ │ │││  0x00007f1bf3000d87:   shl    $0x3,%rdx                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.String::charAt@8 (line 1515)
              │ │││ ││ │ │││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
   0.07%      │ │││ ││ │ │││  0x00007f1bf3000d8b:   mov    0x64(%rsp),%r11d
   0.28%      │ │││ ││ │ │││  0x00007f1bf3000d90:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
   0.05%      │ │││ ││ │ │││  0x00007f1bf3000d93:   cmp    0x84(%rsp),%r10d
   0.07%      │ │││ ││ │ │││  0x00007f1bf3000d9b:   mov    0x84(%rsp),%ebx
   0.08%      │ │││ ││ │ │││  0x00007f1bf3000da2:   cmovg  %r10d,%ebx                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.lang.Math::max@2 (line 1562)
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
   0.30%      │ │││ ││ │ │││  0x00007f1bf3000da6:   mov    %ebx,%r10d
   0.05%      │ │││ ││ │ │││  0x00007f1bf3000da9:   mov    %rdx,%rbx
   0.12%      │ │││ ││ │ │││  0x00007f1bf3000dac:   mov    0x40(%rsp),%rdx              ;*iload {reexecute=0 rethrow=0 return_oop=0}
              │ │││ ││ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.10%      ↘ │││ ││ │ │││  0x00007f1bf3000db1:   mov    %r10d,0x68(%rsp)
   0.65%        │││ ││ │ │││  0x00007f1bf3000db6:   mov    %r11d,0x64(%rsp)
   0.04%        │││ ││ │ │││  0x00007f1bf3000dbb:   nopl   0x0(%rax,%rax,1)
   0.26%        │││ ││ │ │││  0x00007f1bf3000dc0:   cmp    %r11d,%ecx
                │││ ╰│ │ │││  0x00007f1bf3000dc3:   jle    0x00007f1bf3000c80
                │││  │ │ │││  0x00007f1bf3000dc9:   jmp    0x00007f1bf3001c2f           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                │││  │ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
                │↘│  │ │ │││  0x00007f1bf3000dce:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                │ │  │ │ │││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@50 (line 3957)
                │ │  │ │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                │ │  ╰ │ │││  0x00007f1bf3000dd2:   jmp    0x00007f1bf3000d2f
   0.06%        ↘ │    │ │││  0x00007f1bf3000dd7:   mov    0x40(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rbp=NarrowOop rsi=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.09%          │    │ │││  0x00007f1bf3000dda:   mov    0xc(,%rcx,8),%r9d            ; implicit exception: dispatches to 0x00007f1bf3001f66
   0.09%          │    │ │││  0x00007f1bf3000de2:   mov    0x10(,%rbp,8),%ebx           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@5 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │    │ │││  0x00007f1bf3000de9:   cmp    %ebx,%r9d
                  │    │ │││  0x00007f1bf3000dec:   jbe    0x00007f1bf3001b46           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007f1bf3000df2:   shl    $0x3,%rcx                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@1 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │    │ │││  0x00007f1bf3000df6:   mov    0x10(%rcx,%rbx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007f1bf3000dfa:   nopw   0x0(%rax,%rax,1)
   0.08%          │    │ │││  0x00007f1bf3000e00:   test   %ebx,%ebx
                  │    │ │││  0x00007f1bf3000e02:   jl     0x00007f1bf3001d7c           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@13 (line 4812)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f1bf3000e08:   mov    0xc(,%rbp,8),%edi            ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f1bf3000e0f:   mov    %edi,0x30(%rsp)
   0.06%          │    │ │││  0x00007f1bf3000e13:   nopw   0x0(%rax,%rax,1)
   0.06%          │    │ │││  0x00007f1bf3000e1c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rcx=Oop rdx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.07%          │    │ │││  0x00007f1bf3000e20:   cmpl   $0xc3a448,0x8(,%rdi,8)       ; implicit exception: dispatches to 0x00007f1bf3001f86
                  │    │ │││                                                            ;   {metadata(&apos;java/util/regex/Pattern$Loop&apos;)}
   0.15%          │    │ │││  0x00007f1bf3000e2b:   jne    0x00007f1bf3001b0d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │    │ │││  0x00007f1bf3000e31:   mov    0x38(%rdx),%r13d             ; ImmutableOopMap {rcx=Oop rdx=Oop rbp=NarrowOop rsi=Oop rdi=NarrowOop r13=NarrowOop [48]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │    │ │││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.07%          │    │ │││  0x00007f1bf3000e35:   mov    0xc(,%r13,8),%r14d           ; implicit exception: dispatches to 0x00007f1bf3001fa6
   0.11%          │    │ │││  0x00007f1bf3000e3d:   mov    0x14(,%rbp,8),%r8d           ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@21 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │    │ │││  0x00007f1bf3000e45:   cmp    %r8d,%r14d
                  │    │ │││  0x00007f1bf3000e48:   jbe    0x00007f1bf3001af5           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f1bf3000e4e:   mov    %r8d,%edx
   0.07%          │    │ │││  0x00007f1bf3000e51:   inc    %edx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@60 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.09%          │    │ │││  0x00007f1bf3000e53:   cmp    %edx,%r14d
                  │    │ │││  0x00007f1bf3000e56:   jbe    0x00007f1bf3001add           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │    │ │││  0x00007f1bf3000e5c:   mov    0x14(,%rdi,8),%r14d          ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │    │ │││  0x00007f1bf3000e64:   cmp    %r14d,%r9d
                  │    │ │││  0x00007f1bf3000e67:   jbe    0x00007f1bf3001ac5           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │    │ │││  0x00007f1bf3000e6d:   mov    0x10(,%rdi,8),%r11d          ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f1bf3000e75:   cmp    %r11d,%r9d
                  │    │ │││  0x00007f1bf3000e78:   jbe    0x00007f1bf3001aab           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.10%          │    │ │││  0x00007f1bf3000e7e:   shl    $0x3,%r13                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@17 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │    │ │││  0x00007f1bf3000e82:   mov    0x10(%r13,%rdx,4),%esi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │    │ │││  0x00007f1bf3000e87:   mov    %esi,0x60(%rsp)
   0.13%          │    │ │││  0x00007f1bf3000e8b:   mov    0x10(%r13,%r8,4),%esi        ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │    │ │││  0x00007f1bf3000e90:   mov    %esi,0x5c(%rsp)
   0.11%          │    │ │││  0x00007f1bf3000e94:   mov    %ebx,0x10(%r13,%r8,4)        ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.20%          │    │ │││  0x00007f1bf3000e99:   mov    %r10d,0x10(%r13,%rdx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.22%          │    │ │││  0x00007f1bf3000e9e:   mov    %ebp,%r13d
   0.01%          │    │ │││  0x00007f1bf3000ea1:   shl    $0x3,%r13                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@107 (line 4290)
   0.04%          │    │ │││  0x00007f1bf3000ea5:   cmp    0x10(%rcx,%r14,4),%r10d
                  │    │ │││  0x00007f1bf3000eaa:   jle    0x00007f1bf3001a94           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%          │    │ │││  0x00007f1bf3000eb0:   mov    %ebp,0x34(%rsp)
   0.02%          │    │ │││  0x00007f1bf3000eb4:   mov    0x10(%rcx,%r11,4),%r14d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │    │ │││  0x00007f1bf3000eb9:   mov    %r14d,0x58(%rsp)
   0.09%          │    │ │││  0x00007f1bf3000ebe:   mov    %r14d,%r8d
   0.14%          │    │ │││  0x00007f1bf3000ec1:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%          │    │ │││  0x00007f1bf3000ec4:   mov    %edi,%edx
   0.07%          │    │ │││  0x00007f1bf3000ec6:   shl    $0x3,%rdx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │    │ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
                  │    │ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │    │ │││  0x00007f1bf3000eca:   cmp    0x18(,%rdi,8),%r14d
                  │   ╭│ │││  0x00007f1bf3000ed2:   jge    0x00007f1bf3001073           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.16%          │   ││ │││  0x00007f1bf3000ed8:   mov    %ebx,0x54(%rsp)
   0.06%          │   ││ │││  0x00007f1bf3000edc:   mov    0x24(,%rdi,8),%ebx           ; ImmutableOopMap {rcx=Oop rdx=Oop rbx=NarrowOop r13=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   ││ │││                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │   ││ │││  0x00007f1bf3000ee3:   cmpl   $0x267620,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f1bf3001fc6
                  │   ││ │││                                                            ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.19%          │   ││ │││  0x00007f1bf3000eee:   jne    0x00007f1bf3001db2           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.12%          │   ││ │││  0x00007f1bf3000ef4:   mov    0x10(,%rbx,8),%r10d          ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.03%          │   ││ │││  0x00007f1bf3000efc:   nopl   0x0(%rax)
   0.15%          │   ││ │││  0x00007f1bf3000f00:   cmp    %r10d,%r9d
                  │   ││ │││  0x00007f1bf3000f03:   jbe    0x00007f1bf3001a57           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%          │   ││ │││  0x00007f1bf3000f09:   mov    %rdx,0x18(%rsp)
   0.11%          │   ││ │││  0x00007f1bf3000f0e:   mov    %r13,0x8(%rsp)
   0.05%          │   ││ │││  0x00007f1bf3000f13:   mov    0x68(%rsp),%r9d
   0.15%          │   ││ │││  0x00007f1bf3000f18:   mov    0x38(%rsp),%rax
   0.02%          │   ││ │││  0x00007f1bf3000f1d:   mov    0x40(%rsp),%rdi
   0.11%          │   ││ │││  0x00007f1bf3000f22:   mov    0xc(,%rbx,8),%ebp            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@63 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │   ││ │││  0x00007f1bf3000f29:   test   %eax,0x0(,%rbp,8)            ; implicit exception: deoptimizes
                  │   ││ │││                                                            ; ImmutableOopMap {rax=Oop rcx=Oop rbx=NarrowOop rbp=NarrowOop rdi=Oop [8]=Oop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.42%          │   ││ │││  0x00007f1bf3000f30:   mov    %r8d,0x10(%rcx,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.05%          │   ││ │││  0x00007f1bf3000f35:   mov    0x10(%rcx,%r10,4),%r11d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   ││ │││  0x00007f1bf3000f3a:   mov    %r9d,0x10(%rcx,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.37%          │   ││ │││  0x00007f1bf3000f3f:   shl    $0x3,%rbp                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │   ││ │││  0x00007f1bf3000f43:   mov    %ebx,%r10d
   0.04%          │   ││ │││  0x00007f1bf3000f46:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%          │   ││ │││  0x00007f1bf3000f4a:   mov    %rbp,%rsi
   0.19%          │   ││ │││  0x00007f1bf3000f4d:   mov    %rdi,%rdx
   0.08%          │   ││ │││  0x00007f1bf3000f50:   mov    %r9d,%ecx
   0.05%          │   ││ │││  0x00007f1bf3000f53:   mov    %rax,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   ││ │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.02%          │   ││ │││  0x00007f1bf3000f56:   mov    %r10,(%rsp)
   0.16%          │   ││ │││  0x00007f1bf3000f5a:   mov    %r11d,0x50(%rsp)
   0.04%          │   ││ │││  0x00007f1bf3000f5f:   mov    %ebx,0x14(%rsp)
   0.06%          │   ││ │││  0x00007f1bf3000f63:   xchg   %ax,%ax
   0.01%          │   ││ │││  0x00007f1bf3000f65:   movabs $0x800268190,%rax
   0.18%          │   │╰ │││  0x00007f1bf3000f6f:   call   0x00007f1bf3000a20           ; ImmutableOopMap {[0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                  │   │  │││                                                            ;   {virtual_call}
   0.22%          │   │  │││  0x00007f1bf3000f74:   nop
   0.03%          │   │  │││  0x00007f1bf3000f75:   mov    0x40(%rsp),%rdx
   0.46%          │   │  │││  0x00007f1bf3000f7a:   mov    0x40(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [0]=Oop [8]=Oop [20]=NarrowOop [24]=Oop [48]=NarrowOop [52]=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*istore {reexecute=1 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupHead::match@31 (line 4789)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.56%          │   │  │││  0x00007f1bf3000f7d:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f1bf3001fe6
   1.18%          │   │  │││  0x00007f1bf3000f84:   mov    0x14(%rsp),%ebx
   0.00%          │   │  │││  0x00007f1bf3000f88:   mov    0x10(,%rbx,8),%r8d           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@38 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%          │   │  │││  0x00007f1bf3000f90:   cmp    %r8d,%ecx
                  │   │  │││  0x00007f1bf3000f93:   jbe    0x00007f1bf3001a2d           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.28%          │   │  │││  0x00007f1bf3000f99:   mov    0x50(%rsp),%r11d
   0.01%          │   │  │││  0x00007f1bf3000f9e:   shl    $0x3,%rsi                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@34 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                  │   │  │││  0x00007f1bf3000fa2:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupHead::match@43 (line 4790)
                  │   │  │││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.62%          │   │  │││  0x00007f1bf3000fa7:   test   %eax,%eax
                  │   │ ╭│││  0x00007f1bf3000fa9:   jne    0x00007f1bf3000fd3           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@60 (line 4880)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                  │   │ ││││  0x00007f1bf3000faf:   mov    0x30(%rsp),%edi
   0.01%          │   │ ││││  0x00007f1bf3000fb3:   mov    0x10(,%rdi,8),%r8d           ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@68 (line 4881)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%          │   │ ││││  0x00007f1bf3000fbb:   nopl   0x0(%rax,%rax,1)
   0.28%          │   │ ││││  0x00007f1bf3000fc0:   cmp    %r8d,%ecx
                  │   │ ││││  0x00007f1bf3000fc3:   jbe    0x00007f1bf3001d25
                  │   │ ││││  0x00007f1bf3000fc9:   mov    0x58(%rsp),%r14d
   0.00%          │   │ ││││  0x00007f1bf3000fce:   mov    %r14d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │ ││││                                                            ; - java.util.regex.Pattern$Loop::match@73 (line 4881)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                  │   │ ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.06%          │   │ ↘│││  0x00007f1bf3000fd3:   test   %eax,%eax
                  │   │  │││  0x00007f1bf3000fd5:   jne    0x00007f1bf300148b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%          │   │  │││  0x00007f1bf3000fdb:   mov    0x34(%rsp),%ebp
   0.00%          │   │  │││  0x00007f1bf3000fdf:   mov    0x38(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=NarrowOop [8]=Oop [56]=Oop [64]=Oop [72]=Oop }
                  │   │  │││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - (reexecute) java.util.regex.Pattern$GroupTail::match@73 (line 4820)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%          │   │  │││  0x00007f1bf3000fe2:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f1bf3002006
   0.07%          │   │  │││  0x00007f1bf3000fe9:   mov    0x14(,%rbp,8),%r8d           ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@83 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.19%          │   │  │││  0x00007f1bf3000ff1:   cmp    %r8d,%ecx
                  │   │  │││  0x00007f1bf3000ff4:   jbe    0x00007f1bf300165f           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%          │   │  │││  0x00007f1bf3000ffa:   mov    %r8d,%r10d
   0.00%          │   │  │││  0x00007f1bf3000ffd:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@98 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.08%          │   │  │││  0x00007f1bf3001000:   cmp    %r10d,%ecx
                  │   │  │││  0x00007f1bf3001003:   jbe    0x00007f1bf300165f           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.21%          │   │  │││  0x00007f1bf3001009:   mov    0x5c(%rsp),%r11d
   0.01%          │   │  │││  0x00007f1bf300100e:   mov    0x60(%rsp),%r9d
   0.01%          │   │  │││  0x00007f1bf3001013:   shl    $0x3,%rsi                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.04%          │   │  │││  0x00007f1bf3001017:   mov    %r11d,0x10(%rsi,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.30%          │   │  │││  0x00007f1bf300101c:   mov    %r9d,0x10(%rsi,%r10,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                  │   │  │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
                  │   │  │││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.07%          │   │  │││  0x00007f1bf3001021:   mov    0x48(%rsp),%rsi
   0.01%          │   │  ╰││  0x00007f1bf3001026:   jmp    0x00007f1bf3000d2f           ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                  │   │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@47 (line 3954)
                  │   │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.53%          ↘   │   ││  0x00007f1bf300102b:   mov    0xc(,%rbp,8),%esi            ;*iload {reexecute=1 rethrow=0 return_oop=0}
                      │   ││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
   0.30%              │   ││  0x00007f1bf3001032:   test   %eax,0x0(,%rsi,8)            ; implicit exception: deoptimizes
                      │   ││                                                            ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [56]=Oop [64]=Oop [72]=Oop }
   0.16%              │   ││  0x00007f1bf3001039:   shl    $0x3,%rsi                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@28 (line 3954)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.17%              │   ││  0x00007f1bf300103d:   mov    0x68(%rsp),%r10d
                      │   ││  0x00007f1bf3001042:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@34 (line 3954)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.01%              │   ││  0x00007f1bf3001045:   mov    %rdx,%r11
   0.04%              │   ││  0x00007f1bf3001048:   mov    %r10d,%ecx
   0.19%              │   ││  0x00007f1bf300104b:   mov    0x38(%rsp),%r8               ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                      │   ││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                      │   ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
   0.00%              │   ││  0x00007f1bf3001050:   nop
   0.01%              │   ││  0x00007f1bf3001051:   movabs $0x800268190,%rax
   0.03%              │   ╰│  0x00007f1bf300105b:   call   0x00007f1bf3000a20           ; ImmutableOopMap {[56]=Oop [64]=Oop [72]=Oop }
                      │    │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                      │    │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                      │    │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                      │    │                                                            ;   {virtual_call}
   0.00%              │    │  0x00007f1bf3001060:   nop
   0.04%              │    │  0x00007f1bf3001061:   test   %eax,%eax
                      │    │  0x00007f1bf3001063:   jne    0x00007f1bf300148b
   0.06%              │    │  0x00007f1bf3001069:   mov    0x48(%rsp),%rsi
   0.45%              │    ╰  0x00007f1bf300106e:   jmp    0x00007f1bf3000d2f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                      │                                                                 ; - java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
                      ↘       0x00007f1bf3001073:   mov    %rdx,0x18(%rsp)
                              0x00007f1bf3001078:   mov    %r13,0x8(%rsp)
                              0x00007f1bf300107d:   mov    %esi,%r11d
                              0x00007f1bf3001080:   mov    0x60(%rsp),%r9d
                              0x00007f1bf3001085:   mov    %ebx,0x54(%rsp)
                              0x00007f1bf3001089:   mov    0x48(%rsp),%rsi
                              0x00007f1bf300108e:   cmp    0x1c(,%rdi,8),%r14d
                              0x00007f1bf3001096:   jge    0x00007f1bf30019fd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.regex.Pattern$Loop::match@83 (line 4888)
....................................................................................................
  47.17%  <total for region 1>

....[Hottest Regions]...............................................................................
  47.17%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 816 
   9.11%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 816 
   3.89%      jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 848 
   3.30%      jvmci, level 4  java.util.regex.Pattern::group0, version 2, compile id 868 
   3.14%      jvmci, level 4  java.util.regex.Pattern::sequence, version 2, compile id 861 
   2.21%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 884 
   2.07%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 849 
   1.92%      jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 871 
   1.87%      jvmci, level 4  java.util.regex.Pattern::sequence, version 2, compile id 861 
   1.77%      jvmci, level 4  java.util.regex.Pattern::sequence, version 2, compile id 861 
   1.50%      jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 871 
   1.36%      jvmci, level 4  java.util.regex.Pattern::sequence, version 2, compile id 861 
   1.33%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::study, version 2, compile id 865 
   1.22%      jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 848 
   1.20%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 849 
   1.12%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 849 
   1.12%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 849 
   0.98%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 849 
   0.84%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 849 
   0.77%      jvmci, level 4  java.util.regex.Pattern::group0, version 2, compile id 868 
  12.09%  <...other 563 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.28%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 816 
  10.04%      jvmci, level 4  java.util.regex.Pattern::sequence, version 2, compile id 861 
   8.53%      jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 849 
   6.24%      jvmci, level 4  java.util.regex.Matcher::match, version 2, compile id 848 
   5.81%      jvmci, level 4  java.util.regex.Pattern::group0, version 2, compile id 868 
   3.42%      jvmci, level 4  java.util.regex.Pattern::matcher, version 2, compile id 871 
   2.22%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 884 
   2.05%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::study, version 2, compile id 865 
   1.42%              kernel  [unknown] 
   1.32%      jvmci, level 4  java.util.regex.Pattern::closure, version 2, compile id 851 
   0.65%      jvmci, level 4  java.util.regex.IntHashSet::contains, version 3, compile id 881 
   0.53%      jvmci, level 4  java.util.regex.IntHashSet::add, version 3, compile id 882 
   0.18%      jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 879 
   0.18%      jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 838 
   0.13%                      <unknown> 
   0.07%        libc-2.31.so  [unknown] 
   0.05%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.04%           libjvm.so  OtherRegionsTable::is_empty 
   0.03%           libjvm.so  HeapRegionClaimer::claim_region 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.80%  <...other 169 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.44%      jvmci, level 4
   1.42%              kernel
   0.67%           libjvm.so
   0.18%        libc-2.31.so
   0.13%                    
   0.08%  libpthread-2.31.so
   0.03%          ld-2.31.so
   0.02%         interpreter
   0.02%              [vdso]
   0.02%      hsdis-amd64.so
   0.00%     perf-114453.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:36

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
StringPatternMatcherBenchmark.pattern_find          ^(.*[aeuio].*){3,}$  avgt    5  1450.001 ± 19.969  us/op
StringPatternMatcherBenchmark.pattern_find:·asm     ^(.*[aeuio].*){3,}$  avgt            NaN             ---
StringPatternMatcherBenchmark.pattern_matches       ^(.*[aeuio].*){3,}$  avgt    5  1410.385 ±  1.497  us/op
StringPatternMatcherBenchmark.pattern_matches:·asm  ^(.*[aeuio].*){3,}$  avgt            NaN             ---
StringPatternMatcherBenchmark.string_matches        ^(.*[aeuio].*){3,}$  avgt    5  2146.900 ± 15.408  us/op
StringPatternMatcherBenchmark.string_matches:·asm   ^(.*[aeuio].*){3,}$  avgt            NaN             ---
