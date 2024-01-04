# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 462.562 us/op
# Warmup Iteration   2: 330.948 us/op
# Warmup Iteration   3: 322.078 us/op
# Warmup Iteration   4: 319.180 us/op
# Warmup Iteration   5: 318.973 us/op
Iteration   1: 316.387 us/op
Iteration   2: 317.704 us/op
Iteration   3: 318.349 us/op
Iteration   4: 319.133 us/op
Iteration   5: 326.956 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  319.706 ±(99.9%) 16.081 us/op [Average]
  (min, avg, max) = (316.387, 319.706, 326.956), stdev = 4.176
  CI (99.9%): [303.625, 335.787] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 246647 total address lines.
Perf output processed (skipped 79.729 seconds):
 Column 1: cycles (51453 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Matcher::search, version 4, compile id 1075 

                                                  # parm0:    rdx       = int
                                                  #           [sp+0x60]  (sp of caller)
                                                  0x00007f1857198720:   mov    0x8(%rsi),%r10d              ;   {no_reloc}
                                                  0x00007f1857198724:   movabs $0x7f17d3000000,%r12
                                                  0x00007f185719872e:   add    %r12,%r10
                                                  0x00007f1857198731:   xor    %r12,%r12
                                                  0x00007f1857198734:   cmp    %r10,%rax
                                                  0x00007f1857198737:   jne    0x00007f1856af9080           ;   {runtime_call ic_miss_stub}
                                                  0x00007f185719873d:   data16 xchg %ax,%ax
                                                [Verified Entry Point]
   0.01%                                          0x00007f1857198740:   mov    %eax,-0x14000(%rsp)
   0.52%                                          0x00007f1857198747:   sub    $0x58,%rsp
   0.00%                                          0x00007f185719874b:   nop
   0.01%                                          0x00007f185719874c:   cmpl   $0x1,0x20(%r15)
   0.55%                                          0x00007f1857198754:   jne    0x00007f1857198f7a
   0.00%                                          0x00007f185719875a:   mov    %rbp,0x50(%rsp)
   0.00%                                          0x00007f185719875f:   mov    %rsi,0x20(%rsp)
   0.01%                                          0x00007f1857198764:   mov    %edx,0x44(%rsp)
   0.45%                                          0x00007f1857198768:   test   %edx,%edx
                                                  0x00007f185719876a:   jl     0x00007f1857198f10           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Matcher::search@11 (line 1757)
                                                  0x00007f1857198770:   mov    0x38(%rsi),%r10d             ; ImmutableOopMap {rsi=Oop r10=NarrowOop [32]=Oop }
                                                                                                            ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                                            ; - (reexecute) java.util.regex.Matcher::search@0 (line 1755)
   0.01%                                          0x00007f1857198774:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f1857198f9e
   0.01%                                          0x00007f185719877c:   mov    %r11d,0x40(%rsp)
   0.56%                                          0x00007f1857198781:   movb   $0x0,0x30(%rsi)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Matcher::search@2 (line 1755)
   0.01%                                          0x00007f1857198785:   movb   $0x0,0x31(%rsi)              ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Matcher::search@7 (line 1756)
   0.00%                                          0x00007f1857198789:   mov    %edx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Matcher::search@22 (line 1758)
   0.00%                                          0x00007f185719878c:   mov    0x24(%rsi),%ecx              ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Matcher::search@27 (line 1759)
   0.62%                                          0x00007f185719878f:   test   %ecx,%ecx
   0.00%                                          0x00007f1857198791:   cmovl  %edx,%ecx                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Matcher::search@30 (line 1759)
   0.01%                                          0x00007f1857198794:   mov    %ecx,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Matcher::search@41 (line 1759)
   0.00%                                          0x00007f1857198797:   test   %r11d,%r11d
          ╭                                       0x00007f185719879a:   je     0x00007f1857198817           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                 ; - java.util.regex.Matcher::search@52 (line 1760)
   0.45%  │                                       0x00007f18571987a0:   mov    %r11d,%ecx
          │                                       0x00007f18571987a3:   dec    %ecx
   0.00%  │                                       0x00007f18571987a5:   movslq %ecx,%rcx
          │                                       0x00007f18571987a8:   mov    %r11d,%r8d
   0.55%  │                                       0x00007f18571987ab:   cmp    %rcx,%r8
          │╭                                      0x00007f18571987ae:   ja     0x00007f18571987be
          ││                                      0x00007f18571987b4:   cmp    $0x2,%r11d
          ││                                      0x00007f18571987b8:   jae    0x00007f1857198f57
          │↘                                      0x00007f18571987be:   movl   $0xffffffff,0x10(,%r10,8)    ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                 ; - java.util.regex.Matcher::search@61 (line 1761)
   0.01%  │                                       0x00007f18571987ca:   cmp    $0x3,%r11d
   0.00%  │                                       0x00007f18571987ce:   mov    $0x2,%ecx
   0.48%  │                                       0x00007f18571987d3:   cmovb  %r11d,%ecx
   0.00%  │                                       0x00007f18571987d7:   mov    %r10d,%r8d
   0.01%  │                                       0x00007f18571987da:   shl    $0x3,%r8                     ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                                 ; - java.util.regex.Matcher::search@48 (line 1760)
   0.01%  │                                       0x00007f18571987de:   mov    $0x1,%r9d
   0.54%  │ ╭                                     0x00007f18571987e4:   jmp    0x00007f185719880c           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                                               ; - java.util.regex.Matcher::search@46 (line 1760)
          │ │                                     0x00007f18571987e9:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │                                     0x00007f18571987f4:   data16 data16 xchg %ax,%ax
          │ │                                     0x00007f18571987f8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                                               ; - java.util.regex.Matcher::search@52 (line 1760)
   0.46%  │ │ ↗                                   0x00007f1857198800:   movl   $0xffffffff,0x10(%r8,%r9,4)  ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                                                             ; - java.util.regex.Matcher::search@61 (line 1761)
   0.01%  │ │ │                                   0x00007f1857198809:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                                                             ; - java.util.regex.Matcher::search@62 (line 1760)
   0.00%  │ ↘ │                                   0x00007f185719880c:   cmp    %r9d,%ecx
          │  ╭│                                   0x00007f185719880f:   jle    0x00007f1857198b14
   0.01%  │  │╰                                   0x00007f1857198815:   jmp    0x00007f1857198800           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                                              ; - java.util.regex.Matcher::search@52 (line 1760)
          ↘  │                          ↗         0x00007f1857198817:   mov    0x3c(%rsi),%ecx              ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
             │                          │                                                                   ; - java.util.regex.Matcher::search@118 (line 1767)
   0.00%     │                          │         0x00007f185719881a:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r10=NarrowOop [32]=Oop }
             │                          │                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
             │                          │                                                                   ; - (reexecute) java.util.regex.Matcher::search@68 (line 1762)
   0.49%     │                          │         0x00007f1857198820:   cmpl   $0xe8d8,0x8(,%rcx,8)         ; implicit exception: dispatches to 0x00007f1857198fc1
             │                          │                                                                   ;   {metadata(&apos;java/lang/String&apos;)}
   0.02%     │                          │         0x00007f185719882b:   jne    0x00007f1857198ed5           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
             │                          │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
             │                          │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │                          │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.01%     │                          │         0x00007f1857198831:   cmpb   $0x0,0x10(,%rcx,8)
   0.54%     │                          │         0x00007f1857198839:   jne    0x00007f1857198f33           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             │                          │                                                                   ; - java.lang.String::isLatin1@10 (line 4817)
             │                          │                                                                   ; - java.lang.String::charAt@1 (line 1554)
             │                          │                                                                   ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 4133)
             │                          │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │                          │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.00%     │                          │         0x00007f185719883f:   mov    0x14(,%rcx,8),%r8d           ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
             │                          │                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
             │                          │                                                                   ; - (reexecute) java.util.regex.Matcher::search@68 (line 1762)
   0.01%     │                          │         0x00007f1857198847:   mov    0xc(,%r8,8),%r9d             ; implicit exception: dispatches to 0x00007f1857198fe4
   0.47%     │                          │         0x00007f185719884f:   mov    0x44(%rsi),%ebx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
             │                          │                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
             │                          │                                                                   ; - (reexecute) java.util.regex.Matcher::search@68 (line 1762)
   0.00%     │                          │         0x00007f1857198852:   cmpl   $0x0,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007f1857199007
   0.00%     │ ╭                        │         0x00007f185719885a:   jne    0x00007f1857198d45           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@76 (line 1762)
   0.52%     │ │                        │         0x00007f1857198860:   mov    0x34(%rsi),%ebx              ; ImmutableOopMap {rcx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
             │ │                        │                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - (reexecute) java.util.regex.Matcher::search@68 (line 1762)
   0.01%     │ │                        │         0x00007f1857198863:   mov    0x34(,%rbx,8),%ebx           ; implicit exception: dispatches to 0x00007f185719902d
             │ │                        │                                                                   ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
             │ │                        │                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - (reexecute) java.util.regex.Matcher::search@68 (line 1762)
   0.01%     │ │                        │         0x00007f185719886a:   cmpl   $0x356fc8,0x8(,%rbx,8)       ; implicit exception: dispatches to 0x00007f1857199050
             │ │                        │                                                                   ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
   0.69%     │ │                        │         0x00007f1857198875:   jne    0x00007f1857198e88           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.05%     │ │                        │         0x00007f185719887b:   mov    0x10(%rsi),%edi              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@2 (line 3781)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ │                        │         0x00007f185719887e:   mov    %edi,%eax
   0.00%     │ │                        │         0x00007f1857198880:   sub    0x10(,%rbx,8),%eax           ;*isub {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@9 (line 3781)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.48%     │ │                        │         0x00007f1857198887:   mov    %eax,0x3c(%rsp)
   0.15%     │ │                        │         0x00007f185719888b:   cmp    %eax,%edx
             │ │                        │         0x00007f185719888d:   jg     0x00007f1857198e4d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@10 (line 3781)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.00%     │ │                        │         0x00007f1857198893:   mov    0xc(,%rbx,8),%ebp            ; ImmutableOopMap {rcx=NarrowOop rbx=NarrowOop rbp=NarrowOop rsi=Oop r8=NarrowOop r10=NarrowOop [32]=Oop }
             │ │                        │                                                                   ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - (reexecute) java.util.regex.Matcher::search@68 (line 1762)
             │ │                        │         0x00007f185719889a:   mov    0x8(,%rbp,8),%r13d           ; implicit exception: dispatches to 0x00007f1857199073
   0.53%     │ │                        │         0x00007f18571988a2:   cmp    $0x7fffffff,%eax
             │ │                        │         0x00007f18571988a8:   je     0x00007f1857198df6           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@31 (line 3786)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.04%     │ │                        │         0x00007f18571988ae:   mov    %r10d,0x1c(%rsp)
   0.00%     │ │                        │         0x00007f18571988b3:   mov    %eax,%r14d
   0.00%     │ │                        │         0x00007f18571988b6:   sub    %edx,%r14d
   0.51%     │ │                        │         0x00007f18571988b9:   inc    %r14d
   0.03%     │ │                        │         0x00007f18571988bc:   movslq %r14d,%r14
             │ │                        │         0x00007f18571988bf:   mov    %edx,%r10d
   0.00%     │ │                        │         0x00007f18571988c2:   add    %r10,%r14
   0.60%     │ │                        │         0x00007f18571988c5:   dec    %r14
   0.04%     │ │                        │         0x00007f18571988c8:   movslq %edi,%r10
   0.01%     │ │                        │         0x00007f18571988cb:   cmp    %r14,%r10
             │ │                        │         0x00007f18571988ce:   jle    0x00007f1857198f45
   0.06%     │ │                        │         0x00007f18571988d4:   cmp    %edx,%edi
             │ │                        │         0x00007f18571988d6:   jle    0x00007f1857198eac           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Pattern$BmpCharProperty::match@5 (line 4132)
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.45%     │ │                        │         0x00007f18571988dc:   mov    %r9d,%r10d
   0.01%     │ │                        │         0x00007f18571988df:   nop
             │ │                        │         0x00007f18571988e0:   cmp    %r14,%r10
             │ │                        │         0x00007f18571988e3:   jbe    0x00007f1857198d6d
   0.06%     │ │                        │         0x00007f18571988e9:   cmp    %edx,%r9d
             │ │                        │         0x00007f18571988ec:   jbe    0x00007f1857198e76           ;* unwind (locked if synchronized)
             │ │                        │                                                                   ; - jdk.internal.util.Preconditions::checkIndex@-3
             │ │                        │                                                                   ; - java.lang.String::checkIndex@5 (line 4828)
             │ │                        │                                                                   ; - java.lang.StringLatin1::charAt@3 (line 46)
             │ │                        │                                                                   ; - java.lang.String::charAt@12 (line 1555)
             │ │                        │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.48%     │ │                        │         0x00007f18571988f2:   movl   $0x0,0x18(%rsi)              ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@105 (line 1766)
   0.01%     │ │                        │         0x00007f18571988f9:   movabs $0x7f17d3000000,%r10
             │ │                        │         0x00007f1857198903:   lea    (%r10,%r13,1),%r13
   0.04%     │ │                        │         0x00007f1857198907:   mov    %r13,0x30(%rsp)
   0.46%     │ │                        │         0x00007f185719890c:   mov    %ebp,%r10d
   0.00%     │ │                        │         0x00007f185719890f:   shl    $0x3,%r10                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@38 (line 3787)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ │                        │         0x00007f1857198913:   mov    %r10,0x10(%rsp)
   0.04%     │ │                        │         0x00007f1857198918:   shl    $0x3,%rbx                    ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@112 (line 1767)
   0.45%     │ │                        │         0x00007f185719891c:   mov    %rbx,0x8(%rsp)
   0.02%     │ │                        │         0x00007f1857198921:   shl    $0x3,%rcx                    ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@118 (line 1767)
             │ │                        │         0x00007f1857198925:   mov    %rcx,(%rsp)
   0.04%     │ │                        │         0x00007f1857198929:   movabs $0x7ff867d18,%r14            ;   {oop([I{0x00000007ff867d18})}
   0.44%     │ │                        │         0x00007f1857198933:   nopw   0x0(%rax,%rax,1)
   0.01%     │ │                        │         0x00007f185719893c:   data16 data16 xchg %ax,%ax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ │                        │                                                                   ; - java.util.regex.Pattern$Start::match@31 (line 3786)
             │ │                        │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   1.34%     │ │    ↗      ↗            │         0x00007f1857198940:   cmp    %eax,%edx
             │ │╭   │      │            │         0x00007f1857198942:   jg     0x00007f1857198d24           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
             │ ││   │      │            │                                                                   ; - java.util.regex.Pattern$Start::match@34 (line 3786)
             │ ││   │      │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.15%     │ ││   │      │            │         0x00007f1857198948:   mov    %edx,0x2c(%rsp)
   2.10%     │ ││   │      │            │         0x00007f185719894c:   movsbl 0x10(%rdx,%r8,8),%ecx        ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │ ││   │      │            │                                                                   ; - java.lang.StringLatin1::charAt@8 (line 47)
             │ ││   │      │            │                                                                   ; - java.lang.String::charAt@12 (line 1555)
             │ ││   │      │            │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
             │ ││   │      │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││   │      │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.16%     │ ││   │      │            │         0x00007f1857198952:   movzbl %cl,%ebx                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
             │ ││   │      │            │                                                                   ; - java.lang.StringLatin1::charAt@12 (line 47)
             │ ││   │      │            │                                                                   ; - java.lang.String::charAt@12 (line 1555)
             │ ││   │      │            │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
             │ ││   │      │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││   │      │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   1.32%     │ ││   │      │            │         0x00007f1857198955:   mov    %edx,%r11d
   0.17%     │ ││   │      │            │         0x00007f1857198958:   inc    %r11d
   1.89%     │ ││   │      │            │         0x00007f185719895b:   cmp    -0x262(%rip),%r13        # 0x00007f1857198700
             │ ││   │      │            │                                                                   ;   {section_word}
   0.18%     │ ││╭  │      │            │         0x00007f1857198962:   je     0x00007f185719897a
             │ │││  │      │            │         0x00007f1857198968:   cmp    -0x267(%rip),%r13        # 0x00007f1857198708
             │ │││  │      │            │                                                                   ;   {section_word}
             │ │││╭ │      │            │         0x00007f185719896f:   je     0x00007f18571989ad
             │ ││││ │      │            │         0x00007f1857198975:   jmp    0x00007f1857198e5f
   1.35%     │ ││↘│ │      │            │         0x00007f185719897a:   mov    0x10(,%rbp,8),%ecx           ; ImmutableOopMap {rcx=NarrowOop rbp=NarrowOop r8=NarrowOop r14=Oop [0]=Oop [8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
             │ ││ │ │      │            │                                                                   ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
             │ ││ │ │      │            │                                                                   ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
             │ ││ │ │      │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.15%     │ ││ │ │      │            │         0x00007f1857198981:   cmpl   $0x3a4a50,0x8(,%rcx,8)       ; implicit exception: dispatches to 0x00007f1857199096
             │ ││ │ │      │            │                                                                   ;   {metadata(&apos;java/util/regex/Pattern$$Lambda+0x800000038&apos;)}
   2.39%     │ ││ │ │      │            │         0x00007f185719898c:   jne    0x00007f1857198ee7           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
             │ ││ │ │      │            │                                                                   ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 4133)
             │ ││ │ │      │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││ │ │      │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   1.73%     │ ││ │ │      │            │         0x00007f1857198992:   cmp    0xc(,%rcx,8),%ebx
             │ ││ │╭│      │            │         0x00007f1857198999:   je     0x00007f1857198be5           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ ││ │││      │            │                                                                   ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 4133)
             │ ││ │││      │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││ │││      │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   2.67%     │ ││ │││      │            │         0x00007f185719899f:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {rbp=NarrowOop r8=NarrowOop r14=Oop [0]=Oop [8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
             │ ││ │││      │            │                                                                   ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
             │ ││ │││      │            │                                                                   ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
             │ ││ │││      │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   1.68%     │ ││ │││      │            │         0x00007f18571989a6:   test   %eax,(%rcx)                  ;   {poll}
   2.14%     │ ││ │││      │            │         0x00007f18571989a8:   mov    %r11d,%edx
   0.10%     │ ││ ││╰      │            │         0x00007f18571989ab:   jmp    0x00007f1857198940           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ ││ ││       │            │                                                                   ; - java.util.regex.Pattern$Start::match@31 (line 3786)
             │ ││ ││       │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││ ↘│       │            │         0x00007f18571989ad:   cmp    %edx,%edi
             │ ││  │ ╭     │            │         0x00007f18571989af:   jle    0x00007f1857198b08           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │     │            │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
             │ ││  │ │     │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │     │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │     │            │         0x00007f18571989b5:   mov    0x14(,%rbp,8),%r10d          ; ImmutableOopMap {rbp=NarrowOop r8=NarrowOop r10=NarrowOop r14=Oop [0]=Oop [8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
             │ ││  │ │     │            │                                                                   ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
             │ ││  │ │     │            │                                                                   ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
             │ ││  │ │     │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │     │            │         0x00007f18571989bd:   mov    0x8(,%r10,8),%esi            ; implicit exception: dispatches to 0x00007f18571990b9
             │ ││  │ │     │            │         0x00007f18571989c5:   movabs $0x7f17d3000000,%rax
             │ ││  │ │     │            │         0x00007f18571989cf:   lea    (%rax,%rsi,1),%rsi
             │ ││  │ │     │            │         0x00007f18571989d3:   cmp    -0x2ca(%rip),%rsi        # 0x00007f1857198710
             │ ││  │ │     │            │                                                                   ;   {section_word}
             │ ││  │ │╭    │            │         0x00007f18571989da:   je     0x00007f18571989f2
             │ ││  │ ││    │            │         0x00007f18571989e0:   cmp    -0x2cf(%rip),%rsi        # 0x00007f1857198718
             │ ││  │ ││    │            │                                                                   ;   {section_word}
             │ ││  │ ││╭   │            │         0x00007f18571989e7:   je     0x00007f1857198ad8
             │ ││  │ │││   │            │         0x00007f18571989ed:   jmp    0x00007f1857198de2
             │ ││  │ │↘│   │            │         0x00007f18571989f2:   cmp    $0x80,%cl
             │ ││  │ │ │   │            │         0x00007f18571989f5:   jae    0x00007f1857198ebe           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@4 (line 427)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.CharPredicates$$Lambda/0x800000035::is@1
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │   │            │         0x00007f18571989fb:   movzbl %cl,%ecx                     ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.ASCII::getType@11 (line 199)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.ASCII::isType@1 (line 203)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.ASCII::isSpace@4 (line 235)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.CharPredicates$$Lambda/0x800000035::is@1
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │   │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │   │            │         0x00007f18571989fe:   xchg   %ax,%ax
             │ ││  │ │ │   │            │         0x00007f1857198a00:   testl  $0x800,0x10(%r14,%rcx,4)
             │ ││  │ │ │╭  │            │         0x00007f1857198a09:   jne    0x00007f1857198a47
             │ ││  │ │ ││  │            │         0x00007f1857198a0f:   mov    $0x0,%ecx
             │ ││  │ │ ││  │            │         0x00007f1857198a14:   mov    %edx,%ebx                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ ││  │            │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@31 (line 4502)
             │ ││  │ │ ││  │            │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ ││  │            │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ ││  │↗  ↗ ↗  ↗ ↗ │         0x00007f1857198a16:   cmp    %ebx,%edi
             │ ││  │ │ ││╭ ││  │ │  │ │ │         0x00007f1857198a18:   jle    0x00007f1857198afa           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │││ ││  │ │  │ │ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@46 (line 4505)
             │ ││  │ │ │││ ││  │ │  │ │ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │││ ││  │ │  │ │ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │││ ││  │ │  │↗│ │         0x00007f1857198a1e:   xchg   %ax,%ax
             │ ││  │ │ │││ ││  │ │  │││ │         0x00007f1857198a20:   cmp    0x10(,%rbp,8),%ecx
             │ ││  │ │ │││╭││  │ │  │││ │         0x00007f1857198a27:   jge    0x00007f1857198c9b           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ ││││││  │ │  │││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@60 (line 4508)
             │ ││  │ │ ││││││  │ │  │││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ ││││││  │ │  │││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ ││││││  │ │  │││ │         0x00007f1857198a2d:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {rbp=NarrowOop r8=NarrowOop r14=Oop [0]=Oop [8]=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
             │ ││  │ │ ││││││  │ │  │││ │                                                                   ;*iload {reexecute=1 rethrow=0 return_oop=0}
             │ ││  │ │ ││││││  │ │  │││ │                                                                   ; - (reexecute) java.util.regex.Pattern$BmpCharPropertyGreedy::match@54 (line 4508)
             │ ││  │ │ ││││││  │ │  │││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ ││││││  │ │  │││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ ││││││  │ │  │││ │         0x00007f1857198a34:   test   %eax,(%rsi)                  ;   {poll}
             │ ││  │ │ ││││││  │ │  │││ │         0x00007f1857198a36:   mov    %r11d,%edx
             │ ││  │ │ ││││││  │ │  │││ │         0x00007f1857198a39:   mov    0x30(%rsp),%r13
             │ ││  │ │ ││││││  │ │  │││ │         0x00007f1857198a3e:   mov    0x3c(%rsp),%eax
             │ ││  │ │ ││││╰│  │ │  │││ │         0x00007f1857198a42:   jmp    0x00007f1857198940           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ ││││ │  │ │  │││ │                                                                   ; - java.util.regex.Pattern$Start::match@47 (line 3787)
             │ ││  │ │ ││││ │  │ │  │││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │↘││ │  │ │ ↗│││ │         0x00007f1857198a47:   mov    %r11d,%ebx
             │ ││  │ │ │ ││ │  │ │ ││││ │         0x00007f1857198a4a:   mov    $0x1,%ecx
             │ ││  │ │ │ ││ │  │ │ ││││ │         0x00007f1857198a4f:   nop                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││ │  │ │ ││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@9 (line 4502)
             │ ││  │ │ │ ││ │  │ │ ││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││ │  │ │ ││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││ │  │↗│↗││││ │         0x00007f1857198a50:   cmp    %ebx,%edi
             │ ││  │ │ │ ││ ╰  ││││││││ │         0x00007f1857198a52:   jle    0x00007f1857198a16           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4502)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a54:   cmp    %ebx,%r9d
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a57:   jbe    0x00007f1857198efe
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a5d:   movsbl 0x10(%rbx,%r8,8),%eax        ;*baload {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.lang.StringLatin1::charAt@8 (line 47)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.lang.String::charAt@12 (line 1555)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a63:   mov    %ebx,%edx
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a65:   inc    %edx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@34 (line 4503)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││    ││││││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a67:   mov    %ecx,%r13d
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a6a:   inc    %r13d
             │ ││  │ │ │ ││    ││││││││ │         0x00007f1857198a6d:   cmp    -0x364(%rip),%rsi        # 0x00007f1857198710
             │ ││  │ │ │ ││    ││││││││ │                                                                   ;   {section_word}
             │ ││  │ │ │ ││  ╭ ││││││││ │         0x00007f1857198a74:   je     0x00007f1857198a8c
             │ ││  │ │ │ ││  │ ││││││││ │         0x00007f1857198a7a:   cmp    -0x369(%rip),%rsi        # 0x00007f1857198718
             │ ││  │ │ │ ││  │ ││││││││ │                                                                   ;   {section_word}
             │ ││  │ │ │ ││  │╭││││││││ │         0x00007f1857198a81:   je     0x00007f1857198ab6
             │ ││  │ │ │ ││  ││││││││││ │         0x00007f1857198a87:   jmp    0x00007f1857198e9a
             │ ││  │ │ │ ││  ↘│││││││││ │         0x00007f1857198a8c:   cmp    $0x80,%al
             │ ││  │ │ │ ││   │││││││││ │         0x00007f1857198a8f:   jae    0x00007f1857198e08           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@4 (line 427)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.CharPredicates$$Lambda/0x800000035::is@1
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││   │││││││││ │         0x00007f1857198a95:   movzbl %al,%eax                     ;*iaload {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.ASCII::getType@11 (line 199)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.ASCII::isType@1 (line 203)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.ASCII::isSpace@4 (line 235)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 427)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.CharPredicates$$Lambda/0x800000035::is@1
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4502)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││   │││││││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││   │││││││││ │         0x00007f1857198a98:   nopl   0x0(%rax,%rax,1)
             │ ││  │ │ │ ││   │││││││││ │         0x00007f1857198aa0:   testl  $0x800,0x10(%r14,%rax,4)
             │ ││  │ │ │ ││   │╰│││││││ │         0x00007f1857198aa9:   je     0x00007f1857198a16
             │ ││  │ │ │ ││   │ │││││││ │         0x00007f1857198aaf:   mov    %edx,%ebx
             │ ││  │ │ │ ││   │ │││││││ │         0x00007f1857198ab1:   mov    %r13d,%ecx
             │ ││  │ │ │ ││   │ ╰││││││ │         0x00007f1857198ab4:   jmp    0x00007f1857198a50           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││   │  ││││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@31 (line 4502)
             │ ││  │ │ │ ││   │  ││││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││   │  ││││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││   ↘  ││││││ │         0x00007f1857198ab6:   movzbl %al,%eax                     ;*iand {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││      ││││││ │                                                                   ; - java.lang.StringLatin1::charAt@12 (line 47)
             │ ││  │ │ │ ││      ││││││ │                                                                   ; - java.lang.String::charAt@12 (line 1555)
             │ ││  │ │ │ ││      ││││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
             │ ││  │ │ │ ││      ││││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││      ││││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││      ││││││ │         0x00007f1857198ab9:   nopl   0x0(%rax)
             │ ││  │ │ │ ││      ││││││ │         0x00007f1857198ac0:   cmp    0xc(,%r10,8),%eax
             │ ││  │ │ │ ││      ╰│││││ │         0x00007f1857198ac8:   jne    0x00007f1857198a16           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││       │││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@31 (line 4502)
             │ ││  │ │ │ ││       │││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││       │││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ │ ││       │││││ │         0x00007f1857198ace:   mov    %edx,%ebx
             │ ││  │ │ │ ││       │││││ │         0x00007f1857198ad0:   mov    %r13d,%ecx
             │ ││  │ │ │ ││       ╰││││ │         0x00007f1857198ad3:   jmp    0x00007f1857198a50           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │ │ ││        ││││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@9 (line 4502)
             │ ││  │ │ │ ││        ││││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │ │ ││        ││││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │ ↘ ││        ││││ │         0x00007f1857198ad8:   nopl   0x0(%rax,%rax,1)
             │ ││  │ │   ││        ││││ │         0x00007f1857198ae0:   cmp    0xc(,%r10,8),%ebx
             │ ││  │ │   ││        ╰│││ │         0x00007f1857198ae8:   je     0x00007f1857198a47           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │   ││         │││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@31 (line 4502)
             │ ││  │ │   ││         │││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │   ││         │││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │   ││         │││ │         0x00007f1857198aee:   mov    $0x0,%ecx
             │ ││  │ │   ││         │││ │         0x00007f1857198af3:   mov    %edx,%ebx
             │ ││  │ │   ││         ╰││ │         0x00007f1857198af5:   jmp    0x00007f1857198a16           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │   ││          ││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@43 (line 4505)
             │ ││  │ │   ││          ││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │   ││          ││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │   ↘│          ││ │         0x00007f1857198afa:   mov    0x20(%rsp),%rsi
             │ ││  │ │    │          ││ │         0x00007f1857198aff:   movb   $0x1,0x30(%rsi)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │    │          ││ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@51 (line 4506)
             │ ││  │ │    │          ││ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │    │          ││ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ │    │          ╰│ │         0x00007f1857198b03:   jmp    0x00007f1857198a1e           ;*iload {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │ │    │           │ │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@54 (line 4508)
             │ ││  │ │    │           │ │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │ │    │           │ │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
             │ ││  │ ↘    │           │ │         0x00007f1857198b08:   mov    $0x0,%ecx
             │ ││  │      │           │ │         0x00007f1857198b0d:   mov    %edx,%ebx
             │ ││  │      │           ╰ │         0x00007f1857198b0f:   jmp    0x00007f1857198a16           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
             │ ││  │      │             │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@43 (line 4505)
             │ ││  │      │             │                                                                   ; - java.util.regex.Pattern$Start::match@44 (line 3787)
             │ ││  │      │             │                                                                   ; - java.util.regex.Matcher::search@121 (line 1767)
   0.53%     ↘ ││  │      │             │         0x00007f1857198b14:   lea    -0x10(%r11),%ecx
               ││  │      │            ╭│         0x00007f1857198b18:   jmp    0x00007f1857198bd7
               ││  │      │            ││         0x00007f1857198b1d:   data16 xchg %ax,%ax                 ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               ││  │      │            ││                                                                   ; - java.util.regex.Matcher::search@52 (line 1760)
   0.01%       ││  │      │            ││↗        0x00007f1857198b20:   movl   $0xffffffff,0x10(%r8,%r9,4)  ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││  │      │            │││                                                                  ; - java.util.regex.Matcher::search@61 (line 1761)
   0.00%       ││  │      │            │││        0x00007f1857198b29:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               ││  │      │            │││                                                                  ; - java.util.regex.Matcher::search@62 (line 1760)
   0.51%       ││  │      │            │││        0x00007f1857198b2c:   nopl   0x0(%rax)
   0.56%       ││  │      │            │││↗       0x00007f1857198b30:   cmp    %r9d,%r11d
               ││  │      │            │╰││       0x00007f1857198b33:   jle    0x00007f1857198817
   0.55%       ││  │      │            │ ╰│       0x00007f1857198b39:   jmp    0x00007f1857198b20
               ││  │      │            │  │       0x00007f1857198b3b:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               ││  │      │            │  │                                                                 ; - java.util.regex.Matcher::search@52 (line 1760)
   0.57%       ││  │      │            │  │↗      0x00007f1857198b40:   movl   $0xffffffff,0x10(%r8,%r9,4)
   0.01%       ││  │      │            │  ││      0x00007f1857198b49:   movslq %r9d,%rbx
               ││  │      │            │  ││      0x00007f1857198b4c:   movl   $0xffffffff,0x14(%r8,%rbx,4)
   0.02%       ││  │      │            │  ││      0x00007f1857198b55:   movl   $0xffffffff,0x18(%r8,%rbx,4)
   0.54%       ││  │      │            │  ││      0x00007f1857198b5e:   movl   $0xffffffff,0x1c(%r8,%rbx,4)
   0.01%       ││  │      │            │  ││      0x00007f1857198b67:   movl   $0xffffffff,0x20(%r8,%rbx,4)
   0.00%       ││  │      │            │  ││      0x00007f1857198b70:   movl   $0xffffffff,0x24(%r8,%rbx,4)
   0.00%       ││  │      │            │  ││      0x00007f1857198b79:   movl   $0xffffffff,0x28(%r8,%rbx,4) ;   {no_reloc}
   0.55%       ││  │      │            │  ││      0x00007f1857198b82:   movl   $0xffffffff,0x2c(%r8,%rbx,4)
               ││  │      │            │  ││      0x00007f1857198b8b:   movl   $0xffffffff,0x30(%r8,%rbx,4)
               ││  │      │            │  ││      0x00007f1857198b94:   movl   $0xffffffff,0x34(%r8,%rbx,4)
   0.01%       ││  │      │            │  ││      0x00007f1857198b9d:   movl   $0xffffffff,0x38(%r8,%rbx,4)
   0.55%       ││  │      │            │  ││      0x00007f1857198ba6:   movl   $0xffffffff,0x3c(%r8,%rbx,4)
   0.01%       ││  │      │            │  ││      0x00007f1857198baf:   movl   $0xffffffff,0x40(%r8,%rbx,4)
   0.01%       ││  │      │            │  ││      0x00007f1857198bb8:   movl   $0xffffffff,0x44(%r8,%rbx,4)
   0.01%       ││  │      │            │  ││      0x00007f1857198bc1:   movl   $0xffffffff,0x48(%r8,%rbx,4)
   0.53%       ││  │      │            │  ││      0x00007f1857198bca:   movl   $0xffffffff,0x4c(%r8,%rbx,4) ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││  │      │            │  ││                                                                ; - java.util.regex.Matcher::search@61 (line 1761)
   0.01%       ││  │      │            │  ││      0x00007f1857198bd3:   lea    0x10(%r9),%r9d               ;*iinc {reexecute=0 rethrow=0 return_oop=0}
               ││  │      │            │  ││                                                                ; - java.util.regex.Matcher::search@62 (line 1760)
   0.59%       ││  │      │            ↘  ││      0x00007f1857198bd7:   cmp    %r9d,%ecx
               ││  │      │               ╰│      0x00007f1857198bda:   jle    0x00007f1857198b30
               ││  │      │                ╰      0x00007f1857198be0:   jmp    0x00007f1857198b40           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               ││  │      │                                                                                 ; - java.util.regex.Matcher::search@52 (line 1760)
   3.58%       ││  ↘      │                       0x00007f1857198be5:   mov    0x20(%rsp),%rsi
   4.06%       ││         │                       0x00007f1857198bea:   mov    0xc(,%rbp,8),%edx            ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
               ││         │                                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@28 (line 4133)
               ││         │                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││         │                                                                                 ; - java.util.regex.Matcher::search@121 (line 1767)
   0.09%       ││         │                       0x00007f1857198bf1:   data16 data16 nopw 0x0(%rax,%rax,1)
               ││         │                       0x00007f1857198bfc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [28]=NarrowOop [32]=Oop }
               ││         │                                                                                 ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
               ││         │                                                                                 ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
               ││         │                                                                                 ; - java.util.regex.Matcher::search@121 (line 1767)
   0.04%       ││         │                       0x00007f1857198c00:   cmpl   $0x35e290,0x8(,%rdx,8)       ; implicit exception: dispatches to 0x00007f18571990dc
               ││         │                                                                                 ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   2.38%       ││         │                       0x00007f1857198c0b:   jne    0x00007f1857198dcf           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               ││         │                                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
               ││         │                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││         │                                                                                 ; - java.util.regex.Matcher::search@121 (line 1767)
   0.44%       ││         │                       0x00007f1857198c11:   cmpl   $0x2,0x40(%rsp)
   0.03%       ││         │                       0x00007f1857198c16:   jb     0x00007f1857198da3           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││         │                                                                                 ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
               ││         │                                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
               ││         │                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││         │                                                                                 ; - java.util.regex.Matcher::search@121 (line 1767)
   0.00%       ││         │                       0x00007f1857198c1c:   mov    0x1c(%rsp),%r10d
   0.08%       ││         │                       0x00007f1857198c21:   mov    0x44(%rsp),%edx
   0.39%       ││         │                       0x00007f1857198c25:   mov    %r11d,0x20(%rsi)             ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
               ││         │                                                                                 ; - java.util.regex.Pattern$LastNode::match@20 (line 3759)
               ││         │                                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
               ││         │                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││         │                                                                                 ; - java.util.regex.Matcher::search@121 (line 1767)
   0.01%       ││         │                       0x00007f1857198c29:   mov    %edx,0x10(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││         │                                                                                 ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
               ││         │                                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
               ││         │                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││         │                                                                                 ; - java.util.regex.Matcher::search@121 (line 1767)
   1.89%       ││         │                       0x00007f1857198c31:   mov    %r11d,0x14(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││         │                                                                                 ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
               ││         │                                                                                 ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 4134)
               ││         │                                                                                 ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││         │                                                                                 ; - java.util.regex.Matcher::search@121 (line 1767)
   0.64%       ││         │                  ↗    0x00007f1857198c39:   mov    0x20(%rsp),%rsi              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               ││         │                  │                                                              ; - java.util.regex.Pattern$Start::match@47 (line 3787)
               ││         │                  │                                                              ; - java.util.regex.Matcher::search@121 (line 1767)
   0.02%       ││         │                  │    0x00007f1857198c3e:   mov    0x38(%rsi),%eax              ; ImmutableOopMap {rax=NarrowOop rsi=Oop }
               ││         │                  │                                                              ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
               ││         │                  │                                                              ; - (reexecute) java.util.regex.Pattern$Start::match@50 (line 3788)
               ││         │                  │                                                              ; - java.util.regex.Matcher::search@121 (line 1767)
   0.02%       ││         │                  │    0x00007f1857198c41:   cmpl   $0x2,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007f18571990ff
   1.51%       ││         │                  │    0x00007f1857198c49:   jb     0x00007f1857198d7c           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││         │                  │                                                              ; - java.util.regex.Pattern$Start::match@64 (line 3789)
               ││         │                  │                                                              ; - java.util.regex.Matcher::search@121 (line 1767)
   0.56%       ││         │                  │    0x00007f1857198c4f:   mov    0x2c(%rsp),%edx
   0.01%       ││         │                  │    0x00007f1857198c53:   mov    %edx,0x1c(%rsi)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
               ││         │                  │                                                              ; - java.util.regex.Pattern$Start::match@52 (line 3788)
               ││         │                  │                                                              ; - java.util.regex.Matcher::search@121 (line 1767)
   0.00%       ││         │                  │    0x00007f1857198c56:   mov    %edx,0x10(,%rax,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││         │                  │                                                              ; - java.util.regex.Pattern$Start::match@64 (line 3789)
               ││         │                  │                                                              ; - java.util.regex.Matcher::search@121 (line 1767)
   0.80%       ││         │                  │    0x00007f1857198c5d:   mov    0x20(%rsi),%r10d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
               ││         │                  │                                                              ; - java.util.regex.Pattern$Start::match@71 (line 3790)
               ││         │                  │                                                              ; - java.util.regex.Matcher::search@121 (line 1767)
   0.30%       ││         │                  │    0x00007f1857198c61:   mov    %r10d,0x14(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││         │                  │                                                              ; - java.util.regex.Pattern$Start::match@74 (line 3790)
               ││         │                  │                                                              ; - java.util.regex.Matcher::search@121 (line 1767)
   0.12%       ││         │                  │    0x00007f1857198c69:   mov    $0x1,%r10d
               ││         │                  │↗   0x00007f1857198c6f:   test   %r10d,%r10d
               ││         │                 ╭││   0x00007f1857198c72:   je     0x00007f1857198d38           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               ││         │                 │││                                                             ; - java.util.regex.Matcher::search@126 (line 1768)
   0.24%       ││         │                 │││↗  0x00007f1857198c78:   mov    0x20(%rsi),%eax              ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
               ││         │                 ││││                                                            ; - java.util.regex.Matcher::search@136 (line 1770)
   0.23%       ││         │                 ││││  0x00007f1857198c7b:   mov    %eax,0x24(%rsi)              ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
               ││         │                 ││││                                                            ; - java.util.regex.Matcher::search@139 (line 1770)
   0.06%       ││         │                 ││││  0x00007f1857198c7e:   incl   0x2c(%rsi)                   ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
               ││         │                 ││││                                                            ; - java.util.regex.Matcher::search@149 (line 1771)
   0.47%       ││         │                 ││││  0x00007f1857198c81:   mov    %r10d,%eax                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
               ││         │                 ││││                                                            ; - java.util.regex.Matcher::search@153 (line 1772)
   0.03%       ││         │                 ││││  0x00007f1857198c84:   mov    0x50(%rsp),%rbp
   0.00%       ││         │                 ││││  0x00007f1857198c89:   add    $0x58,%rsp
   0.23%       ││         │                 ││││  0x00007f1857198c8d:   cmp    0x450(%r15),%rsp             ;   {poll_return}
               ││         │                 ││││  0x00007f1857198c94:   ja     0x00007f1857198f8a
   0.23%       ││         │                 ││││  0x00007f1857198c9a:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               ││         │                 ││││                                                            ; - java.util.regex.Pattern$Start::match@47 (line 3787)
               ││         │                 ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               ││         ↘                 ││││  0x00007f1857198c9b:   mov    %ecx,0x40(%rsp)
               ││                           ││││  0x00007f1857198c9f:   mov    (%rsp),%rcx
               ││                           ││││  0x00007f1857198ca3:   mov    0x20(%rsp),%rsi
               ││                           ││││  0x00007f1857198ca8:   mov    0xc(,%rbp,8),%r8d            ;*iload {reexecute=1 rethrow=0 return_oop=0}
               ││                           ││││                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharPropertyGreedy::match@54 (line 4508)
               ││                           ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││                           ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               ││                           ││││  0x00007f1857198cb0:   test   %eax,0x0(,%r8,8)             ; implicit exception: deoptimizes
               ││                           ││││                                                            ; ImmutableOopMap {rcx=Oop rsi=Oop r8=NarrowOop [0]=Oop [8]=Oop [16]=Oop [32]=Oop }
               ││                           ││││  0x00007f1857198cb8:   shl    $0x3,%r8                     ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
               ││                           ││││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@64 (line 4509)
               ││                           ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││                           ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               ││                           ││││  0x00007f1857198cbc:   mov    %rsi,%rdi
               ││                           ││││  0x00007f1857198cbf:   mov    %r8,%rsi
               ││                           ││││  0x00007f1857198cc2:   mov    %rdi,%rdx
               ││                           ││││  0x00007f1857198cc5:   mov    %rcx,%r13
               ││                           ││││  0x00007f1857198cc8:   mov    %ebx,%ecx
               ││                           ││││  0x00007f1857198cca:   mov    %r13,%r8                     ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               ││                           ││││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4509)
               ││                           ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││                           ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               ││                           ││││  0x00007f1857198ccd:   mov    %ebx,0x44(%rsp)
               ││                           ││││  0x00007f1857198cd1:   movabs $0xffffffffffffffff,%rax
               ││                           ││││  0x00007f1857198cdb:   call   0x00007f1856af9680           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [32]=Oop }
               ││                           ││││                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
               ││                           ││││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4509)
               ││                           ││││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││                           ││││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               ││                           ││││                                                            ;   {virtual_call}
               ││                           ││││  0x00007f1857198ce0:   nopl   0xe0007d0(%rax,%rax,1)       ;   {other}
               ││                           ││││  0x00007f1857198ce8:   test   %eax,%eax
               ││                           │╰││  0x00007f1857198cea:   jne    0x00007f1857198c39
               ││                           │ ││  0x00007f1857198cf0:   mov    0x40(%rsp),%ecx
               ││                           │ ││  0x00007f1857198cf4:   mov    0x44(%rsp),%ebx
               ││                           │ ││  0x00007f1857198cf8:   mov    0x2c(%rsp),%edx
               ││                           │ ││  0x00007f1857198cfc:   mov    0x20(%rsp),%rsi
               ││                           │ ││  0x00007f1857198d01:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               ││                           │ ││                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@73 (line 4509)
               ││                           │ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││                           │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               ││                           │ ││  0x00007f1857198d0c:   movq   $0x1194,0x490(%r15)
               ││                           │ ││  0x00007f1857198d17:   call   0x00007f1856aff17a           ; ImmutableOopMap {rsi=Oop [0]=Oop [8]=Oop [16]=Oop }
               ││                           │ ││                                                            ;*ifeq {reexecute=1 rethrow=0 return_oop=0}
               ││                           │ ││                                                            ; - (reexecute) java.util.regex.Pattern$BmpCharPropertyGreedy::match@73 (line 4509)
               ││                           │ ││                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
               ││                           │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               ││                           │ ││                                                            ;   {runtime_call DeoptimizationBlob}
               ││                           │ ││  0x00007f1857198d1c:   nopl   0x0(%rax,%rax,1)             ;*iastore {reexecute=0 rethrow=0 return_oop=0}
               ││                           │ ││                                                            ; - java.util.regex.Pattern$Start::match@64 (line 3789)
               ││                           │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
   0.00%       │↘                           │ ││  0x00007f1857198d24:   mov    0x20(%rsp),%rsi
               │                            │ ││  0x00007f1857198d29:   movb   $0x1,0x30(%rsi)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
               │                            │ ││                                                            ; - java.util.regex.Pattern$Start::match@85 (line 3794)
               │                            │ ││                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
               │                            │ ││  0x00007f1857198d2d:   mov    $0x0,%r10d
               │                            │ ╰│  0x00007f1857198d33:   jmp    0x00007f1857198c6f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │                            │  │                                                            ; - java.util.regex.Matcher::search@126 (line 1768)
               │                            ↘  │  0x00007f1857198d38:   movl   $0xffffffff,0x1c(%rsi)       ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
               │                               │                                                            ; - java.util.regex.Matcher::search@131 (line 1769)
               │                               │  0x00007f1857198d3f:   nop
   0.00%       │                               ╰  0x00007f1857198d40:   jmp    0x00007f1857198c78           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
               │                                                                                            ; - java.util.regex.Matcher::search@134 (line 1770)
               ↘                                  0x00007f1857198d45:   mov    $0x294,%r11
                                                  0x00007f1857198d4c:   mov    $0xffffffed,%r10d
                                                  0x00007f1857198d52:   mov    %r10d,0x484(%r15)            ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4502)
                                                                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                                                                                                            ; - java.util.regex.Matcher::search@121 (line 1767)
                                                  0x00007f1857198d59:   mov    %r11,0x490(%r15)
                                                  0x00007f1857198d60:   call   0x00007f1856aff17a           ; ImmutableOopMap {rsi=Oop }
                                                                                                            ;*iconst_0 {reexecute=1 rethrow=0 return_oop=0}
....................................................................................................
  56.68%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 1111 

 <region is too big to display, has 1723 lines, but threshold is 1000>
....................................................................................................
  27.07%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.68%        jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1075 
  27.07%        jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1111 
   6.12%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.62%          runtime stub  StubRoutines::checkcast_arraycopy 
   1.05%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1114 
   0.89%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.65%                kernel  [unknown] 
   0.33%                kernel  [unknown] 
   0.32%                kernel  [unknown] 
   0.22%        jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1111 
   0.17%                kernel  [unknown] 
   0.15%                kernel  [unknown] 
   0.13%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.10%                kernel  [unknown] 
   0.09%             libjvm.so  G1BarrierSet::invalidate 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.07%                kernel  [unknown] 
   2.98%  <...other 450 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.68%        jvmci, level 4  java.util.regex.Matcher::search, version 4, compile id 1075 
  27.29%        jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1111 
   6.12%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.63%                kernel  [unknown] 
   2.62%          runtime stub  StubRoutines::checkcast_arraycopy 
   1.05%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1114 
   0.89%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.20%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.09%             libjvm.so  G1BarrierSet::invalidate 
   0.07%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.05%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.04%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.04%             libjvm.so  fileStream::write 
   0.04%             libc.so.6  __memmove_avx_unaligned_erms 
   0.03%             libjvm.so  ElfSymbolTable::lookup 
   0.03%             libjvm.so  G1ParScanThreadState::steal_and_trim_queue 
   0.03%             libc.so.6  __strchr_avx2 
   0.03%             libc.so.6  __vfprintf_internal 
   0.03%        hsdis-amd64.so  print_insn 
   0.03%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   1.01%  <...other 256 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  85.06%        jvmci, level 4
   9.63%          runtime stub
   3.63%                kernel
   1.12%             libjvm.so
   0.23%             libc.so.6
   0.19%   libjvmcicompiler.so
   0.04%        hsdis-amd64.so
   0.04%  ld-linux-x86-64.so.2
   0.02%                [vdso]
   0.02%           interpreter
   0.01%                      
   0.01%           c1, level 3
   0.00%           c1, level 2
   0.00%        libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:06:52
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 716.742 us/op
# Warmup Iteration   2: 478.437 us/op
# Warmup Iteration   3: 480.777 us/op
# Warmup Iteration   4: 494.123 us/op
# Warmup Iteration   5: 477.023 us/op
Iteration   1: 483.106 us/op
Iteration   2: 478.776 us/op
Iteration   3: 478.226 us/op
Iteration   4: 482.592 us/op
Iteration   5: 484.956 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split":
  481.531 ±(99.9%) 11.201 us/op [Average]
  (min, avg, max) = (478.226, 481.531, 484.956), stdev = 2.909
  CI (99.9%): [470.330, 492.733] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.pattern_split:asm":
PrintAssembly processed: 242027 total address lines.
Perf output processed (skipped 78.415 seconds):
 Column 1: cycles (51494 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 1087 

 <region is too big to display, has 2156 lines, but threshold is 1000>
....................................................................................................
  50.67%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern$Slice::match, version 2, compile id 1055 

                    --------------------------------------------------------------------------------
                    [Constant Pool (empty)]
                    --------------------------------------------------------------------------------
                    [Entry Point]
                      # {method} {0x00007fc9cb357ec0} &apos;match&apos; &apos;(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Z&apos; in &apos;java/util/regex/Pattern$Slice&apos;
                      # this:     rsi:rsi   = &apos;java/util/regex/Pattern$Slice&apos;
                      # parm0:    rdx:rdx   = &apos;java/util/regex/Matcher&apos;
                      # parm1:    rcx       = int
                      # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                      #           [sp+0x20]  (sp of caller)
   2.21%              0x00007fca53192e20:   mov    0x8(%rsi),%r10d
   0.16%              0x00007fca53192e24:   movabs $0x7fc9cb000000,%r12
   0.06%              0x00007fca53192e2e:   add    %r12,%r10
   0.27%              0x00007fca53192e31:   xor    %r12,%r12
   1.84%              0x00007fca53192e34:   cmp    %r10,%rax
                      0x00007fca53192e37:   jne    0x00007fca52af9080           ;   {runtime_call ic_miss_stub}
   0.17%              0x00007fca53192e3d:   data16 xchg %ax,%ax
                    [Verified Entry Point]
   0.06%              0x00007fca53192e40:   mov    %eax,-0x14000(%rsp)
   2.10%              0x00007fca53192e47:   sub    $0x18,%rsp
   0.18%              0x00007fca53192e4b:   nop
   0.07%              0x00007fca53192e4c:   cmpl   $0x1,0x20(%r15)
   0.27%              0x00007fca53192e54:   jne    0x00007fca531930cc
   1.82%              0x00007fca53192e5a:   mov    %rbp,0x10(%rsp)
   0.15%              0x00007fca53192e5f:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
                                                                                ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   0.08%              0x00007fca53192e63:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fca53193106
   1.79%              0x00007fca53192e6b:   test   %r11d,%r11d
          ╭           0x00007fca53192e6e:   je     0x00007fca53192eee           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
          │                                                                     ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                     ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   1.94%  │           0x00007fca53192e74:   mov    0x10(%rdx),%r9d              ; implicit exception: dispatches to 0x00007fca5319312d
   0.16%  │           0x00007fca53192e78:   nopl   0x0(%rax,%rax,1)
   0.06%  │           0x00007fca53192e80:   cmp    %ecx,%r9d
          │           0x00007fca53192e83:   jle    0x00007fca531930a8           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
          │                                                                     ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                     ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   0.23%  │           0x00007fca53192e89:   cmpl   $0xe8d8,0x8(%r8)             ; implicit exception: dispatches to 0x00007fca53193150
          │                                                                     ;   {metadata(&apos;java/lang/String&apos;)}
   2.03%  │╭          0x00007fca53192e91:   jne    0x00007fca53192fdf           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.12%  ││          0x00007fca53192e97:   nopw   0x0(%rax,%rax,1)
   0.05%  ││          0x00007fca53192ea0:   cmpb   $0x0,0x10(%r8)
   0.22%  ││          0x00007fca53192ea5:   jne    0x00007fca531930ba           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - java.lang.String::isLatin1@10 (line 4817)
          ││                                                                    ; - java.lang.String::charAt@1 (line 1554)
          ││                                                                    ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   1.97%  ││          0x00007fca53192eab:   mov    0x14(%r8),%ebx               ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rsi=Oop r8=Oop r10=NarrowOop }
          ││                                                                    ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                    ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   0.12%  ││          0x00007fca53192eaf:   mov    0xc(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007fca53193173
   0.09%  ││          0x00007fca53192eb6:   cmp    %ecx,%edi
          ││          0x00007fca53192eb8:   jbe    0x00007fca53193096           ;* unwind (locked if synchronized)
          ││                                                                    ; - jdk.internal.util.Preconditions::checkIndex@-3
          ││                                                                    ; - java.lang.String::checkIndex@5 (line 4828)
          ││                                                                    ; - java.lang.StringLatin1::charAt@3 (line 46)
          ││                                                                    ; - java.lang.String::charAt@12 (line 1555)
          ││                                                                    ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.30%  ││          0x00007fca53192ebe:   movzbl 0x10(%rcx,%rbx,8),%eax       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                    ; - java.lang.StringLatin1::charAt@8 (line 47)
          ││                                                                    ; - java.lang.String::charAt@12 (line 1555)
          ││                                                                    ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   2.02%  ││          0x00007fca53192ec3:   cmp    0x10(,%r10,8),%eax
          ││╭         0x00007fca53192ecb:   je     0x00007fca53192f6e           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                   ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
   0.97%  │││  ↗      0x00007fca53192ed1:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                                ; - java.util.regex.Pattern$Slice::match@58 (line 4266)
   0.75%  │││  │      0x00007fca53192ed6:   mov    0x10(%rsp),%rbp
   1.91%  │││  │      0x00007fca53192edb:   add    $0x18,%rsp
   0.12%  │││  │      0x00007fca53192edf:   nop
   0.06%  │││  │      0x00007fca53192ee0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  │      0x00007fca53192ee7:   ja     0x00007fca531930dc
   0.43%  │││  │      0x00007fca53192eed:   ret                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││  │                                                                ; - java.util.regex.Pattern$Slice::match@65 (line 4268)
          ↘││  │↗     0x00007fca53192eee:   mov    0xc(%rsi),%eax               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                               ; - java.util.regex.Pattern$Slice::match@66 (line 4268)
   0.58%   ││  ││     0x00007fca53192ef1:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.08%   ││  ││     0x00007fca53192efc:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
           ││  ││                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                               ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4268)
   0.00%   ││  ││     0x00007fca53192f00:   cmpl   $0x35e290,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fca53193196
           ││  ││                                                               ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   1.33%   ││  ││     0x00007fca53192f0b:   jne    0x00007fca53193064           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
           ││  ││                                                               ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           ││  ││                                                               ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4268)
   0.37%   ││  ││     0x00007fca53192f11:   mov    0x18(%rdx),%eax              ; implicit exception: dispatches to 0x00007fca531931b9
   0.00%   ││  ││     0x00007fca53192f14:   mov    0x38(%rdx),%r10d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                               ; - java.util.regex.Pattern$LastNode::match@24 (line 3760)
           ││  ││                                                               ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
           ││  ││     0x00007fca53192f18:   mov    0x1c(%rdx),%r8d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                               ; - java.util.regex.Pattern$LastNode::match@29 (line 3760)
           ││  ││                                                               ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
           ││  ││     0x00007fca53192f1c:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││  ││                                                               ; - java.util.regex.Pattern$Slice::match@73 (line 4268)
   0.35%   ││  ││     0x00007fca53192f1f:   nop
           ││  ││     0x00007fca53192f20:   cmp    $0x1,%eax
           ││╭ ││     0x00007fca53192f23:   je     0x00007fca53192fcb           ; ImmutableOopMap {rdx=Oop r10=NarrowOop }
           │││ ││                                                               ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
           │││ ││                                                               ; - (reexecute) java.util.regex.Pattern$LastNode::match@18 (line 3759)
           │││ ││                                                               ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
           │││ ││ ↗   0x00007fca53192f29:   cmpl   $0x2,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007fca531931dc
   0.37%   │││ ││ │   0x00007fca53192f32:   jb     0x00007fca53193007           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │││ ││ │                                                             ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
           │││ ││ │                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
   0.30%   │││ ││ │   0x00007fca53192f38:   mov    %r11d,0x20(%rdx)             ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
           │││ ││ │                                                             ; - java.util.regex.Pattern$LastNode::match@20 (line 3759)
           │││ ││ │                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
           │││ ││ │   0x00007fca53192f3c:   mov    %r8d,0x10(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │││ ││ │                                                             ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
           │││ ││ │                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
   0.01%   │││ ││ │   0x00007fca53192f44:   mov    %r11d,0x14(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           │││ ││ │                                                             ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
           │││ ││ │                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
   0.10%   │││ ││ │   0x00007fca53192f4c:   mov    $0x1,%eax
   0.28%   │││ ││ │↗  0x00007fca53192f51:   mov    0x10(%rsp),%rbp
   0.01%   │││ ││ ││  0x00007fca53192f56:   add    $0x18,%rsp
   0.00%   │││ ││ ││  0x00007fca53192f5a:   nopw   0x0(%rax,%rax,1)
   0.08%   │││ ││ ││  0x00007fca53192f60:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │││ ││ ││  0x00007fca53192f67:   ja     0x00007fca531930f0
   0.23%   │││ ││ ││  0x00007fca53192f6d:   ret                                 ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │││ ││ ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
   2.95%   │↘│ ││ ││  0x00007fca53192f6e:   mov    $0x1,%eax
   2.31%   │ │╭││ ││  0x00007fca53192f73:   jmp    0x00007fca53192fba           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││                                                            ; - java.util.regex.Pattern$Slice::match@14 (line 4260)
           │ ││││ ││  0x00007fca53192f78:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ ││││ ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
   0.32%   │ ││││↗││  0x00007fca53192f80:   mov    %eax,%ebp
           │ │││││││  0x00007fca53192f82:   add    %ecx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
   0.97%   │ │││││││  0x00007fca53192f84:   mov    %r10d,%r13d
           │ │││││││  0x00007fca53192f87:   shl    $0x3,%r13                    ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
   0.08%   │ │││││││  0x00007fca53192f8b:   cmp    %ebp,%r9d
           │ │││││││  0x00007fca53192f8e:   jle    0x00007fca53193087           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
   0.01%   │ │││││││  0x00007fca53192f94:   cmp    %eax,%r11d
           │ │││││││  0x00007fca53192f97:   jbe    0x00007fca53193055           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
   0.56%   │ │││││││  0x00007fca53192f9d:   data16 xchg %ax,%ax
           │ │││││││  0x00007fca53192fa0:   cmp    %ebp,%edi
           │ │││││││  0x00007fca53192fa2:   jbe    0x00007fca5319302d           ;* unwind (locked if synchronized)
           │ │││││││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
           │ │││││││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
           │ │││││││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
           │ │││││││                                                            ; - java.lang.String::charAt@12 (line 1555)
           │ │││││││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.08%   │ │││││││  0x00007fca53192fa8:   movzbl 0x10(%rbp,%rbx,8),%ebp       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ │││││││                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
           │ │││││││                                                            ; - java.lang.String::charAt@12 (line 1555)
           │ │││││││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.48%   │ │││││││  0x00007fca53192fad:   cmp    0x10(%r13,%rax,4),%ebp
           │ ││╰││││  0x00007fca53192fb2:   jne    0x00007fca53192ed1           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ ││ ││││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
   0.58%   │ ││ ││││  0x00007fca53192fb8:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ ││ ││││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
   0.14%   │ │↘ ││││  0x00007fca53192fba:   nopw   0x0(%rax,%rax,1)
           │ │  ││││  0x00007fca53192fc0:   cmp    %eax,%r11d
           │ │  ╰│││  0x00007fca53192fc3:   jle    0x00007fca53192eee
   0.01%   │ │   ╰││  0x00007fca53192fc9:   jmp    0x00007fca53192f80           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ │    ││                                                            ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
           │ ↘    ││  0x00007fca53192fcb:   cmp    0x10(%rdx),%r11d
           │      ╰│  0x00007fca53192fcf:   je     0x00007fca53192f29           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │       │                                                            ; - java.util.regex.Pattern$LastNode::match@13 (line 3757)
           │       │                                                            ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
           │       │  0x00007fca53192fd5:   mov    $0x0,%eax
           │       ╰  0x00007fca53192fda:   jmp    0x00007fca53192f51
           ↘          0x00007fca53192fdf:   mov    $0x514,%r11
                      0x00007fca53192fe6:   mov    $0xffffffcd,%r10d
                      0x00007fca53192fec:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  37.35%  <total for region 2>

....[Hottest Regions]...............................................................................
  50.67%        jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1087 
  37.35%        jvmci, level 4  java.util.regex.Pattern$Slice::match, version 2, compile id 1055 
   4.07%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.71%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.82%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1086 
   0.72%                kernel  [unknown] 
   0.61%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.47%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.07%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   0.06%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.05%                kernel  [unknown] 
   0.05%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   2.49%  <...other 411 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  50.67%        jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1087 
  37.35%        jvmci, level 4  java.util.regex.Pattern$Slice::match, version 2, compile id 1055 
   4.07%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.30%                kernel  [unknown] 
   1.71%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.82%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1086 
   0.61%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.17%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.14%                        <unknown> 
   0.07%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.06%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.04%             libjvm.so  G1BarrierSet::invalidate 
   0.04%             libc.so.6  __memmove_avx_unaligned_erms 
   0.04%             libjvm.so  defaultStream::hold 
   0.04%        jvmci, level 4  java.util.ArrayList::grow, version 1, compile id 1089 
   0.03%             libjvm.so  fileStream::write 
   0.03%             libjvm.so  G1CardSet::is_empty 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libjvm.so  G1ParScanThreadState::steal_and_trim_queue 
   0.03%             libjvm.so  xmlStream::write_text 
   0.72%  <...other 164 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.90%        jvmci, level 4
   6.39%          runtime stub
   3.30%                kernel
   0.94%             libjvm.so
   0.23%             libc.so.6
   0.14%                      
   0.03%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.03%           interpreter
   0.01%                [vdso]
   0.00%           c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:04:33
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 209.207 us/op
# Warmup Iteration   2: 174.279 us/op
# Warmup Iteration   3: 170.600 us/op
# Warmup Iteration   4: 170.316 us/op
# Warmup Iteration   5: 170.807 us/op
Iteration   1: 170.661 us/op
Iteration   2: 170.023 us/op
Iteration   3: 172.819 us/op
Iteration   4: 171.343 us/op
Iteration   5: 171.681 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  171.305 ±(99.9%) 4.081 us/op [Average]
  (min, avg, max) = (170.023, 171.305, 172.819), stdev = 1.060
  CI (99.9%): [167.224, 175.387] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 240324 total address lines.
Perf output processed (skipped 79.215 seconds):
 Column 1: cycles (51636 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.lang.String::split, version 4, compile id 1077 

 <region is too big to display, has 1408 lines, but threshold is 1000>
....................................................................................................
  56.64%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                    --------------------------------------------------------------------------------
                    - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                    StubRoutines::jbyte_disjoint_arraycopy [0x00007f8e36addd40, 0x00007f8e36adddf7] (183 bytes)
                    --------------------------------------------------------------------------------
                      0x00007f8e36addd40:   push   %rbp
                      0x00007f8e36addd41:   mov    %rsp,%rbp
   0.01%           ↗  0x00007f8e36addd44:   mov    %rdx,%rcx
   0.86%           │  0x00007f8e36addd47:   shr    $0x3,%rdx
   0.15%           │  0x00007f8e36addd4b:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.02%           │  0x00007f8e36addd50:   lea    -0x8(%rsi,%rdx,8),%rsi
                   │  0x00007f8e36addd55:   neg    %rdx
   0.86%  ╭        │  0x00007f8e36addd58:   jmp    0x00007f8e36adddc8
   0.44%  │↗     ↗ │  0x00007f8e36addd5d:   mov    0x8(%rdi,%rdx,8),%rax
   0.58%  ││     │ │  0x00007f8e36addd62:   mov    %rax,0x8(%rsi,%rdx,8)
   0.32%  ││     │ │  0x00007f8e36addd67:   inc    %rdx
          │╰     │ │  0x00007f8e36addd6a:   jne    0x00007f8e36addd5d
   0.81%  │      │↗│  0x00007f8e36addd6c:   test   $0x4,%cl
          │ ╭    │││  0x00007f8e36addd6f:   je     0x00007f8e36addd7f
   0.35%  │ │    │││  0x00007f8e36addd71:   mov    0x8(%rdi),%eax
   1.19%  │ │    │││  0x00007f8e36addd74:   mov    %eax,0x8(%rsi)
   0.33%  │ │    │││  0x00007f8e36addd77:   add    $0x4,%rdi
   0.39%  │ │    │││  0x00007f8e36addd7b:   add    $0x4,%rsi
   0.45%  │ ↘    │││  0x00007f8e36addd7f:   test   $0x2,%cl
          │  ╭   │││  0x00007f8e36addd82:   je     0x00007f8e36addd94
   0.94%  │  │   │││  0x00007f8e36addd84:   mov    0x8(%rdi),%ax
   2.32%  │  │   │││  0x00007f8e36addd88:   mov    %ax,0x8(%rsi)
   0.73%  │  │   │││  0x00007f8e36addd8c:   add    $0x2,%rdi
   0.08%  │  │   │││  0x00007f8e36addd90:   add    $0x2,%rsi
   0.35%  │  ↘   │││  0x00007f8e36addd94:   test   $0x1,%cl
          │   ╭  │││  0x00007f8e36addd97:   je     0x00007f8e36addd9f
   0.81%  │   │  │││  0x00007f8e36addd99:   mov    0x8(%rdi),%al
   2.02%  │   │  │││  0x00007f8e36addd9c:   mov    %al,0x8(%rsi)
   1.54%  │   ↘  │││  0x00007f8e36addd9f:   xor    %rax,%rax
   0.25%  │      │││  0x00007f8e36addda2:   vzeroupper 
   1.09%  │      │││  0x00007f8e36addda5:   leave  
   2.31%  │      │││  0x00007f8e36addda6:   ret    
          │      │││  0x00007f8e36addda7:   nopw   0x0(%rax,%rax,1)
          │    ↗ │││  0x00007f8e36adddb0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │ │││  0x00007f8e36adddb6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │ │││  0x00007f8e36adddbc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
          │    │ │││  0x00007f8e36adddc2:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
   0.15%  ↘    │ │││  0x00007f8e36adddc8:   add    $0x8,%rdx
               ╰ │││  0x00007f8e36adddcc:   jle    0x00007f8e36adddb0
   0.01%         │││  0x00007f8e36adddce:   sub    $0x4,%rdx
                ╭│││  0x00007f8e36adddd2:   jg     0x00007f8e36addde8
                ││││  0x00007f8e36adddd8:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                ││││  0x00007f8e36adddde:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                ││││  0x00007f8e36addde4:   add    $0x4,%rdx
   1.00%        ↘│││  0x00007f8e36addde8:   sub    $0x4,%rdx
                 ╰││  0x00007f8e36adddec:   jl     0x00007f8e36addd5d
   0.01%          ╰│  0x00007f8e36adddf2:   jmp    0x00007f8e36addd6c
                   │--------------------------------------------------------------------------------
                   │- - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   │- - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   │StubRoutines::jbyte_arraycopy [0x00007f8e36adde00, 0x00007f8e36addec2] (194 bytes)
                   │--------------------------------------------------------------------------------
   0.78%           │  0x00007f8e36adde00:   push   %rbp
   0.21%           │  0x00007f8e36adde01:   mov    %rsp,%rbp
   0.01%           │  0x00007f8e36adde04:   cmp    %rdi,%rsi
   0.87%           │  0x00007f8e36adde07:   lea    (%rdi,%rdx,1),%rax
....................................................................................................
  22.36%  <total for region 2>

....[Hottest Regions]...............................................................................
  56.64%        jvmci, level 4  java.lang.String::split, version 4, compile id 1077 
  22.36%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   6.63%                        <unknown> 
   5.20%          runtime stub  StubRoutines::checkcast_arraycopy 
   1.98%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1076 
   1.50%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.66%                kernel  [unknown] 
   0.40%                kernel  [unknown] 
   0.27%                kernel  [unknown] 
   0.17%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%             libjvm.so  G1BarrierSet::invalidate 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.07%                kernel  [unknown] 
   0.06%                kernel  [unknown] 
   3.25%  <...other 419 warm regions...>
....................................................................................................
  99.99%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.64%        jvmci, level 4  java.lang.String::split, version 4, compile id 1077 
  22.36%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   6.75%                        <unknown> 
   5.20%          runtime stub  StubRoutines::checkcast_arraycopy 
   3.76%                kernel  [unknown] 
   1.98%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1076 
   1.50%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.17%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.11%             libjvm.so  G1BarrierSet::invalidate 
   0.07%             libjvm.so  G1MergeHeapRootsTask::G1ClearBitmapClosure::do_heap_region 
   0.06%             libjvm.so  G1CardSet::is_empty 
   0.06%             libc.so.6  __memset_avx2_unaligned_erms 
   0.06%             libjvm.so  HeapRegionManager::par_iterate 
   0.06%        jvmci, level 4  java.util.ArrayList::grow, version 1, compile id 1083 
   0.04%             libjvm.so  ObjAllocator::initialize 
   0.04%             libc.so.6  __vfprintf_internal 
   0.04%        hsdis-amd64.so  print_insn 
   0.04%             libjvm.so  defaultStream::hold 
   0.03%  ld-linux-x86-64.so.2  __tls_get_addr 
   0.03%             libjvm.so  fileStream::write 
   0.99%  <...other 184 warm methods...>
....................................................................................................
  99.99%  <totals>

....[Distribution by Source]........................................................................
  58.72%        jvmci, level 4
  29.06%          runtime stub
   6.75%                      
   3.76%                kernel
   1.27%             libjvm.so
   0.30%             libc.so.6
   0.05%        hsdis-amd64.so
   0.03%  ld-linux-x86-64.so.2
   0.03%           interpreter
   0.01%                [vdso]
   0.00%           c1, level 1
   0.00%           c1, level 3
....................................................................................................
  99.99%  <totals>



# JMH version: 1.37
# VM version: JDK 21.0.1, OpenJDK 64-Bit Server VM, 21.0.1+12-jvmci-23.1-b19
# VM invoker: /usr/lib/jvm/graalvm-ce-openjdk-21.0.1+12.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:02:16
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 780.211 us/op
# Warmup Iteration   2: 425.178 us/op
# Warmup Iteration   3: 417.912 us/op
# Warmup Iteration   4: 428.980 us/op
# Warmup Iteration   5: 430.625 us/op
Iteration   1: 420.585 us/op
Iteration   2: 424.320 us/op
Iteration   3: 424.307 us/op
Iteration   4: 420.189 us/op
Iteration   5: 421.154 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split":
  422.111 ±(99.9%) 7.854 us/op [Average]
  (min, avg, max) = (420.189, 422.111, 424.320), stdev = 2.040
  CI (99.9%): [414.257, 429.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.api.string.StringPatternSplitBenchmark.string_split:asm":
PrintAssembly processed: 264080 total address lines.
Perf output processed (skipped 79.036 seconds):
 Column 1: cycles (51381 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, java.util.regex.Pattern$Slice::match, version 2, compile id 1058 

                   # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                   #           [sp+0x20]  (sp of caller)
                   0x00007fa2b31927a0:   mov    0x8(%rsi),%r10d
                   0x00007fa2b31927a4:   movabs $0x7fa22f000000,%r12
                   0x00007fa2b31927ae:   add    %r12,%r10
                   0x00007fa2b31927b1:   xor    %r12,%r12
                   0x00007fa2b31927b4:   cmp    %r10,%rax
                   0x00007fa2b31927b7:   jne    0x00007fa2b2af9080           ;   {runtime_call ic_miss_stub}
                   0x00007fa2b31927bd:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.86%           0x00007fa2b31927c0:   mov    %eax,-0x14000(%rsp)
   2.31%           0x00007fa2b31927c7:   sub    $0x18,%rsp
   0.64%           0x00007fa2b31927cb:   nop
   0.01%           0x00007fa2b31927cc:   cmpl   $0x1,0x20(%r15)
   0.01%           0x00007fa2b31927d4:   jne    0x00007fa2b3192a37
   1.85%           0x00007fa2b31927da:   mov    %rbp,0x10(%rsp)
   0.66%           0x00007fa2b31927df:   mov    0x10(%rsi),%r10d             ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   0.00%           0x00007fa2b31927e3:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007fa2b3192a6f
   0.06%           0x00007fa2b31927eb:   test   %r11d,%r11d
          ╭        0x00007fa2b31927ee:   je     0x00007fa2b319286e           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
          │                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   1.92%  │        0x00007fa2b31927f4:   mov    0x10(%rdx),%r9d              ; implicit exception: dispatches to 0x00007fa2b3192a92
   0.72%  │        0x00007fa2b31927f8:   nopl   0x0(%rax,%rax,1)
   0.01%  │        0x00007fa2b3192800:   cmp    %ecx,%r9d
          │        0x00007fa2b3192803:   jle    0x00007fa2b3192a12           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
          │                                                                  ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          │                                                                  ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   0.01%  │        0x00007fa2b3192809:   cmpl   $0xe8d8,0x8(%r8)             ; implicit exception: dispatches to 0x00007fa2b3192ab5
          │                                                                  ;   {metadata(&apos;java/lang/String&apos;)}
   1.96%  │╭       0x00007fa2b3192811:   jne    0x00007fa2b319294b           ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.62%  ││       0x00007fa2b3192817:   nopw   0x0(%rax,%rax,1)
   0.01%  ││       0x00007fa2b3192820:   cmpb   $0x0,0x10(%r8)
   0.02%  ││       0x00007fa2b3192825:   jne    0x00007fa2b3192a25           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.lang.String::isLatin1@10 (line 4817)
          ││                                                                 ; - java.lang.String::charAt@1 (line 1554)
          ││                                                                 ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   1.96%  ││       0x00007fa2b319282b:   mov    0x14(%r8),%ebx               ; ImmutableOopMap {rdx=Oop rbx=NarrowOop rsi=Oop r8=Oop r10=NarrowOop }
          ││                                                                 ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
          ││                                                                 ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
   0.76%  ││       0x00007fa2b319282f:   mov    0xc(,%rbx,8),%edi            ; implicit exception: dispatches to 0x00007fa2b3192ad8
   0.04%  ││       0x00007fa2b3192836:   cmp    %ecx,%edi
          ││       0x00007fa2b3192838:   jbe    0x00007fa2b3192a00           ;* unwind (locked if synchronized)
          ││                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
          ││                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
          ││                                                                 ; - java.lang.StringLatin1::charAt@3 (line 46)
          ││                                                                 ; - java.lang.String::charAt@12 (line 1555)
          ││                                                                 ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.03%  ││       0x00007fa2b319283e:   movzbl 0x10(%rcx,%rbx,8),%eax       ;*baload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.lang.StringLatin1::charAt@8 (line 47)
          ││                                                                 ; - java.lang.String::charAt@12 (line 1555)
          ││                                                                 ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   1.99%  ││       0x00007fa2b3192843:   cmp    0x10(,%r10,8),%eax
          ││╭      0x00007fa2b319284b:   je     0x00007fa2b31928ee           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
   0.72%  │││ ↗    0x00007fa2b3192851:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                              ; - java.util.regex.Pattern$Slice::match@58 (line 4266)
   0.27%  │││ │    0x00007fa2b3192856:   mov    0x10(%rsp),%rbp
   1.86%  │││ │    0x00007fa2b319285b:   add    $0x18,%rsp
   0.56%  │││ │    0x00007fa2b319285f:   nop
   0.02%  │││ │    0x00007fa2b3192860:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││ │    0x00007fa2b3192867:   ja     0x00007fa2b3192a47
   0.16%  │││ │    0x00007fa2b319286d:   ret                                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                              ; - java.util.regex.Pattern$Slice::match@65 (line 4268)
          ↘││ │↗   0x00007fa2b319286e:   mov    0xc(%rsi),%eax               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@66 (line 4268)
   0.65%   ││ ││   0x00007fa2b3192871:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.06%   ││ ││   0x00007fa2b319287c:   data16 data16 xchg %ax,%ax          ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
           ││ ││                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                             ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4268)
           ││ ││   0x00007fa2b3192880:   cmpl   $0x35e290,0x8(,%rax,8)       ; implicit exception: dispatches to 0x00007fa2b3192afb
           ││ ││                                                             ;   {metadata(&apos;java/util/regex/Pattern$LastNode&apos;)}
   1.87%   ││ ││   0x00007fa2b319288b:   jne    0x00007fa2b31929e2           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
           ││ ││                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                             ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4268)
   0.41%   ││ ││   0x00007fa2b3192891:   mov    0x18(%rdx),%eax              ; implicit exception: dispatches to 0x00007fa2b3192b1e
           ││ ││   0x00007fa2b3192894:   mov    0x38(%rdx),%r10d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$LastNode::match@24 (line 3760)
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
           ││ ││   0x00007fa2b3192898:   mov    0x1c(%rdx),%r9d              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$LastNode::match@29 (line 3760)
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
   0.00%   ││ ││   0x00007fa2b319289c:   nopl   0x0(%rax)
   0.40%   ││ ││   0x00007fa2b31928a0:   cmp    $0x1,%eax
           ││ ││   0x00007fa2b31928a3:   je     0x00007fa2b3192973           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop r10=NarrowOop }
           ││ ││                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
           ││ ││                                                             ; - (reexecute) java.util.regex.Pattern$Slice::match@65 (line 4268)
           ││ ││   0x00007fa2b31928a9:   cmpl   $0x2,0xc(,%r10,8)            ; implicit exception: dispatches to 0x00007fa2b3192b41
   0.33%   ││ ││   0x00007fa2b31928b2:   jb     0x00007fa2b319299b           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
   0.38%   ││ ││   0x00007fa2b31928b8:   add    %ecx,%r11d                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@73 (line 4268)
           ││ ││   0x00007fa2b31928bb:   mov    %r11d,0x20(%rdx)             ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$LastNode::match@20 (line 3759)
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
           ││ ││   0x00007fa2b31928bf:   mov    %r9d,0x10(,%r10,8)           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$LastNode::match@32 (line 3760)
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
   0.00%   ││ ││   0x00007fa2b31928c7:   mov    %r11d,0x14(,%r10,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$LastNode::match@42 (line 3761)
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@75 (line 4268)
   0.42%   ││ ││   0x00007fa2b31928cf:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@78 (line 4268)
           ││ ││   0x00007fa2b31928d4:   mov    0x10(%rsp),%rbp
   0.01%   ││ ││   0x00007fa2b31928d9:   add    $0x18,%rsp
           ││ ││   0x00007fa2b31928dd:   data16 xchg %ax,%ax
   0.41%   ││ ││   0x00007fa2b31928e0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           ││ ││   0x00007fa2b31928e7:   ja     0x00007fa2b3192a5b
   0.00%   ││ ││   0x00007fa2b31928ed:   ret                                 ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           ││ ││                                                             ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
   0.49%   │↘ ││   0x00007fa2b31928ee:   mov    $0x1,%eax
   1.62%   │ ╭││   0x00007fa2b31928f3:   jmp    0x00007fa2b319293a           ;*iload {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                             ; - java.util.regex.Pattern$Slice::match@14 (line 4260)
           │ │││   0x00007fa2b31928f8:   nopl   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │ │││                                                             ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
   0.39%   │ │││↗  0x00007fa2b3192900:   mov    %eax,%ebp
   0.00%   │ ││││  0x00007fa2b3192902:   add    %ecx,%ebp                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - java.util.regex.Pattern$Slice::match@24 (line 4261)
   0.85%   │ ││││  0x00007fa2b3192904:   mov    %r10d,%r13d
   0.03%   │ ││││  0x00007fa2b3192907:   shl    $0x3,%r13                    ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - java.util.regex.Pattern$Slice::match@1 (line 4258)
   0.12%   │ ││││  0x00007fa2b319290b:   cmp    %ebp,%r9d
           │ ││││  0x00007fa2b319290e:   jle    0x00007fa2b31929f1           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - java.util.regex.Pattern$Slice::match@29 (line 4261)
   0.05%   │ ││││  0x00007fa2b3192914:   cmp    %eax,%r11d
           │ ││││  0x00007fa2b3192917:   jbe    0x00007fa2b31929d2           ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4265)
   0.59%   │ ││││  0x00007fa2b319291d:   data16 xchg %ax,%ax
   0.01%   │ ││││  0x00007fa2b3192920:   cmp    %ebp,%edi
           │ ││││  0x00007fa2b3192922:   jbe    0x00007fa2b31929aa           ;* unwind (locked if synchronized)
           │ ││││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
           │ ││││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
           │ ││││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
           │ ││││                                                            ; - java.lang.String::charAt@12 (line 1555)
           │ ││││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.10%   │ ││││  0x00007fa2b3192928:   movzbl 0x10(%rbp,%rbx,8),%ebp       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││                                                            ; - java.lang.StringLatin1::charAt@8 (line 47)
           │ ││││                                                            ; - java.lang.String::charAt@12 (line 1555)
           │ ││││                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4265)
   0.65%   │ ││││  0x00007fa2b319292d:   cmp    0x10(%r13,%rax,4),%ebp
           │ │╰││  0x00007fa2b3192932:   jne    0x00007fa2b3192851           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4265)
   0.59%   │ │ ││  0x00007fa2b3192938:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ ││                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4260)
   0.30%   │ ↘ ││  0x00007fa2b319293a:   nopw   0x0(%rax,%rax,1)
   0.00%   │   ││  0x00007fa2b3192940:   cmp    %eax,%r11d
           │   ╰│  0x00007fa2b3192943:   jle    0x00007fa2b319286e
   0.16%   │    ╰  0x00007fa2b3192949:   jmp    0x00007fa2b3192900           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │                                                                 ; - java.util.regex.Pattern$Slice::match@18 (line 4260)
           ↘       0x00007fa2b319294b:   mov    $0x794,%r11
                   0x00007fa2b3192952:   mov    $0xffffffcd,%r10d
                   0x00007fa2b3192958:   mov    %r10d,0x484(%r15)            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Slice::match@8 (line 4259)
                   0x00007fa2b319295f:   mov    %r11,0x490(%r15)
                   0x00007fa2b3192966:   call   0x00007fa2b2aff17a           ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop }
                                                                             ;*aload_0 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.regex.Pattern$Slice::match@0 (line 4258)
                                                                             ;   {runtime_call DeoptimizationBlob}
....................................................................................................
  30.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.regex.Pattern::split, version 4, compile id 1099 

 <region is too big to display, has 1944 lines, but threshold is 1000>
....................................................................................................
  29.46%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, java.util.regex.Pattern$Start::match, version 3, compile id 1061 

                  # parm2:    r8:r8     = &apos;java/lang/CharSequence&apos;
                  #           [sp+0x40]  (sp of caller)
                  0x00007fa2b3193e20:   mov    0x8(%rsi),%r10d
                  0x00007fa2b3193e24:   movabs $0x7fa22f000000,%r12
                  0x00007fa2b3193e2e:   add    %r12,%r10
                  0x00007fa2b3193e31:   xor    %r12,%r12
                  0x00007fa2b3193e34:   cmp    %r10,%rax
                  0x00007fa2b3193e37:   jne    0x00007fa2b2af9080           ;   {runtime_call ic_miss_stub}
                  0x00007fa2b3193e3d:   data16 xchg %ax,%ax
                [Verified Entry Point]
   0.00%          0x00007fa2b3193e40:   mov    %eax,-0x14000(%rsp)
   0.39%          0x00007fa2b3193e47:   sub    $0x38,%rsp
   0.00%          0x00007fa2b3193e4b:   nop
                  0x00007fa2b3193e4c:   cmpl   $0x1,0x20(%r15)
   0.42%          0x00007fa2b3193e54:   jne    0x00007fa2b3194077
   0.00%          0x00007fa2b3193e5a:   mov    %rbp,0x30(%rsp)
   0.01%          0x00007fa2b3193e5f:   mov    %rsi,0x10(%rsp)
   0.00%          0x00007fa2b3193e64:   mov    %rdx,0x8(%rsp)
   0.40%          0x00007fa2b3193e69:   mov    %r8,(%rsp)                   ; ImmutableOopMap {rdx=Oop rsi=Oop r8=Oop [0]=Oop [8]=Oop [16]=Oop }
                                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@0 (line 3781)
   0.00%          0x00007fa2b3193e6d:   mov    0x10(%rdx),%ebx              ; implicit exception: dispatches to 0x00007fa2b31940af
   0.04%          0x00007fa2b3193e70:   sub    0x10(%rsi),%ebx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@9 (line 3781)
   0.01%          0x00007fa2b3193e73:   mov    %ebx,0x24(%rsp)
   0.43%          0x00007fa2b3193e77:   cmp    %ebx,%ecx
                  0x00007fa2b3193e79:   jg     0x00007fa2b319402d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@10 (line 3781)
   0.00%          0x00007fa2b3193e7f:   mov    0xc(%rsi),%eax               ; ImmutableOopMap {rax=NarrowOop rdx=Oop rsi=Oop r8=Oop [0]=Oop [8]=Oop [16]=Oop }
                                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@0 (line 3781)
   0.01%          0x00007fa2b3193e82:   mov    0x8(,%rax,8),%r10d           ; implicit exception: dispatches to 0x00007fa2b31940d2
   0.01%          0x00007fa2b3193e8a:   movabs $0x7fa22f000000,%r11
   0.37%          0x00007fa2b3193e94:   lea    (%r11,%r10,1),%r10
   0.01%          0x00007fa2b3193e98:   mov    0x1f0(%r10),%r10
   0.15%          0x00007fa2b3193e9f:   mov    0x40(%r10),%r11              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
   0.76%          0x00007fa2b3193ea3:   shl    $0x3,%rax                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@38 (line 3787)
   0.14%          0x00007fa2b3193ea7:   mov    %rax,%rsi
                  0x00007fa2b3193eaa:   mov    %rdx,%rdi
                  0x00007fa2b3193ead:   mov    %ecx,%ebp
   0.27%          0x00007fa2b3193eaf:   mov    %r8,%r13
   0.14%          0x00007fa2b3193eb2:   mov    %r10,%rbx
                  0x00007fa2b3193eb5:   mov    %r11,%rax                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
                  0x00007fa2b3193eb8:   mov    %ebp,0x20(%rsp)
   0.29%          0x00007fa2b3193ebc:   call   *%rax                        ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop }
                                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3787)
   0.43%          0x00007fa2b3193ebe:   nopl   0x0(%rax,%rax,1)
   0.13%          0x00007fa2b3193ec6:   test   %eax,%eax
          ╭       0x00007fa2b3193ec8:   jne    0x00007fa2b3193fee           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                 ; - java.util.regex.Pattern$Start::match@47 (line 3787)
   0.01%  │       0x00007fa2b3193ece:   cmpl   $0x7fffffff,0x24(%rsp)
   0.28%  │╭      0x00007fa2b3193ed6:   je     0x00007fa2b3193ff5           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.regex.Pattern$Start::match@31 (line 3786)
   0.09%  ││      0x00007fa2b3193edc:   mov    0x20(%rsp),%ecx
          ││      0x00007fa2b3193ee0:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.regex.Pattern$Start::match@77 (line 3786)
          ││      0x00007fa2b3193ee2:   mov    %ecx,%r10d
   0.31%  ││╭     0x00007fa2b3193ee5:   jmp    0x00007fa2b3193f58           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - java.util.regex.Pattern$Start::match@31 (line 3786)
          │││     0x00007fa2b3193eea:   data16 data16 nopw 0x0(%rax,%rax,1)
          │││     0x00007fa2b3193ef5:   data16 data16 xchg %ax,%ax
          │││     0x00007fa2b3193ef9:   nopl   0x0(%rax)                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          │││                                                               ; - java.util.regex.Pattern$Start::match@34 (line 3786)
   0.01%  │││ ↗   0x00007fa2b3193f00:   mov    0xc(%rsi),%ecx               ; ImmutableOopMap {rcx=NarrowOop rdx=Oop rsi=Oop r8=Oop [0]=Oop [8]=Oop [16]=Oop }
          │││ │                                                             ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │││ │                                                             ; - (reexecute) java.util.regex.Pattern$Start::match@31 (line 3786)
   0.32%  │││ │   0x00007fa2b3193f03:   mov    0x8(,%rcx,8),%eax            ; implicit exception: dispatches to 0x00007fa2b31940f5
   2.05%  │││ │   0x00007fa2b3193f0a:   movabs $0x7fa22f000000,%r11
   0.63%  │││ │   0x00007fa2b3193f14:   lea    (%r11,%rax,1),%rax
   0.13%  │││ │   0x00007fa2b3193f18:   mov    0x1f0(%rax),%rax
   0.73%  │││ │   0x00007fa2b3193f1f:   mov    0x40(%rax),%r11              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
   2.49%  │││ │   0x00007fa2b3193f23:   shl    $0x3,%rcx                    ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - java.util.regex.Pattern$Start::match@38 (line 3787)
   0.55%  │││ │   0x00007fa2b3193f27:   mov    %rcx,%rsi
   0.01%  │││ │   0x00007fa2b3193f2a:   mov    %rdx,%rdi
   0.02%  │││ │   0x00007fa2b3193f2d:   mov    %r10d,%ecx
   1.78%  │││ │   0x00007fa2b3193f30:   mov    %r8,%rbp
   0.57%  │││ │   0x00007fa2b3193f33:   mov    %rax,%rbx
   0.00%  │││ │   0x00007fa2b3193f36:   mov    %r11,%rax                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
          │││ │                                                             ;   {no_reloc}
   0.01%  │││ │   0x00007fa2b3193f39:   mov    %r10d,0x1c(%rsp)
   1.75%  │││ │   0x00007fa2b3193f3e:   call   *%rax                        ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop }
          │││ │                                                             ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3787)
   1.65%  │││ │   0x00007fa2b3193f40:   nopl   0x0(%rax,%rax,1)
   0.42%  │││ │   0x00007fa2b3193f48:   test   %eax,%eax
          │││╭│   0x00007fa2b3193f4a:   jne    0x00007fa2b3193f8f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - java.util.regex.Pattern$Start::match@47 (line 3787)
   0.01%  │││││   0x00007fa2b3193f50:   mov    0x1c(%rsp),%r10d
   1.40%  │││││   0x00007fa2b3193f55:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││││                                                             ; - java.util.regex.Pattern$Start::match@77 (line 3786)
   0.66%  ││↘││   0x00007fa2b3193f58:   mov    0x24(%rsp),%ebx
   0.01%  ││ ││   0x00007fa2b3193f5c:   mov    (%rsp),%r8
   0.02%  ││ ││   0x00007fa2b3193f60:   mov    0x8(%rsp),%rdx
   1.60%  ││ ││   0x00007fa2b3193f65:   mov    0x10(%rsp),%rsi
   0.60%  ││ ││   0x00007fa2b3193f6a:   cmp    %ebx,%r10d
          ││ │╰   0x00007fa2b3193f6d:   jle    0x00007fa2b3193f00           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                              ; - java.util.regex.Pattern$Start::match@34 (line 3786)
          ││ │    0x00007fa2b3193f6f:   movb   $0x1,0x30(%rdx)              ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                              ; - java.util.regex.Pattern$Start::match@85 (line 3794)
          ││ │    0x00007fa2b3193f73:   mov    $0x0,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                              ; - java.util.regex.Pattern$Start::match@89 (line 3795)
          ││ │    0x00007fa2b3193f78:   mov    0x30(%rsp),%rbp
          ││ │    0x00007fa2b3193f7d:   add    $0x38,%rsp
          ││ │    0x00007fa2b3193f81:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││ │    0x00007fa2b3193f88:   ja     0x00007fa2b3194087
   0.00%  ││ │    0x00007fa2b3193f8e:   ret                                 ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                              ; - java.util.regex.Pattern$Start::match@31 (line 3786)
   0.45%  ││ ↘    0x00007fa2b3193f8f:   mov    0x1c(%rsp),%r10d             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                ; - java.util.regex.Pattern$Start::match@50 (line 3788)
   0.01%  ││   ↗  0x00007fa2b3193f94:   mov    0x8(%rsp),%rdx
   0.01%  ││   │  0x00007fa2b3193f99:   mov    0x38(%rdx),%eax              ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@56 (line 3789)
   0.49%  ││   │  0x00007fa2b3193f9c:   nopl   0x0(%rax)                    ; ImmutableOopMap {rax=NarrowOop rdx=Oop }
          ││   │                                                            ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
          ││   │                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@50 (line 3788)
          ││   │  0x00007fa2b3193fa0:   cmpl   $0x2,0xc(,%rax,8)            ; implicit exception: dispatches to 0x00007fa2b3194118
   1.55%  ││   │  0x00007fa2b3193fa8:   jb     0x00007fa2b3194054           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@64 (line 3789)
   0.41%  ││   │  0x00007fa2b3193fae:   mov    %r10d,0x1c(%rdx)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@52 (line 3788)
          ││   │  0x00007fa2b3193fb2:   mov    %r10d,0x10(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@64 (line 3789)
   0.01%  ││   │  0x00007fa2b3193fba:   mov    0x20(%rdx),%r10d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3790)
          ││   │  0x00007fa2b3193fbe:   mov    %r10d,0x14(,%rax,8)          ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@74 (line 3790)
   0.41%  ││   │  0x00007fa2b3193fc6:   mov    $0x1,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@76 (line 3791)
          ││   │  0x00007fa2b3193fcb:   mov    0x30(%rsp),%rbp
   0.00%  ││   │  0x00007fa2b3193fd0:   add    $0x38,%rsp
   0.00%  ││   │  0x00007fa2b3193fd4:   nopl   0x0(%rax,%rax,1)
   0.38%  ││   │  0x00007fa2b3193fdc:   data16 data16 xchg %ax,%ax
          ││   │  0x00007fa2b3193fe0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││   │  0x00007fa2b3193fe7:   ja     0x00007fa2b319409b
   0.01%  ││   │  0x00007fa2b3193fed:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.regex.Pattern$Start::match@89 (line 3795)
          ↘│   │  0x00007fa2b3193fee:   mov    0x20(%rsp),%r10d
           │   ╰  0x00007fa2b3193ff3:   jmp    0x00007fa2b3193f94           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.util.regex.Pattern$Start::match@50 (line 3788)
           ↘      0x00007fa2b3193ff5:   mov    (%rsp),%r8
                  0x00007fa2b3193ff9:   mov    0x20(%rsp),%ecx
                  0x00007fa2b3193ffd:   mov    0x8(%rsp),%rdx
                  0x00007fa2b3194002:   mov    0x10(%rsp),%rsi
                  0x00007fa2b3194007:   movl   $0xffffff6c,0x484(%r15)
                  0x00007fa2b3194012:   movq   $0xa14,0x490(%r15)           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  26.27%  <total for region 3>

....[Hottest Regions]...............................................................................
  30.96%        jvmci, level 4  java.util.regex.Pattern$Slice::match, version 2, compile id 1058 
  29.46%        jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1099 
  26.27%        jvmci, level 4  java.util.regex.Pattern$Start::match, version 3, compile id 1061 
   4.49%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.88%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.89%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1117 
   0.65%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.61%                kernel  [unknown] 
   0.31%                kernel  [unknown] 
   0.29%                kernel  [unknown] 
   0.17%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.14%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.12%                kernel  [unknown] 
   0.11%                kernel  [unknown] 
   0.09%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.08%                kernel  [unknown] 
   0.07%                kernel  [unknown] 
   3.06%  <...other 401 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  30.96%        jvmci, level 4  java.util.regex.Pattern$Slice::match, version 2, compile id 1058 
  29.46%        jvmci, level 4  java.util.regex.Pattern::split, version 4, compile id 1099 
  26.27%        jvmci, level 4  java.util.regex.Pattern$Start::match, version 3, compile id 1061 
   4.49%          runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   3.87%                kernel  [unknown] 
   1.88%          runtime stub  StubRoutines::checkcast_arraycopy 
   0.89%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1117 
   0.65%          runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.20%             libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.08%                        <unknown> 
   0.07%             libjvm.so  G1BarrierSet::invalidate 
   0.06%             libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.05%        jvmci, level 4  java.util.regex.Pattern::compile, version 2, compile id 1143 
   0.05%        jvmci, level 4  java.util.ArrayList::grow, version 2, compile id 1122 
   0.04%             libjvm.so  ElfSymbolTable::lookup 
   0.04%             libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.04%             libc.so.6  __memset_avx2_unaligned_erms 
   0.04%             libjvm.so  HeapRegionManager::par_iterate 
   0.04%             libjvm.so  fileStream::write 
   0.03%             libc.so.6  __strchr_avx2 
   0.78%  <...other 169 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  87.73%        jvmci, level 4
   7.01%          runtime stub
   3.87%                kernel
   1.00%             libjvm.so
   0.23%             libc.so.6
   0.08%                      
   0.03%           interpreter
   0.02%        hsdis-amd64.so
   0.02%  ld-linux-x86-64.so.2
   0.01%                [vdso]
   0.00%         perf-6593.map
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:09:03

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

Benchmark                                      (regexp)  Mode  Cnt    Score    Error  Units
StringPatternSplitBenchmark.pattern_split             _  avgt    5  319.706 ± 16.081  us/op
StringPatternSplitBenchmark.pattern_split:asm         _  avgt           NaN             ---
StringPatternSplitBenchmark.pattern_split            __  avgt    5  481.531 ± 11.201  us/op
StringPatternSplitBenchmark.pattern_split:asm        __  avgt           NaN             ---
StringPatternSplitBenchmark.string_split              _  avgt    5  171.305 ±  4.081  us/op
StringPatternSplitBenchmark.string_split:asm          _  avgt           NaN             ---
StringPatternSplitBenchmark.string_split             __  avgt    5  422.111 ±  7.854  us/op
StringPatternSplitBenchmark.string_split:asm         __  avgt           NaN             ---
