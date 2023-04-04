# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
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
# Warmup Iteration   1: 1746.991 us/op
# Warmup Iteration   2: 1583.968 us/op
# Warmup Iteration   3: 1582.590 us/op
# Warmup Iteration   4: 1582.361 us/op
# Warmup Iteration   5: 1583.666 us/op
Iteration   1: 1583.929 us/op
Iteration   2: 1582.435 us/op
Iteration   3: 1583.522 us/op
Iteration   4: 1581.613 us/op
Iteration   5: 1582.461 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_find":
  1582.792 ±(99.9%) 3.577 us/op [Average]
  (min, avg, max) = (1581.613, 1582.792, 1583.929), stdev = 0.929
  CI (99.9%): [1579.215, 1586.370] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_find:·asm":
PrintAssembly processed: 216609 total address lines.
Perf output processed (skipped 58.838 seconds):
 Column 1: cycles (50862 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$Loop::match, version 2, compile id 785 

                 0x00007f78dab278d8:   0x00000008      0x0000000800000008      
                 0x00007f78dab278dc:   0x00000008                              
               --------------------------------------------------------------------------------
               [Entry Point]
                 # {method} {0x00007f78a3abc658} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$Loop&apos;
                 # this:     rsi:rsi   = &apos;java/util/regex/Pattern$Loop&apos;
                 # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
                 # parm1:    rcx       = int
                 # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                 #           [sp+0x80]  (sp of caller)
   0.49%         0x00007f78dab278e0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.26%         0x00007f78dab278e4:   movabs $0x800000000,%r12
   0.02%         0x00007f78dab278ee:   add    %r12,%r10
   0.15%         0x00007f78dab278f1:   xor    %r12,%r12
   0.31%         0x00007f78dab278f4:   cmp    %r10,%rax
                 0x00007f78dab278f7:   jne    0x00007f78d301e780           ;   {runtime_call ic_miss_stub}
   0.23%         0x00007f78dab278fd:   nop
   0.02%         0x00007f78dab278fe:   xchg   %ax,%ax
               [Verified Entry Point]
   0.14%         0x00007f78dab27900:   mov    %eax,-0x14000(%rsp)
   0.52%         0x00007f78dab27907:   sub    $0x78,%rsp
   0.02%         0x00007f78dab2790b:   mov    %rbp,0x70(%rsp)
   0.14%         0x00007f78dab27910:   mov    %rsi,0x40(%rsp)
   0.31%         0x00007f78dab27915:   mov    %rdx,0x38(%rsp)
   0.24%         0x00007f78dab2791a:   mov    %ecx,0x64(%rsp)
   0.03%         0x00007f78dab2791e:   mov    %r8,0x30(%rsp)               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.11%         0x00007f78dab27923:   mov    0x40(%rdx),%r10d             ; implicit exception: dispatches to 0x00007f78dab28f88
   0.32%         0x00007f78dab27927:   mov    0x10(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.27%         0x00007f78dab2792b:   mov    0xc(,%r10,8),%r9d            ; implicit exception: dispatches to 0x00007f78dab28fa6
   0.10%         0x00007f78dab27933:   mov    0x14(%rsi),%ebx              ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
   0.10%         0x00007f78dab27936:   cmp    %ebx,%r9d
                 0x00007f78dab27939:   jbe    0x00007f78dab28e97           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
   0.34%         0x00007f78dab2793f:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@2 (line 4870)
   0.23%         0x00007f78dab27943:   cmp    0x10(%r10,%rbx,4),%ecx
                 0x00007f78dab27948:   jle    0x00007f78dab28dc6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
   0.28%         0x00007f78dab2794e:   mov    0x10(%rsi),%ebx              ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
   0.26%         0x00007f78dab27951:   cmp    %ebx,%r9d
                 0x00007f78dab27954:   jbe    0x00007f78dab28edd
   0.26%         0x00007f78dab2795a:   mov    0x10(%r10,%rbx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
   0.04%         0x00007f78dab2795f:   mov    %edi,0x60(%rsp)
   0.27%         0x00007f78dab27963:   mov    %edi,%eax
   0.21%         0x00007f78dab27965:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
   0.21%         0x00007f78dab27967:   cmp    0x18(%rsi),%edi
                 0x00007f78dab2796a:   jge    0x00007f78dab2828e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
   0.02%         0x00007f78dab27970:   mov    0x24(%rsi),%ebp              ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
   0.26%         0x00007f78dab27973:   mov    %ebp,0x2c(%rsp)
   0.20%         0x00007f78dab27977:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.18%         0x00007f78dab27980:   cmpl   $0x269d20,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007f78dab28fc6
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.27%         0x00007f78dab2798b:   jne    0x00007f78dab28f49           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.25%         0x00007f78dab27991:   mov    0xc(,%rbp,8),%r13d           ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.16%         0x00007f78dab27999:   mov    %r13d,0x28(%rsp)
   0.02%         0x00007f78dab2799e:   xchg   %ax,%ax                      ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.26%         0x00007f78dab279a0:   cmpl   $0x26a890,0x8(,%r13,8)       ; implicit exception: dispatches to 0x00007f78dab28fe6
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
   0.76%         0x00007f78dab279ac:   jne    0x00007f78dab28e54           ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.33%         0x00007f78dab279b2:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007f78dab29006
                                                                           ;   {metadata(&apos;java/lang/String&apos;)}
   0.12%         0x00007f78dab279ba:   jne    0x00007f78dab28e06           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.12%         0x00007f78dab279c0:   movsbl 0x10(%r8),%r14d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::isLatin1@7 (line 4551)
                                                                           ; - java.lang.String::charAt@1 (line 1514)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.11%         0x00007f78dab279c5:   test   %r14b,%r14b
                 0x00007f78dab279c8:   jne    0x00007f78dab28e1b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::isLatin1@10 (line 4551)
                                                                           ; - java.lang.String::charAt@1 (line 1514)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.29%         0x00007f78dab279ce:   mov    0x14(%r8),%edi               ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rdi=NarrowOop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.10%         0x00007f78dab279d2:   mov    0xc(,%rdi,8),%r8d            ; implicit exception: dispatches to 0x00007f78dab29026
   0.14%         0x00007f78dab279da:   mov    0x14(,%r13,8),%esi           ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rdi=NarrowOop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.11%         0x00007f78dab279e2:   cmpl   $0xc395b0,0x8(,%rsi,8)       ; implicit exception: dispatches to 0x00007f78dab29046
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$54+0x0000000800c395b0&apos;)}
   1.37%         0x00007f78dab279ed:   jne    0x00007f78dab28ae1           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.65%         0x00007f78dab279f3:   mov    0x10(,%rbp,8),%esi           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%         0x00007f78dab279fa:   nopw   0x0(%rax,%rax,1)
   0.01%         0x00007f78dab27a00:   cmp    %esi,%r9d
                 0x00007f78dab27a03:   jbe    0x00007f78dab28d59           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%         0x00007f78dab27a09:   mov    %eax,0x10(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
   0.61%         0x00007f78dab27a0e:   mov    0x10(%r10,%rsi,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%         0x00007f78dab27a13:   mov    %r9d,0x5c(%rsp)
   0.02%         0x00007f78dab27a18:   mov    %ecx,0x10(%r10,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%         0x00007f78dab27a1d:   mov    %ebp,%r10d
   0.58%         0x00007f78dab27a20:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
   0.04%         0x00007f78dab27a24:   mov    %r10,0x20(%rsp)
   0.01%         0x00007f78dab27a29:   mov    %r13d,%ebx
   0.05%         0x00007f78dab27a2c:   shl    $0x3,%rbx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.61%         0x00007f78dab27a30:   mov    %rbx,0x18(%rsp)
   0.03%         0x00007f78dab27a35:   mov    %r11d,%esi
   0.01%         0x00007f78dab27a38:   sub    %ecx,%esi
   0.04%         0x00007f78dab27a3a:   cmp    %r11d,%ecx
   0.62%         0x00007f78dab27a3d:   mov    $0x0,%eax
   0.03%         0x00007f78dab27a42:   cmovg  %eax,%esi                    ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                           ; - java.lang.String::charAt@12 (line 1515)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%         0x00007f78dab27a45:   test   %esi,%esi
          ╭      0x00007f78dab27a47:   je     0x00007f78dab27d0b           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%  │      0x00007f78dab27a4d:   mov    %edi,%eax
   0.37%  │      0x00007f78dab27a4f:   shl    $0x3,%rax                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.lang.String::charAt@8 (line 1515)
          │                                                                ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%  │      0x00007f78dab27a53:   mov    %ecx,%r13d
   0.01%  │      0x00007f78dab27a56:   lea    0x10(%rax,%r13,1),%rax
   0.02%  │      0x00007f78dab27a5b:   vmovd  %r8d,%xmm0
   0.37%  │      0x00007f78dab27a60:   vpbroadcastd %xmm0,%ymm0
   0.01%  │      0x00007f78dab27a65:   mov    %esi,%r13d
   0.01%  │      0x00007f78dab27a68:   vmovd  %r11d,%xmm1
   0.02%  │      0x00007f78dab27a6d:   vpbroadcastd %xmm1,%ymm1
   0.40%  │      0x00007f78dab27a72:   vmovdqa -0x25a(%rip),%ymm2        # 0x00007f78dab27820
          │                                                                ;   {section_word}
   0.03%  │      0x00007f78dab27a7a:   vmovdqa -0x242(%rip),%ymm3        # 0x00007f78dab27840
          │                                                                ;   {section_word}
   0.04%  │      0x00007f78dab27a82:   vmovdqa -0x22a(%rip),%ymm4        # 0x00007f78dab27860
          │                                                                ;   {section_word}
   0.05%  │      0x00007f78dab27a8a:   mov    %ecx,%r10d
   0.40%  │      0x00007f78dab27a8d:   inc    %r10d
   0.01%  │      0x00007f78dab27a90:   vmovd  %r10d,%xmm5
   0.01%  │      0x00007f78dab27a95:   vpbroadcastd %xmm5,%ymm5
   0.04%  │      0x00007f78dab27a9a:   vmovdqa -0x222(%rip),%ymm6        # 0x00007f78dab27880
          │                                                                ;   {section_word}
   0.37%  │      0x00007f78dab27aa2:   vpaddd %ymm6,%ymm5,%ymm5
   0.02%  │      0x00007f78dab27aa6:   vpcmpeqd %ymm7,%ymm7,%ymm7
   0.01%  │      0x00007f78dab27aaa:   vmovd  %ecx,%xmm8
   0.01%  │      0x00007f78dab27aae:   vpbroadcastd %xmm8,%ymm8
   0.38%  │      0x00007f78dab27ab3:   vpaddd %ymm6,%ymm8,%ymm6
   0.02%  │      0x00007f78dab27ab7:   vpxor  %xmm8,%xmm8,%xmm8
   0.01%  │      0x00007f78dab27abc:   nopl   0x0(%rax)
   0.03%  │      0x00007f78dab27ac0:   cmp    $0x8,%esi
          │      0x00007f78dab27ac3:   jae    0x00007f78dab280d2
   0.38%  │      0x00007f78dab27ac9:   vmovdqu %xmm6,%xmm10
   0.01%  │      0x00007f78dab27acd:   vmovdqu %xmm5,%xmm9
   0.01%  │      0x00007f78dab27ad1:   vmovdqu %xmm6,%xmm5
   0.02%  │      0x00007f78dab27ad5:   mov    %esi,0x58(%rsp)
   0.36%  │      0x00007f78dab27ad9:   mov    %edi,0x14(%rsp)
   0.02%  │      0x00007f78dab27add:   mov    %r14d,0x54(%rsp)
   0.01%  │      0x00007f78dab27ae2:   mov    %ecx,%ebp
   0.02%  │      0x00007f78dab27ae4:   mov    $0x0,%ebx
   0.36%  │      0x00007f78dab27ae9:   mov    $0x0,%r9
   0.01%  │      0x00007f78dab27af0:   vmovd  %xmm10,%r10d
   0.01%  │      0x00007f78dab27af5:   vmovd  %xmm9,%edi
   0.02%  │      0x00007f78dab27af9:   vmovd  %xmm5,%r14d
   0.36%  │      0x00007f78dab27afe:   vmovd  %xmm6,%ecx
   0.02%  │      0x00007f78dab27b02:   lea    -0x4(%r13),%rsi
   0.01%  │      0x00007f78dab27b06:   cmp    %rsi,%r9
          │      0x00007f78dab27b09:   jg     0x00007f78dab281f2
          │      0x00007f78dab27b0f:   vpcmpgtd %xmm6,%xmm8,%xmm6
   0.03%  │      0x00007f78dab27b13:   vptest %xmm6,%xmm6
          │      0x00007f78dab27b18:   jne    0x00007f78dab28bf8
          │      0x00007f78dab27b1e:   vpcmpgtd %xmm5,%xmm0,%xmm5
   0.03%  │      0x00007f78dab27b22:   vpxor  %xmm7,%xmm5,%xmm5
          │      0x00007f78dab27b26:   vptest %xmm5,%xmm5
   0.00%  │      0x00007f78dab27b2b:   jne    0x00007f78dab2844b
   0.04%  │      0x00007f78dab27b31:   vpcmpgtd %xmm1,%xmm9,%xmm1
          │      0x00007f78dab27b35:   vptest %xmm1,%xmm1
          │      0x00007f78dab27b3a:   jne    0x00007f78dab28b72
   0.03%  │      0x00007f78dab27b40:   vmovdqa -0x348(%rip),%xmm1        # 0x00007f78dab27800
          │                                                                ;   {section_word}
   0.00%  │      0x00007f78dab27b48:   vpxor  %xmm1,%xmm10,%xmm5
          │      0x00007f78dab27b4c:   vpxor  %xmm1,%xmm0,%xmm0
          │      0x00007f78dab27b50:   vpcmpgtd %xmm5,%xmm0,%xmm0
   0.02%  │      0x00007f78dab27b54:   vpxor  %xmm7,%xmm0,%xmm0
          │      0x00007f78dab27b58:   vptest %xmm0,%xmm0
          │      0x00007f78dab27b5d:   data16 xchg %ax,%ax
   0.05%  │      0x00007f78dab27b60:   jne    0x00007f78dab28b4c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%  │      0x00007f78dab27b66:   vmovd  (%rax,%r9,1),%xmm0
   0.00%  │      0x00007f78dab27b6c:   vpmovzxbd %xmm0,%xmm0               ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.lang.StringLatin1::charAt@25 (line 50)
          │                                                                ; - java.lang.String::charAt@12 (line 1515)
          │                                                                ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%  │      0x00007f78dab27b71:   vpcmpeqd %xmm4,%xmm0,%xmm1
   0.04%  │      0x00007f78dab27b75:   vptest %xmm1,%xmm1
          │      0x00007f78dab27b7a:   jne    0x00007f78dab28d9a
          │      0x00007f78dab27b80:   vpcmpeqd %xmm3,%xmm0,%xmm1
   0.05%  │      0x00007f78dab27b84:   vptest %xmm1,%xmm1
   0.01%  │      0x00007f78dab27b89:   jne    0x00007f78dab28f5e
   0.01%  │      0x00007f78dab27b8f:   vpcmpeqd %xmm2,%xmm0,%xmm0
   0.04%  │      0x00007f78dab27b93:   vptest %xmm0,%xmm0
          │      0x00007f78dab27b98:   jne    0x00007f78dab28d70
          │      0x00007f78dab27b9e:   lea    0x4(%r10),%esi
   0.05%  │      0x00007f78dab27ba2:   lea    0x4(%rdi),%r10d
          │      0x00007f78dab27ba6:   lea    0x4(%r14),%edi
   0.00%  │      0x00007f78dab27baa:   lea    0x4(%rbp),%ebp
   0.00%  │      0x00007f78dab27bad:   lea    0x4(%rbx),%ebx
   0.04%  │      0x00007f78dab27bb0:   lea    0x4(%rcx),%ecx
          │      0x00007f78dab27bb3:   lea    0x4(%r9),%r9
   0.02%  │      0x00007f78dab27bb7:   dec    %r13
   0.38%  │      0x00007f78dab27bba:   nopw   0x0(%rax,%rax,1)
   0.05%  │      0x00007f78dab27bc0:   cmp    %r13,%r9
          │      0x00007f78dab27bc3:   jg     0x00007f78dab28200
   0.02%  │      0x00007f78dab27bc9:   test   %ecx,%ecx
          │      0x00007f78dab27bcb:   jl     0x00007f78dab28d2f
   0.02%  │      0x00007f78dab27bd1:   cmp    %edi,%r8d
          │      0x00007f78dab27bd4:   jle    0x00007f78dab28941
   0.32%  │      0x00007f78dab27bda:   nopw   0x0(%rax,%rax,1)
   0.03%  │      0x00007f78dab27be0:   cmp    %r11d,%r10d
          │      0x00007f78dab27be3:   jg     0x00007f78dab28ccc
   0.00%  │      0x00007f78dab27be9:   cmp    %esi,%r8d
          │      0x00007f78dab27bec:   jbe    0x00007f78dab28ca6
   0.02%  │      0x00007f78dab27bf2:   movsbl (%rax,%r9,1),%r14d
   0.36%  │      0x00007f78dab27bf7:   nopw   0x0(%rax,%rax,1)
   0.02%  │      0x00007f78dab27c00:   cmp    $0xa,%r14b
          │      0x00007f78dab27c04:   je     0x00007f78dab28c7a
   0.01%  │      0x00007f78dab27c0a:   cmp    $0xd,%r14b
          │      0x00007f78dab27c0e:   je     0x00007f78dab28826
   0.01%  │      0x00007f78dab27c14:   cmp    $0x85,%r14b
          │      0x00007f78dab27c18:   je     0x00007f78dab28c26
   0.33%  │      0x00007f78dab27c1e:   mov    %r9,%r14
   0.00%  │      0x00007f78dab27c21:   inc    %r14
   0.01%  │      0x00007f78dab27c24:   cmp    %r13,%r14
          │      0x00007f78dab27c27:   jg     0x00007f78dab28212
   0.01%  │      0x00007f78dab27c2d:   mov    %ecx,%r14d
   0.12%  │      0x00007f78dab27c30:   inc    %r14d
   0.00%  │      0x00007f78dab27c33:   test   %r14d,%r14d
          │      0x00007f78dab27c36:   jl     0x00007f78dab28b9c
          │      0x00007f78dab27c3c:   mov    %edi,%r14d
          │      0x00007f78dab27c3f:   inc    %r14d
   0.16%  │      0x00007f78dab27c42:   cmp    %r14d,%r8d
          │      0x00007f78dab27c45:   jle    0x00007f78dab28475
   0.01%  │      0x00007f78dab27c4b:   mov    %r10d,%r14d
   0.00%  │      0x00007f78dab27c4e:   inc    %r14d
   0.01%  │      0x00007f78dab27c51:   cmp    %r11d,%r14d
          │      0x00007f78dab27c54:   jg     0x00007f78dab28bca
   0.15%  │      0x00007f78dab27c5a:   mov    %esi,%r14d
   0.01%  │      0x00007f78dab27c5d:   inc    %r14d
          │      0x00007f78dab27c60:   cmp    %r14d,%r8d
          │      0x00007f78dab27c63:   jbe    0x00007f78dab28c50
   0.01%  │      0x00007f78dab27c69:   movsbl 0x1(%rax,%r9,1),%r14d
   0.15%  │      0x00007f78dab27c6f:   cmp    $0xa,%r14b
          │      0x00007f78dab27c73:   je     0x00007f78dab28e69
   0.01%  │      0x00007f78dab27c79:   nopl   0x0(%rax)
   0.00%  │      0x00007f78dab27c80:   cmp    $0xd,%r14b
          │      0x00007f78dab27c84:   je     0x00007f78dab28ef2
   0.00%  │      0x00007f78dab27c8a:   cmp    $0x85,%r14b
          │      0x00007f78dab27c8e:   je     0x00007f78dab28af8
   0.10%  │      0x00007f78dab27c94:   lea    0x2(%r9),%r14
   0.01%  │      0x00007f78dab27c98:   nopl   0x0(%rax,%rax,1)
          │      0x00007f78dab27ca0:   cmp    %r13,%r14
          │      0x00007f78dab27ca3:   jg     0x00007f78dab28225
          │      0x00007f78dab27ca9:   lea    0x2(%rcx),%ecx
   0.05%  │      0x00007f78dab27cac:   test   %ecx,%ecx
          │      0x00007f78dab27cae:   jl     0x00007f78dab28ab0
          │      0x00007f78dab27cb4:   lea    0x2(%rdi),%ecx
          │      0x00007f78dab27cb7:   cmp    %ecx,%r8d
          │      0x00007f78dab27cba:   jle    0x00007f78dab28eac
          │      0x00007f78dab27cc0:   lea    0x2(%r10),%ecx
   0.04%  │      0x00007f78dab27cc4:   cmp    %r11d,%ecx
          │      0x00007f78dab27cc7:   jg     0x00007f78dab28a53
          │      0x00007f78dab27ccd:   lea    0x2(%rsi),%esi
          │      0x00007f78dab27cd0:   cmp    %esi,%r8d
          │      0x00007f78dab27cd3:   jbe    0x00007f78dab28a26
   0.01%  │      0x00007f78dab27cd9:   movsbl 0x2(%rax,%r9,1),%esi
   0.04%  │      0x00007f78dab27cdf:   nop
          │      0x00007f78dab27ce0:   cmp    $0xa,%sil
          │      0x00007f78dab27ce4:   je     0x00007f78dab289f1
          │      0x00007f78dab27cea:   cmp    $0xd,%sil
          │      0x00007f78dab27cee:   je     0x00007f78dab289c0
   0.01%  │      0x00007f78dab27cf4:   cmp    $0x85,%sil
          │      0x00007f78dab27cf8:   je     0x00007f78dab2898f
   0.05%  │      0x00007f78dab27cfe:   mov    0x58(%rsp),%esi
   0.01%  │      0x00007f78dab27d02:   mov    0x14(%rsp),%edi
          │      0x00007f78dab27d06:   mov    0x54(%rsp),%r14d             ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.23%  ↘      0x00007f78dab27d0b:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@94 (line 4287)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.40%         0x00007f78dab27d0f:   mov    0x64(%rsp),%ecx
   0.02%         0x00007f78dab27d13:   add    %esi,%ecx
   0.06%         0x00007f78dab27d15:   mov    0x28(%rsp),%r13d
   0.19%         0x00007f78dab27d1a:   mov    0x30(%rsp),%r10
   0.35%         0x00007f78dab27d1f:   mov    0x64(%rsp),%r8d
   0.03%         0x00007f78dab27d24:   nopl   0x0(%rax,%rax,1)
   0.03%         0x00007f78dab27d2c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.23%     ↗↗  0x00007f78dab27d30:   mov    0x10(,%r13,8),%r11d          ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@100 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.41%     ││  0x00007f78dab27d38:   nopl   0x0(%rax,%rax,1)
   0.29%     ││  0x00007f78dab27d40:   cmp    %esi,%r11d
             ││  0x00007f78dab27d43:   jg     0x00007f78dab2896b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.47%     ││  0x00007f78dab27d49:   mov    0xc(,%r13,8),%r9d            ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
             ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.25%     ││  0x00007f78dab27d51:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007f78dab29066
   0.46%     ││  0x00007f78dab27d59:   nopl   0x0(%rax)
   0.26%     ││  0x00007f78dab27d60:   cmp    $0x1b58e0,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
           ╭ ││  0x00007f78dab27d66:   jne    0x00007f78dab27ee5           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │ ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │ ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.50%   │ ││  0x00007f78dab27d6c:   cmp    0x10(%rdx),%ecx
           │╭││  0x00007f78dab27d6f:   jge    0x00007f78dab27e87           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007f78dab27d75:   test   %r14b,%r14b
           ││││  0x00007f78dab27d78:   jne    0x00007f78dab28905           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   ││││  0x00007f78dab27d7e:   xchg   %ax,%ax
   0.21%   ││││  0x00007f78dab27d80:   test   %ecx,%ecx
           ││││  0x00007f78dab27d82:   jl     0x00007f78dab288e0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.43%   ││││  0x00007f78dab27d88:   mov    0x10(,%r9,8),%ebx            ;*getfield predicate {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@9 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007f78dab27d90:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.05%   ││││  0x00007f78dab27d9b:   data16 data16 xchg %ax,%ax
   0.25%   ││││  0x00007f78dab27d9f:   nop                                 ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.37%   ││││  0x00007f78dab27da0:   cmpl   $0x26ba80,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f78dab29086
           ││││                                                            ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
   0.31%   ││││  0x00007f78dab27dab:   jne    0x00007f78dab288bc           ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.41%   ││││  0x00007f78dab27db1:   mov    0xc(,%rdi,8),%r14d           ; implicit exception: dispatches to 0x00007f78dab290a6
   0.23%   ││││  0x00007f78dab27db9:   nopl   0x0(%rax)
   0.01%   ││││  0x00007f78dab27dc0:   cmp    %ecx,%r14d
           ││││  0x00007f78dab27dc3:   jle    0x00007f78dab28898           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007f78dab27dc9:   cmp    %ecx,%r14d
           ││││  0x00007f78dab27dcc:   jbe    0x00007f78dab28874           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.42%   ││││  0x00007f78dab27dd2:   mov    0xc(,%rbx,8),%ebx            ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.25%   ││││  0x00007f78dab27dd9:   mov    0xc(,%rbx,8),%r14d           ; implicit exception: dispatches to 0x00007f78dab290c6
   1.31%   ││││  0x00007f78dab27de1:   movsbl 0x10(%rcx,%rdi,8),%edi       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007f78dab27de6:   movzbl %dil,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   ││││  0x00007f78dab27dea:   cmp    %eax,%r14d
           ││││  0x00007f78dab27ded:   jbe    0x00007f78dab28850
   0.71%   ││││  0x00007f78dab27df3:   movzbl %dil,%edi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%   ││││  0x00007f78dab27df7:   nopw   0x0(%rax,%rax,1)
   0.02%   ││││  0x00007f78dab27e00:   cmpb   $0x0,0x10(%rdi,%rbx,8)
   0.76%   ││││  0x00007f78dab27e05:   jne    0x00007f78dab28025           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.53%   ││││  0x00007f78dab27e0b:   cmp    %esi,%r11d
           ││││  0x00007f78dab27e0e:   je     0x00007f78dab2806a           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%   ││││  0x00007f78dab27e14:   mov    %ecx,0x54(%rsp)
   0.01%   ││││  0x00007f78dab27e18:   mov    %r10,%r8
   0.02%   ││││  0x00007f78dab27e1b:   movsbl 0x10(%r8),%eax               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@7 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.22%   ││││  0x00007f78dab27e20:   test   %al,%al
           ││││  0x00007f78dab27e22:   jne    0x00007f78dab287dc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.08%   ││││  0x00007f78dab27e28:   mov    0x54(%rsp),%ecx
   0.01%   ││││  0x00007f78dab27e2c:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007f78dab27e2e:   test   %ecx,%ecx
           ││││  0x00007f78dab27e30:   jl     0x00007f78dab287b6           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.18%   ││││  0x00007f78dab27e36:   mov    0x14(%r8),%edx               ; ImmutableOopMap {rdx=NarrowOop r8=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.08%   ││││  0x00007f78dab27e3a:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007f78dab290e6
   0.31%   ││││  0x00007f78dab27e42:   cmp    %ecx,%r10d
           ││││  0x00007f78dab27e45:   jle    0x00007f78dab2877e           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.09%   ││││  0x00007f78dab27e4b:   cmp    %ecx,%r10d
           ││││  0x00007f78dab27e4e:   jbe    0x00007f78dab28f20           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.28%   ││││  0x00007f78dab27e54:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rdx=NarrowOop r8=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%   ││││  0x00007f78dab27e5b:   test   %eax,(%r10)                  ;   {poll}
   0.01%   ││││  0x00007f78dab27e5e:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007f78dab27e60:   cmp    0x64(%rsp),%ecx
   0.24%   ││││  0x00007f78dab27e64:   mov    0x64(%rsp),%r10d
   0.00%   ││││  0x00007f78dab27e69:   cmovg  %ecx,%r10d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.Math::max@2 (line 1562)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%   ││││  0x00007f78dab27e6d:   mov    %edx,%edi
   0.03%   ││││  0x00007f78dab27e6f:   mov    %eax,%r14d
   0.30%   ││││  0x00007f78dab27e72:   mov    %r10d,%ecx
   0.01%   ││││  0x00007f78dab27e75:   mov    %r8,%r10
   0.00%   ││││  0x00007f78dab27e78:   mov    0x64(%rsp),%r8d
   0.04%   ││││  0x00007f78dab27e7d:   mov    0x38(%rsp),%rdx
   0.25%   ││╰│  0x00007f78dab27e82:   jmp    0x00007f78dab27d30           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││ │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││ │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.21%   │↘ │  0x00007f78dab27e87:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@50 (line 3957)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.34%   │  │  0x00007f78dab27e8b:   cmp    %esi,%r11d
           │  │  0x00007f78dab27e8e:   je     0x00007f78dab2806a           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%   │  │  0x00007f78dab27e94:   test   %r14b,%r14b
           │  │  0x00007f78dab27e97:   jne    0x00007f78dab2875d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           │  │                                                            ; - java.lang.String::charAt@1 (line 1514)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%   │  │  0x00007f78dab27e9d:   mov    %ecx,%r11d
   0.21%   │  │  0x00007f78dab27ea0:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.17%   │  │  0x00007f78dab27ea3:   test   %r11d,%r11d
           │  │  0x00007f78dab27ea6:   jl     0x00007f78dab2873c           ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           │  │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@53 (line 3958)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%   │  │  0x00007f78dab27eac:   mov    0xc(,%rdi,8),%r9d            ; implicit exception: dispatches to 0x00007f78dab29106
   0.03%   │  │  0x00007f78dab27eb4:   cmp    %r11d,%r9d
           │  │  0x00007f78dab27eb7:   jle    0x00007f78dab28709           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           │  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.22%   │  │  0x00007f78dab27ebd:   data16 xchg %ax,%ax
   0.14%   │  │  0x00007f78dab27ec0:   cmp    %r11d,%r9d
           │  │  0x00007f78dab27ec3:   jbe    0x00007f78dab28e30           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           │  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   │  │  0x00007f78dab27ec9:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           │  │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@53 (line 3958)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   │  │  0x00007f78dab27ed0:   test   %eax,(%r9)                   ;   {poll}
   0.25%   │  │  0x00007f78dab27ed3:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.13%   │  │  0x00007f78dab27ed5:   cmp    %r8d,%r11d
   0.00%   │  │  0x00007f78dab27ed8:   mov    %r8d,%ecx
   0.05%   │  │  0x00007f78dab27edb:   cmovg  %r11d,%ecx                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.Math::max@2 (line 1562)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.21%   │  │  0x00007f78dab27edf:   nop
   0.15%   │  ╰  0x00007f78dab27ee0:   jmp    0x00007f78dab27d30
           ↘     0x00007f78dab27ee5:   cmp    $0x1b5480,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$GroupTail&apos;)}
                 0x00007f78dab27eeb:   jne    0x00007f78dab286bd           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                 0x00007f78dab27ef1:   mov    0x40(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=Oop r11=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
....................................................................................................
  36.59%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern$GroupTail::match, version 2, compile id 782 

             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Entry Point]
               # {method} {0x00000008001b5b18} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$GroupTail&apos;
               # this:     rsi:rsi   = &apos;java/util/regex/Pattern$GroupTail&apos;
               # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
               # parm1:    rcx       = int
               # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
               #           [sp+0x30]  (sp of caller)
   0.51%       0x00007f78dab26da0:   mov    0x8(%rsi),%r10d
   0.15%       0x00007f78dab26da4:   movabs $0x800000000,%r12
   0.03%       0x00007f78dab26dae:   add    %r12,%r10
   0.28%       0x00007f78dab26db1:   xor    %r12,%r12
   0.17%       0x00007f78dab26db4:   cmp    %r10,%rax
               0x00007f78dab26db7:   jne    0x00007f78d301e780           ;   {runtime_call ic_miss_stub}
   0.16%       0x00007f78dab26dbd:   nop
   0.03%       0x00007f78dab26dbe:   xchg   %ax,%ax
             [Verified Entry Point]
   0.31%       0x00007f78dab26dc0:   mov    %eax,-0x14000(%rsp)
   0.32%       0x00007f78dab26dc7:   sub    $0x28,%rsp
   0.03%       0x00007f78dab26dcb:   mov    %rbp,0x20(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$GroupTail::match@0 (line 4811)
   0.29%       0x00007f78dab26dd0:   mov    0x40(%rdx),%r10d             ; implicit exception: dispatches to 0x00007f78dab26f60
   0.20%       0x00007f78dab26dd4:   mov    0x38(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop r11=NarrowOop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$GroupTail::match@0 (line 4811)
   0.15%       0x00007f78dab26dd8:   mov    0xc(,%r10,8),%r9d            ; implicit exception: dispatches to 0x00007f78dab26f7c
   0.08%       0x00007f78dab26de0:   mov    0x10(%rsi),%ebx              ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@5 (line 4811)
   0.32%       0x00007f78dab26de3:   cmp    %ebx,%r9d
               0x00007f78dab26de6:   jbe    0x00007f78dab26f42           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
   0.20%       0x00007f78dab26dec:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@1 (line 4811)
   0.12%       0x00007f78dab26df0:   mov    0x10(%r10,%rbx,4),%r10d      ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@8 (line 4811)
   0.06%       0x00007f78dab26df5:   test   %r10d,%r10d
               0x00007f78dab26df8:   jl     0x00007f78dab26f32           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r11=NarrowOop }
                                                                         ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$GroupTail::match@0 (line 4811)
   0.31%       0x00007f78dab26dfe:   mov    0xc(,%r11,8),%r9d            ; implicit exception: dispatches to 0x00007f78dab26f98
   0.21%       0x00007f78dab26e06:   mov    0x14(%rsi),%ebx              ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@21 (line 4815)
   0.11%       0x00007f78dab26e09:   cmp    %ebx,%r9d
               0x00007f78dab26e0c:   jbe    0x00007f78dab26f11           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
   0.04%       0x00007f78dab26e12:   mov    %ebx,%edi
   0.37%       0x00007f78dab26e14:   inc    %edi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@60 (line 4819)
   0.15%       0x00007f78dab26e16:   cmp    %edi,%r9d
               0x00007f78dab26e19:   jbe    0x00007f78dab26f51           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
   0.15%       0x00007f78dab26e1f:   mov    0xc(%rsi),%r9d               ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$GroupTail::match@0 (line 4811)
   0.04%       0x00007f78dab26e23:   test   %eax,0x0(,%r9,8)             ; implicit exception: deoptimizes
                                                                         ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r9=NarrowOop r11=NarrowOop }
   0.71%       0x00007f78dab26e2b:   shl    $0x3,%r11                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@17 (line 4815)
   0.12%       0x00007f78dab26e2f:   mov    0x10(%r11,%rdi,4),%eax       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@37 (line 4816)
   0.06%       0x00007f78dab26e34:   mov    0x10(%r11,%rbx,4),%ebp       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@24 (line 4815)
   0.31%       0x00007f78dab26e39:   mov    %r10d,0x10(%r11,%rbx,4)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@50 (line 4818)
   0.57%       0x00007f78dab26e3e:   mov    %ecx,0x10(%r11,%rdi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@62 (line 4819)
   0.28%       0x00007f78dab26e43:   shl    $0x3,%r9                     ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@64 (line 4820)
   0.03%       0x00007f78dab26e47:   mov    %rsi,0x8(%rsp)
   0.16%       0x00007f78dab26e4c:   mov    %r9,%rsi                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
   0.28%       0x00007f78dab26e4f:   mov    %rdx,%r11
   0.23%       0x00007f78dab26e52:   mov    %eax,0x14(%rsp)
   0.03%       0x00007f78dab26e56:   mov    %ebp,0x10(%rsp)
   0.18%       0x00007f78dab26e5a:   mov    %r11,(%rsp)
   0.29%       0x00007f78dab26e5e:   data16 xchg %ax,%ax
   0.24%       0x00007f78dab26e61:   movabs $0x800c39810,%rax
   0.03%       0x00007f78dab26e6b:   call   0x00007f78d3738f60           ; ImmutableOopMap {[0]=Oop [8]=Oop }
                                                                         ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@70 (line 4820)
                                                                         ;   {virtual_call}
   0.05%       0x00007f78dab26e70:   nop
   0.08%       0x00007f78dab26e71:   test   %eax,%eax
          ╭    0x00007f78dab26e73:   jne    0x00007f78dab26ed8           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern$GroupTail::match@73 (line 4820)
   0.17%  │    0x00007f78dab26e79:   mov    (%rsp),%rdx
   0.47%  │    0x00007f78dab26e7d:   mov    0x8(%rsp),%rsi
   0.07%  │    0x00007f78dab26e82:   mov    0x38(%rdx),%eax              ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop }
          │                                                              ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
          │                                                              ; - (reexecute) java.util.regex.Pattern$GroupTail::match@73 (line 4820)
   0.34%  │    0x00007f78dab26e85:   mov    0xc(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007f78dab26fb4
   1.20%  │    0x00007f78dab26e8d:   mov    0x14(%rsi),%r11d             ;*getfield groupIndex {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern$GroupTail::match@83 (line 4823)
   0.06%  │    0x00007f78dab26e91:   cmp    %r11d,%r10d
          │╭   0x00007f78dab26e94:   jbe    0x00007f78dab26ef0           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
   0.29%  ││   0x00007f78dab26e9a:   mov    %r11d,%r8d
   0.07%  ││   0x00007f78dab26e9d:   inc    %r8d                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.regex.Pattern$GroupTail::match@98 (line 4824)
   0.18%  ││   0x00007f78dab26ea0:   cmp    %r8d,%r10d
          ││╭  0x00007f78dab26ea3:   jbe    0x00007f78dab26ef0           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
   0.19%  │││  0x00007f78dab26ea9:   mov    0x10(%rsp),%ebp
   0.23%  │││  0x00007f78dab26ead:   mov    0x14(%rsp),%r10d
   0.07%  │││  0x00007f78dab26eb2:   shl    $0x3,%rax                    ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.regex.Pattern$GroupTail::match@79 (line 4823)
   0.19%  │││  0x00007f78dab26eb6:   mov    %ebp,0x10(%rax,%r11,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
   0.47%  │││  0x00007f78dab26ebb:   mov    %r10d,0x10(%rax,%r8,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.regex.Pattern$GroupTail::match@101 (line 4824)
   0.48%  │││  0x00007f78dab26ec0:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.regex.Pattern$GroupTail::match@103 (line 4825)
   0.06%  │││  0x00007f78dab26ec5:   mov    0x20(%rsp),%rbp
   0.18%  │││  0x00007f78dab26eca:   add    $0x28,%rsp
   0.14%  │││  0x00007f78dab26ece:   mov    0x348(%r15),%rcx
   0.23%  │││  0x00007f78dab26ed5:   test   %eax,(%rcx)                  ;   {poll_return}
   0.07%  │││  0x00007f78dab26ed7:   ret                                 ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
   0.04%  ↘││  0x00007f78dab26ed8:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.regex.Pattern$GroupTail::match@77 (line 4821)
           ││  0x00007f78dab26edd:   mov    0x20(%rsp),%rbp
   0.04%   ││  0x00007f78dab26ee2:   add    $0x28,%rsp
   0.03%   ││  0x00007f78dab26ee6:   mov    0x348(%r15),%rcx
           ││  0x00007f78dab26eed:   test   %eax,(%rcx)                  ;   {poll_return}
   0.08%   ││  0x00007f78dab26eef:   ret    
           ↘↘  0x00007f78dab26ef0:   mov    0x10(%rsp),%ebp
               0x00007f78dab26ef4:   mov    0x14(%rsp),%r10d
               0x00007f78dab26ef9:   movl   $0xffffffe5,0x370(%r15)      ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.regex.Pattern$GroupTail::match@88 (line 4823)
               0x00007f78dab26f04:   mov    %r12,0x378(%r15)
               0x00007f78dab26f0b:   call   0x00007f78d302427a           ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                         ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
                                                                         ; - (reexecute) java.util.regex.Pattern$GroupTail::match@73 (line 4820)
                                                                         ;   {runtime_call DeoptimizationBlob}
               0x00007f78dab26f10:   nop
....................................................................................................
  13.80%  <total for region 2>

....[Hottest Regions]...............................................................................
  36.59%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 785 
  13.80%       jvmci, level 4  java.util.regex.Pattern$GroupTail::match, version 2, compile id 782 
   8.82%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 778 
   8.13%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   7.78%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 778 
   6.91%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 785 
   2.59%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   2.08%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 785 
   1.50%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 778 
   1.34%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   1.33%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   1.05%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   0.84%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 798 
   0.70%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 799 
   0.62%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 778 
   0.61%               kernel  [unknown] 
   0.61%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   0.60%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   0.47%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   0.37%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
   3.28%  <...other 469 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  45.58%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 785 
  18.96%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 778 
  16.73%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_find, version 4, compile id 804 
  13.80%       jvmci, level 4  java.util.regex.Pattern$GroupTail::match, version 2, compile id 782 
   2.05%               kernel  [unknown] 
   0.84%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 798 
   0.70%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 799 
   0.43%       jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 781 
   0.22%       jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 800 
   0.12%                       <unknown> 
   0.03%            libjvm.so  OtherRegionsTable::occupied 
   0.03%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%   libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%            libjvm.so  fileStream::write 
   0.01%            libjvm.so  xmlStream::write_text 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%            libjvm.so  RelocIterator::initialize 
   0.41%  <...other 140 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.26%       jvmci, level 4
   2.05%               kernel
   0.36%            libjvm.so
   0.12%                     
   0.09%         libc-2.31.so
   0.03%   libpthread-2.31.so
   0.03%          interpreter
   0.02%       hsdis-amd64.so
   0.01%  libjvmcicompiler.so
   0.01%               [vdso]
   0.01%      perf-117056.map
   0.01%           ld-2.31.so
   0.00%         runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches
# Parameters: (regexp = ^(.*[aeuio].*){3,}$)

# Run progress: 33.33% complete, ETA 00:03:46
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1682.715 us/op
# Warmup Iteration   2: 1496.845 us/op
# Warmup Iteration   3: 1496.383 us/op
# Warmup Iteration   4: 1498.528 us/op
# Warmup Iteration   5: 1498.895 us/op
Iteration   1: 1497.140 us/op
Iteration   2: 1497.542 us/op
Iteration   3: 1496.947 us/op
Iteration   4: 1495.615 us/op
Iteration   5: 1497.516 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches":
  1496.952 ±(99.9%) 3.037 us/op [Average]
  (min, avg, max) = (1495.615, 1496.952, 1497.542), stdev = 0.789
  CI (99.9%): [1493.915, 1499.989] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.pattern_matches:·asm":
PrintAssembly processed: 224882 total address lines.
Perf output processed (skipped 59.026 seconds):
 Column 1: cycles (50558 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$Loop::match, version 2, compile id 792 

                 0x00007ff9cab29c58:   0x00000008      0x0000000800000008      
                 0x00007ff9cab29c5c:   0x00000008                              
               --------------------------------------------------------------------------------
               [Entry Point]
                 # {method} {0x00007ff9b86bc360} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$Loop&apos;
                 # this:     rsi:rsi   = &apos;java/util/regex/Pattern$Loop&apos;
                 # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
                 # parm1:    rcx       = int
                 # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                 #           [sp+0x80]  (sp of caller)
   0.22%         0x00007ff9cab29c60:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.29%         0x00007ff9cab29c64:   movabs $0x800000000,%r12
   0.27%         0x00007ff9cab29c6e:   add    %r12,%r10
   0.07%         0x00007ff9cab29c71:   xor    %r12,%r12
   0.12%         0x00007ff9cab29c74:   cmp    %r10,%rax
                 0x00007ff9cab29c77:   jne    0x00007ff9c301e780           ;   {runtime_call ic_miss_stub}
   0.27%         0x00007ff9cab29c7d:   nop
   0.24%         0x00007ff9cab29c7e:   xchg   %ax,%ax
               [Verified Entry Point]
   0.09%         0x00007ff9cab29c80:   mov    %eax,-0x14000(%rsp)
   0.41%         0x00007ff9cab29c87:   sub    $0x78,%rsp
   0.24%         0x00007ff9cab29c8b:   mov    %rbp,0x70(%rsp)
   0.09%         0x00007ff9cab29c90:   mov    %rsi,0x40(%rsp)
   0.15%         0x00007ff9cab29c95:   mov    %rdx,0x38(%rsp)
   0.31%         0x00007ff9cab29c9a:   mov    %ecx,0x64(%rsp)
   0.25%         0x00007ff9cab29c9e:   mov    %r8,0x30(%rsp)               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.08%         0x00007ff9cab29ca3:   mov    0x40(%rdx),%r10d             ; implicit exception: dispatches to 0x00007ff9cab2b308
   0.19%         0x00007ff9cab29ca7:   mov    0x10(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.30%         0x00007ff9cab29cab:   mov    0xc(,%r10,8),%r9d            ; implicit exception: dispatches to 0x00007ff9cab2b326
   0.35%         0x00007ff9cab29cb3:   mov    0x14(%rsi),%ebx              ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
   0.09%         0x00007ff9cab29cb6:   cmp    %ebx,%r9d
                 0x00007ff9cab29cb9:   jbe    0x00007ff9cab2b217           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
   0.13%         0x00007ff9cab29cbf:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@2 (line 4870)
   0.29%         0x00007ff9cab29cc3:   cmp    0x10(%r10,%rbx,4),%ecx
                 0x00007ff9cab29cc8:   jle    0x00007ff9cab2b146           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
   0.39%         0x00007ff9cab29cce:   mov    0x10(%rsi),%ebx              ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
   0.12%         0x00007ff9cab29cd1:   cmp    %ebx,%r9d
                 0x00007ff9cab29cd4:   jbe    0x00007ff9cab2b25d
   0.28%         0x00007ff9cab29cda:   mov    0x10(%r10,%rbx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
   0.21%         0x00007ff9cab29cdf:   mov    %edi,0x60(%rsp)
   0.23%         0x00007ff9cab29ce3:   mov    %edi,%eax
   0.09%         0x00007ff9cab29ce5:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
   0.26%         0x00007ff9cab29ce7:   cmp    0x18(%rsi),%edi
                 0x00007ff9cab29cea:   jge    0x00007ff9cab2a60e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
   0.17%         0x00007ff9cab29cf0:   mov    0x24(%rsi),%ebp              ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
   0.15%         0x00007ff9cab29cf3:   mov    %ebp,0x2c(%rsp)
   0.10%         0x00007ff9cab29cf7:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.26%         0x00007ff9cab29d00:   cmpl   $0x269d20,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007ff9cab2b346
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.36%         0x00007ff9cab29d0b:   jne    0x00007ff9cab2b2c9           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.10%         0x00007ff9cab29d11:   mov    0xc(,%rbp,8),%r13d           ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.25%         0x00007ff9cab29d19:   mov    %r13d,0x28(%rsp)
   0.19%         0x00007ff9cab29d1e:   xchg   %ax,%ax                      ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.18%         0x00007ff9cab29d20:   cmpl   $0x26a890,0x8(,%r13,8)       ; implicit exception: dispatches to 0x00007ff9cab2b366
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
   1.00%         0x00007ff9cab29d2c:   jne    0x00007ff9cab2b1d4           ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.47%         0x00007ff9cab29d32:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007ff9cab2b386
                                                                           ;   {metadata(&apos;java/lang/String&apos;)}
   0.09%         0x00007ff9cab29d3a:   jne    0x00007ff9cab2b186           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.06%         0x00007ff9cab29d40:   movsbl 0x10(%r8),%r14d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::isLatin1@7 (line 4551)
                                                                           ; - java.lang.String::charAt@1 (line 1514)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.13%         0x00007ff9cab29d45:   test   %r14b,%r14b
                 0x00007ff9cab29d48:   jne    0x00007ff9cab2b19b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::isLatin1@10 (line 4551)
                                                                           ; - java.lang.String::charAt@1 (line 1514)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.50%         0x00007ff9cab29d4e:   mov    0x14(%r8),%edi               ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rdi=NarrowOop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.07%         0x00007ff9cab29d52:   mov    0xc(,%rdi,8),%r8d            ; implicit exception: dispatches to 0x00007ff9cab2b3a6
   0.10%         0x00007ff9cab29d5a:   mov    0x14(,%r13,8),%esi           ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rdi=NarrowOop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.12%         0x00007ff9cab29d62:   cmpl   $0xc395b0,0x8(,%rsi,8)       ; implicit exception: dispatches to 0x00007ff9cab2b3c6
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$54+0x0000000800c395b0&apos;)}
   1.51%         0x00007ff9cab29d6d:   jne    0x00007ff9cab2ae61           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.66%         0x00007ff9cab29d73:   mov    0x10(,%rbp,8),%esi           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%         0x00007ff9cab29d7a:   nopw   0x0(%rax,%rax,1)
   0.05%         0x00007ff9cab29d80:   cmp    %esi,%r9d
                 0x00007ff9cab29d83:   jbe    0x00007ff9cab2b0d9           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%         0x00007ff9cab29d89:   mov    %eax,0x10(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
   0.59%         0x00007ff9cab29d8e:   mov    0x10(%r10,%rsi,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%         0x00007ff9cab29d93:   mov    %r9d,0x5c(%rsp)
   0.06%         0x00007ff9cab29d98:   mov    %ecx,0x10(%r10,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%         0x00007ff9cab29d9d:   mov    %ebp,%r10d
   0.67%         0x00007ff9cab29da0:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
   0.02%         0x00007ff9cab29da4:   mov    %r10,0x20(%rsp)
   0.06%         0x00007ff9cab29da9:   mov    %r13d,%ebx
   0.03%         0x00007ff9cab29dac:   shl    $0x3,%rbx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.59%         0x00007ff9cab29db0:   mov    %rbx,0x18(%rsp)
   0.03%         0x00007ff9cab29db5:   mov    %r11d,%esi
   0.06%         0x00007ff9cab29db8:   sub    %ecx,%esi
   0.01%         0x00007ff9cab29dba:   cmp    %r11d,%ecx
   0.61%         0x00007ff9cab29dbd:   mov    $0x0,%eax
   0.01%         0x00007ff9cab29dc2:   cmovg  %eax,%esi                    ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                           ; - java.lang.String::charAt@12 (line 1515)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%         0x00007ff9cab29dc5:   test   %esi,%esi
          ╭      0x00007ff9cab29dc7:   je     0x00007ff9cab2a08b           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%  │      0x00007ff9cab29dcd:   mov    %edi,%eax
   0.42%  │      0x00007ff9cab29dcf:   shl    $0x3,%rax                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.lang.String::charAt@8 (line 1515)
          │                                                                ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%  │      0x00007ff9cab29dd3:   mov    %ecx,%r13d
   0.02%  │      0x00007ff9cab29dd6:   lea    0x10(%rax,%r13,1),%rax
   0.01%  │      0x00007ff9cab29ddb:   vmovd  %r8d,%xmm0
   0.40%  │      0x00007ff9cab29de0:   vpbroadcastd %xmm0,%ymm0
   0.01%  │      0x00007ff9cab29de5:   mov    %esi,%r13d
   0.03%  │      0x00007ff9cab29de8:   vmovd  %r11d,%xmm1
   0.01%  │      0x00007ff9cab29ded:   vpbroadcastd %xmm1,%ymm1
   0.43%  │      0x00007ff9cab29df2:   vmovdqa -0x25a(%rip),%ymm2        # 0x00007ff9cab29ba0
          │                                                                ;   {section_word}
   0.01%  │      0x00007ff9cab29dfa:   vmovdqa -0x242(%rip),%ymm3        # 0x00007ff9cab29bc0
          │                                                                ;   {section_word}
   0.06%  │      0x00007ff9cab29e02:   vmovdqa -0x22a(%rip),%ymm4        # 0x00007ff9cab29be0
          │                                                                ;   {section_word}
   0.06%  │      0x00007ff9cab29e0a:   mov    %ecx,%r10d
   0.35%  │      0x00007ff9cab29e0d:   inc    %r10d
   0.01%  │      0x00007ff9cab29e10:   vmovd  %r10d,%xmm5
   0.03%  │      0x00007ff9cab29e15:   vpbroadcastd %xmm5,%ymm5
   0.02%  │      0x00007ff9cab29e1a:   vmovdqa -0x222(%rip),%ymm6        # 0x00007ff9cab29c00
          │                                                                ;   {section_word}
   0.38%  │      0x00007ff9cab29e22:   vpaddd %ymm6,%ymm5,%ymm5
   0.07%  │      0x00007ff9cab29e26:   vpcmpeqd %ymm7,%ymm7,%ymm7
   0.02%  │      0x00007ff9cab29e2a:   vmovd  %ecx,%xmm8
   0.02%  │      0x00007ff9cab29e2e:   vpbroadcastd %xmm8,%ymm8
   0.36%  │      0x00007ff9cab29e33:   vpaddd %ymm6,%ymm8,%ymm6
   0.03%  │      0x00007ff9cab29e37:   vpxor  %xmm8,%xmm8,%xmm8
   0.03%  │      0x00007ff9cab29e3c:   nopl   0x0(%rax)
   0.01%  │      0x00007ff9cab29e40:   cmp    $0x8,%esi
          │      0x00007ff9cab29e43:   jae    0x00007ff9cab2a452
   0.38%  │      0x00007ff9cab29e49:   vmovdqu %xmm6,%xmm10
   0.03%  │      0x00007ff9cab29e4d:   vmovdqu %xmm5,%xmm9
   0.03%  │      0x00007ff9cab29e51:   vmovdqu %xmm6,%xmm5
   0.03%  │      0x00007ff9cab29e55:   mov    %esi,0x58(%rsp)
   0.37%  │      0x00007ff9cab29e59:   mov    %edi,0x14(%rsp)
   0.02%  │      0x00007ff9cab29e5d:   mov    %r14d,0x54(%rsp)
   0.04%  │      0x00007ff9cab29e62:   mov    %ecx,%ebp
   0.02%  │      0x00007ff9cab29e64:   mov    $0x0,%ebx
   0.36%  │      0x00007ff9cab29e69:   mov    $0x0,%r9
   0.02%  │      0x00007ff9cab29e70:   vmovd  %xmm10,%r10d
   0.04%  │      0x00007ff9cab29e75:   vmovd  %xmm9,%edi
   0.02%  │      0x00007ff9cab29e79:   vmovd  %xmm5,%r14d
   0.35%  │      0x00007ff9cab29e7e:   vmovd  %xmm6,%ecx
   0.02%  │      0x00007ff9cab29e82:   lea    -0x4(%r13),%rsi
   0.03%  │      0x00007ff9cab29e86:   cmp    %rsi,%r9
          │      0x00007ff9cab29e89:   jg     0x00007ff9cab2a572
   0.00%  │      0x00007ff9cab29e8f:   vpcmpgtd %xmm6,%xmm8,%xmm6
   0.04%  │      0x00007ff9cab29e93:   vptest %xmm6,%xmm6
   0.01%  │      0x00007ff9cab29e98:   jne    0x00007ff9cab2af78
   0.00%  │      0x00007ff9cab29e9e:   vpcmpgtd %xmm5,%xmm0,%xmm5
   0.02%  │      0x00007ff9cab29ea2:   vpxor  %xmm7,%xmm5,%xmm5
          │      0x00007ff9cab29ea6:   vptest %xmm5,%xmm5
   0.00%  │      0x00007ff9cab29eab:   jne    0x00007ff9cab2a7cb
   0.04%  │      0x00007ff9cab29eb1:   vpcmpgtd %xmm1,%xmm9,%xmm1
          │      0x00007ff9cab29eb5:   vptest %xmm1,%xmm1
          │      0x00007ff9cab29eba:   jne    0x00007ff9cab2aef2
   0.02%  │      0x00007ff9cab29ec0:   vmovdqa -0x348(%rip),%xmm1        # 0x00007ff9cab29b80
          │                                                                ;   {section_word}
   0.00%  │      0x00007ff9cab29ec8:   vpxor  %xmm1,%xmm10,%xmm5
   0.00%  │      0x00007ff9cab29ecc:   vpxor  %xmm1,%xmm0,%xmm0
          │      0x00007ff9cab29ed0:   vpcmpgtd %xmm5,%xmm0,%xmm0
   0.04%  │      0x00007ff9cab29ed4:   vpxor  %xmm7,%xmm0,%xmm0
          │      0x00007ff9cab29ed8:   vptest %xmm0,%xmm0
   0.01%  │      0x00007ff9cab29edd:   data16 xchg %ax,%ax
   0.03%  │      0x00007ff9cab29ee0:   jne    0x00007ff9cab2aecc           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │      0x00007ff9cab29ee6:   vmovd  (%rax,%r9,1),%xmm0
   0.00%  │      0x00007ff9cab29eec:   vpmovzxbd %xmm0,%xmm0               ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.lang.StringLatin1::charAt@25 (line 50)
          │                                                                ; - java.lang.String::charAt@12 (line 1515)
          │                                                                ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%  │      0x00007ff9cab29ef1:   vpcmpeqd %xmm4,%xmm0,%xmm1
   0.04%  │      0x00007ff9cab29ef5:   vptest %xmm1,%xmm1
          │      0x00007ff9cab29efa:   jne    0x00007ff9cab2b11a
          │      0x00007ff9cab29f00:   vpcmpeqd %xmm3,%xmm0,%xmm1
   0.04%  │      0x00007ff9cab29f04:   vptest %xmm1,%xmm1
   0.01%  │      0x00007ff9cab29f09:   jne    0x00007ff9cab2b2de
          │      0x00007ff9cab29f0f:   vpcmpeqd %xmm2,%xmm0,%xmm0
   0.03%  │      0x00007ff9cab29f13:   vptest %xmm0,%xmm0
          │      0x00007ff9cab29f18:   jne    0x00007ff9cab2b0f0
          │      0x00007ff9cab29f1e:   lea    0x4(%r10),%esi
   0.02%  │      0x00007ff9cab29f22:   lea    0x4(%rdi),%r10d
          │      0x00007ff9cab29f26:   lea    0x4(%r14),%edi
   0.01%  │      0x00007ff9cab29f2a:   lea    0x4(%rbp),%ebp
          │      0x00007ff9cab29f2d:   lea    0x4(%rbx),%ebx
   0.04%  │      0x00007ff9cab29f30:   lea    0x4(%rcx),%ecx
   0.00%  │      0x00007ff9cab29f33:   lea    0x4(%r9),%r9
   0.01%  │      0x00007ff9cab29f37:   dec    %r13
   0.37%  │      0x00007ff9cab29f3a:   nopw   0x0(%rax,%rax,1)
   0.08%  │      0x00007ff9cab29f40:   cmp    %r13,%r9
          │      0x00007ff9cab29f43:   jg     0x00007ff9cab2a580
   0.02%  │      0x00007ff9cab29f49:   test   %ecx,%ecx
          │      0x00007ff9cab29f4b:   jl     0x00007ff9cab2b0af
   0.01%  │      0x00007ff9cab29f51:   cmp    %edi,%r8d
          │      0x00007ff9cab29f54:   jle    0x00007ff9cab2acc1
   0.32%  │      0x00007ff9cab29f5a:   nopw   0x0(%rax,%rax,1)
   0.03%  │      0x00007ff9cab29f60:   cmp    %r11d,%r10d
          │      0x00007ff9cab29f63:   jg     0x00007ff9cab2b04c
   0.02%  │      0x00007ff9cab29f69:   cmp    %esi,%r8d
          │      0x00007ff9cab29f6c:   jbe    0x00007ff9cab2b026
   0.01%  │      0x00007ff9cab29f72:   movsbl (%rax,%r9,1),%r14d
   0.31%  │      0x00007ff9cab29f77:   nopw   0x0(%rax,%rax,1)
   0.04%  │      0x00007ff9cab29f80:   cmp    $0xa,%r14b
          │      0x00007ff9cab29f84:   je     0x00007ff9cab2affa
   0.03%  │      0x00007ff9cab29f8a:   cmp    $0xd,%r14b
          │      0x00007ff9cab29f8e:   je     0x00007ff9cab2aba6
   0.03%  │      0x00007ff9cab29f94:   cmp    $0x85,%r14b
          │      0x00007ff9cab29f98:   je     0x00007ff9cab2afa6
   0.29%  │      0x00007ff9cab29f9e:   mov    %r9,%r14
   0.03%  │      0x00007ff9cab29fa1:   inc    %r14
   0.03%  │      0x00007ff9cab29fa4:   cmp    %r13,%r14
          │      0x00007ff9cab29fa7:   jg     0x00007ff9cab2a592
   0.01%  │      0x00007ff9cab29fad:   mov    %ecx,%r14d
   0.12%  │      0x00007ff9cab29fb0:   inc    %r14d
   0.01%  │      0x00007ff9cab29fb3:   test   %r14d,%r14d
          │      0x00007ff9cab29fb6:   jl     0x00007ff9cab2af1c
   0.01%  │      0x00007ff9cab29fbc:   mov    %edi,%r14d
   0.00%  │      0x00007ff9cab29fbf:   inc    %r14d
   0.14%  │      0x00007ff9cab29fc2:   cmp    %r14d,%r8d
          │      0x00007ff9cab29fc5:   jle    0x00007ff9cab2a7f5
   0.01%  │      0x00007ff9cab29fcb:   mov    %r10d,%r14d
   0.02%  │      0x00007ff9cab29fce:   inc    %r14d
   0.00%  │      0x00007ff9cab29fd1:   cmp    %r11d,%r14d
          │      0x00007ff9cab29fd4:   jg     0x00007ff9cab2af4a
   0.14%  │      0x00007ff9cab29fda:   mov    %esi,%r14d
   0.01%  │      0x00007ff9cab29fdd:   inc    %r14d
   0.01%  │      0x00007ff9cab29fe0:   cmp    %r14d,%r8d
          │      0x00007ff9cab29fe3:   jbe    0x00007ff9cab2afd0
   0.01%  │      0x00007ff9cab29fe9:   movsbl 0x1(%rax,%r9,1),%r14d
   0.14%  │      0x00007ff9cab29fef:   cmp    $0xa,%r14b
          │      0x00007ff9cab29ff3:   je     0x00007ff9cab2b1e9
   0.01%  │      0x00007ff9cab29ff9:   nopl   0x0(%rax)
   0.00%  │      0x00007ff9cab2a000:   cmp    $0xd,%r14b
          │      0x00007ff9cab2a004:   je     0x00007ff9cab2b272
   0.00%  │      0x00007ff9cab2a00a:   cmp    $0x85,%r14b
          │      0x00007ff9cab2a00e:   je     0x00007ff9cab2ae78
   0.11%  │      0x00007ff9cab2a014:   lea    0x2(%r9),%r14
   0.01%  │      0x00007ff9cab2a018:   nopl   0x0(%rax,%rax,1)
   0.01%  │      0x00007ff9cab2a020:   cmp    %r13,%r14
          │      0x00007ff9cab2a023:   jg     0x00007ff9cab2a5a5
   0.00%  │      0x00007ff9cab2a029:   lea    0x2(%rcx),%ecx
   0.04%  │      0x00007ff9cab2a02c:   test   %ecx,%ecx
          │      0x00007ff9cab2a02e:   jl     0x00007ff9cab2ae30
   0.00%  │      0x00007ff9cab2a034:   lea    0x2(%rdi),%ecx
   0.01%  │      0x00007ff9cab2a037:   cmp    %ecx,%r8d
          │      0x00007ff9cab2a03a:   jle    0x00007ff9cab2b22c
   0.00%  │      0x00007ff9cab2a040:   lea    0x2(%r10),%ecx
   0.04%  │      0x00007ff9cab2a044:   cmp    %r11d,%ecx
          │      0x00007ff9cab2a047:   jg     0x00007ff9cab2add3
   0.01%  │      0x00007ff9cab2a04d:   lea    0x2(%rsi),%esi
   0.00%  │      0x00007ff9cab2a050:   cmp    %esi,%r8d
          │      0x00007ff9cab2a053:   jbe    0x00007ff9cab2ada6
          │      0x00007ff9cab2a059:   movsbl 0x2(%rax,%r9,1),%esi
   0.04%  │      0x00007ff9cab2a05f:   nop
          │      0x00007ff9cab2a060:   cmp    $0xa,%sil
          │      0x00007ff9cab2a064:   je     0x00007ff9cab2ad71
          │      0x00007ff9cab2a06a:   cmp    $0xd,%sil
          │      0x00007ff9cab2a06e:   je     0x00007ff9cab2ad40
   0.00%  │      0x00007ff9cab2a074:   cmp    $0x85,%sil
          │      0x00007ff9cab2a078:   je     0x00007ff9cab2ad0f
   0.05%  │      0x00007ff9cab2a07e:   mov    0x58(%rsp),%esi
          │      0x00007ff9cab2a082:   mov    0x14(%rsp),%edi
          │      0x00007ff9cab2a086:   mov    0x54(%rsp),%r14d             ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.21%  ↘      0x00007ff9cab2a08b:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@94 (line 4287)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.41%         0x00007ff9cab2a08f:   mov    0x64(%rsp),%ecx
   0.04%         0x00007ff9cab2a093:   add    %esi,%ecx
   0.03%         0x00007ff9cab2a095:   mov    0x28(%rsp),%r13d
   0.23%         0x00007ff9cab2a09a:   mov    0x30(%rsp),%r10
   0.37%         0x00007ff9cab2a09f:   mov    0x64(%rsp),%r8d
   0.04%         0x00007ff9cab2a0a4:   nopl   0x0(%rax,%rax,1)
   0.06%         0x00007ff9cab2a0ac:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.24%     ↗↗  0x00007ff9cab2a0b0:   mov    0x10(,%r13,8),%r11d          ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@100 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.51%     ││  0x00007ff9cab2a0b8:   nopl   0x0(%rax,%rax,1)
   0.37%     ││  0x00007ff9cab2a0c0:   cmp    %esi,%r11d
             ││  0x00007ff9cab2a0c3:   jg     0x00007ff9cab2aceb           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.48%     ││  0x00007ff9cab2a0c9:   mov    0xc(,%r13,8),%r9d            ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
             ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.28%     ││  0x00007ff9cab2a0d1:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007ff9cab2b3e6
   0.47%     ││  0x00007ff9cab2a0d9:   nopl   0x0(%rax)
   0.30%     ││  0x00007ff9cab2a0e0:   cmp    $0x1b58e0,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
           ╭ ││  0x00007ff9cab2a0e6:   jne    0x00007ff9cab2a265           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │ ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │ ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.42%   │ ││  0x00007ff9cab2a0ec:   cmp    0x10(%rdx),%ecx
           │╭││  0x00007ff9cab2a0ef:   jge    0x00007ff9cab2a207           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   ││││  0x00007ff9cab2a0f5:   test   %r14b,%r14b
           ││││  0x00007ff9cab2a0f8:   jne    0x00007ff9cab2ac85           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007ff9cab2a0fe:   xchg   %ax,%ax
   0.25%   ││││  0x00007ff9cab2a100:   test   %ecx,%ecx
           ││││  0x00007ff9cab2a102:   jl     0x00007ff9cab2ac60           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.41%   ││││  0x00007ff9cab2a108:   mov    0x10(,%r9,8),%ebx            ;*getfield predicate {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@9 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   ││││  0x00007ff9cab2a110:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.06%   ││││  0x00007ff9cab2a11b:   data16 data16 xchg %ax,%ax
   0.26%   ││││  0x00007ff9cab2a11f:   nop                                 ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.42%   ││││  0x00007ff9cab2a120:   cmpl   $0x26ba80,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007ff9cab2b406
           ││││                                                            ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
   0.28%   ││││  0x00007ff9cab2a12b:   jne    0x00007ff9cab2ac3c           ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.34%   ││││  0x00007ff9cab2a131:   mov    0xc(,%rdi,8),%r14d           ; implicit exception: dispatches to 0x00007ff9cab2b426
   0.29%   ││││  0x00007ff9cab2a139:   nopl   0x0(%rax)
   0.04%   ││││  0x00007ff9cab2a140:   cmp    %ecx,%r14d
           ││││  0x00007ff9cab2a143:   jle    0x00007ff9cab2ac18           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007ff9cab2a149:   cmp    %ecx,%r14d
           ││││  0x00007ff9cab2a14c:   jbe    0x00007ff9cab2abf4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.35%   ││││  0x00007ff9cab2a152:   mov    0xc(,%rbx,8),%ebx            ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.31%   ││││  0x00007ff9cab2a159:   mov    0xc(,%rbx,8),%r14d           ; implicit exception: dispatches to 0x00007ff9cab2b446
   1.14%   ││││  0x00007ff9cab2a161:   movsbl 0x10(%rcx,%rdi,8),%edi       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007ff9cab2a166:   movzbl %dil,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   ││││  0x00007ff9cab2a16a:   cmp    %eax,%r14d
           ││││  0x00007ff9cab2a16d:   jbe    0x00007ff9cab2abd0
   0.71%   ││││  0x00007ff9cab2a173:   movzbl %dil,%edi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%   ││││  0x00007ff9cab2a177:   nopw   0x0(%rax,%rax,1)
   0.03%   ││││  0x00007ff9cab2a180:   cmpb   $0x0,0x10(%rdi,%rbx,8)
   0.68%   ││││  0x00007ff9cab2a185:   jne    0x00007ff9cab2a3a5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.56%   ││││  0x00007ff9cab2a18b:   cmp    %esi,%r11d
           ││││  0x00007ff9cab2a18e:   je     0x00007ff9cab2a3ea           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%   ││││  0x00007ff9cab2a194:   mov    %ecx,0x54(%rsp)
   0.01%   ││││  0x00007ff9cab2a198:   mov    %r10,%r8
   0.05%   ││││  0x00007ff9cab2a19b:   movsbl 0x10(%r8),%eax               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@7 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.20%   ││││  0x00007ff9cab2a1a0:   test   %al,%al
           ││││  0x00007ff9cab2a1a2:   jne    0x00007ff9cab2ab5c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.08%   ││││  0x00007ff9cab2a1a8:   mov    0x54(%rsp),%ecx
   0.01%   ││││  0x00007ff9cab2a1ac:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007ff9cab2a1ae:   test   %ecx,%ecx
           ││││  0x00007ff9cab2a1b0:   jl     0x00007ff9cab2ab36           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.19%   ││││  0x00007ff9cab2a1b6:   mov    0x14(%r8),%edx               ; ImmutableOopMap {rdx=NarrowOop r8=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.10%   ││││  0x00007ff9cab2a1ba:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007ff9cab2b466
   0.37%   ││││  0x00007ff9cab2a1c2:   cmp    %ecx,%r10d
           ││││  0x00007ff9cab2a1c5:   jle    0x00007ff9cab2aafe           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.13%   ││││  0x00007ff9cab2a1cb:   cmp    %ecx,%r10d
           ││││  0x00007ff9cab2a1ce:   jbe    0x00007ff9cab2b2a0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.20%   ││││  0x00007ff9cab2a1d4:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rdx=NarrowOop r8=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007ff9cab2a1db:   test   %eax,(%r10)                  ;   {poll}
   0.01%   ││││  0x00007ff9cab2a1de:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.09%   ││││  0x00007ff9cab2a1e0:   cmp    0x64(%rsp),%ecx
   0.27%   ││││  0x00007ff9cab2a1e4:   mov    0x64(%rsp),%r10d
   0.01%   ││││  0x00007ff9cab2a1e9:   cmovg  %ecx,%r10d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.Math::max@2 (line 1562)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%   ││││  0x00007ff9cab2a1ed:   mov    %edx,%edi
   0.08%   ││││  0x00007ff9cab2a1ef:   mov    %eax,%r14d
   0.23%   ││││  0x00007ff9cab2a1f2:   mov    %r10d,%ecx
   0.02%   ││││  0x00007ff9cab2a1f5:   mov    %r8,%r10
   0.01%   ││││  0x00007ff9cab2a1f8:   mov    0x64(%rsp),%r8d
   0.09%   ││││  0x00007ff9cab2a1fd:   mov    0x38(%rsp),%rdx
   0.22%   ││╰│  0x00007ff9cab2a202:   jmp    0x00007ff9cab2a0b0           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││ │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││ │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.22%   │↘ │  0x00007ff9cab2a207:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@50 (line 3957)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.39%   │  │  0x00007ff9cab2a20b:   cmp    %esi,%r11d
           │  │  0x00007ff9cab2a20e:   je     0x00007ff9cab2a3ea           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%   │  │  0x00007ff9cab2a214:   test   %r14b,%r14b
           │  │  0x00007ff9cab2a217:   jne    0x00007ff9cab2aadd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           │  │                                                            ; - java.lang.String::charAt@1 (line 1514)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   │  │  0x00007ff9cab2a21d:   mov    %ecx,%r11d
   0.18%   │  │  0x00007ff9cab2a220:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.18%   │  │  0x00007ff9cab2a223:   test   %r11d,%r11d
           │  │  0x00007ff9cab2a226:   jl     0x00007ff9cab2aabc           ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           │  │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@53 (line 3958)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   │  │  0x00007ff9cab2a22c:   mov    0xc(,%rdi,8),%r9d            ; implicit exception: dispatches to 0x00007ff9cab2b486
   0.04%   │  │  0x00007ff9cab2a234:   cmp    %r11d,%r9d
           │  │  0x00007ff9cab2a237:   jle    0x00007ff9cab2aa89           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           │  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.21%   │  │  0x00007ff9cab2a23d:   data16 xchg %ax,%ax
   0.17%   │  │  0x00007ff9cab2a240:   cmp    %r11d,%r9d
           │  │  0x00007ff9cab2a243:   jbe    0x00007ff9cab2b1b0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           │  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   │  │  0x00007ff9cab2a249:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           │  │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@53 (line 3958)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.06%   │  │  0x00007ff9cab2a250:   test   %eax,(%r9)                   ;   {poll}
   0.19%   │  │  0x00007ff9cab2a253:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.16%   │  │  0x00007ff9cab2a255:   cmp    %r8d,%r11d
   0.02%   │  │  0x00007ff9cab2a258:   mov    %r8d,%ecx
   0.05%   │  │  0x00007ff9cab2a25b:   cmovg  %r11d,%ecx                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.Math::max@2 (line 1562)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.20%   │  │  0x00007ff9cab2a25f:   nop
   0.17%   │  ╰  0x00007ff9cab2a260:   jmp    0x00007ff9cab2a0b0
           ↘     0x00007ff9cab2a265:   cmp    $0x1b5480,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$GroupTail&apos;)}
                 0x00007ff9cab2a26b:   jne    0x00007ff9cab2aa3d           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                 0x00007ff9cab2a271:   mov    0x40(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=Oop r11=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
....................................................................................................
  38.72%  <total for region 1>

....[Hottest Regions]...............................................................................
  38.72%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 792 
   8.40%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   7.84%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   7.38%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 792 
   7.00%       jvmci, level 4  java.util.regex.Pattern$GroupTail::match, version 2, compile id 791 
   4.00%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 783 
   3.75%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 783 
   3.06%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   2.71%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   2.65%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   2.39%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 792 
   1.90%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   1.62%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   1.25%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 783 
   0.81%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 806 
   0.72%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   0.69%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 783 
   0.67%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 808 
   0.50%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
   0.38%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 783 
   3.55%  <...other 384 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  48.49%       jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 792 
  30.20%       jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::pattern_matches, version 4, compile id 811 
  10.22%       jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 783 
   7.00%       jvmci, level 4  java.util.regex.Pattern$GroupTail::match, version 2, compile id 791 
   1.14%               kernel  [unknown] 
   0.81%       jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 806 
   0.67%       jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 808 
   0.56%       jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 786 
   0.24%       jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 809 
   0.04%                       <unknown> 
   0.04%            libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.04%         libc-2.31.so  [unknown] 
   0.02%            libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.02%            libjvm.so  OtherRegionsTable::occupied 
   0.01%         libc-2.31.so  __strncat_ssse3 
   0.01%            libjvm.so  ElfSymbolTable::lookup 
   0.01%            libjvm.so  HeapRegionClaimer::claim_region 
   0.01%         libc-2.31.so  __strxfrm_l 
   0.01%       hsdis-amd64.so  print_insn 
   0.01%           ld-2.31.so  _dl_tunable_set_hwcaps 
   0.42%  <...other 130 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.19%       jvmci, level 4
   1.14%               kernel
   0.41%            libjvm.so
   0.11%         libc-2.31.so
   0.04%                     
   0.03%          interpreter
   0.02%       hsdis-amd64.so
   0.02%   libpthread-2.31.so
   0.02%  libjvmcicompiler.so
   0.01%           ld-2.31.so
   0.01%               [vdso]
   0.00%      perf-117120.map
....................................................................................................
 100.00%  <totals>



# JMH version: 1.36
# VM version: JDK 17.0.5, Java HotSpot(TM) 64-Bit Server VM, 17.0.5+9-LTS-jvmci-22.3-b07
# VM invoker: /home/gogu/bench_jdks/graalvm-ee-java17-22.3.0/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:JVMCIThreadsPerNativeLibraryRuntime=1 -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches
# Parameters: (regexp = ^(.*[aeuio].*){3,}$)

# Run progress: 66.67% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4049.039 us/op
# Warmup Iteration   2: 2063.746 us/op
# Warmup Iteration   3: 2070.585 us/op
# Warmup Iteration   4: 2179.022 us/op
# Warmup Iteration   5: 2177.391 us/op
Iteration   1: 2179.546 us/op
Iteration   2: 2146.036 us/op
Iteration   3: 2108.091 us/op
Iteration   4: 2143.215 us/op
Iteration   5: 2139.672 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches":
  2143.312 ±(99.9%) 97.682 us/op [Average]
  (min, avg, max) = (2108.091, 2143.312, 2179.546), stdev = 25.368
  CI (99.9%): [2045.630, 2240.994] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark.string_matches:·asm":
PrintAssembly processed: 275190 total address lines.
Perf output processed (skipped 58.853 seconds):
 Column 1: cycles (50738 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$Loop::match, version 2, compile id 826 

                 0x00007fe346b3bbd8:   0x00000008      0x0000000800000008      
                 0x00007fe346b3bbdc:   0x00000008                              
               --------------------------------------------------------------------------------
               [Entry Point]
                 # {method} {0x00007fe3346be930} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$Loop&apos;
                 # this:     rsi:rsi   = &apos;java/util/regex/Pattern$Loop&apos;
                 # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
                 # parm1:    rcx       = int
                 # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                 #           [sp+0x80]  (sp of caller)
   0.19%         0x00007fe346b3bbe0:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
   0.15%         0x00007fe346b3bbe4:   movabs $0x800000000,%r12
   0.20%         0x00007fe346b3bbee:   add    %r12,%r10
   0.08%         0x00007fe346b3bbf1:   xor    %r12,%r12
   0.11%         0x00007fe346b3bbf4:   cmp    %r10,%rax
                 0x00007fe346b3bbf7:   jne    0x00007fe33f01e780           ;   {runtime_call ic_miss_stub}
   0.14%         0x00007fe346b3bbfd:   nop
   0.18%         0x00007fe346b3bbfe:   xchg   %ax,%ax
               [Verified Entry Point]
   0.06%         0x00007fe346b3bc00:   mov    %eax,-0x14000(%rsp)
   0.27%         0x00007fe346b3bc07:   sub    $0x78,%rsp
   0.16%         0x00007fe346b3bc0b:   mov    %rbp,0x70(%rsp)
   0.14%         0x00007fe346b3bc10:   mov    %rsi,0x40(%rsp)
   0.12%         0x00007fe346b3bc15:   mov    %rdx,0x38(%rsp)
   0.18%         0x00007fe346b3bc1a:   mov    %ecx,0x64(%rsp)
   0.19%         0x00007fe346b3bc1e:   mov    %r8,0x30(%rsp)               ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.08%         0x00007fe346b3bc23:   mov    0x40(%rdx),%r10d             ; implicit exception: dispatches to 0x00007fe346b3d288
   0.12%         0x00007fe346b3bc27:   mov    0x10(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.18%         0x00007fe346b3bc2b:   mov    0xc(,%r10,8),%r9d            ; implicit exception: dispatches to 0x00007fe346b3d2a6
   0.29%         0x00007fe346b3bc33:   mov    0x14(%rsi),%ebx              ;*getfield beginIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@6 (line 4870)
   0.08%         0x00007fe346b3bc36:   cmp    %ebx,%r9d
                 0x00007fe346b3bc39:   jbe    0x00007fe346b3d197           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@9 (line 4870)
   0.10%         0x00007fe346b3bc3f:   shl    $0x3,%r10                    ;*getfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@2 (line 4870)
   0.15%         0x00007fe346b3bc43:   cmp    0x10(%r10,%rbx,4),%ecx
                 0x00007fe346b3bc48:   jle    0x00007fe346b3d0c6           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@10 (line 4870)
   0.34%         0x00007fe346b3bc4e:   mov    0x10(%rsi),%ebx              ;*getfield countIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@18 (line 4871)
   0.07%         0x00007fe346b3bc51:   cmp    %ebx,%r9d
                 0x00007fe346b3bc54:   jbe    0x00007fe346b3d1dd
   0.13%         0x00007fe346b3bc5a:   mov    0x10(%r10,%rbx,4),%edi       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@21 (line 4871)
   0.17%         0x00007fe346b3bc5f:   mov    %edi,0x60(%rsp)
   0.18%         0x00007fe346b3bc63:   mov    %edi,%eax
   0.07%         0x00007fe346b3bc65:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@44 (line 4876)
   0.12%         0x00007fe346b3bc67:   cmp    0x18(%rsi),%edi
                 0x00007fe346b3bc6a:   jge    0x00007fe346b3c58e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@30 (line 4875)
   0.15%         0x00007fe346b3bc70:   mov    0x24(%rsi),%ebp              ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
   0.14%         0x00007fe346b3bc73:   mov    %ebp,0x2c(%rsp)
   0.06%         0x00007fe346b3bc77:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.12%         0x00007fe346b3bc80:   cmpl   $0x269d20,0x8(,%rbp,8)       ; implicit exception: dispatches to 0x00007fe346b3d2c6
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$GroupHead&apos;)}
   0.34%         0x00007fe346b3bc8b:   jne    0x00007fe346b3d249           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.07%         0x00007fe346b3bc91:   mov    0xc(,%rbp,8),%r13d           ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.10%         0x00007fe346b3bc99:   mov    %r13d,0x28(%rsp)
   0.18%         0x00007fe346b3bc9e:   xchg   %ax,%ax                      ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.18%         0x00007fe346b3bca0:   cmpl   $0x26a890,0x8(,%r13,8)       ; implicit exception: dispatches to 0x00007fe346b3d2e6
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$CharPropertyGreedy&apos;)}
   0.53%         0x00007fe346b3bcac:   jne    0x00007fe346b3d154           ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rsi=Oop r8=Oop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.37%         0x00007fe346b3bcb2:   cmpl   $0xed30,0x8(%r8)             ; implicit exception: dispatches to 0x00007fe346b3d306
                                                                           ;   {metadata(&apos;java/lang/String&apos;)}
   0.10%         0x00007fe346b3bcba:   jne    0x00007fe346b3d106           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%         0x00007fe346b3bcc0:   movsbl 0x10(%r8),%r14d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::isLatin1@7 (line 4551)
                                                                           ; - java.lang.String::charAt@1 (line 1514)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.06%         0x00007fe346b3bcc5:   test   %r14b,%r14b
                 0x00007fe346b3bcc8:   jne    0x00007fe346b3d11b           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.String::isLatin1@10 (line 4551)
                                                                           ; - java.lang.String::charAt@1 (line 1514)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.35%         0x00007fe346b3bcce:   mov    0x14(%r8),%edi               ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rdi=NarrowOop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.05%         0x00007fe346b3bcd2:   mov    0xc(,%rdi,8),%r8d            ; implicit exception: dispatches to 0x00007fe346b3d326
   0.11%         0x00007fe346b3bcda:   mov    0x14(,%r13,8),%esi           ; ImmutableOopMap {rdx=Oop rbp=NarrowOop rdi=NarrowOop r10=Oop r13=NarrowOop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$Loop::match@0 (line 4870)
   0.08%         0x00007fe346b3bce2:   cmpl   $0xc395b0,0x8(,%rsi,8)       ; implicit exception: dispatches to 0x00007fe346b3d346
                                                                           ;   {metadata(&apos;java/util/regex/Pattern$$Lambda$54+0x0000000800c395b0&apos;)}
   1.15%         0x00007fe346b3bced:   jne    0x00007fe346b3cde1           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@64 (line 4281)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.38%         0x00007fe346b3bcf3:   mov    0x10(,%rbp,8),%esi           ;*getfield localIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@5 (line 4787)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%         0x00007fe346b3bcfa:   nopw   0x0(%rax,%rax,1)
   0.01%         0x00007fe346b3bd00:   cmp    %esi,%r9d
                 0x00007fe346b3bd03:   jbe    0x00007fe346b3d059           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%         0x00007fe346b3bd09:   mov    %eax,0x10(%r10,%rbx,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@45 (line 4876)
   0.45%         0x00007fe346b3bd0e:   mov    0x10(%r10,%rsi,4),%r9d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@8 (line 4787)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%         0x00007fe346b3bd13:   mov    %r9d,0x5c(%rsp)
   0.04%         0x00007fe346b3bd18:   mov    %ecx,0x10(%r10,%rsi,4)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@20 (line 4788)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%         0x00007fe346b3bd1d:   mov    %ebp,%r10d
   0.44%         0x00007fe346b3bd20:   shl    $0x3,%r10                    ;*getfield body {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Loop::match@47 (line 4877)
   0.01%         0x00007fe346b3bd24:   mov    %r10,0x20(%rsp)
   0.01%         0x00007fe346b3bd29:   mov    %r13d,%ebx
   0.05%         0x00007fe346b3bd2c:   shl    $0x3,%rbx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$GroupHead::match@22 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.43%         0x00007fe346b3bd30:   mov    %rbx,0x18(%rsp)
   0.01%         0x00007fe346b3bd35:   mov    %r11d,%esi
   0.02%         0x00007fe346b3bd38:   sub    %ecx,%esi
   0.03%         0x00007fe346b3bd3a:   cmp    %r11d,%ecx
   0.36%         0x00007fe346b3bd3d:   mov    $0x0,%eax
   0.01%         0x00007fe346b3bd42:   cmovg  %eax,%esi                    ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@1 (line 47)
                                                                           ; - java.lang.String::charAt@12 (line 1515)
                                                                           ; - java.lang.Character::codePointAt@2 (line 8910)
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%         0x00007fe346b3bd45:   test   %esi,%esi
          ╭      0x00007fe346b3bd47:   je     0x00007fe346b3c00b           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%  │      0x00007fe346b3bd4d:   mov    %edi,%eax
   0.27%  │      0x00007fe346b3bd4f:   shl    $0x3,%rax                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.lang.String::charAt@8 (line 1515)
          │                                                                ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%  │      0x00007fe346b3bd53:   mov    %ecx,%r13d
   0.01%  │      0x00007fe346b3bd56:   lea    0x10(%rax,%r13,1),%rax
   0.01%  │      0x00007fe346b3bd5b:   vmovd  %r8d,%xmm0
   0.31%  │      0x00007fe346b3bd60:   vpbroadcastd %xmm0,%ymm0
   0.00%  │      0x00007fe346b3bd65:   mov    %esi,%r13d
   0.01%  │      0x00007fe346b3bd68:   vmovd  %r11d,%xmm1
   0.02%  │      0x00007fe346b3bd6d:   vpbroadcastd %xmm1,%ymm1
   0.29%  │      0x00007fe346b3bd72:   vmovdqa -0x25a(%rip),%ymm2        # 0x00007fe346b3bb20
          │                                                                ;   {section_word}
   0.02%  │      0x00007fe346b3bd7a:   vmovdqa -0x242(%rip),%ymm3        # 0x00007fe346b3bb40
          │                                                                ;   {section_word}
   0.03%  │      0x00007fe346b3bd82:   vmovdqa -0x22a(%rip),%ymm4        # 0x00007fe346b3bb60
          │                                                                ;   {section_word}
   0.05%  │      0x00007fe346b3bd8a:   mov    %ecx,%r10d
   0.24%  │      0x00007fe346b3bd8d:   inc    %r10d
   0.01%  │      0x00007fe346b3bd90:   vmovd  %r10d,%xmm5
   0.02%  │      0x00007fe346b3bd95:   vpbroadcastd %xmm5,%ymm5
   0.01%  │      0x00007fe346b3bd9a:   vmovdqa -0x222(%rip),%ymm6        # 0x00007fe346b3bb80
          │                                                                ;   {section_word}
   0.37%  │      0x00007fe346b3bda2:   vpaddd %ymm6,%ymm5,%ymm5
   0.46%  │      0x00007fe346b3bda6:   vpcmpeqd %ymm7,%ymm7,%ymm7
   0.01%  │      0x00007fe346b3bdaa:   vmovd  %ecx,%xmm8
   0.01%  │      0x00007fe346b3bdae:   vpbroadcastd %xmm8,%ymm8
   0.15%  │      0x00007fe346b3bdb3:   vpaddd %ymm6,%ymm8,%ymm6
   0.12%  │      0x00007fe346b3bdb7:   vpxor  %xmm8,%xmm8,%xmm8
   0.01%  │      0x00007fe346b3bdbc:   nopl   0x0(%rax)
   0.01%  │      0x00007fe346b3bdc0:   cmp    $0x8,%esi
          │      0x00007fe346b3bdc3:   jae    0x00007fe346b3c3d2
   0.15%  │      0x00007fe346b3bdc9:   vmovdqu %xmm6,%xmm10
   0.11%  │      0x00007fe346b3bdcd:   vmovdqu %xmm5,%xmm9
   0.00%  │      0x00007fe346b3bdd1:   vmovdqu %xmm6,%xmm5
   0.01%  │      0x00007fe346b3bdd5:   mov    %esi,0x58(%rsp)
   0.16%  │      0x00007fe346b3bdd9:   mov    %edi,0x14(%rsp)
   0.11%  │      0x00007fe346b3bddd:   mov    %r14d,0x54(%rsp)
   0.00%  │      0x00007fe346b3bde2:   mov    %ecx,%ebp
   0.01%  │      0x00007fe346b3bde4:   mov    $0x0,%ebx
   0.17%  │      0x00007fe346b3bde9:   mov    $0x0,%r9
   0.12%  │      0x00007fe346b3bdf0:   vmovd  %xmm10,%r10d
   0.01%  │      0x00007fe346b3bdf5:   vmovd  %xmm9,%edi
   0.01%  │      0x00007fe346b3bdf9:   vmovd  %xmm5,%r14d
   0.16%  │      0x00007fe346b3bdfe:   vmovd  %xmm6,%ecx
   0.11%  │      0x00007fe346b3be02:   lea    -0x4(%r13),%rsi
   0.01%  │      0x00007fe346b3be06:   cmp    %rsi,%r9
          │      0x00007fe346b3be09:   jg     0x00007fe346b3c4f2
   0.01%  │      0x00007fe346b3be0f:   vpcmpgtd %xmm6,%xmm8,%xmm6
   0.04%  │      0x00007fe346b3be13:   vptest %xmm6,%xmm6
   0.01%  │      0x00007fe346b3be18:   jne    0x00007fe346b3cef8
   0.00%  │      0x00007fe346b3be1e:   vpcmpgtd %xmm5,%xmm0,%xmm5
   0.02%  │      0x00007fe346b3be22:   vpxor  %xmm7,%xmm5,%xmm5
   0.00%  │      0x00007fe346b3be26:   vptest %xmm5,%xmm5
   0.00%  │      0x00007fe346b3be2b:   jne    0x00007fe346b3c74b
   0.03%  │      0x00007fe346b3be31:   vpcmpgtd %xmm1,%xmm9,%xmm1
          │      0x00007fe346b3be35:   vptest %xmm1,%xmm1
   0.00%  │      0x00007fe346b3be3a:   jne    0x00007fe346b3ce72
   0.03%  │      0x00007fe346b3be40:   vmovdqa -0x348(%rip),%xmm1        # 0x00007fe346b3bb00
          │                                                                ;   {section_word}
          │      0x00007fe346b3be48:   vpxor  %xmm1,%xmm10,%xmm5
   0.00%  │      0x00007fe346b3be4c:   vpxor  %xmm1,%xmm0,%xmm0
   0.00%  │      0x00007fe346b3be50:   vpcmpgtd %xmm5,%xmm0,%xmm0
   0.03%  │      0x00007fe346b3be54:   vpxor  %xmm7,%xmm0,%xmm0
          │      0x00007fe346b3be58:   vptest %xmm0,%xmm0
          │      0x00007fe346b3be5d:   data16 xchg %ax,%ax
   0.01%  │      0x00007fe346b3be60:   jne    0x00007fe346b3ce4c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
          │      0x00007fe346b3be66:   vmovd  (%rax,%r9,1),%xmm0
   0.00%  │      0x00007fe346b3be6c:   vpmovzxbd %xmm0,%xmm0               ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.lang.StringLatin1::charAt@25 (line 50)
          │                                                                ; - java.lang.String::charAt@12 (line 1515)
          │                                                                ; - java.lang.Character::codePointAt@2 (line 8910)
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@20 (line 4273)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%  │      0x00007fe346b3be71:   vpcmpeqd %xmm4,%xmm0,%xmm1
   0.04%  │      0x00007fe346b3be75:   vptest %xmm1,%xmm1
   0.00%  │      0x00007fe346b3be7a:   jne    0x00007fe346b3d09a
   0.01%  │      0x00007fe346b3be80:   vpcmpeqd %xmm3,%xmm0,%xmm1
   0.02%  │      0x00007fe346b3be84:   vptest %xmm1,%xmm1
   0.00%  │      0x00007fe346b3be89:   jne    0x00007fe346b3d25e
   0.00%  │      0x00007fe346b3be8f:   vpcmpeqd %xmm2,%xmm0,%xmm0
   0.03%  │      0x00007fe346b3be93:   vptest %xmm0,%xmm0
          │      0x00007fe346b3be98:   jne    0x00007fe346b3d070
   0.00%  │      0x00007fe346b3be9e:   lea    0x4(%r10),%esi
   0.03%  │      0x00007fe346b3bea2:   lea    0x4(%rdi),%r10d
          │      0x00007fe346b3bea6:   lea    0x4(%r14),%edi
   0.00%  │      0x00007fe346b3beaa:   lea    0x4(%rbp),%ebp
   0.00%  │      0x00007fe346b3bead:   lea    0x4(%rbx),%ebx
   0.02%  │      0x00007fe346b3beb0:   lea    0x4(%rcx),%ecx
   0.00%  │      0x00007fe346b3beb3:   lea    0x4(%r9),%r9
   0.02%  │      0x00007fe346b3beb7:   dec    %r13
   0.15%  │      0x00007fe346b3beba:   nopw   0x0(%rax,%rax,1)
   0.18%  │      0x00007fe346b3bec0:   cmp    %r13,%r9
          │      0x00007fe346b3bec3:   jg     0x00007fe346b3c500
   0.00%  │      0x00007fe346b3bec9:   test   %ecx,%ecx
          │      0x00007fe346b3becb:   jl     0x00007fe346b3d02f
   0.03%  │      0x00007fe346b3bed1:   cmp    %edi,%r8d
          │      0x00007fe346b3bed4:   jle    0x00007fe346b3cc41
   0.14%  │      0x00007fe346b3beda:   nopw   0x0(%rax,%rax,1)
   0.13%  │      0x00007fe346b3bee0:   cmp    %r11d,%r10d
          │      0x00007fe346b3bee3:   jg     0x00007fe346b3cfcc
   0.02%  │      0x00007fe346b3bee9:   cmp    %esi,%r8d
          │      0x00007fe346b3beec:   jbe    0x00007fe346b3cfa6
   0.01%  │      0x00007fe346b3bef2:   movsbl (%rax,%r9,1),%r14d
   0.14%  │      0x00007fe346b3bef7:   nopw   0x0(%rax,%rax,1)
   0.13%  │      0x00007fe346b3bf00:   cmp    $0xa,%r14b
          │      0x00007fe346b3bf04:   je     0x00007fe346b3cf7a
   0.01%  │      0x00007fe346b3bf0a:   cmp    $0xd,%r14b
          │      0x00007fe346b3bf0e:   je     0x00007fe346b3cb26
   0.00%  │      0x00007fe346b3bf14:   cmp    $0x85,%r14b
          │      0x00007fe346b3bf18:   je     0x00007fe346b3cf26
   0.11%  │      0x00007fe346b3bf1e:   mov    %r9,%r14
   0.12%  │      0x00007fe346b3bf21:   inc    %r14
   0.00%  │      0x00007fe346b3bf24:   cmp    %r13,%r14
          │      0x00007fe346b3bf27:   jg     0x00007fe346b3c512
   0.00%  │      0x00007fe346b3bf2d:   mov    %ecx,%r14d
   0.06%  │      0x00007fe346b3bf30:   inc    %r14d
   0.03%  │      0x00007fe346b3bf33:   test   %r14d,%r14d
          │      0x00007fe346b3bf36:   jl     0x00007fe346b3ce9c
          │      0x00007fe346b3bf3c:   mov    %edi,%r14d
   0.01%  │      0x00007fe346b3bf3f:   inc    %r14d
   0.09%  │      0x00007fe346b3bf42:   cmp    %r14d,%r8d
          │      0x00007fe346b3bf45:   jle    0x00007fe346b3c775
   0.04%  │      0x00007fe346b3bf4b:   mov    %r10d,%r14d
   0.00%  │      0x00007fe346b3bf4e:   inc    %r14d
   0.01%  │      0x00007fe346b3bf51:   cmp    %r11d,%r14d
          │      0x00007fe346b3bf54:   jg     0x00007fe346b3ceca
   0.08%  │      0x00007fe346b3bf5a:   mov    %esi,%r14d
   0.03%  │      0x00007fe346b3bf5d:   inc    %r14d
   0.01%  │      0x00007fe346b3bf60:   cmp    %r14d,%r8d
          │      0x00007fe346b3bf63:   jbe    0x00007fe346b3cf50
   0.00%  │      0x00007fe346b3bf69:   movsbl 0x1(%rax,%r9,1),%r14d
   0.06%  │      0x00007fe346b3bf6f:   cmp    $0xa,%r14b
          │      0x00007fe346b3bf73:   je     0x00007fe346b3d169
   0.03%  │      0x00007fe346b3bf79:   nopl   0x0(%rax)
   0.01%  │      0x00007fe346b3bf80:   cmp    $0xd,%r14b
          │      0x00007fe346b3bf84:   je     0x00007fe346b3d1f2
   0.01%  │      0x00007fe346b3bf8a:   cmp    $0x85,%r14b
          │      0x00007fe346b3bf8e:   je     0x00007fe346b3cdf8
   0.05%  │      0x00007fe346b3bf94:   lea    0x2(%r9),%r14
   0.03%  │      0x00007fe346b3bf98:   nopl   0x0(%rax,%rax,1)
   0.00%  │      0x00007fe346b3bfa0:   cmp    %r13,%r14
          │      0x00007fe346b3bfa3:   jg     0x00007fe346b3c525
   0.01%  │      0x00007fe346b3bfa9:   lea    0x2(%rcx),%ecx
   0.05%  │      0x00007fe346b3bfac:   test   %ecx,%ecx
          │      0x00007fe346b3bfae:   jl     0x00007fe346b3cdb0
   0.00%  │      0x00007fe346b3bfb4:   lea    0x2(%rdi),%ecx
          │      0x00007fe346b3bfb7:   cmp    %ecx,%r8d
          │      0x00007fe346b3bfba:   jle    0x00007fe346b3d1ac
          │      0x00007fe346b3bfc0:   lea    0x2(%r10),%ecx
   0.02%  │      0x00007fe346b3bfc4:   cmp    %r11d,%ecx
          │      0x00007fe346b3bfc7:   jg     0x00007fe346b3cd53
   0.01%  │      0x00007fe346b3bfcd:   lea    0x2(%rsi),%esi
   0.00%  │      0x00007fe346b3bfd0:   cmp    %esi,%r8d
          │      0x00007fe346b3bfd3:   jbe    0x00007fe346b3cd26
   0.01%  │      0x00007fe346b3bfd9:   movsbl 0x2(%rax,%r9,1),%esi
   0.04%  │      0x00007fe346b3bfdf:   nop
   0.00%  │      0x00007fe346b3bfe0:   cmp    $0xa,%sil
          │      0x00007fe346b3bfe4:   je     0x00007fe346b3ccf1
   0.00%  │      0x00007fe346b3bfea:   cmp    $0xd,%sil
          │      0x00007fe346b3bfee:   je     0x00007fe346b3ccc0
   0.01%  │      0x00007fe346b3bff4:   cmp    $0x85,%sil
          │      0x00007fe346b3bff8:   je     0x00007fe346b3cc8f
   0.03%  │      0x00007fe346b3bffe:   mov    0x58(%rsp),%esi
   0.01%  │      0x00007fe346b3c002:   mov    0x14(%rsp),%edi
          │      0x00007fe346b3c006:   mov    0x54(%rsp),%r14d             ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$CharPropertyGreedy::match@12 (line 4272)
          │                                                                ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
          │                                                                ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.09%  ↘      0x00007fe346b3c00b:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@94 (line 4287)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.28%         0x00007fe346b3c00f:   mov    0x64(%rsp),%ecx
   0.05%         0x00007fe346b3c013:   add    %esi,%ecx
   0.03%         0x00007fe346b3c015:   mov    0x28(%rsp),%r13d
   0.08%         0x00007fe346b3c01a:   mov    0x30(%rsp),%r10
   0.34%         0x00007fe346b3c01f:   mov    0x64(%rsp),%r8d
   0.03%         0x00007fe346b3c024:   nopl   0x0(%rax,%rax,1)
   0.03%         0x00007fe346b3c02c:   data16 data16 xchg %ax,%ax          ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.12%     ↗↗  0x00007fe346b3c030:   mov    0x10(,%r13,8),%r11d          ;*getfield cmin {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@100 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.40%     ││  0x00007fe346b3c038:   nopl   0x0(%rax,%rax,1)
   0.15%     ││  0x00007fe346b3c040:   cmp    %esi,%r11d
             ││  0x00007fe346b3c043:   jg     0x00007fe346b3cc6b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@103 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.41%     ││  0x00007fe346b3c049:   mov    0xc(,%r13,8),%r9d            ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
             ││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
             ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
             ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.13%     ││  0x00007fe346b3c051:   mov    0x8(,%r9,8),%ebx             ; implicit exception: dispatches to 0x00007fe346b3d366
   0.54%     ││  0x00007fe346b3c059:   nopl   0x0(%rax)
   0.09%     ││  0x00007fe346b3c060:   cmp    $0x1b58e0,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
           ╭ ││  0x00007fe346b3c066:   jne    0x00007fe346b3c1e5           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │ ││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │ ││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.51%   │ ││  0x00007fe346b3c06c:   cmp    0x10(%rdx),%ecx
           │╭││  0x00007fe346b3c06f:   jge    0x00007fe346b3c187           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 3953)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007fe346b3c075:   test   %r14b,%r14b
           ││││  0x00007fe346b3c078:   jne    0x00007fe346b3cc05           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007fe346b3c07e:   xchg   %ax,%ax
   0.09%   ││││  0x00007fe346b3c080:   test   %ecx,%ecx
           ││││  0x00007fe346b3c082:   jl     0x00007fe346b3cbe0           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.39%   ││││  0x00007fe346b3c088:   mov    0x10(,%r9,8),%ebx            ;*getfield predicate {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@9 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007fe346b3c090:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.04%   ││││  0x00007fe346b3c09b:   data16 data16 xchg %ax,%ax
   0.08%   ││││  0x00007fe346b3c09f:   nop                                 ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.37%   ││││  0x00007fe346b3c0a0:   cmpl   $0x26ba80,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007fe346b3d386
           ││││                                                            ;   {metadata(&apos;java/util/regex/Pattern$BitClass&apos;)}
   0.38%   ││││  0x00007fe346b3c0ab:   jne    0x00007fe346b3cbbc           ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.24%   ││││  0x00007fe346b3c0b1:   mov    0xc(,%rdi,8),%r14d           ; implicit exception: dispatches to 0x00007fe346b3d3a6
   0.27%   ││││  0x00007fe346b3c0b9:   nopl   0x0(%rax)
   0.05%   ││││  0x00007fe346b3c0c0:   cmp    %ecx,%r14d
           ││││  0x00007fe346b3c0c3:   jle    0x00007fe346b3cb98           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%   ││││  0x00007fe346b3c0c9:   cmp    %ecx,%r14d
           ││││  0x00007fe346b3c0cc:   jbe    0x00007fe346b3cb74           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.28%   ││││  0x00007fe346b3c0d2:   mov    0xc(,%rbx,8),%ebx            ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rdi=NarrowOop r9=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.21%   ││││  0x00007fe346b3c0d9:   mov    0xc(,%rbx,8),%r14d           ; implicit exception: dispatches to 0x00007fe346b3d3c6
   0.96%   ││││  0x00007fe346b3c0e1:   movsbl 0x10(%rcx,%rdi,8),%edi       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%   ││││  0x00007fe346b3c0e6:   movzbl %dil,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%   ││││  0x00007fe346b3c0ea:   cmp    %eax,%r14d
           ││││  0x00007fe346b3c0ed:   jbe    0x00007fe346b3cb50
   0.51%   ││││  0x00007fe346b3c0f3:   movzbl %dil,%edi                    ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BitClass::is@12 (line 3503)
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%   ││││  0x00007fe346b3c0f7:   nopw   0x0(%rax,%rax,1)
   0.01%   ││││  0x00007fe346b3c100:   cmpb   $0x0,0x10(%rdi,%rbx,8)
   0.46%   ││││  0x00007fe346b3c105:   jne    0x00007fe346b3c325           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.48%   ││││  0x00007fe346b3c10b:   cmp    %esi,%r11d
           ││││  0x00007fe346b3c10e:   je     0x00007fe346b3c36a           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.00%   ││││  0x00007fe346b3c114:   mov    %ecx,0x54(%rsp)
   0.08%   ││││  0x00007fe346b3c118:   mov    %r10,%r8
   0.01%   ││││  0x00007fe346b3c11b:   movsbl 0x10(%r8),%eax               ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@7 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.20%   ││││  0x00007fe346b3c120:   test   %al,%al
           ││││  0x00007fe346b3c122:   jne    0x00007fe346b3cadc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           ││││                                                            ; - java.lang.String::charAt@1 (line 1514)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.07%   ││││  0x00007fe346b3c128:   mov    0x54(%rsp),%ecx
   0.04%   ││││  0x00007fe346b3c12c:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007fe346b3c12e:   test   %ecx,%ecx
           ││││  0x00007fe346b3c130:   jl     0x00007fe346b3cab6           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@1 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.18%   ││││  0x00007fe346b3c136:   mov    0x14(%r8),%edx               ; ImmutableOopMap {rdx=NarrowOop r8=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   ││││  0x00007fe346b3c13a:   mov    0xc(,%rdx,8),%r10d           ; implicit exception: dispatches to 0x00007fe346b3d3e6
   0.22%   ││││  0x00007fe346b3c142:   cmp    %ecx,%r10d
           ││││  0x00007fe346b3c145:   jle    0x00007fe346b3ca7e           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.06%   ││││  0x00007fe346b3c14b:   cmp    %ecx,%r10d
           ││││  0x00007fe346b3c14e:   jbe    0x00007fe346b3d220           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           ││││                                                            ; - java.lang.String::charAt@12 (line 1515)
           ││││                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.18%   ││││  0x00007fe346b3c154:   mov    0x348(%r15),%r10             ; ImmutableOopMap {rdx=NarrowOop r8=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           ││││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
           ││││                                                            ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@116 (line 4290)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
           ││││  0x00007fe346b3c15b:   test   %eax,(%r10)                  ;   {poll}
   0.01%   ││││  0x00007fe346b3c15e:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.02%   ││││  0x00007fe346b3c160:   cmp    0x64(%rsp),%ecx
   0.18%   ││││  0x00007fe346b3c164:   mov    0x64(%rsp),%r10d
           ││││  0x00007fe346b3c169:   cmovg  %ecx,%r10d                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           ││││                                                            ; - java.lang.Math::max@2 (line 1562)
           ││││                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
           ││││                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││││                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.01%   ││││  0x00007fe346b3c16d:   mov    %edx,%edi
   0.03%   ││││  0x00007fe346b3c16f:   mov    %eax,%r14d
   0.21%   ││││  0x00007fe346b3c172:   mov    %r10d,%ecx
   0.00%   ││││  0x00007fe346b3c175:   mov    %r8,%r10
   0.02%   ││││  0x00007fe346b3c178:   mov    0x64(%rsp),%r8d
   0.03%   ││││  0x00007fe346b3c17d:   mov    0x38(%rsp),%rdx
   0.17%   ││╰│  0x00007fe346b3c182:   jmp    0x00007fe346b3c030           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           ││ │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
           ││ │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           ││ │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.09%   │↘ │  0x00007fe346b3c187:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@50 (line 3957)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.27%   │  │  0x00007fe346b3c18b:   cmp    %esi,%r11d
           │  │  0x00007fe346b3c18e:   je     0x00007fe346b3c36a           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@127 (line 4292)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%   │  │  0x00007fe346b3c194:   test   %r14b,%r14b
           │  │  0x00007fe346b3c197:   jne    0x00007fe346b3ca5d           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.String::isLatin1@10 (line 4551)
           │  │                                                            ; - java.lang.String::charAt@1 (line 1514)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.06%   │  │  0x00007fe346b3c19d:   mov    %ecx,%r11d
   0.03%   │  │  0x00007fe346b3c1a0:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.Character::codePointBefore@1 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.13%   │  │  0x00007fe346b3c1a3:   test   %r11d,%r11d
           │  │  0x00007fe346b3c1a6:   jl     0x00007fe346b3ca3c           ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           │  │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@53 (line 3958)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.05%   │  │  0x00007fe346b3c1ac:   mov    0xc(,%rdi,8),%r9d            ; implicit exception: dispatches to 0x00007fe346b3d406
   0.06%   │  │  0x00007fe346b3c1b4:   cmp    %r11d,%r9d
           │  │  0x00007fe346b3c1b7:   jle    0x00007fe346b3ca09           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.StringLatin1::charAt@7 (line 47)
           │  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.03%   │  │  0x00007fe346b3c1bd:   data16 xchg %ax,%ax
   0.16%   │  │  0x00007fe346b3c1c0:   cmp    %r11d,%r9d
           │  │  0x00007fe346b3c1c3:   jbe    0x00007fe346b3d130           ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.StringLatin1::charAt@21 (line 50)
           │  │                                                            ; - java.lang.String::charAt@12 (line 1515)
           │  │                                                            ; - java.lang.Character::codePointBefore@5 (line 9011)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@134 (line 4295)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   │  │  0x00007fe346b3c1c9:   mov    0x348(%r15),%r9              ; ImmutableOopMap {rdx=Oop rdi=NarrowOop r10=Oop r13=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
           │  │                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
           │  │                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharProperty::match@53 (line 3958)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.10%   │  │  0x00007fe346b3c1d0:   test   %eax,(%r9)                   ;   {poll}
   0.07%   │  │  0x00007fe346b3c1d3:   dec    %esi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@152 (line 4298)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.16%   │  │  0x00007fe346b3c1d5:   cmp    %r8d,%r11d
   0.04%   │  │  0x00007fe346b3c1d8:   mov    %r8d,%ecx
   0.06%   │  │  0x00007fe346b3c1db:   cmovg  %r11d,%ecx                   ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                            ; - java.lang.Math::max@2 (line 1562)
           │  │                                                            ; - java.util.regex.Pattern$CharPropertyGreedy::match@148 (line 4297)
           │  │                                                            ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
           │  │                                                            ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
   0.04%   │  │  0x00007fe346b3c1df:   nop
   0.16%   │  ╰  0x00007fe346b3c1e0:   jmp    0x00007fe346b3c030
           ↘     0x00007fe346b3c1e5:   cmp    $0x1b5480,%ebx               ;   {metadata(&apos;java/util/regex/Pattern$GroupTail&apos;)}
                 0x00007fe346b3c1eb:   jne    0x00007fe346b3c9bd           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$CharPropertyGreedy::match@113 (line 4290)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
                 0x00007fe346b3c1f1:   mov    0x40(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop r9=NarrowOop r10=Oop r11=NarrowOop [24]=Oop [32]=Oop [40]=NarrowOop [44]=NarrowOop [48]=Oop [56]=Oop [64]=Oop }
                                                                           ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                           ; - (reexecute) java.util.regex.Pattern$CharPropertyGreedy::match@97 (line 4289)
                                                                           ; - java.util.regex.Pattern$GroupHead::match@28 (line 4789)
                                                                           ; - java.util.regex.Pattern$Loop::match@53 (line 4877)
....................................................................................................
  28.30%  <total for region 1>

....[Hottest Regions]...............................................................................
  28.30%      jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 826 
   7.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   7.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   6.20%      jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 826 
   5.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   5.39%      jvmci, level 4  java.util.regex.Pattern$GroupTail::match, version 2, compile id 825 
   3.00%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 794 
   2.87%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 794 
   1.80%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.77%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.75%      jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 826 
   1.51%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.47%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.34%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.13%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.10%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.07%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
   1.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
  17.58%  <...other 495 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  45.26%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternMatcherBenchmark::string_matches, version 4, compile id 872 
  36.25%      jvmci, level 4  java.util.regex.Pattern$Loop::match, version 2, compile id 826 
   7.79%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::match, version 2, compile id 794 
   5.39%      jvmci, level 4  java.util.regex.Pattern$GroupTail::match, version 2, compile id 825 
   1.65%              kernel  [unknown] 
   0.97%      jvmci, level 4  java.util.regex.Pattern$CharPropertyGreedy::study, version 2, compile id 848 
   0.56%      jvmci, level 4  java.util.regex.IntHashSet::add, version 2, compile id 866 
   0.55%      jvmci, level 4  java.util.regex.IntHashSet::contains, version 2, compile id 865 
   0.36%      jvmci, level 4  java.util.regex.Pattern$GroupHead::match, version 2, compile id 808 
   0.22%      jvmci, level 4  java.util.regex.Pattern$Node::study, version 2, compile id 843 
   0.18%                      <unknown> 
   0.16%      jvmci, level 4  java.util.regex.Pattern$Dollar::match, version 2, compile id 867 
   0.03%           libjvm.so  OtherRegionsTable::is_empty 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  HeapRegionManager::par_iterate 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.49%  <...other 145 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.51%      jvmci, level 4
   1.65%              kernel
   0.46%           libjvm.so
   0.18%                    
   0.06%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.04%         interpreter
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%     perf-117181.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:05:37

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
StringPatternMatcherBenchmark.pattern_find          ^(.*[aeuio].*){3,}$  avgt    5  1582.792 ±  3.577  us/op
StringPatternMatcherBenchmark.pattern_find:·asm     ^(.*[aeuio].*){3,}$  avgt            NaN             ---
StringPatternMatcherBenchmark.pattern_matches       ^(.*[aeuio].*){3,}$  avgt    5  1496.952 ±  3.037  us/op
StringPatternMatcherBenchmark.pattern_matches:·asm  ^(.*[aeuio].*){3,}$  avgt            NaN             ---
StringPatternMatcherBenchmark.string_matches        ^(.*[aeuio].*){3,}$  avgt    5  2143.312 ± 97.682  us/op
StringPatternMatcherBenchmark.string_matches:·asm   ^(.*[aeuio].*){3,}$  avgt            NaN             ---
