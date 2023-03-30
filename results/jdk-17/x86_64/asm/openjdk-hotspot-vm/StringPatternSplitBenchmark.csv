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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = _)

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 470.816 us/op
# Warmup Iteration   2: 421.370 us/op
# Warmup Iteration   3: 419.528 us/op
# Warmup Iteration   4: 415.400 us/op
# Warmup Iteration   5: 416.769 us/op
Iteration   1: 415.751 us/op
Iteration   2: 415.580 us/op
Iteration   3: 415.909 us/op
Iteration   4: 415.665 us/op
Iteration   5: 415.815 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split":
  415.744 ±(99.9%) 0.493 us/op [Average]
  (min, avg, max) = (415.580, 415.744, 415.909), stdev = 0.128
  CI (99.9%): [415.251, 416.237] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 145774 total address lines.
Perf output processed (skipped 56.004 seconds):
 Column 1: cycles (50824 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 560 

                                                                       ; - java.util.regex.Pattern::split@24 (line 1262)
             0x00007f23a8f7978c:   cmp    %edi,%r10d
             0x00007f23a8f7978f:   jge    0x00007f23a8f7b508           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::grow@41 (line 237)
                                                                       ; - java.util.ArrayList::grow@7 (line 244)
                                                                       ; - java.util.ArrayList::add@7 (line 454)
                                                                       ; - java.util.ArrayList::add@20 (line 467)
                                                                       ; - java.util.regex.Pattern::split@105 (line 1273)
             0x00007f23a8f79795:   mov    %r10d,%r11d
             0x00007f23a8f79798:   jmp    0x00007f23a8f7967b
   1.08%     0x00007f23a8f7979d:   data16 xchg %ax,%ax
   0.03%     0x00007f23a8f797a0:   cmp    $0x1c4f90,%r8d               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharProperty&apos;)}
             0x00007f23a8f797a7:   jne    0x00007f23a8f7aeec           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::search@51 (line 1721)
                                                                       ; - java.util.regex.Matcher::find@65 (line 745)
                                                                       ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%     0x00007f23a8f797ad:   mov    0xa0(%rsp),%r10d
   0.04%     0x00007f23a8f797b5:   cmp    %r9d,%r10d
          ╭  0x00007f23a8f797b8:   jge    0x00007f23a8f7986d           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern$LastNode::match@5 (line 3578)
          │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
          │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   1.14%  │  0x00007f23a8f797be:   vmovdqu %xmm0,0x80(%rsp)            ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.ASCII::getType@4 (line 199)
          │                                                            ; - java.util.regex.ASCII::isType@1 (line 203)
          │                                                            ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │                                                            ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 421)
          │                                                            ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@1
          │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
          │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   0.02%  │  0x00007f23a8f797c7:   mov    %rbx,0x48(%rsp)              ;*invokestatic getType {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.ASCII::isType@1 (line 203)
          │                                                            ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │                                                            ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 421)
          │                                                            ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@1
          │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
          │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%  │  0x00007f23a8f797cc:   mov    0x10(%rbx),%ebp              ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern::split@37 (line 1266)
   0.03%  │  0x00007f23a8f797cf:   mov    0x50(%rsp),%r10d
   1.10%  │  0x00007f23a8f797d4:   mov    %r10,%rsi
   0.03%  │  0x00007f23a8f797d7:   shl    $0x3,%rsi
   0.01%  │  0x00007f23a8f797db:   mov    0xa0(%rsp),%edx
   0.04%  │  0x00007f23a8f797e2:   vzeroupper 
   1.30%  │  0x00007f23a8f797e5:   movabs $0x80000eba0,%rax
   1.21%  │  0x00007f23a8f797ef:   call   0x00007f23a8f42020           ; ImmutableOopMap {rbp=NarrowOop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [56]=Oop [72]=Oop [80]=NarrowOop [96]=Oop [112]=Oop [168]=Oop }
          │                                                            ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@14 (line 3954)
          │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
          │                                                            ;   {virtual_call}
   8.85%  │  0x00007f23a8f797f4:   mov    %rbp,%rsi
   0.15%  │  0x00007f23a8f797f7:   shl    $0x3,%rsi                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.ASCII::getType@4 (line 199)
          │                                                            ; - java.util.regex.ASCII::isType@1 (line 203)
          │                                                            ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │                                                            ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 421)
          │                                                            ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@1
          │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
          │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   0.02%  │  0x00007f23a8f797fb:   mov    %eax,%edx
   0.03%  │  0x00007f23a8f797fd:   nop
   1.14%  │  0x00007f23a8f797fe:   vzeroupper 
   1.27%  │  0x00007f23a8f79801:   movabs $0x8001c4830,%rax
   0.09%  │  0x00007f23a8f7980b:   call   0x00007f23a8f6c580           ; ImmutableOopMap {[8]=Oop [24]=Oop [32]=Oop [40]=Oop [56]=Oop [72]=Oop [80]=NarrowOop [96]=Oop [112]=Oop [168]=Oop }
          │                                                            ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
          │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
          │                                                            ;   {virtual_call}
   0.43%  │  0x00007f23a8f79810:   test   %eax,%eax
          │  0x00007f23a8f79812:   je     0x00007f23a8f78fbd           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern::split@37 (line 1266)
   0.34%  │  0x00007f23a8f79818:   mov    0x48(%rsp),%r10
   1.12%  │  0x00007f23a8f7981d:   mov    0xc(%r10),%r10d
   0.76%  │  0x00007f23a8f79821:   mov    %r10,%rsi
          │  0x00007f23a8f79824:   shl    $0x3,%rsi                    ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.ASCII::getType@11 (line 199)
          │                                                            ; - java.util.regex.ASCII::isType@1 (line 203)
          │                                                            ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │                                                            ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 421)
          │                                                            ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@1
          │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
          │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   0.17%  │  0x00007f23a8f79828:   mov    0x60(%rsp),%rdx
          │  0x00007f23a8f7982d:   mov    0x4(%rsp),%ecx
          │  0x00007f23a8f79831:   mov    0x18(%rsp),%r8
          │  0x00007f23a8f79836:   vzeroupper 
   0.20%  │  0x00007f23a8f79839:   movabs $0x8002692b8,%rax
   0.35%  │  0x00007f23a8f79843:   call   0x00007f23a8f6f820           ; ImmutableOopMap {[8]=Oop [24]=Oop [32]=Oop [40]=Oop [56]=Oop [80]=NarrowOop [96]=Oop [112]=Oop [168]=Oop }
          │                                                            ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
          │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
          │                                                            ;   {virtual_call}
   0.84%  │  0x00007f23a8f79848:   test   %eax,%eax
          │  0x00007f23a8f7984a:   je     0x00007f23a8f78fbd           ;*invokevirtual substring {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::subSequence@3 (line 2743)
          │                                                            ; - java.util.regex.Pattern::split@89 (line 1272)
          │  0x00007f23a8f79850:   mov    $0x1,%r8d                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.Arrays::copyOfRange@41 (line 3822)
          │                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
          │                                                            ; - java.lang.String::substring@41 (line 2710)
          │                                                            ; - java.lang.String::subSequence@3 (line 2743)
          │                                                            ; - java.util.regex.Pattern::split@89 (line 1272)
   2.23%  │  0x00007f23a8f79856:   mov    0x60(%rsp),%r10
   5.14%  │  0x00007f23a8f7985b:   mov    0x38(%r10),%ecx              ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   5.28%  │  0x00007f23a8f7985f:   vmovdqu 0x80(%rsp),%xmm0
   0.01%  │  0x00007f23a8f79868:   jmp    0x00007f23a8f79585
          ↘  0x00007f23a8f7986d:   mov    0x60(%rsp),%r10
             0x00007f23a8f79872:   movb   $0x1,0x30(%r10)              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern$BmpCharProperty::match@36 (line 3955)
                                                                       ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                       ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                       ; - java.util.regex.Matcher::find@65 (line 745)
                                                                       ; - java.util.regex.Pattern::split@31 (line 1265)
             0x00007f23a8f79877:   xor    %r8d,%r8d
             0x00007f23a8f7987a:   jmp    0x00007f23a8f79585
             0x00007f23a8f7987f:   nop
....................................................................................................
  34.47%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 560 

                    0x00007f23a8f7934d:   movabs $0x7f23b97d9000,%rdi
                    0x00007f23a8f79357:   add    %r11,%rdi                    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::&lt;init&gt;@6 (line 4536)
                                                                              ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                              ; - java.lang.String::substring@41 (line 2710)
                                                                              ; - java.lang.String::subSequence@3 (line 2743)
                                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
                    0x00007f23a8f7935a:   nopw   0x0(%rax,%rax,1)
                    0x00007f23a8f79360:   cmpb   $0x4,(%rdi)
                    0x00007f23a8f79363:   jne    0x00007f23a8f79aff
   0.18%            0x00007f23a8f79369:   mov    0x28(%rsp),%r9
                    0x00007f23a8f7936e:   mov    0x48(%rsp),%r10d
   0.00%            0x00007f23a8f79373:   mov    %r10d,0x10(%r9)              ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%            0x00007f23a8f79377:   mov    0x18(%rsp),%r8
   0.19%            0x00007f23a8f7937c:   mov    0x1c(%r8),%r10d              ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
                    0x00007f23a8f79380:   test   %r10d,%r10d
                    0x00007f23a8f79383:   jl     0x00007f23a8f7b3b4           ;*synchronization entry
                                                                              ; - java.util.regex.Pattern::matcher@-1 (line 1128)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
                    0x00007f23a8f79389:   mov    0x348(%r15),%rcx
   0.01%            0x00007f23a8f79390:   mov    0x20(%r8),%r11d              ; ImmutableOopMap {r8=Oop r9=Oop [8]=Oop [24]=Oop [32]=Oop [40]=Oop [168]=Oop }
                                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                              ; - (reexecute) java.util.regex.Pattern::split@115 (line 1275)
   0.15%            0x00007f23a8f79394:   test   %eax,(%rcx)                  ;*getfield compiled {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern::matcher@1 (line 1128)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
                                                                              ;   {poll}
                    0x00007f23a8f79396:   cmp    %r10d,%r11d
                    0x00007f23a8f79399:   je     0x00007f23a8f7b3cc           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@61 (line 1722)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%            0x00007f23a8f7939f:   mov    0xc(%r8),%ecx                ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%            0x00007f23a8f793a3:   cmp    %ecx,%r11d
                    0x00007f23a8f793a6:   jl     0x00007f23a8f7b3f4           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@61 (line 1722)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.16%            0x00007f23a8f793ac:   mov    0x10(%r8),%r10d              ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
                    0x00007f23a8f793b0:   cmp    %r10d,%r11d
                    0x00007f23a8f793b3:   jg     0x00007f23a8f7b41c           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@61 (line 1722)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%            0x00007f23a8f793b9:   mov    %r12b,0x31(%r8)
   0.00%            0x00007f23a8f793bd:   mov    %r12b,0x30(%r8)              ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.16%            0x00007f23a8f793c1:   test   %r11d,%r11d
                    0x00007f23a8f793c4:   jl     0x00007f23a8f7b444           ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@61 (line 1722)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%            0x00007f23a8f793ca:   mov    0x24(%r8),%edi               ;*synchronization entry
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%            0x00007f23a8f793ce:   test   %edi,%edi
                    0x00007f23a8f793d0:   jl     0x00007f23a8f7a2ee           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern::split@29 (line 1265)
   0.00%            0x00007f23a8f793d6:   mov    %r10d,%ebx
   0.15%            0x00007f23a8f793d9:   mov    %r9,0x38(%rsp)
                    0x00007f23a8f793de:   mov    %r11d,0x1c(%r8)
   0.00%            0x00007f23a8f793e2:   mov    %r11d,0x40(%rsp)
   0.01%            0x00007f23a8f793e7:   mov    %edi,0x24(%r8)               ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.19%            0x00007f23a8f793eb:   mov    0x38(%r8),%r9d               ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%            0x00007f23a8f793ef:   mov    0xc(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007f23a8f7c7d0
                                                                              ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.02%            0x00007f23a8f793f4:   test   %r10d,%r10d
          ╭         0x00007f23a8f793f7:   jbe    0x00007f23a8f794b7           ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                   ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%  │         0x00007f23a8f793fd:   mov    %r10d,%ecx
   0.18%  │         0x00007f23a8f79400:   dec    %ecx
   0.00%  │         0x00007f23a8f79402:   cmp    %r10d,%ecx
          │         0x00007f23a8f79405:   jae    0x00007f23a8f7ae00           ;*invokestatic copyOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.Arrays::copyOf@6 (line 3481)
          │                                                                   ; - java.util.ArrayList::grow@37 (line 237)
          │                                                                   ; - java.util.ArrayList::grow@7 (line 244)
          │                                                                   ; - java.util.ArrayList::add@7 (line 454)
          │                                                                   ; - java.util.ArrayList::add@20 (line 467)
          │                                                                   ; - java.util.regex.Pattern::split@218 (line 1289)
   0.01%  │         0x00007f23a8f7940b:   lea    (%r12,%r9,8),%rdi
   0.00%  │         0x00007f23a8f7940f:   mov    %edi,%r9d
   0.15%  │         0x00007f23a8f79412:   shr    $0x2,%r9d
   0.00%  │         0x00007f23a8f79416:   and    $0x3,%r9d
   0.01%  │         0x00007f23a8f7941a:   mov    $0xffffffff,%r11d
   0.00%  │         0x00007f23a8f79420:   sub    %r9d,%r11d
   0.17%  │         0x00007f23a8f79423:   and    $0x3,%r11d
   0.00%  │         0x00007f23a8f79427:   inc    %r11d
   0.00%  │         0x00007f23a8f7942a:   cmp    %r10d,%r11d
   0.01%  │         0x00007f23a8f7942d:   cmovg  %r10d,%r11d
   0.16%  │         0x00007f23a8f79431:   xor    %esi,%esi                    ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.lang.String::charAt@12 (line 1513)
          │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
          │                                                                   ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                                   ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                   ; - java.util.regex.Pattern::split@31 (line 1265)
   0.21%  │ ↗       0x00007f23a8f79433:   movl   $0xffffffff,0x10(%rdi,%rsi,4)
   0.12%  │ │       0x00007f23a8f7943b:   mov    %esi,%ecx
   0.08%  │ │       0x00007f23a8f7943d:   inc    %ecx                         ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - java.lang.StringLatin1::charAt@21 (line 50)
          │ │                                                                 ; - java.lang.String::charAt@12 (line 1513)
          │ │                                                                 ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
          │ │                                                                 ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │ │                                                                 ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │                                                                 ; - java.util.regex.Matcher::find@65 (line 745)
          │ │                                                                 ; - java.util.regex.Pattern::split@31 (line 1265)
   0.17%  │ │       0x00007f23a8f7943f:   nop
   0.17%  │ │       0x00007f23a8f79440:   cmp    %r11d,%ecx
          │╭│       0x00007f23a8f79443:   jge    0x00007f23a8f79449           ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - java.lang.String::charAt@12 (line 1513)
          │││                                                                 ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
          │││                                                                 ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │││                                                                 ; - java.util.regex.Matcher::search@121 (line 1728)
          │││                                                                 ; - java.util.regex.Matcher::find@65 (line 745)
          │││                                                                 ; - java.util.regex.Pattern::split@31 (line 1265)
   0.08%  │││       0x00007f23a8f79445:   mov    %ecx,%esi
   0.01%  ││╰       0x00007f23a8f79447:   jmp    0x00007f23a8f79433
   0.01%  │↘        0x00007f23a8f79449:   mov    %r10d,%edx
   0.08%  │         0x00007f23a8f7944c:   add    $0xfffffffd,%edx             ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Pattern$LastNode::match@5 (line 3578)
          │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
          │                                                                   ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                                   ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                   ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%  │         0x00007f23a8f7944f:   cmp    %edx,%ecx
          │         0x00007f23a8f79451:   jge    0x00007f23a8f7ae1c           ;*synchronization entry
          │                                                                   ; - java.lang.String::charAt@-1 (line 1512)
          │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
          │                                                                   ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                                   ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                   ; - java.util.regex.Pattern::split@31 (line 1265)
   0.12%  │         0x00007f23a8f79457:   inc    %esi                         ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
          │                                                                   ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                                   ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                   ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%  │   ↗     0x00007f23a8f79459:   mov    %r10d,%r9d
   0.10%  │   │     0x00007f23a8f7945c:   sub    %esi,%r9d
   0.00%  │   │     0x00007f23a8f7945f:   add    $0xfffffffd,%r9d
   0.11%  │   │     0x00007f23a8f79463:   xor    %ecx,%ecx
   0.00%  │   │     0x00007f23a8f79465:   cmp    %esi,%edx
   0.07%  │   │     0x00007f23a8f79467:   cmovl  %ecx,%r9d                    ;*invokeinterface length {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Pattern::split@203 (line 1289)
   0.00%  │   │     0x00007f23a8f7946b:   cmp    $0xfa0,%r9d
   0.13%  │   │     0x00007f23a8f79472:   mov    $0xfa0,%ecx
   0.01%  │   │     0x00007f23a8f79477:   cmova  %ecx,%r9d
   0.08%  │   │     0x00007f23a8f7947b:   add    %esi,%r9d
   0.08%  │   │     0x00007f23a8f7947e:   xchg   %ax,%ax                      ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
          │   │                                                               ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │   │                                                               ; - java.util.regex.Matcher::search@121 (line 1728)
          │   │                                                               ; - java.util.regex.Matcher::find@65 (line 745)
          │   │                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
   0.38%  │  ↗│     0x00007f23a8f79480:   vmovdqu %xmm0,0x10(%rdi,%rsi,4)     ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.Pattern::split@167 (line 1284)
   0.12%  │  ││     0x00007f23a8f79486:   add    $0x4,%esi                    ;*invokestatic isType {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.ASCII::isSpace@4 (line 235)
          │  ││                                                               ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 421)
          │  ││                                                               ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@1
          │  ││                                                               ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
          │  ││                                                               ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │  ││                                                               ; - java.util.regex.Matcher::search@121 (line 1728)
          │  ││                                                               ; - java.util.regex.Matcher::find@65 (line 745)
          │  ││                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
   0.10%  │  ││     0x00007f23a8f79489:   cmp    %r9d,%esi
          │  ╰│     0x00007f23a8f7948c:   jl     0x00007f23a8f79480           ;*synchronization entry
          │   │                                                               ; - java.util.regex.Pattern::matcher@-1 (line 1128)
          │   │                                                               ; - java.util.regex.Pattern::split@24 (line 1262)
          │   │     0x00007f23a8f7948e:   mov    0x348(%r15),%r11             ; ImmutableOopMap {r8=Oop rdi=Oop [8]=Oop [32]=Oop [56]=Oop [168]=Oop }
          │   │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                               ; - (reexecute) java.util.regex.Matcher::search@65 (line 1721)
          │   │                                                               ; - java.util.regex.Matcher::find@65 (line 745)
          │   │                                                               ; - java.util.regex.Pattern::split@31 (line 1265)
   0.18%  │   │     0x00007f23a8f79495:   test   %eax,(%r11)                  ;*getfield compiled {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Pattern::matcher@1 (line 1128)
          │   │                                                               ; - java.util.regex.Pattern::split@24 (line 1262)
          │   │                                                               ;   {poll}
   0.02%  │   │     0x00007f23a8f79498:   cmp    %edx,%esi
          │   ╰     0x00007f23a8f7949a:   jl     0x00007f23a8f79459           ;*invokestatic charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.lang.String::charAt@12 (line 1513)
          │                                                                   ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
          │                                                                   ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                                   ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                                   ; - java.util.regex.Pattern::split@31 (line 1265)
          │         0x00007f23a8f7949c:   nopl   0x0(%rax)
   0.00%  │         0x00007f23a8f794a0:   cmp    %r10d,%esi
          │    ╭    0x00007f23a8f794a3:   jge    0x00007f23a8f794b7           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.lang.StringLatin1::charAt@21 (line 50)
          │    │                                                              ; - java.lang.String::charAt@12 (line 1513)
          │    │                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
          │    │                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │    │                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
          │    │                                                              ; - java.util.regex.Matcher::find@65 (line 745)
          │    │                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.11%  │    │    0x00007f23a8f794a5:   data16 xchg %ax,%ax
   0.08%  │    │↗   0x00007f23a8f794a8:   movl   $0xffffffff,0x10(%rdi,%rsi,4)
   0.01%  │    ││   0x00007f23a8f794b0:   inc    %esi
          │    ││   0x00007f23a8f794b2:   cmp    %r10d,%esi
          │    │╰   0x00007f23a8f794b5:   jl     0x00007f23a8f794a8           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │    │                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.10%  ↘    ↘    0x00007f23a8f794b7:   mov    0x44(%r8),%r11d              ;*invokevirtual substring {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::subSequence@3 (line 2743)
                                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
   0.06%            0x00007f23a8f794bb:   nopl   0x0(%rax,%rax,1)
   0.01%            0x00007f23a8f794c0:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f23a8f7c7e0
                                                                              ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%            0x00007f23a8f794c5:   test   %r10d,%r10d
                    0x00007f23a8f794c8:   ja     0x00007f23a8f7b460           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@62 (line 1721)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.08%            0x00007f23a8f794ce:   mov    %r12d,0x18(%r8)              ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.11%            0x00007f23a8f794d2:   mov    0x34(%r8),%r11d              ;*synchronization entry
                                                                              ; - java.lang.StringLatin1::newString@-1 (line 766)
                                                                              ; - java.lang.String::substring@41 (line 2710)
                                                                              ; - java.lang.String::subSequence@3 (line 2743)
                                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%            0x00007f23a8f794d6:   data16 nopw 0x0(%rax,%rax,1)
   0.00%            0x00007f23a8f794e0:   mov    0x34(%r12,%r11,8),%r10d      ; implicit exception: dispatches to 0x00007f23a8f7c7f0
                                                                              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@24 (line 3954)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.10%            0x00007f23a8f794e5:   mov    %r8,0x60(%rsp)
   0.07%            0x00007f23a8f794ea:   mov    0x3c(%r8),%r8d               ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%            0x00007f23a8f794ee:   mov    %r8d,0x50(%rsp)
                    0x00007f23a8f794f3:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f23a8f7c800
   0.16%            0x00007f23a8f794f8:   nopl   0x0(%rax,%rax,1)
   0.08%            0x00007f23a8f79500:   cmp    $0x267b28,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
                    0x00007f23a8f79507:   jne    0x00007f23a8f7acb8           ;*synchronization entry
                                                                              ; - java.util.regex.Pattern::matcher@-1 (line 1128)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.02%            0x00007f23a8f7950d:   shl    $0x3,%r10                    ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@6 (line 152)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
                    0x00007f23a8f79511:   mov    %r10,0x28(%rsp)
   0.08%            0x00007f23a8f79516:   mov    0x10(%r10),%r11d             ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.07%            0x00007f23a8f7951a:   sub    %r11d,%ebx
   0.02%            0x00007f23a8f7951d:   mov    %ebx,0x44(%rsp)
   0.07%            0x00007f23a8f79521:   mov    0x40(%rsp),%r10d
   0.07%            0x00007f23a8f79526:   cmp    %ebx,%r10d
                    0x00007f23a8f79529:   jg     0x00007f23a8f7b48c           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@65 (line 1721)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.08%            0x00007f23a8f7952f:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f23a8f7acf4
   0.00%            0x00007f23a8f79534:   nopl   0x0(%rax,%rax,1)
   0.02%            0x00007f23a8f7953c:   data16 data16 xchg %ax,%ax
   0.09%            0x00007f23a8f79540:   cmp    $0xeba0,%r10d                ;   {metadata(&apos;java/lang/String&apos;)}
                    0x00007f23a8f79547:   jne    0x00007f23a8f7acf4           ;*invokeinterface is {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@19 (line 3954)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.08%            0x00007f23a8f7954d:   cmp    $0x7ffffffe,%ebx
                    0x00007f23a8f79553:   jg     0x00007f23a8f7ac0c
   0.01%            0x00007f23a8f79559:   mov    %ebx,%r11d
   0.02%            0x00007f23a8f7955c:   inc    %r11d
   0.08%            0x00007f23a8f7955f:   mov    %r11d,(%rsp)
   0.08%            0x00007f23a8f79563:   lea    (%r12,%r8,8),%r10            ;*invokestatic copyOf {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.Arrays::copyOf@6 (line 3481)
                                                                              ; - java.util.ArrayList::grow@37 (line 237)
                                                                              ; - java.util.ArrayList::grow@7 (line 244)
                                                                              ; - java.util.ArrayList::add@7 (line 454)
                                                                              ; - java.util.ArrayList::add@20 (line 467)
                                                                              ; - java.util.regex.Pattern::split@218 (line 1289)
   0.00%            0x00007f23a8f79567:   mov    %r10,0x18(%rsp)              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@11 (line 160)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.04%            0x00007f23a8f7956c:   mov    %r10,0x70(%rsp)
   0.05%            0x00007f23a8f79571:   mov    0x40(%rsp),%r10d
   0.10%            0x00007f23a8f79576:   mov    %r10d,0xa0(%rsp)
   0.00%            0x00007f23a8f7957e:   xchg   %ax,%ax
   0.04%         ╭  0x00007f23a8f79580:   jmp    0x00007f23a8f795b2
                 │  0x00007f23a8f79582:   xor    %r8d,%r8d                    ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$LastNode::match@5 (line 3578)
                 │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
                 │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
                 │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
                 │  0x00007f23a8f79585:   mov    0x60(%rsp),%r10
   0.08%         │  0x00007f23a8f7958a:   mov    0x2c(%r10),%r11d             ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Matcher::start@4 (line 449)
                 │                                                            ; - java.util.regex.Pattern::split@60 (line 1267)
   1.21%         │  0x00007f23a8f7958e:   mov    0x20(%r10),%ebx              ;*synchronization entry
                 │                                                            ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@-1
                 │                                                            ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
                 │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
                 │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   0.24%         │  0x00007f23a8f79592:   test   %r8d,%r8d
                 │  0x00007f23a8f79595:   jne    0x00007f23a8f78fc5           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                 │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
                 │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
                 │  0x00007f23a8f7959b:   mov    0x4(%rsp),%r10d
                 │  0x00007f23a8f795a0:   cmp    (%rsp),%r10d
                 │  0x00007f23a8f795a4:   jge    0x00007f23a8f79e25           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.ArrayList::grow@41 (line 237)
                 │                                                            ; - java.util.ArrayList::grow@7 (line 244)
                 │                                                            ; - java.util.ArrayList::add@7 (line 454)
                 │                                                            ; - java.util.ArrayList::add@20 (line 467)
                 │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
   0.92%         │  0x00007f23a8f795aa:   mov    %r10d,0xa0(%rsp)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@73 (line 248)
                 │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
                 │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.25%         ↘  0x00007f23a8f795b2:   mov    0x28(%rsp),%r10
   0.07%            0x00007f23a8f795b7:   mov    0xc(%r10),%r10d              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharProperty::match@28 (line 3954)
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.21%            0x00007f23a8f795bb:   nopl   0x0(%rax,%rax,1)
   0.88%            0x00007f23a8f795c0:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f23a8f7c7a0
                                                                              ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                              ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                              ; - java.lang.String::substring@41 (line 2710)
                                                                              ; - java.lang.String::subSequence@3 (line 2743)
                                                                              ; - java.util.regex.Pattern::split@89 (line 1272)
   4.85%            0x00007f23a8f795c5:   mov    0x60(%rsp),%r11
   0.04%            0x00007f23a8f795ca:   mov    0x10(%r11),%r9d              ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@11 (line 160)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%            0x00007f23a8f795ce:   mov    0x38(%r11),%ecx              ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@60 (line 4328)
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                                                                              ; - java.util.regex.Pattern::split@31 (line 1265)
   0.02%            0x00007f23a8f795d2:   lea    (%r12,%r10,8),%rbx
   1.19%            0x00007f23a8f795d6:   mov    0xa0(%rsp),%r11d
   0.03%            0x00007f23a8f795de:   inc    %r11d                        ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@16 (line 160)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%            0x00007f23a8f795e1:   mov    %r11d,0x4(%rsp)
   0.06%            0x00007f23a8f795e6:   cmp    $0x269e38,%r8d               ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
                    0x00007f23a8f795ed:   jne    0x00007f23a8f7979d           ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::&lt;init&gt;@11 (line 160)
                                                                              ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                              ; - java.util.regex.Pattern::split@24 (line 1262)
                    0x00007f23a8f795f3:   mov    %rbx,%rax
                    0x00007f23a8f795f6:   mov    0xa0(%rsp),%r10d
                    0x00007f23a8f795fe:   xchg   %ax,%ax
                    0x00007f23a8f79600:   cmp    %r9d,%r10d
                    0x00007f23a8f79603:   jge    0x00007f23a8f7ab0c           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@51 (line 1721)
....................................................................................................
  16.53%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 560 

                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
              0x00007f23a8f78fac:   mov    0x8(%rsp),%rcx               ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::&lt;init&gt;@1 (line 241)
                                                                        ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
              0x00007f23a8f78fb1:   mov    0x6c(%rsp),%ebp
              0x00007f23a8f78fb5:   xor    %r11d,%r11d
          ╭   0x00007f23a8f78fb8:   jmp    0x00007f23a8f79011           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Matcher::start@4 (line 449)
          │                                                             ; - java.util.regex.Pattern::split@86 (line 1272)
   1.05%  │   0x00007f23a8f78fbd:   xor    %r8d,%r8d
          │   0x00007f23a8f78fc0:   jmp    0x00007f23a8f79856
          │   0x00007f23a8f78fc5:   mov    0xa0(%rsp),%r9d
   0.11%  │   0x00007f23a8f78fcd:   mov    %r9d,0x1c(%r10)              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                             ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                             ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%  │   0x00007f23a8f78fd1:   mov    0xc(%r12,%rcx,8),%r8d        ; implicit exception: dispatches to 0x00007f23a8f7c814
   0.22%  │   0x00007f23a8f78fd6:   cmp    $0x1,%r8d
   0.20%  │   0x00007f23a8f78fda:   nopw   0x0(%rax,%rax,1)
          │   0x00007f23a8f78fe0:   jbe    0x00007f23a8f7ad3c           ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                             ; - java.util.regex.Pattern::split@31 (line 1265)
   0.20%  │   0x00007f23a8f78fe6:   mov    %ebx,0x24(%r10)              ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Matcher::search@27 (line 1720)
          │                                                             ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                             ; - java.util.regex.Pattern::split@31 (line 1265)
          │   0x00007f23a8f78fea:   mov    %r9d,0x10(%r12,%rcx,8)       ;*invokevirtual start {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern::split@60 (line 1267)
   0.35%  │   0x00007f23a8f78fef:   mov    %ebx,0x14(%r12,%rcx,8)       ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@31 (line 4322)
          │                                                             ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
          │                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                             ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                             ; - java.util.regex.Pattern::split@31 (line 1265)
   0.20%  │   0x00007f23a8f78ff4:   inc    %r11d
   0.01%  │   0x00007f23a8f78ff7:   mov    %r11d,0x2c(%r10)             ;*ifge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.regex.Matcher::search@30 (line 1720)
          │                                                             ; - java.util.regex.Matcher::find@65 (line 745)
          │                                                             ; - java.util.regex.Pattern::split@31 (line 1265)
          │   0x00007f23a8f78ffb:   mov    0xa0(%rsp),%ebp
   0.03%  │   0x00007f23a8f79002:   mov    0x8(%rsp),%r9
   0.15%  │   0x00007f23a8f79007:   mov    0x20(%rsp),%rcx
   0.00%  │   0x00007f23a8f7900c:   mov    0x40(%rsp),%r11d
   0.01%  ↘   0x00007f23a8f79011:   test   %r11d,%r11d
              0x00007f23a8f79014:   je     0x00007f23a8f7a2f6           ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                        ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
   0.03%      0x00007f23a8f7901a:   test   %ebp,%ebp
   0.15%      0x00007f23a8f7901c:   nopl   0x0(%rax)
   0.01%      0x00007f23a8f79020:   jl     0x00007f23a8f7b318           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::search@52 (line 1721)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
              0x00007f23a8f79026:   mov    %r11d,0x40(%rsp)
   0.03%      0x00007f23a8f7902b:   mov    %r10,0x18(%rsp)
   0.12%      0x00007f23a8f79030:   mov    %r9,0x8(%rsp)
   0.01%      0x00007f23a8f79035:   mov    0x14(%rcx),%r10d             ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::search@55 (line 1722)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%      0x00007f23a8f79039:   mov    %r10d,0x34(%rsp)
   0.06%      0x00007f23a8f7903e:   mov    %rcx,0x20(%rsp)
   0.12%      0x00007f23a8f79043:   mov    0xc(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007f23a8f7c7b0
                                                                        ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::search@52 (line 1721)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.04%      0x00007f23a8f79048:   movsbl 0x10(%rcx),%ecx
              0x00007f23a8f7904c:   mov    %r9d,%r11d
   0.05%      0x00007f23a8f7904f:   sar    %cl,%r11d                    ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                        ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
   0.16%      0x00007f23a8f79052:   mov    0x40(%rsp),%r10d
   0.02%      0x00007f23a8f79057:   test   %r10d,%r10d
   0.11%      0x00007f23a8f7905a:   nopw   0x0(%rax,%rax,1)
   0.01%      0x00007f23a8f79060:   jl     0x00007f23a8f7b130           ;*invokevirtual search {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%      0x00007f23a8f79066:   cmp    %ebp,%r10d
              0x00007f23a8f79069:   jg     0x00007f23a8f7b334
   0.03%      0x00007f23a8f7906f:   cmp    %r11d,%ebp
              0x00007f23a8f79072:   jg     0x00007f23a8f7b374           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::search@52 (line 1721)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.16%      0x00007f23a8f79078:   test   %r10d,%r10d
   0.00%      0x00007f23a8f7907b:   nopl   0x0(%rax,%rax,1)
   0.01%      0x00007f23a8f79080:   je     0x00007f23a8f7987f           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern$Start::match@34 (line 3607)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.02%      0x00007f23a8f79086:   mov    %ebp,%r11d
   0.14%      0x00007f23a8f79089:   sub    %r10d,%r11d                  ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::search@7 (line 1717)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%      0x00007f23a8f7908c:   mov    %r11d,0x44(%rsp)             ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                        ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%      0x00007f23a8f79091:   test   %ecx,%ecx
              0x00007f23a8f79093:   jne    0x00007f23a8f7b2f7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::search@52 (line 1721)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.03%      0x00007f23a8f79099:   nopl   0x0(%rax)
   0.13%      0x00007f23a8f790a0:   cmp    0x40(%rsp),%ebp
              0x00007f23a8f790a4:   je     0x00007f23a8f7a3f7
   0.00%      0x00007f23a8f790aa:   mov    0x108(%r15),%r11
   0.01%      0x00007f23a8f790b1:   mov    %r11,%r10
   0.04%      0x00007f23a8f790b4:   add    $0x18,%r10
   0.13%      0x00007f23a8f790b8:   nopl   0x0(%rax,%rax,1)
   0.00%      0x00007f23a8f790c0:   cmp    0x118(%r15),%r10
              0x00007f23a8f790c7:   jae    0x00007f23a8f7a406           ;*synchronization entry
                                                                        ; - java.util.regex.Pattern::matcher@-1 (line 1128)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%      0x00007f23a8f790cd:   mov    %r10,0x108(%r15)             ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 467)
                                                                        ; - java.util.regex.Pattern::split@218 (line 1289)
   0.04%      0x00007f23a8f790d4:   prefetchw 0xc0(%r10)                ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@7 (line 466)
                                                                        ; - java.util.regex.Pattern::split@218 (line 1289)
   0.14%      0x00007f23a8f790dc:   movq   $0x1,(%r11)                  ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@13 (line 467)
                                                                        ; - java.util.regex.Pattern::split@218 (line 1289)
   0.03%      0x00007f23a8f790e3:   movl   $0xeba0,0x8(%r11)            ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@17 (line 467)
                                                                        ; - java.util.regex.Pattern::split@218 (line 1289)
                                                                        ;   {metadata(&apos;java/lang/String&apos;)}
   0.45%      0x00007f23a8f790eb:   mov    %r12d,0xc(%r11)              ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@218 (line 1289)
              0x00007f23a8f790ef:   mov    %r12,0x10(%r11)              ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
                                                                        ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
   0.07%      0x00007f23a8f790f3:   mov    %r11,0x28(%rsp)
   0.01%      0x00007f23a8f790f8:   mov    0x44(%rsp),%r10d
   0.14%      0x00007f23a8f790fd:   data16 xchg %ax,%ax
   0.00%      0x00007f23a8f79100:   test   %r10d,%r10d
              0x00007f23a8f79103:   jl     0x00007f23a8f7b4cc           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Matcher::search@55 (line 1722)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.04%      0x00007f23a8f79109:   cmp    $0x100000,%r10d
              0x00007f23a8f79110:   ja     0x00007f23a8f7ad54           ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::substring@8 (line 2705)
                                                                        ; - java.lang.String::subSequence@3 (line 2743)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%      0x00007f23a8f79116:   movslq 0x44(%rsp),%r8               ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::isLatin1@3 (line 4549)
                                                                        ; - java.lang.String::substring@28 (line 2710)
                                                                        ; - java.lang.String::subSequence@3 (line 2743)
                                                                        ; - java.util.regex.Pattern::split@89 (line 1272)
   0.17%      0x00007f23a8f7911b:   mov    0x40(%rsp),%r10d
   0.01%      0x00007f23a8f79120:   test   %r10d,%r10d
              0x00007f23a8f79123:   jl     0x00007f23a8f7add1           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::charAt@7 (line 47)
                                                                        ; - java.lang.String::charAt@12 (line 1513)
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                        ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.04%      0x00007f23a8f79129:   mov    %r9d,%r10d
   0.01%      0x00007f23a8f7912c:   sub    0x40(%rsp),%r10d             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@34 (line 1265)
   0.15%      0x00007f23a8f79131:   cmp    0x44(%rsp),%r10d
   0.01%      0x00007f23a8f79136:   mov    0x44(%rsp),%ebp
   0.05%      0x00007f23a8f7913a:   cmovl  %r10d,%ebp                   ;*invokestatic getType {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.ASCII::isType@1 (line 203)
                                                                        ; - java.util.regex.ASCII::isSpace@4 (line 235)
                                                                        ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 421)
                                                                        ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@1
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
                                                                        ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.01%      0x00007f23a8f7913e:   mov    0x40(%rsp),%r11d
   0.14%      0x00007f23a8f79143:   add    %ebp,%r11d
              0x00007f23a8f79146:   cmp    %r11d,%r9d
              0x00007f23a8f79149:   jb     0x00007f23a8f7add1
   0.02%      0x00007f23a8f7914f:   mov    0x44(%rsp),%r11d
   0.00%      0x00007f23a8f79154:   cmp    %ebp,%r11d
              0x00007f23a8f79157:   jb     0x00007f23a8f7add1
   0.12%      0x00007f23a8f7915d:   data16 xchg %ax,%ax
              0x00007f23a8f79160:   test   %ebp,%ebp
              0x00007f23a8f79162:   jl     0x00007f23a8f7add1           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::charAt@7 (line 47)
                                                                        ; - java.lang.String::charAt@12 (line 1513)
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                        ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.04%      0x00007f23a8f79168:   add    $0x17,%r8                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.Pattern::split@34 (line 1265)
   0.01%      0x00007f23a8f7916c:   mov    %r8,(%rsp)
   0.14%      0x00007f23a8f79170:   cmp    $0x100000,%r11d
              0x00007f23a8f79177:   ja     0x00007f23a8f7a437
              0x00007f23a8f7917d:   mov    0x108(%r15),%r13
   0.05%      0x00007f23a8f79184:   mov    %r8,%r10
   0.01%      0x00007f23a8f79187:   and    $0xfffffffffffffff8,%r10
   0.17%      0x00007f23a8f7918b:   mov    %r13,%r11
   0.00%      0x00007f23a8f7918e:   add    %r10,%r11
   0.03%      0x00007f23a8f79191:   cmp    0x118(%r15),%r11
              0x00007f23a8f79198:   jae    0x00007f23a8f7a437           ;*synchronization entry
                                                                        ; - java.util.regex.Pattern::matcher@-1 (line 1128)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
   0.03%      0x00007f23a8f7919e:   mov    %r11,0x108(%r15)
   0.13%      0x00007f23a8f791a5:   prefetchw 0xc0(%r11)
   0.05%      0x00007f23a8f791ad:   movq   $0x1,0x0(%r13)
   0.03%      0x00007f23a8f791b5:   prefetchw 0x100(%r11)
   0.01%      0x00007f23a8f791bd:   movl   $0x6848,0x8(%r13)            ;   {metadata({type array byte})}
   0.41%      0x00007f23a8f791c5:   mov    0x44(%rsp),%r10d
   0.00%      0x00007f23a8f791ca:   mov    %r10d,0xc(%r13)
   0.19%      0x00007f23a8f791ce:   prefetchw 0x140(%r11)
   0.01%      0x00007f23a8f791d6:   prefetchw 0x180(%r11)               ;*invokestatic getType {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.regex.ASCII::isType@1 (line 203)
                                                                        ; - java.util.regex.ASCII::isSpace@4 (line 235)
                                                                        ; - java.util.regex.CharPredicates::lambda$ASCII_SPACE$20@8 (line 421)
                                                                        ; - java.util.regex.CharPredicates$$Lambda$47/0x800000055::is@1
                                                                        ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@26 (line 4322)
                                                                        ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                        ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                        ; - java.util.regex.Matcher::find@65 (line 745)
                                                                        ; - java.util.regex.Pattern::split@31 (line 1265)
   0.50%      0x00007f23a8f791de:   mov    %r13,%r8
              0x00007f23a8f791e1:   add    $0x10,%r8                    ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@5 (line 3820)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2710)
                                                                        ; - java.lang.String::subSequence@3 (line 2743)
                                                                        ; - java.util.regex.Pattern::split@208 (line 1289)
   0.05%      0x00007f23a8f791e5:   mov    (%rsp),%r10
   0.01%      0x00007f23a8f791e9:   shr    $0x3,%r10
   0.15%      0x00007f23a8f791ed:   mov    %r13,%rbx
   0.03%      0x00007f23a8f791f0:   shr    $0x3,%rbx
   0.01%      0x00007f23a8f791f4:   test   %ebp,%ebp
              0x00007f23a8f791f6:   je     0x00007f23a8f7ad65           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@51 (line 3823)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2710)
                                                                        ; - java.lang.String::subSequence@3 (line 2743)
                                                                        ; - java.util.regex.Pattern::split@208 (line 1289)
              0x00007f23a8f791fc:   movslq %ebp,%rdx                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2710)
                                                                        ; - java.lang.String::subSequence@3 (line 2743)
                                                                        ; - java.util.regex.Pattern::split@208 (line 1289)
   0.18%      0x00007f23a8f791ff:   mov    0x34(%rsp),%r11d
   0.03%      0x00007f23a8f79204:   lea    (%r12,%r11,8),%r9            ;*invokestatic copyOf {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOf@6 (line 3481)
                                                                        ; - java.util.ArrayList::grow@37 (line 237)
                                                                        ; - java.util.ArrayList::grow@7 (line 244)
                                                                        ; - java.util.ArrayList::add@7 (line 454)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@218 (line 1289)
   0.01%      0x00007f23a8f79208:   mov    0x40(%rsp),%r11d
   0.01%      0x00007f23a8f7920d:   lea    0x10(%r9,%r11,1),%r11
   0.23%      0x00007f23a8f79212:   cmp    0x44(%rsp),%ebp
              0x00007f23a8f79216:   jl     0x00007f23a8f79b57
   0.00%      0x00007f23a8f7921c:   vmovdqu %xmm0,0x40(%rsp)
              0x00007f23a8f79222:   mov    %r11,%rdi
   0.00%      0x00007f23a8f79225:   mov    %r8,%rsi
   0.16%      0x00007f23a8f79228:   vzeroupper 
   0.18%      0x00007f23a8f7922b:   movabs $0x7f23a89e2d20,%r10
   0.00%      0x00007f23a8f79235:   call   *%r10                        ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                        ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                        ; - java.lang.String::substring@41 (line 2710)
                                                                        ; - java.lang.String::subSequence@3 (line 2743)
                                                                        ; - java.util.regex.Pattern::split@208 (line 1289)
   0.28%      0x00007f23a8f79238:   vmovdqu 0x40(%rsp),%xmm0            ;*synchronization entry
                                                                        ; - java.util.regex.Pattern::matcher@-1 (line 1128)
                                                                        ; - java.util.regex.Pattern::split@24 (line 1262)
   0.98%      0x00007f23a8f7923e:   xchg   %ax,%ax
              0x00007f23a8f79240:   cmpb   $0x0,0x38(%r15)
           ╭  0x00007f23a8f79245:   jne    0x00007f23a8f79247           ;*invokestatic newLength {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.ArrayList::grow@27 (line 234)
           │                                                            ; - java.util.ArrayList::grow@7 (line 244)
           │                                                            ; - java.util.ArrayList::add@7 (line 454)
           │                                                            ; - java.util.ArrayList::add@20 (line 467)
           │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
   0.19%   ↘  0x00007f23a8f79247:   mov    0x28(%rsp),%r10
   0.01%      0x00007f23a8f7924c:   mov    %ebx,0x14(%r10)              ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::grow@56 (line 239)
                                                                        ; - java.util.ArrayList::grow@7 (line 244)
                                                                        ; - java.util.ArrayList::add@7 (line 454)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
   1.78%      0x00007f23a8f79250:   mov    %r13,%r11
              0x00007f23a8f79253:   mov    %r10,%r8                     ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::grow@41 (line 237)
                                                                        ; - java.util.ArrayList::grow@7 (line 244)
                                                                        ; - java.util.ArrayList::add@7 (line 454)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
              0x00007f23a8f79256:   xor    %r8,%r11
              0x00007f23a8f79259:   shr    $0x15,%r11
   0.19%      0x00007f23a8f7925d:   data16 xchg %ax,%ax
              0x00007f23a8f79260:   test   %r11,%r11
              0x00007f23a8f79263:   je     0x00007f23a8f7927f           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.ArrayList::grow@56 (line 239)
                                                                        ; - java.util.ArrayList::grow@7 (line 244)
                                                                        ; - java.util.ArrayList::add@7 (line 454)
                                                                        ; - java.util.ArrayList::add@20 (line 467)
                                                                        ; - java.util.regex.Pattern::split@105 (line 1273)
              0x00007f23a8f79265:   shr    $0x9,%r8
              0x00007f23a8f79269:   movabs $0x7f23b97d9000,%rdi
              0x00007f23a8f79273:   add    %r8,%rdi                     ;*invokestatic copyOf {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  12.12%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, java.util.regex.Pattern$$Lambda$19.0x800000025::is, version 2, compile id 532 

              scopes pcs     [0x00007f23a8f6c648,0x00007f23a8f6c698] = 80
              dependencies   [0x00007f23a8f6c698,0x00007f23a8f6c6a0] = 8
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Entry Point]
               # {method} {0x00000008001c4ad0} &apos;is&apos; &apos;(I)Z&apos; in &apos;java/util/regex/Pattern$$Lambda$19+0x800000025&apos;
               # this:     rsi:rsi   = &apos;java/util/regex/Pattern$$Lambda$19+0x800000025&apos;
               # parm0:    rdx       = int
               #           [sp+0x20]  (sp of caller)
   0.05%       0x00007f23a8f6c580:   mov    0x8(%rsi),%r10d
   1.17%       0x00007f23a8f6c584:   movabs $0x800000000,%r11
   0.10%       0x00007f23a8f6c58e:   add    %r11,%r10
   0.03%       0x00007f23a8f6c591:   cmp    %r10,%rax
               0x00007f23a8f6c594:   jne    0x00007f23a89fbd80           ;   {runtime_call ic_miss_stub}
   0.04%       0x00007f23a8f6c59a:   xchg   %ax,%ax
   1.13%       0x00007f23a8f6c59c:   nopl   0x0(%rax)
             [Verified Entry Point]
   0.10%       0x00007f23a8f6c5a0:   sub    $0x18,%rsp
   0.02%       0x00007f23a8f6c5a7:   mov    %rbp,0x10(%rsp)              ;*synchronization entry
                                                                         ; - java.util.regex.Pattern$$Lambda$19/0x800000025::is@-1
   0.32%       0x00007f23a8f6c5ac:   mov    0xc(%rsi),%r10d
   0.95%       0x00007f23a8f6c5b0:   cmp    %r10d,%edx
          ╭    0x00007f23a8f6c5b3:   je     0x00007f23a8f6c5ca           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern::lambda$Single$7@2 (line 5699)
          │                                                              ; - java.util.regex.Pattern$$Lambda$19/0x800000025::is@5
   0.33%  │    0x00007f23a8f6c5b5:   xor    %eax,%eax                    ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.regex.Pattern::lambda$Single$7@10 (line 5699)
          │                                                              ; - java.util.regex.Pattern$$Lambda$19/0x800000025::is@5
   0.23%  │ ↗  0x00007f23a8f6c5b7:   add    $0x10,%rsp
   0.61%  │ │  0x00007f23a8f6c5bb:   pop    %rbp
   2.59%  │ │  0x00007f23a8f6c5bc:   cmp    0x340(%r15),%rsp             ;   {poll_return}
          │╭│  0x00007f23a8f6c5c3:   ja     0x00007f23a8f6c5d1
   0.36%  │││  0x00007f23a8f6c5c9:   ret    
   1.16%  ↘││  0x00007f23a8f6c5ca:   mov    $0x1,%eax
   0.92%   │╰  0x00007f23a8f6c5cf:   jmp    0x00007f23a8f6c5b7
           ↘   0x00007f23a8f6c5d1:   movabs $0x7f23a8f6c5bc,%r10         ;   {internal_word}
               0x00007f23a8f6c5db:   mov    %r10,0x358(%r15)
               0x00007f23a8f6c5e2:   jmp    0x00007f23a8a02700           ;   {runtime_call SafepointBlob}
               0x00007f23a8f6c5e7:   hlt    
               0x00007f23a8f6c5e8:   hlt    
               0x00007f23a8f6c5e9:   hlt    
               0x00007f23a8f6c5ea:   hlt    
               0x00007f23a8f6c5eb:   hlt    
               0x00007f23a8f6c5ec:   hlt    
               0x00007f23a8f6c5ed:   hlt    
....................................................................................................
  10.11%  <total for region 4>

....[Hottest Regions]...............................................................................
  34.47%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
  16.53%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
  12.12%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
  10.11%         c2, level 4  java.util.regex.Pattern$$Lambda$19.0x800000025::is, version 2, compile id 532 
   9.93%         c2, level 4  java.lang.String::charAt, version 2, compile id 72 
   6.48%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   4.04%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
   2.21%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 535 
   0.96%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.66%              kernel  [unknown] 
   0.35%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.14%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
   0.11%              kernel  [unknown] 
   0.10%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
   1.44%  <...other 391 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  67.61%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 560 
  10.11%         c2, level 4  java.util.regex.Pattern$$Lambda$19.0x800000025::is, version 2, compile id 532 
   9.93%         c2, level 4  java.lang.String::charAt, version 2, compile id 72 
   6.48%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.21%         c2, level 4  java.util.regex.Pattern$LastNode::match, version 2, compile id 535 
   1.80%              kernel  [unknown] 
   0.97%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.35%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.04%        libc-2.31.so  [unknown] 
   0.04%                      <unknown> 
   0.03%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.01%           libjvm.so  ElfSymbolTable::lookup 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%           libjvm.so  defaultStream::write 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.01%           libjvm.so  G1BarrierSet::invalidate 
   0.01%         c2, level 4  java.lang.String::length, version 2, compile id 133 
   0.31%  <...other 117 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.87%         c2, level 4
   7.80%        runtime stub
   1.80%              kernel
   0.32%           libjvm.so
   0.10%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.04%                    
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%         interpreter
   0.01%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split
# Parameters: (regexp = __)

# Run progress: 25.00% complete, ETA 00:05:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 246.535 us/op
# Warmup Iteration   2: 217.594 us/op
# Warmup Iteration   3: 217.317 us/op
# Warmup Iteration   4: 217.185 us/op
# Warmup Iteration   5: 217.249 us/op
Iteration   1: 217.177 us/op
Iteration   2: 217.293 us/op
Iteration   3: 217.276 us/op
Iteration   4: 217.235 us/op
Iteration   5: 217.451 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split":
  217.286 ±(99.9%) 0.393 us/op [Average]
  (min, avg, max) = (217.177, 217.286, 217.451), stdev = 0.102
  CI (99.9%): [216.893, 217.680] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.pattern_split:·asm":
PrintAssembly processed: 142045 total address lines.
Perf output processed (skipped 55.792 seconds):
 Column 1: cycles (50928 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Matcher::find, version 2, compile id 514 

                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
                 0x00007f5d3cf6c5d7:   mov    %r9d,0x14(%r12,%rbx,8)       ;*iastore {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$LastNode::match@42 (line 3582)
                                                                           ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
                                                                           ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
                 0x00007f5d3cf6c5dc:   mov    $0x1,%r9d
                 0x00007f5d3cf6c5e2:   jmp    0x00007f5d3cf6c4cc
   0.07%         0x00007f5d3cf6c5e7:   cmp    $0x268728,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
                 0x00007f5d3cf6c5ee:   jne    0x00007f5d3cf6cb65
                 0x00007f5d3cf6c5f4:   mov    %rax,%r11                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.34%         0x00007f5d3cf6c5f7:   vmovq  %r11,%xmm3
   2.08%         0x00007f5d3cf6c5fc:   mov    0x10(%r11),%r9d              ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.14%         0x00007f5d3cf6c600:   vmovd  %r9d,%xmm5
   0.00%         0x00007f5d3cf6c605:   mov    0xc(%r12,%r9,8),%r11d        ; implicit exception: dispatches to 0x00007f5d3cf6cd74
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@8 (line 4079)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.42%         0x00007f5d3cf6c60a:   mov    %r11d,0x30(%rsp)
   2.47%         0x00007f5d3cf6c60f:   test   %r11d,%r11d
                 0x00007f5d3cf6c612:   jbe    0x00007f5d3cf6c775           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.02%         0x00007f5d3cf6c618:   mov    %r11d,%r9d
                 0x00007f5d3cf6c61b:   dec    %r9d
   0.04%         0x00007f5d3cf6c61e:   xchg   %ax,%ax
   2.29%         0x00007f5d3cf6c620:   cmp    %r11d,%r9d
                 0x00007f5d3cf6c623:   jae    0x00007f5d3cf6cb98
   0.02%         0x00007f5d3cf6c629:   cmp    (%rsp),%r10d
                 0x00007f5d3cf6c62d:   jae    0x00007f5d3cf6cb98
   0.00%         0x00007f5d3cf6c633:   movslq %r11d,%rbx
   0.06%         0x00007f5d3cf6c636:   movslq %r10d,%rdx                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@21 (line 50)
                                                                           ; - java.lang.String::charAt@12 (line 1513)
                                                                           ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   2.22%         0x00007f5d3cf6c639:   mov    %rdx,%r11
   0.02%         0x00007f5d3cf6c63c:   add    %rbx,%r11
   0.01%         0x00007f5d3cf6c63f:   dec    %r11
   0.12%         0x00007f5d3cf6c642:   cmp    0x8(%rsp),%r11
                 0x00007f5d3cf6c647:   jae    0x00007f5d3cf6cb98
   2.31%         0x00007f5d3cf6c64d:   cmp    %r8d,%r10d
                 0x00007f5d3cf6c650:   jge    0x00007f5d3cf6cbd0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.03%         0x00007f5d3cf6c656:   movzbl 0x10(%rdi,%rdx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@25 (line 50)
                                                                           ; - java.lang.String::charAt@12 (line 1513)
                                                                           ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.04%         0x00007f5d3cf6c65b:   vmovd  %xmm5,%r9d
   0.05%         0x00007f5d3cf6c660:   mov    0x10(%r12,%r9,8),%r11d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@43 (line 4085)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   2.34%         0x00007f5d3cf6c665:   cmp    %ecx,%r11d
          ╭      0x00007f5d3cf6c668:   jne    0x00007f5d3cf6c710           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
          │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                                ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                ; - java.util.regex.Matcher::find@65 (line 745)
   0.51%  │      0x00007f5d3cf6c66e:   vmovq  %xmm10,%rcx
   2.29%  │      0x00007f5d3cf6c673:   sub    %rdx,%rcx
   0.62%  │      0x00007f5d3cf6c676:   lea    (%r12,%r9,8),%rsi            ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
          │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                                ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                ; - java.util.regex.Matcher::find@65 (line 745)
   0.05%  │      0x00007f5d3cf6c67a:   mov    $0xffffffff80000000,%r11
   0.00%  │      0x00007f5d3cf6c681:   cmp    $0xffffffff80000000,%rcx
   0.00%  │      0x00007f5d3cf6c688:   mov    %rcx,%r9
   0.28%  │      0x00007f5d3cf6c68b:   cmovl  %r11,%r9
   0.05%  │      0x00007f5d3cf6c68f:   mov    %r9d,%r11d
   0.02%  │      0x00007f5d3cf6c692:   cmp    %rcx,%rbx
          │      0x00007f5d3cf6c695:   mov    0x30(%rsp),%r9d
   0.52%  │      0x00007f5d3cf6c69a:   cmovg  %r11d,%r9d
   0.09%  │      0x00007f5d3cf6c69e:   xchg   %ax,%ax
   0.01%  │      0x00007f5d3cf6c6a0:   cmp    $0x1,%r9d
          │      0x00007f5d3cf6c6a4:   jle    0x00007f5d3cf6cc1c
   0.03%  │      0x00007f5d3cf6c6aa:   mov    $0x1,%r11d
   0.32%  │   ↗  0x00007f5d3cf6c6b0:   mov    %r11d,%ebp
   0.04%  │   │  0x00007f5d3cf6c6b3:   nopw   0x0(%rax,%rax,1)
   0.01%  │   │  0x00007f5d3cf6c6bc:   data16 data16 xchg %ax,%ax          ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.regex.Pattern$Slice::match@21 (line 4081)
          │   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │   │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.03%  │ ↗ │  0x00007f5d3cf6c6c0:   movslq %ebp,%rcx
   0.53%  │ │ │  0x00007f5d3cf6c6c3:   mov    0x10(%rsi,%rcx,4),%ebx       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4085)
          │ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.04%  │ │ │  0x00007f5d3cf6c6c7:   add    %rdx,%rcx
   0.01%  │ │ │  0x00007f5d3cf6c6ca:   movzbl 0x10(%rdi,%rcx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
          │ │ │                                                            ; - java.lang.String::charAt@12 (line 1513)
          │ │ │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          │ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.03%  │ │ │  0x00007f5d3cf6c6cf:   cmp    %ecx,%ebx
          │╭│ │  0x00007f5d3cf6c6d1:   jne    0x00007f5d3cf6c710           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
          │││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │││ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.33%  │││ │  0x00007f5d3cf6c6d3:   mov    %r9d,%ebx
   0.02%  │││ │  0x00007f5d3cf6c6d6:   sub    %r11d,%ebx
          │││ │  0x00007f5d3cf6c6d9:   xor    %ecx,%ecx
   0.02%  │││ │  0x00007f5d3cf6c6db:   cmp    %r11d,%r9d
   0.29%  │││ │  0x00007f5d3cf6c6de:   cmovl  %ecx,%ebx
   0.05%  │││ │  0x00007f5d3cf6c6e1:   cmp    $0x3e8,%ebx
   0.01%  │││ │  0x00007f5d3cf6c6e7:   mov    $0x3e8,%ecx
   0.04%  │││ │  0x00007f5d3cf6c6ec:   cmova  %ecx,%ebx
   0.37%  │││ │  0x00007f5d3cf6c6ef:   add    %r11d,%ebx
   0.02%  │││ │  0x00007f5d3cf6c6f2:   mov    %ebp,%ecx
   0.01%  │││ │  0x00007f5d3cf6c6f4:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
          │││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │││ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.29%  │││ │  0x00007f5d3cf6c6f6:   mov    %ecx,%ebp
   0.04%  │││ │  0x00007f5d3cf6c6f8:   cmp    %ebx,%ecx
          ││╰ │  0x00007f5d3cf6c6fa:   jl     0x00007f5d3cf6c6c0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.regex.Pattern$Slice::match@62 (line 4080)
          ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%  ││  │  0x00007f5d3cf6c6fc:   mov    0x348(%r15),%r11             ; ImmutableOopMap {rdi=Oop rsi=Oop rax=Oop r13=Oop xmm0=NarrowOop xmm1=NarrowOop xmm2=NarrowOop xmm3=Oop xmm4=Oop xmm5=NarrowOop xmm6=Oop xmm8=Oop }
          ││  │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@62 (line 4080)
          ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%  ││  │  0x00007f5d3cf6c703:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.regex.Pattern$Slice::match@62 (line 4080)
          ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          ││  │                                                            ;   {poll}
   0.91%  ││  │  0x00007f5d3cf6c706:   cmp    %r9d,%ecx
          ││ ╭│  0x00007f5d3cf6c709:   jge    0x00007f5d3cf6c725
          ││ ││  0x00007f5d3cf6c70b:   mov    %ecx,%r11d
          ││ │╰  0x00007f5d3cf6c70e:   jmp    0x00007f5d3cf6c6b0
   0.21%  ↘↘ │   0x00007f5d3cf6c710:   xor    %r9d,%r9d
   0.04%     │   0x00007f5d3cf6c713:   jmp    0x00007f5d3cf6c4cc
             │   0x00007f5d3cf6c718:   mov    %r10d,%r11d
             │   0x00007f5d3cf6c71b:   nopl   0x0(%rax,%rax,1)
             │   0x00007f5d3cf6c720:   jmp    0x00007f5d3cf6c1fc
   0.04%     ↘   0x00007f5d3cf6c725:   mov    %ecx,%r11d
   0.02%         0x00007f5d3cf6c728:   cmp    0x30(%rsp),%r11d
                 0x00007f5d3cf6c72d:   jge    0x00007f5d3cf6c775
                 0x00007f5d3cf6c72f:   mov    %r11d,%ebx
                 0x00007f5d3cf6c732:   xchg   %ax,%ax                      ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@21 (line 4081)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
                 0x00007f5d3cf6c734:   mov    %ebx,%ebp
                 0x00007f5d3cf6c736:   add    %r10d,%ebp                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
....................................................................................................
  23.28%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Matcher::find, version 2, compile id 514 

                   # {method} {0x00000008000fe320} &apos;find&apos; &apos;()Z&apos; in &apos;java/util/regex/Matcher&apos;
                   #           [sp+0x80]  (sp of caller)
                   0x00007f5d3cf6c180:   mov    0x8(%rsi),%r10d
                   0x00007f5d3cf6c184:   movabs $0x800000000,%r11
                   0x00007f5d3cf6c18e:   add    %r11,%r10
                   0x00007f5d3cf6c191:   cmp    %r10,%rax
                   0x00007f5d3cf6c194:   jne    0x00007f5d3c9fbd80           ;   {runtime_call ic_miss_stub}
                   0x00007f5d3cf6c19a:   xchg   %ax,%ax
                   0x00007f5d3cf6c19c:   nopl   0x0(%rax)
                 [Verified Entry Point]
   0.01%           0x00007f5d3cf6c1a0:   mov    %eax,-0x14000(%rsp)
   0.89%           0x00007f5d3cf6c1a7:   push   %rbp
   0.14%           0x00007f5d3cf6c1a8:   sub    $0x70,%rsp                   ;*synchronization entry
                                                                             ; - java.util.regex.Matcher::find@-1 (line 731)
   0.02%           0x00007f5d3cf6c1ac:   vmovq  %rsi,%xmm4
   0.27%           0x00007f5d3cf6c1b1:   mov    0x1c(%rsi),%ebp              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::find@7 (line 732)
   0.12%           0x00007f5d3cf6c1b4:   mov    0x20(%rsi),%r10d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::find@1 (line 731)
   0.01%           0x00007f5d3cf6c1b8:   cmp    %ebp,%r10d
   0.02%           0x00007f5d3cf6c1bb:   nopl   0x0(%rax,%rax,1)
   0.24%           0x00007f5d3cf6c1c0:   je     0x00007f5d3cf6cabb           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::find@10 (line 732)
   0.08%           0x00007f5d3cf6c1c6:   mov    0xc(%rsi),%ebp               ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::find@18 (line 736)
   0.01%           0x00007f5d3cf6c1c9:   cmp    %ebp,%r10d
                   0x00007f5d3cf6c1cc:   jl     0x00007f5d3cf6cad0           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::find@21 (line 736)
   0.03%           0x00007f5d3cf6c1d2:   mov    0x10(%rsi),%ebp              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::find@31 (line 740)
   0.26%           0x00007f5d3cf6c1d5:   cmp    %ebp,%r10d
                   0x00007f5d3cf6c1d8:   jg     0x00007f5d3cf6cae4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::find@34 (line 740)
   0.11%           0x00007f5d3cf6c1de:   mov    %r12b,0x31(%rsi)             ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@7 (line 1717)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.33%           0x00007f5d3cf6c1e2:   mov    %r12b,0x30(%rsi)             ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@2 (line 1716)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.35%           0x00007f5d3cf6c1e6:   test   %r10d,%r10d
                   0x00007f5d3cf6c1e9:   jl     0x00007f5d3cf6caf8           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@11 (line 1718)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%           0x00007f5d3cf6c1ef:   mov    0x24(%rsi),%r11d             ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@27 (line 1720)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.02%           0x00007f5d3cf6c1f3:   test   %r11d,%r11d
                   0x00007f5d3cf6c1f6:   jl     0x00007f5d3cf6c718
   0.02%           0x00007f5d3cf6c1fc:   mov    %r11d,0x24(%rsi)             ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@41 (line 1720)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.31%           0x00007f5d3cf6c200:   mov    %r10d,0x1c(%rsi)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@22 (line 1719)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%           0x00007f5d3cf6c204:   mov    0x38(%rsi),%r11d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@48 (line 1721)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%           0x00007f5d3cf6c208:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f5d3cf6ccdc
                                                                             ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@65 (line 1721)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.08%           0x00007f5d3cf6c20d:   test   %r9d,%r9d
          ╭        0x00007f5d3cf6c210:   jbe    0x00007f5d3cf6c2e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.regex.Matcher::search@52 (line 1721)
          │                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
   0.30%  │        0x00007f5d3cf6c216:   mov    %r9d,%r8d
   0.00%  │        0x00007f5d3cf6c219:   dec    %r8d
   0.00%  │        0x00007f5d3cf6c21c:   nopl   0x0(%rax)
   0.00%  │        0x00007f5d3cf6c220:   cmp    %r9d,%r8d
          │        0x00007f5d3cf6c223:   jae    0x00007f5d3cf6ca9c
   0.37%  │        0x00007f5d3cf6c229:   lea    (%r12,%r11,8),%rbx
   0.00%  │        0x00007f5d3cf6c22d:   mov    %ebx,%r8d
   0.01%  │        0x00007f5d3cf6c230:   shr    $0x2,%r8d
   0.00%  │        0x00007f5d3cf6c234:   and    $0x3,%r8d
   0.36%  │        0x00007f5d3cf6c238:   mov    $0xffffffff,%r11d
          │        0x00007f5d3cf6c23e:   sub    %r8d,%r11d
   0.01%  │        0x00007f5d3cf6c241:   and    $0x3,%r11d
   0.00%  │        0x00007f5d3cf6c245:   inc    %r11d
   0.35%  │        0x00007f5d3cf6c248:   cmp    %r9d,%r11d
   0.00%  │        0x00007f5d3cf6c24b:   cmovg  %r9d,%r11d
   0.00%  │        0x00007f5d3cf6c24f:   xor    %edi,%edi                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                  ; - java.util.regex.Matcher::search@55 (line 1722)
          │                                                                  ; - java.util.regex.Matcher::find@65 (line 745)
   0.25%  │ ↗      0x00007f5d3cf6c251:   movl   $0xffffffff,0x10(%rbx,%rdi,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.regex.Matcher::search@61 (line 1722)
          │ │                                                                ; - java.util.regex.Matcher::find@65 (line 745)
   0.46%  │ │      0x00007f5d3cf6c259:   mov    %edi,%ecx
   0.35%  │ │      0x00007f5d3cf6c25b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - java.util.regex.Matcher::search@62 (line 1721)
          │ │                                                                ; - java.util.regex.Matcher::find@65 (line 745)
   0.24%  │ │      0x00007f5d3cf6c25d:   data16 xchg %ax,%ax
   0.26%  │ │      0x00007f5d3cf6c260:   cmp    %r11d,%ecx
          │╭│      0x00007f5d3cf6c263:   jge    0x00007f5d3cf6c269           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - java.util.regex.Matcher::search@52 (line 1721)
          │││                                                                ; - java.util.regex.Matcher::find@65 (line 745)
   0.37%  │││      0x00007f5d3cf6c265:   mov    %ecx,%edi
   0.29%  ││╰      0x00007f5d3cf6c267:   jmp    0x00007f5d3cf6c251
   0.01%  │↘       0x00007f5d3cf6c269:   mov    %r9d,%esi
   0.09%  │        0x00007f5d3cf6c26c:   add    $0xfffffffd,%esi
   0.01%  │        0x00007f5d3cf6c26f:   cmp    %esi,%ecx
          │        0x00007f5d3cf6c271:   jge    0x00007f5d3cf6cab4
   0.28%  │        0x00007f5d3cf6c277:   inc    %edi
   0.00%  │        0x00007f5d3cf6c279:   mov    $0xfa0,%ecx
   0.08%  │        0x00007f5d3cf6c27e:   vpcmpeqb %xmm0,%xmm0,%xmm0
   0.01%  │   ↗    0x00007f5d3cf6c282:   mov    %r9d,%r8d
   0.29%  │   │    0x00007f5d3cf6c285:   sub    %edi,%r8d
   0.01%  │   │    0x00007f5d3cf6c288:   add    $0xfffffffd,%r8d
   0.12%  │   │    0x00007f5d3cf6c28c:   xor    %r11d,%r11d
   0.00%  │   │    0x00007f5d3cf6c28f:   cmp    %edi,%esi
   0.26%  │   │    0x00007f5d3cf6c291:   cmovl  %r11d,%r8d
          │   │    0x00007f5d3cf6c295:   cmp    $0xfa0,%r8d
   0.13%  │   │    0x00007f5d3cf6c29c:   cmova  %ecx,%r8d
   0.27%  │   │    0x00007f5d3cf6c2a0:   add    %edi,%r8d
   0.01%  │   │    0x00007f5d3cf6c2a3:   nopw   0x0(%rax,%rax,1)
   0.11%  │   │    0x00007f5d3cf6c2ac:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.util.regex.Matcher::search@55 (line 1722)
          │   │                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.62%  │  ↗│    0x00007f5d3cf6c2b0:   vmovdqu %xmm0,0x10(%rbx,%rdi,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                              ; - java.util.regex.Matcher::search@61 (line 1722)
          │  ││                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.25%  │  ││    0x00007f5d3cf6c2b6:   add    $0x4,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                              ; - java.util.regex.Matcher::search@62 (line 1721)
          │  ││                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.24%  │  ││    0x00007f5d3cf6c2b9:   cmp    %r8d,%edi
          │  ╰│    0x00007f5d3cf6c2bc:   jl     0x00007f5d3cf6c2b0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.util.regex.Matcher::search@65 (line 1721)
          │   │                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%  │   │    0x00007f5d3cf6c2be:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rbx=Oop xmm4=Oop }
          │   │                                                              ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                              ; - (reexecute) java.util.regex.Matcher::search@65 (line 1721)
          │   │                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.32%  │   │    0x00007f5d3cf6c2c5:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                              ; - java.util.regex.Matcher::search@65 (line 1721)
          │   │                                                              ; - java.util.regex.Matcher::find@65 (line 745)
          │   │                                                              ;   {poll}
   0.09%  │   │    0x00007f5d3cf6c2c8:   cmp    %esi,%edi
          │   ╰    0x00007f5d3cf6c2ca:   jl     0x00007f5d3cf6c282
          │        0x00007f5d3cf6c2cc:   cmp    %r9d,%edi
          │    ╭   0x00007f5d3cf6c2cf:   jge    0x00007f5d3cf6c2e5
          │    │   0x00007f5d3cf6c2d1:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                             ; - java.util.regex.Matcher::search@55 (line 1722)
          │    │                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.19%  │    │↗  0x00007f5d3cf6c2d4:   movl   $0xffffffff,0x10(%rbx,%rdi,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - java.util.regex.Matcher::search@61 (line 1722)
          │    ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.03%  │    ││  0x00007f5d3cf6c2dc:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                            ; - java.util.regex.Matcher::search@62 (line 1721)
          │    ││                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%  │    ││  0x00007f5d3cf6c2de:   xchg   %ax,%ax
   0.00%  │    ││  0x00007f5d3cf6c2e0:   cmp    %r9d,%edi
          │    │╰  0x00007f5d3cf6c2e3:   jl     0x00007f5d3cf6c2d4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                             ; - java.util.regex.Matcher::search@52 (line 1721)
          │    │                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.09%  ↘    ↘   0x00007f5d3cf6c2e5:   vmovq  %xmm4,%r11
   0.24%           0x00007f5d3cf6c2ea:   mov    0x44(%r11),%r11d             ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@72 (line 1723)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.02%           0x00007f5d3cf6c2ee:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007f5d3cf6cce8
                                                                             ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@75 (line 1723)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.95%           0x00007f5d3cf6c2f3:   test   %ebp,%ebp
                   0x00007f5d3cf6c2f5:   ja     0x00007f5d3cf6cb0c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@76 (line 1723)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.38%           0x00007f5d3cf6c2fb:   vmovq  %xmm4,%r11
   0.02%           0x00007f5d3cf6c300:   mov    %r12d,0x18(%r11)             ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@105 (line 1727)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%           0x00007f5d3cf6c304:   mov    0x34(%r11),%r11d             ;*getfield parentPattern {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@109 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
                   0x00007f5d3cf6c308:   mov    0x34(%r12,%r11,8),%ebx       ; implicit exception: dispatches to 0x00007f5d3cf6ccf4
                                                                             ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@112 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.36%           0x00007f5d3cf6c30d:   vmovq  %xmm4,%r11
   0.01%           0x00007f5d3cf6c312:   mov    0x3c(%r11),%r11d             ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@118 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%           0x00007f5d3cf6c316:   data16 nopw 0x0(%rax,%rax,1)
                   0x00007f5d3cf6c320:   mov    0x8(%r12,%rbx,8),%r9d        ; implicit exception: dispatches to 0x00007f5d3cf6cd00
   1.42%           0x00007f5d3cf6c325:   cmp    $0x267b28,%r9d               ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
                   0x00007f5d3cf6c32c:   jne    0x00007f5d3cf6c9d4           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.35%           0x00007f5d3cf6c332:   vmovq  %xmm4,%r8
   0.00%           0x00007f5d3cf6c337:   mov    0x10(%r8),%r8d               ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@2 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
                   0x00007f5d3cf6c33b:   shl    $0x3,%rbx                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%           0x00007f5d3cf6c33f:   mov    %r8d,%ecx
   0.35%           0x00007f5d3cf6c342:   sub    0x10(%rbx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@9 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.05%           0x00007f5d3cf6c345:   cmp    %ecx,%r10d
                   0x00007f5d3cf6c348:   jg     0x00007f5d3cf6cb20           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@10 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.37%           0x00007f5d3cf6c34e:   mov    0xc(%rbx),%r9d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@38 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%           0x00007f5d3cf6c352:   mov    0x8(%r12,%r9,8),%edi         ; implicit exception: dispatches to 0x00007f5d3cf6cd18
                                                                             ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   1.06%           0x00007f5d3cf6c357:   nopw   0x0(%rax,%rax,1)
                   0x00007f5d3cf6c360:   mov    0x8(%r12,%r11,8),%edx        ; implicit exception: dispatches to 0x00007f5d3cf6c981
                   0x00007f5d3cf6c365:   cmp    $0xeba0,%edx                 ;   {metadata(&apos;java/lang/String&apos;)}
                   0x00007f5d3cf6c36b:   jne    0x00007f5d3cf6c981
   0.00%           0x00007f5d3cf6c371:   lea    (%r12,%r11,8),%rax           ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Matcher::search@118 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.37%           0x00007f5d3cf6c375:   mov    %rax,%r13                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                             ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
                   0x00007f5d3cf6c378:   nopl   0x0(%rax,%rax,1)
                   0x00007f5d3cf6c380:   cmpb   $0x0,0x10(%r13)
   0.00%           0x00007f5d3cf6c385:   jne    0x00007f5d3cf6c981
   0.30%           0x00007f5d3cf6c38b:   mov    0x14(%r13),%edx              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.String::charAt@8 (line 1513)
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                             ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
                   0x00007f5d3cf6c38f:   mov    0xc(%r12,%rdx,8),%esi        ; implicit exception: dispatches to 0x00007f5d3cf6c981
                                                                             ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.StringLatin1::charAt@6 (line 47)
                                                                             ; - java.lang.String::charAt@12 (line 1513)
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                             ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
                   0x00007f5d3cf6c394:   cmp    %esi,%r10d
                   0x00007f5d3cf6c397:   jae    0x00007f5d3cf6c981
   0.00%           0x00007f5d3cf6c39d:   vmovd  %r9d,%xmm1
   0.37%           0x00007f5d3cf6c3a2:   vmovd  %r11d,%xmm0
                   0x00007f5d3cf6c3a7:   mov    %ecx,%r14d
                   0x00007f5d3cf6c3aa:   inc    %r14d
                   0x00007f5d3cf6c3ad:   movslq %esi,%r9
   0.37%           0x00007f5d3cf6c3b0:   movslq %r14d,%r11
                   0x00007f5d3cf6c3b3:   dec    %r11
   0.00%           0x00007f5d3cf6c3b6:   cmp    %r9,%r11
                   0x00007f5d3cf6c3b9:   jae    0x00007f5d3cf6c97c
   0.00%           0x00007f5d3cf6c3bf:   mov    %r9,0x8(%rsp)
   0.35%           0x00007f5d3cf6c3c4:   mov    %esi,(%rsp)
                   0x00007f5d3cf6c3c7:   vmovq  %rax,%xmm8
                   0x00007f5d3cf6c3cc:   vmovd  %edi,%xmm9
   0.01%           0x00007f5d3cf6c3d0:   vmovq  %rbx,%xmm6
   0.37%           0x00007f5d3cf6c3d5:   vmovd  %r10d,%xmm7
                   0x00007f5d3cf6c3da:   movslq %r8d,%r10
                   0x00007f5d3cf6c3dd:   vmovq  %r10,%xmm10
   0.00%           0x00007f5d3cf6c3e2:   dec    %r10
   0.36%           0x00007f5d3cf6c3e5:   cmp    0x8(%rsp),%r10
                   0x00007f5d3cf6c3ea:   jae    0x00007f5d3cf6c9a4
   0.01%           0x00007f5d3cf6c3f0:   cmp    $0x7ffffffe,%ecx
                   0x00007f5d3cf6c3f6:   jg     0x00007f5d3cf6c9b0
                   0x00007f5d3cf6c3fc:   vmovd  %ecx,%xmm12
   0.00%           0x00007f5d3cf6c400:   vmovq  %xmm4,%r10
   0.32%           0x00007f5d3cf6c405:   mov    0x38(%r10),%r10d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$LastNode::match@24 (line 3581)
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
                                                                             ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%           0x00007f5d3cf6c409:   vmovd  %r10d,%xmm2
                   0x00007f5d3cf6c40e:   lea    (%r12,%rdx,8),%rdi
                   0x00007f5d3cf6c412:   vmovd  %xmm1,%r10d
   0.36%           0x00007f5d3cf6c417:   lea    (%r12,%r10,8),%rax
   0.00%           0x00007f5d3cf6c41b:   vmovd  %xmm7,%r10d
                   0x00007f5d3cf6c420:   mov    $0x1,%r11d
   0.00%           0x00007f5d3cf6c426:   vmovd  %r11d,%xmm11                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@37 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.36%           0x00007f5d3cf6c42b:   vmovd  %xmm9,%r11d
   1.93%           0x00007f5d3cf6c430:   cmp    $0x269e38,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
                   0x00007f5d3cf6c437:   jne    0x00007f5d3cf6c5e7
                   0x00007f5d3cf6c43d:   mov    %rax,%r11                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                             ; - java.util.regex.Matcher::find@65 (line 745)
                   0x00007f5d3cf6c440:   cmp    %r8d,%r10d
                   0x00007f5d3cf6c443:   jge    0x00007f5d3cf6c8fc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
                                                                             ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                             ; - java.util.regex.Matcher::search@121 (line 1728)
....................................................................................................
  21.61%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 5, compile id 537 

                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
            0x00007f5d3cf7b9ff:   movabs $0x7ffe00010,%rsi            ;   {oop(&quot;&quot;{0x00000007ffe00010})}
            0x00007f5d3cf7ba09:   mov    $0xfff42aed,%eax             ;   {oop(a &apos;java/lang/Object&apos;[0] {0x00000007ffa15768})}
            0x00007f5d3cf7ba0e:   xor    %ecx,%ecx
            0x00007f5d3cf7ba10:   xor    %r10d,%r10d
            0x00007f5d3cf7ba13:   xor    %r8d,%r8d
            0x00007f5d3cf7ba16:   movabs $0x7ffa15768,%r9             ;   {oop(a &apos;java/lang/Object&apos;[0] {0x00000007ffa15768})}
            0x00007f5d3cf7ba20:   jmp    0x00007f5d3cf7bd3f
            0x00007f5d3cf7ba25:   data16 data16 nopw 0x0(%rax,%rax,1)
            0x00007f5d3cf7ba30:   mov    %ebp,%r11d
   0.05%    0x00007f5d3cf7ba33:   sub    %r8d,%r11d                   ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
            0x00007f5d3cf7ba36:   mov    %r11d,0x48(%rsp)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@63 (line 247)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.32%    0x00007f5d3cf7ba3b:   test   %ecx,%ecx
   0.00%    0x00007f5d3cf7ba3d:   data16 xchg %ax,%ax
   0.04%    0x00007f5d3cf7ba40:   jne    0x00007f5d3cf7ceae
   0.01%    0x00007f5d3cf7ba46:   cmp    0x30(%rsp),%ebp
            0x00007f5d3cf7ba4a:   je     0x00007f5d3cf7c72e           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.30%    0x00007f5d3cf7ba50:   mov    0x108(%r15),%r8              ;*synchronization entry
                                                                      ; - java.util.ArrayList::get@-1 (line 427)
                                                                      ; - java.util.regex.Pattern::split@244 (line 1294)
            0x00007f5d3cf7ba57:   mov    %r8,%r10
   0.04%    0x00007f5d3cf7ba5a:   add    $0x18,%r10
   0.00%    0x00007f5d3cf7ba5e:   xchg   %ax,%ax
   0.32%    0x00007f5d3cf7ba60:   cmp    0x118(%r15),%r10
            0x00007f5d3cf7ba67:   jae    0x00007f5d3cf7c73d           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%    0x00007f5d3cf7ba6d:   mov    %r10,0x108(%r15)
   0.03%    0x00007f5d3cf7ba74:   prefetchw 0xc0(%r10)
   0.05%    0x00007f5d3cf7ba7c:   movq   $0x1,(%r8)                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::get@5 (line 427)
                                                                      ; - java.util.regex.Pattern::split@244 (line 1294)
   0.29%    0x00007f5d3cf7ba83:   movl   $0xeba0,0x8(%r8)             ;*synchronization entry
                                                                      ; - java.util.Objects::checkIndex@-1 (line 359)
                                                                      ; - java.util.ArrayList::get@5 (line 427)
                                                                      ; - java.util.regex.Pattern::split@244 (line 1294)
                                                                      ;   {metadata(&apos;java/lang/String&apos;)}
   0.51%    0x00007f5d3cf7ba8b:   mov    %r12d,0xc(%r8)
   0.09%    0x00007f5d3cf7ba8f:   mov    %r12,0x10(%r8)               ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@63 (line 247)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.08%    0x00007f5d3cf7ba93:   mov    0x48(%rsp),%r10d
   0.04%    0x00007f5d3cf7ba98:   test   %r10d,%r10d
   0.22%    0x00007f5d3cf7ba9b:   nopl   0x0(%rax,%rax,1)
   0.04%    0x00007f5d3cf7baa0:   jl     0x00007f5d3cf7d134           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.12%    0x00007f5d3cf7baa6:   cmp    $0x100000,%r10d
            0x00007f5d3cf7baad:   ja     0x00007f5d3cf7cbb0           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::checkBoundsBeginEnd@6 (line 4601)
                                                                      ; - java.lang.String::substring@8 (line 2705)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%    0x00007f5d3cf7bab3:   movslq 0x48(%rsp),%rcx              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::isLatin1@10 (line 4549)
                                                                      ; - java.lang.String::substring@28 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.19%    0x00007f5d3cf7bab8:   mov    0x30(%rsp),%r9d
   0.06%    0x00007f5d3cf7babd:   data16 xchg %ax,%ax
   0.10%    0x00007f5d3cf7bac0:   test   %r9d,%r9d
            0x00007f5d3cf7bac3:   jl     0x00007f5d3cf7cc2c           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::reset@26 (line 406)
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@90 (line 252)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.02%    0x00007f5d3cf7bac9:   mov    %r8,0x48(%rsp)
   0.19%    0x00007f5d3cf7bace:   mov    %r10d,%edi
   0.03%    0x00007f5d3cf7bad1:   mov    %ebx,%r11d
   0.12%    0x00007f5d3cf7bad4:   sub    0x30(%rsp),%r11d             ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@63 (line 1267)
   0.01%    0x00007f5d3cf7bad9:   cmp    %r10d,%r11d
   0.19%    0x00007f5d3cf7badc:   mov    %r10d,%ebp
   0.03%    0x00007f5d3cf7badf:   cmovl  %r11d,%ebp                   ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::reset@47 (line 407)
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@90 (line 252)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.12%    0x00007f5d3cf7bae3:   mov    0x30(%rsp),%r10d
   0.01%    0x00007f5d3cf7bae8:   add    %ebp,%r10d
   0.18%    0x00007f5d3cf7baeb:   cmp    %r10d,%ebx
            0x00007f5d3cf7baee:   jb     0x00007f5d3cf7cc29
   0.05%    0x00007f5d3cf7baf4:   mov    %edi,%r10d
   0.13%    0x00007f5d3cf7baf7:   cmp    %ebp,%r10d
   0.01%    0x00007f5d3cf7bafa:   nopw   0x0(%rax,%rax,1)
   0.17%    0x00007f5d3cf7bb00:   jb     0x00007f5d3cf7cc2c
   0.05%    0x00007f5d3cf7bb06:   test   %ebp,%ebp
            0x00007f5d3cf7bb08:   jl     0x00007f5d3cf7cc2c           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::reset@26 (line 406)
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@90 (line 252)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.11%    0x00007f5d3cf7bb0e:   add    $0x17,%rcx                   ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@63 (line 1267)
   0.02%    0x00007f5d3cf7bb12:   data16 nopw 0x0(%rax,%rax,1)
   0.23%    0x00007f5d3cf7bb1c:   data16 data16 xchg %ax,%ax
   0.02%    0x00007f5d3cf7bb20:   cmp    $0x100000,%r10d
            0x00007f5d3cf7bb27:   ja     0x00007f5d3cf7c765           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@235 (line 1294)
   0.12%    0x00007f5d3cf7bb2d:   mov    %rcx,0x58(%rsp)
   0.01%    0x00007f5d3cf7bb32:   mov    %r10d,0x50(%rsp)             ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.39%    0x00007f5d3cf7bb37:   mov    0x108(%r15),%rbx             ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@235 (line 1294)
   0.04%    0x00007f5d3cf7bb3e:   mov    %rcx,%r11
   0.12%    0x00007f5d3cf7bb41:   and    $0xfffffffffffffff8,%r11
   0.01%    0x00007f5d3cf7bb45:   mov    %rbx,%r10
   0.22%    0x00007f5d3cf7bb48:   add    %r11,%r10
   0.04%    0x00007f5d3cf7bb4b:   cmp    0x118(%r15),%r10
            0x00007f5d3cf7bb52:   jae    0x00007f5d3cf7c76f           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.15%    0x00007f5d3cf7bb58:   mov    %r10,0x108(%r15)
   0.01%    0x00007f5d3cf7bb5f:   prefetchw 0xc0(%r10)
   0.20%    0x00007f5d3cf7bb67:   movq   $0x1,(%rbx)
   0.15%    0x00007f5d3cf7bb6e:   prefetchw 0x100(%r10)
   0.14%    0x00007f5d3cf7bb76:   movl   $0x6848,0x8(%rbx)            ;   {metadata({type array byte})}
   0.36%    0x00007f5d3cf7bb7d:   mov    %edi,0xc(%rbx)
   0.38%    0x00007f5d3cf7bb80:   prefetchw 0x140(%r10)
   0.08%    0x00007f5d3cf7bb88:   prefetchw 0x180(%r10)               ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Matcher::reset@47 (line 407)
                                                                      ; - java.util.regex.Matcher::&lt;init&gt;@90 (line 252)
                                                                      ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                      ; - java.util.regex.Pattern::split@24 (line 1262)
   0.28%    0x00007f5d3cf7bb90:   mov    %rbx,%r10
   0.14%    0x00007f5d3cf7bb93:   add    $0x10,%r10
   0.10%    0x00007f5d3cf7bb97:   mov    %r10,%rsi
   0.03%    0x00007f5d3cf7bb9a:   mov    0x58(%rsp),%r8
   0.11%    0x00007f5d3cf7bb9f:   shr    $0x3,%r8
   0.12%    0x00007f5d3cf7bba3:   mov    %rbx,%r13
   0.14%    0x00007f5d3cf7bba6:   shr    $0x3,%r13
   0.04%    0x00007f5d3cf7bbaa:   test   %ebp,%ebp
            0x00007f5d3cf7bbac:   je     0x00007f5d3cf7cbba
   0.07%    0x00007f5d3cf7bbb2:   movslq %ebp,%rdx                    ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@41 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.05%    0x00007f5d3cf7bbb5:   mov    0x34(%rsp),%r10d
   0.18%    0x00007f5d3cf7bbba:   shl    $0x3,%r10                    ;*invokestatic copyOfRange {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$SubList::toArray@37 (line 1235)
                                                                      ; - java.util.regex.Pattern::split@279 (line 1297)
   0.05%    0x00007f5d3cf7bbbe:   mov    0x30(%rsp),%r11d
   0.09%    0x00007f5d3cf7bbc3:   lea    0x10(%r10,%r11,1),%r10
   0.18%    0x00007f5d3cf7bbc8:   cmp    0x50(%rsp),%ebp
            0x00007f5d3cf7bbcc:   jl     0x00007f5d3cf7c057
   0.09%    0x00007f5d3cf7bbd2:   mov    %r10,%rdi
   0.04%    0x00007f5d3cf7bbd5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.08%    0x00007f5d3cf7bbe0:   vzeroupper 
   0.40%    0x00007f5d3cf7bbe3:   movabs $0x7f5d3c9e2d20,%r10
   0.15%    0x00007f5d3cf7bbed:   call   *%r10                        ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@41 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.54%    0x00007f5d3cf7bbf0:   mov    0x48(%rsp),%r11
   1.79%    0x00007f5d3cf7bbf5:   mov    %r13d,0x14(%r11)             ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@56 (line 239)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@105 (line 1273)
   2.10%    0x00007f5d3cf7bbf9:   mov    %r11,%r8                     ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@41 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@105 (line 1273)
            0x00007f5d3cf7bbfc:   mov    %rbx,%r10
            0x00007f5d3cf7bbff:   xor    %r8,%r10
            0x00007f5d3cf7bc02:   shr    $0x15,%r10
   0.37%    0x00007f5d3cf7bc06:   test   %r10,%r10
            0x00007f5d3cf7bc09:   je     0x00007f5d3cf7bc29           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@56 (line 239)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@105 (line 1273)
            0x00007f5d3cf7bc0b:   shr    $0x9,%r8
            0x00007f5d3cf7bc0f:   movabs $0x7f5d4daaf000,%rdi
            0x00007f5d3cf7bc19:   add    %r8,%rdi                     ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@41 (line 237)
....................................................................................................
  14.16%  <total for region 3>

....[Hottest Region 4]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                   --------------------------------------------------------------------------------
                   - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   StubRoutines::jbyte_disjoint_arraycopy [0x00007f5d3c9e2c60, 0x00007f5d3c9e2d1b] (187 bytes)
                   --------------------------------------------------------------------------------
                     0x00007f5d3c9e2c60:   push   %rbp
                     0x00007f5d3c9e2c61:   mov    %rsp,%rbp
                     0x00007f5d3c9e2c64:   mov    %rdx,%rcx
                     0x00007f5d3c9e2c67:   shr    $0x3,%rdx
   0.46%             0x00007f5d3c9e2c6b:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.08%             0x00007f5d3c9e2c70:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.16%             0x00007f5d3c9e2c75:   neg    %rdx
          ╭          0x00007f5d3c9e2c78:   jmp    Stub::jbyte_disjoint_arraycopy+136 0x00007f5d3c9e2ce8
   0.15%  │↗     ↗   0x00007f5d3c9e2c7d:   mov    0x8(%rdi,%rdx,8),%rax
   0.37%  ││     │   0x00007f5d3c9e2c82:   mov    %rax,0x8(%rsi,%rdx,8)
   0.21%  ││     │   0x00007f5d3c9e2c87:   inc    %rdx
          │╰     │   0x00007f5d3c9e2c8a:   jne    Stub::jbyte_disjoint_arraycopy+29 0x00007f5d3c9e2c7d
   0.45%  │      │↗  0x00007f5d3c9e2c8c:   test   $0x4,%ecx
          │ ╭    ││  0x00007f5d3c9e2c92:   je     Stub::jbyte_disjoint_arraycopy+66 0x00007f5d3c9e2ca2
   0.27%  │ │    ││  0x00007f5d3c9e2c94:   mov    0x8(%rdi),%eax
   0.79%  │ │    ││  0x00007f5d3c9e2c97:   mov    %eax,0x8(%rsi)
   0.41%  │ │    ││  0x00007f5d3c9e2c9a:   add    $0x4,%rdi
          │ │    ││  0x00007f5d3c9e2c9e:   add    $0x4,%rsi
   0.07%  │ ↘    ││  0x00007f5d3c9e2ca2:   test   $0x2,%ecx
          │  ╭   ││  0x00007f5d3c9e2ca8:   je     Stub::jbyte_disjoint_arraycopy+90 0x00007f5d3c9e2cba
   0.16%  │  │   ││  0x00007f5d3c9e2caa:   mov    0x8(%rdi),%ax
   0.83%  │  │   ││  0x00007f5d3c9e2cae:   mov    %ax,0x8(%rsi)
   0.40%  │  │   ││  0x00007f5d3c9e2cb2:   add    $0x2,%rdi
          │  │   ││  0x00007f5d3c9e2cb6:   add    $0x2,%rsi
   0.09%  │  ↘   ││  0x00007f5d3c9e2cba:   test   $0x1,%ecx
   0.05%  │   ╭  ││  0x00007f5d3c9e2cc0:   je     Stub::jbyte_disjoint_arraycopy+104 0x00007f5d3c9e2cc8
   0.23%  │   │  ││  0x00007f5d3c9e2cc2:   mov    0x8(%rdi),%al
   0.30%  │   │  ││  0x00007f5d3c9e2cc5:   mov    %al,0x8(%rsi)
   0.59%  │   ↘  ││  0x00007f5d3c9e2cc8:   xor    %rax,%rax
   0.00%  │      ││  0x00007f5d3c9e2ccb:   vzeroupper 
   0.48%  │      ││  0x00007f5d3c9e2cce:   leave  
   0.76%  │      ││  0x00007f5d3c9e2ccf:   ret    
          │    ↗ ││  0x00007f5d3c9e2cd0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │ ││  0x00007f5d3c9e2cd6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │ ││  0x00007f5d3c9e2cdc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
          │    │ ││  0x00007f5d3c9e2ce2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
   0.09%  ↘    │ ││  0x00007f5d3c9e2ce8:   add    $0x8,%rdx
               ╰ ││  0x00007f5d3c9e2cec:   jle    Stub::jbyte_disjoint_arraycopy+112 0x00007f5d3c9e2cd0
   0.09%         ││  0x00007f5d3c9e2cee:   sub    $0x4,%rdx
                ╭││  0x00007f5d3c9e2cf2:   jg     Stub::jbyte_disjoint_arraycopy+164 0x00007f5d3c9e2d04
                │││  0x00007f5d3c9e2cf4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                │││  0x00007f5d3c9e2cfa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                │││  0x00007f5d3c9e2d00:   add    $0x4,%rdx
   0.37%        ↘││  0x00007f5d3c9e2d04:   vpxor  %ymm0,%ymm0,%ymm0
                 ││  0x00007f5d3c9e2d08:   vpxor  %ymm1,%ymm1,%ymm1
                 ││  0x00007f5d3c9e2d0c:   sub    $0x4,%rdx
                 ╰│  0x00007f5d3c9e2d10:   jl     Stub::jbyte_disjoint_arraycopy+29 0x00007f5d3c9e2c7d
   0.14%          ╰  0x00007f5d3c9e2d16:   jmp    Stub::jbyte_disjoint_arraycopy+44 0x00007f5d3c9e2c8c
                   --------------------------------------------------------------------------------
                   - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   StubRoutines::jbyte_arraycopy [0x00007f5d3c9e2d20, 0x00007f5d3c9e2de6] (198 bytes)
                   --------------------------------------------------------------------------------
   1.32%             0x00007f5d3c9e2d20:   push   %rbp
   3.84%             0x00007f5d3c9e2d21:   mov    %rsp,%rbp
                     0x00007f5d3c9e2d24:   cmp    %rdi,%rsi
....................................................................................................
  13.53%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 5, compile id 537 

                                                                          ; - java.util.ArrayList::add@20 (line 467)
                                                                          ; - java.util.regex.Pattern::split@105 (line 1273)
                0x00007f5d3cf7bc1c:   nopl   0x0(%rax)
                0x00007f5d3cf7bc20:   cmpb   $0x4,(%rdi)
                0x00007f5d3cf7bc23:   jne    0x00007f5d3cf7c0d7           ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern::split@105 (line 1273)
                0x00007f5d3cf7bc29:   mov    %r12b,0x10(%r11)             ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@63 (line 247)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
   0.43%     ↗  0x00007f5d3cf7bc2d:   mov    0x8(%r11),%r8d
             │  0x00007f5d3cf7bc31:   cmp    $0xeba0,%r8d                 ;   {metadata(&apos;java/lang/String&apos;)}
             │  0x00007f5d3cf7bc38:   jne    0x00007f5d3cf7cb4c           ;*invokevirtual matcher {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.19%     │  0x00007f5d3cf7bc3e:   mov    0x40(%rsp),%rdi
   0.00%     │  0x00007f5d3cf7bc43:   mov    0xc(%rdi),%edx
   0.15%     │  0x00007f5d3cf7bc46:   mov    0x3c(%rsp),%r8d
             │  0x00007f5d3cf7bc4b:   inc    %r8d                         ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 247)
             │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
             │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.25%     │  0x00007f5d3cf7bc4e:   mov    0x38(%rsp),%ebp
             │  0x00007f5d3cf7bc52:   inc    %ebp                         ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
             │                                                            ; - java.util.regex.Matcher::reset@26 (line 406)
             │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@90 (line 252)
             │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
             │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.15%     │  0x00007f5d3cf7bc54:   mov    0x3c(%rsp),%ebx
   0.00%     │  0x00007f5d3cf7bc58:   cmp    %edx,%ebx
   0.24%     │  0x00007f5d3cf7bc5a:   nopw   0x0(%rax,%rax,1)
          ╭  │  0x00007f5d3cf7bc60:   je     0x00007f5d3cf7bde7           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern::split@37 (line 1266)
   0.16%  │  │  0x00007f5d3cf7bc66:   mov    0x2c(%rsp),%r9d              ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 247)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%  │  │  0x00007f5d3cf7bc6b:   cmp    %edx,%ebx
          │  │  0x00007f5d3cf7bc6d:   jae    0x00007f5d3cf7cb0d           ;*invokestatic copyOfRange {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.ArrayList$SubList::toArray@37 (line 1235)
          │  │                                                            ; - java.util.regex.Pattern::split@279 (line 1297)
   0.17%  │  │  0x00007f5d3cf7bc73:   mov    0x8(%rdi),%ecx
   0.00%  │  │  0x00007f5d3cf7bc76:   data16 nopw 0x0(%rax,%rax,1)
   0.17%  │  │  0x00007f5d3cf7bc80:   cmp    $0x1550,%ecx                 ;   {metadata(&apos;java/lang/Object&apos;[])}
          │  │  0x00007f5d3cf7bc86:   jne    0x00007f5d3cf7cb70           ;*anewarray {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@83 (line 249)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
          │  │  0x00007f5d3cf7bc8c:   lea    0x10(%rdi,%rbx,4),%rbx
   0.15%  │  │  0x00007f5d3cf7bc91:   cmpb   $0x0,0x38(%r15)
   0.00%  │  │  0x00007f5d3cf7bc96:   jne    0x00007f5d3cf7bfc8           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.20%  │  │  0x00007f5d3cf7bc9c:   mov    %rbx,%r10                    ;*anewarray {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.ArrayList::grow@52 (line 239)
          │  │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │  │                                                            ; - java.util.ArrayList::add@7 (line 454)
          │  │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │  │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │  │  0x00007f5d3cf7bc9f:   mov    %r11,%rcx
   0.16%  │  │  0x00007f5d3cf7bca2:   shr    $0x3,%rcx
          │  │  0x00007f5d3cf7bca6:   mov    %ecx,(%rbx)                  ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.51%  │  │  0x00007f5d3cf7bca8:   xor    %r10,%r11
          │  │  0x00007f5d3cf7bcab:   shr    $0x15,%r11
          │  │  0x00007f5d3cf7bcaf:   test   %r11,%r11
          │╭ │  0x00007f5d3cf7bcb2:   je     0x00007f5d3cf7bcce           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.regex.Pattern::split@29 (line 1265)
          ││ │  0x00007f5d3cf7bcb4:   shr    $0x9,%r10
   0.00%  ││ │  0x00007f5d3cf7bcb8:   movabs $0x7f5d4daaf000,%rdi
          ││ │  0x00007f5d3cf7bcc2:   add    %r10,%rdi                    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.lang.String::&lt;init&gt;@6 (line 4536)
          ││ │                                                            ; - java.lang.StringLatin1::newString@20 (line 769)
          ││ │                                                            ; - java.lang.String::substring@41 (line 2710)
          ││ │                                                            ; - java.lang.String::subSequence@3 (line 2743)
          ││ │                                                            ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%  ││ │  0x00007f5d3cf7bcc5:   cmpb   $0x4,(%rdi)
   0.01%  ││ │  0x00007f5d3cf7bcc8:   jne    0x00007f5d3cf7bfff           ;*putfield last {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@16 (line 160)
          ││ │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          ││ │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%  │↘ │  0x00007f5d3cf7bcce:   mov    0x10(%rsp),%r11
   0.31%  │  │  0x00007f5d3cf7bcd3:   mov    0x1c(%r11),%r10d             ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 247)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.05%  │  │  0x00007f5d3cf7bcd7:   test   %r10d,%r10d
   0.27%  │  │  0x00007f5d3cf7bcda:   nopw   0x0(%rax,%rax,1)
   0.01%  │  │  0x00007f5d3cf7bce0:   jl     0x00007f5d3cf7d10c
   0.38%  │  │  0x00007f5d3cf7bce6:   mov    %r8d,0x34(%rsp)
          │  │  0x00007f5d3cf7bceb:   mov    %ebp,0x30(%rsp)              ;*putfield localsPos {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@86 (line 249)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%  │  │  0x00007f5d3cf7bcef:   mov    0x20(%r11),%r11d             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern::matcher@4 (line 1128)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%  │  │  0x00007f5d3cf7bcf3:   mov    %r11d,0x2c(%rsp)
   0.42%  │  │  0x00007f5d3cf7bcf8:   lea    (%r12,%r9,8),%r10            ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.lang.String::substring@8 (line 2705)
          │  │                                                            ; - java.lang.String::subSequence@3 (line 2743)
          │  │                                                            ; - java.util.regex.Pattern::split@208 (line 1289)
          │  │  0x00007f5d3cf7bcfc:   mov    %r10,0x38(%rsp)
   0.00%  │  │  0x00007f5d3cf7bd01:   mov    %r9d,%ebp
          │  │  0x00007f5d3cf7bd04:   mov    0x10(%rsp),%rsi
   0.37%  │  │  0x00007f5d3cf7bd09:   data16 xchg %ax,%ax
          │  │  0x00007f5d3cf7bd0c:   vzeroupper 
   0.33%  │  │  0x00007f5d3cf7bd0f:   call   0x00007f5d3cf6c1a0           ; ImmutableOopMap {rbp=NarrowOop [0]=Oop [16]=Oop [24]=Oop [32]=Oop [56]=Oop }
          │  │                                                            ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
          │  │                                                            ;   {optimized virtual_call}
   0.07%  │  │  0x00007f5d3cf7bd14:   test   %eax,%eax
          │  │  0x00007f5d3cf7bd16:   je     0x00007f5d3cf7c265           ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   0.12%  │  │  0x00007f5d3cf7bd1c:   mov    (%rsp),%r11
   0.22%  │  │  0x00007f5d3cf7bd20:   mov    0x18(%rsp),%rsi
   0.12%  │  │  0x00007f5d3cf7bd25:   mov    0x20(%rsp),%r13
   0.07%  │  │  0x00007f5d3cf7bd2a:   mov    %ebp,%eax
          │  │  0x00007f5d3cf7bd2c:   mov    0x2c(%rsp),%ecx
   0.22%  │  │  0x00007f5d3cf7bd30:   mov    0x30(%rsp),%r10d
   0.25%  │  │  0x00007f5d3cf7bd35:   mov    0x34(%rsp),%r8d
   0.02%  │  │  0x00007f5d3cf7bd3a:   mov    0x38(%rsp),%r9
   0.13%  │  │  0x00007f5d3cf7bd3f:   mov    0x10(%rsp),%rdi
   0.08%  │  │  0x00007f5d3cf7bd44:   mov    0x1c(%rdi),%ebp
   1.44%  │  │  0x00007f5d3cf7bd47:   test   %ecx,%ecx
          │  │  0x00007f5d3cf7bd49:   je     0x00007f5d3cf7c24a           ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@63 (line 247)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%  │  │  0x00007f5d3cf7bd4f:   test   %ebp,%ebp
          │  │  0x00007f5d3cf7bd51:   jl     0x00007f5d3cf7d071
   0.33%  │  │  0x00007f5d3cf7bd57:   mov    0x14(%r13),%edx
   0.04%  │  │  0x00007f5d3cf7bd5b:   nopl   0x0(%rax,%rax,1)
   0.01%  │  │  0x00007f5d3cf7bd60:   mov    0xc(%r12,%rdx,8),%ebx        ; implicit exception: dispatches to 0x00007f5d3cf7dbf8
          │  │                                                            ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.33%  │  │  0x00007f5d3cf7bd65:   mov    %edx,0x34(%rsp)
          │  │  0x00007f5d3cf7bd69:   mov    %r9,0x40(%rsp)
   0.05%  │  │  0x00007f5d3cf7bd6e:   mov    %r8d,0x3c(%rsp)
   0.01%  │  │  0x00007f5d3cf7bd73:   mov    %r10d,0x38(%rsp)
   0.31%  │  │  0x00007f5d3cf7bd78:   mov    %ecx,0x30(%rsp)
          │  │  0x00007f5d3cf7bd7c:   mov    %eax,0x2c(%rsp)
   0.04%  │  │  0x00007f5d3cf7bd80:   mov    %r13,0x20(%rsp)
   0.18%  │  │  0x00007f5d3cf7bd85:   mov    %rsi,0x18(%rsp)
   0.73%  │  │  0x00007f5d3cf7bd8a:   mov    %r11,(%rsp)
   0.00%  │  │  0x00007f5d3cf7bd8e:   movsbl 0x10(%r13),%ecx
   0.04%  │  │  0x00007f5d3cf7bd93:   mov    %ebx,%r11d
   0.01%  │  │  0x00007f5d3cf7bd96:   sar    %cl,%r11d                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@63 (line 247)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.33%  │  │  0x00007f5d3cf7bd99:   mov    0x30(%rsp),%r8d
   0.01%  │  │  0x00007f5d3cf7bd9e:   xchg   %ax,%ax
   0.32%  │  │  0x00007f5d3cf7bda0:   test   %r8d,%r8d
          │  │  0x00007f5d3cf7bda3:   jl     0x00007f5d3cf7ce47
          │  │  0x00007f5d3cf7bda9:   cmp    %ebp,%r8d
          │  │  0x00007f5d3cf7bdac:   jg     0x00007f5d3cf7d0a8
   0.03%  │  │  0x00007f5d3cf7bdb2:   cmp    %r11d,%ebp
          │  │  0x00007f5d3cf7bdb5:   jg     0x00007f5d3cf7d0d8           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                            ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
          │  │                                                            ; - java.util.regex.Pattern::matcher@38 (line 1134)
          │  │                                                            ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%  │  │  0x00007f5d3cf7bdbb:   nopl   0x0(%rax,%rax,1)
   0.31%  │  │  0x00007f5d3cf7bdc0:   test   %r8d,%r8d
          │  │  0x00007f5d3cf7bdc3:   jne    0x00007f5d3cf7ba30
          │  │  0x00007f5d3cf7bdc9:   cmp    %r11d,%ebp
          │ ╭│  0x00007f5d3cf7bdcc:   je     0x00007f5d3cf7bddf           ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
          │ ││                                                            ; - java.util.regex.Pattern::split@31 (line 1265)
   0.00%  │ ││  0x00007f5d3cf7bdce:   mov    %ebp,0x48(%rsp)
          │ ││  0x00007f5d3cf7bdd2:   xor    %r10d,%r10d
          │ ││  0x00007f5d3cf7bdd5:   mov    %r10d,0x30(%rsp)
          │ ││  0x00007f5d3cf7bdda:   jmp    0x00007f5d3cf7ba3b
          │ ↘│  0x00007f5d3cf7bddf:   mov    %r13,%r11
          │  ╰  0x00007f5d3cf7bde2:   jmp    0x00007f5d3cf7bc2d
   0.03%  ↘     0x00007f5d3cf7bde7:   test   %edx,%edx
                0x00007f5d3cf7bde9:   jbe    0x00007f5d3cf7c12a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern::split@34 (line 1265)
   0.01%        0x00007f5d3cf7bdef:   mov    %ebx,%eax
                0x00007f5d3cf7bdf1:   sub    %edx,%eax
   0.00%        0x00007f5d3cf7bdf3:   mov    %edx,%r10d
                0x00007f5d3cf7bdf6:   sar    %r10d                        ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::reset@26 (line 406)
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@90 (line 252)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
                0x00007f5d3cf7bdf9:   inc    %eax
                0x00007f5d3cf7bdfb:   cmp    %r10d,%eax
   0.00%        0x00007f5d3cf7bdfe:   mov    %eax,%ecx
                0x00007f5d3cf7be00:   cmovl  %r10d,%ecx                   ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%        0x00007f5d3cf7be04:   mov    %ecx,%r9d
                0x00007f5d3cf7be07:   add    %edx,%r9d                    ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 247)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
                0x00007f5d3cf7be0a:   mov    %r9d,%r10d
                0x00007f5d3cf7be0d:   dec    %r10d
   0.00%        0x00007f5d3cf7be10:   cmp    $0x7ffffff7,%r10d
                0x00007f5d3cf7be17:   jae    0x00007f5d3cf7d5b4           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
                0x00007f5d3cf7be1d:   mov    %r9d,0x4c(%rsp)
                0x00007f5d3cf7be22:   mov    %r8d,0x48(%rsp)
   0.02%        0x00007f5d3cf7be27:   mov    %edx,0x2c(%rsp)
                0x00007f5d3cf7be2b:   mov    %r11,0x40(%rsp)
                0x00007f5d3cf7be30:   mov    %rdi,0x38(%rsp)
   0.00%        0x00007f5d3cf7be35:   mov    %ebx,0x34(%rsp)
   0.00%        0x00007f5d3cf7be39:   mov    %ebp,0x30(%rsp)
                0x00007f5d3cf7be3d:   mov    0x8(%rdi),%r10d              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::substring@12 (line 2706)
                                                                          ; - java.lang.String::subSequence@3 (line 2743)
                                                                          ; - java.util.regex.Pattern::split@89 (line 1272)
                0x00007f5d3cf7be41:   movabs $0x800000000,%rsi
   0.00%        0x00007f5d3cf7be4b:   add    %r10,%rsi                    ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Pattern::split@34 (line 1265)
                0x00007f5d3cf7be4e:   mov    0x70(%rsi),%r11
                0x00007f5d3cf7be52:   mov    (%r11),%r8                   ;*putfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@65 (line 247)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
   0.01%        0x00007f5d3cf7be55:   test   %r9d,%r9d
                0x00007f5d3cf7be58:   jl     0x00007f5d3cf7d4f8           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
                0x00007f5d3cf7be5e:   mov    0x14(%rsi),%r11d
                0x00007f5d3cf7be62:   movslq %r11d,%r9
                0x00007f5d3cf7be65:   mov    (%rsi,%r9,1),%r9
   0.01%        0x00007f5d3cf7be69:   cmp    %r9,%rsi
                0x00007f5d3cf7be6c:   jne    0x00007f5d3cf7bf85           ;*invokevirtual grow {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::grow@7 (line 244)
                                                                          ; - java.util.ArrayList::add@7 (line 454)
                                                                          ; - java.util.ArrayList::add@20 (line 467)
                                                                          ; - java.util.regex.Pattern::split@218 (line 1289)
   0.00%        0x00007f5d3cf7be72:   movslq %ecx,%rbp
                0x00007f5d3cf7be75:   movslq %edx,%r11
                0x00007f5d3cf7be78:   add    %r11,%rbp
                0x00007f5d3cf7be7b:   shl    $0x2,%rbp
   0.00%        0x00007f5d3cf7be7f:   add    $0x17,%rbp                   ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.lang.String::isLatin1@18 (line 4549)
                                                                          ; - java.lang.String::substring@28 (line 2710)
                                                                          ; - java.lang.String::subSequence@3 (line 2743)
                                                                          ; - java.util.regex.Pattern::split@89 (line 1272)
                0x00007f5d3cf7be83:   mov    %rbp,0x50(%rsp)
                0x00007f5d3cf7be88:   mov    0x4c(%rsp),%ebp
                0x00007f5d3cf7be8c:   cmp    $0x40000,%ebp
                0x00007f5d3cf7be92:   ja     0x00007f5d3cf7cc84           ;*putfield locals {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.regex.Matcher::&lt;init&gt;@75 (line 248)
                                                                          ; - java.util.regex.Pattern::matcher@38 (line 1134)
                                                                          ; - java.util.regex.Pattern::split@24 (line 1262)
   0.00%        0x00007f5d3cf7be98:   mov    0x108(%r15),%r9              ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList$SubList::checkForComodification@4 (line 1414)
                                                                          ; - java.util.ArrayList$SubList::toArray@1 (line 1233)
                                                                          ; - java.util.regex.Pattern::split@279 (line 1297)
                0x00007f5d3cf7be9f:   mov    0x50(%rsp),%rcx
                0x00007f5d3cf7bea4:   and    $0xfffffffffffffff8,%rcx
                0x00007f5d3cf7bea8:   mov    %r9,%r11
                0x00007f5d3cf7beab:   add    %rcx,%r11
....................................................................................................
  11.06%  <total for region 5>

....[Hottest Regions]...............................................................................
  23.28%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 514 
  21.61%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 514 
  14.16%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 537 
  13.53%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
  11.06%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 537 
   7.65%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 514 
   3.04%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 514 
   1.80%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.73%              kernel  [unknown] 
   0.64%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.23%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 537 
   0.18%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 537 
   0.17%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.07%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 537 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   1.58%  <...other 427 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  55.58%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 514 
  25.80%         c2, level 4  java.util.regex.Pattern::split, version 5, compile id 537 
  13.53%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.93%              kernel  [unknown] 
   1.81%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.64%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.08%                      <unknown> 
   0.05%        libc-2.31.so  [unknown] 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  G1BarrierSet::invalidate 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%        libc-2.31.so  __strncat_ssse3 
   0.01%           libjvm.so  HeapRegionManager::par_iterate 
   0.01%        libc-2.31.so  re_search_stub 
   0.01%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  fileStream::write 
   0.01%         c2, level 4  java.lang.String::length, version 2, compile id 132 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.40%  <...other 136 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  81.40%         c2, level 4
  15.98%        runtime stub
   1.93%              kernel
   0.40%           libjvm.so
   0.14%        libc-2.31.so
   0.08%                    
   0.02%  libpthread-2.31.so
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%     perf-112293.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = _)

# Run progress: 50.00% complete, ETA 00:03:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 104.902 us/op
# Warmup Iteration   2: 97.381 us/op
# Warmup Iteration   3: 96.819 us/op
# Warmup Iteration   4: 96.809 us/op
# Warmup Iteration   5: 97.720 us/op
Iteration   1: 97.307 us/op
Iteration   2: 96.927 us/op
Iteration   3: 96.730 us/op
Iteration   4: 96.468 us/op
Iteration   5: 96.545 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split":
  96.795 ±(99.9%) 1.297 us/op [Average]
  (min, avg, max) = (96.468, 96.795, 97.307), stdev = 0.337
  CI (99.9%): [95.498, 98.092] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 132148 total address lines.
Perf output processed (skipped 55.805 seconds):
 Column 1: cycles (50874 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.lang.String::split, version 2, compile id 517 

                                                                            ; - java.lang.StringLatin1::indexOf@32 (line 213)
                                                                            ; - java.lang.String::indexOf@13 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
                  0x00007f7098f6f665:   mov    %ebx,0xc(%rsp)
                  0x00007f7098f6f669:   cmp    $0xffffffff,%ebx
                  0x00007f7098f6f66c:   je     0x00007f7098f70820           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::split@138 (line 3121)
                  0x00007f7098f6f672:   xor    %r13d,%r13d
                  0x00007f7098f6f675:   jmp    0x00007f7098f6fa2d
                  0x00007f7098f6f67a:   nopw   0x0(%rax,%rax,1)
   0.21%          0x00007f7098f6f680:   mov    0xc(%rsp),%r8d
   0.31%          0x00007f7098f6f685:   sub    %r13d,%r8d                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::substring@24 (line 2709)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.69%          0x00007f7098f6f688:   test   %ecx,%ecx
                  0x00007f7098f6f68a:   jne    0x00007f7098f705e6           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::isLatin1@10 (line 4549)
                                                                            ; - java.lang.String::substring@28 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.00%          0x00007f7098f6f690:   cmp    %r13d,%r11d
                  0x00007f7098f6f693:   je     0x00007f7098f70265
   0.10%          0x00007f7098f6f699:   mov    0x108(%r15),%rbx
   0.00%          0x00007f7098f6f6a0:   mov    %rbx,%r11
   0.70%          0x00007f7098f6f6a3:   add    $0x18,%r11
   0.01%          0x00007f7098f6f6a7:   cmp    0x118(%r15),%r11
                  0x00007f7098f6f6ae:   jae    0x00007f7098f70187           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::&lt;init&gt;@6 (line 4536)
                                                                            ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.17%          0x00007f7098f6f6b4:   mov    %r11,0x108(%r15)
   0.01%          0x00007f7098f6f6bb:   prefetchw 0xc0(%r11)
   0.63%          0x00007f7098f6f6c3:   movq   $0x1,(%rbx)
   0.01%          0x00007f7098f6f6ca:   movl   $0xeba0,0x8(%rbx)            ;   {metadata(&apos;java/lang/String&apos;)}
   0.16%          0x00007f7098f6f6d1:   mov    %r12d,0xc(%rbx)
   0.00%          0x00007f7098f6f6d5:   mov    %r12,0x10(%rbx)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.StringLatin1::newString@7 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.63%          0x00007f7098f6f6d9:   mov    %rbx,0x58(%rsp)
   0.00%          0x00007f7098f6f6de:   xchg   %ax,%ax
   0.16%          0x00007f7098f6f6e0:   test   %r8d,%r8d
                  0x00007f7098f6f6e3:   jl     0x00007f7098f70670           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@5 (line 3820)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.00%          0x00007f7098f6f6e9:   cmp    $0x100000,%r8d
                  0x00007f7098f6f6f0:   ja     0x00007f7098f703f8
   0.66%          0x00007f7098f6f6f6:   movslq %r8d,%rsi                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.00%          0x00007f7098f6f6f9:   test   %r13d,%r13d
   0.14%          0x00007f7098f6f6fc:   nopl   0x0(%rax)
                  0x00007f7098f6f700:   jl     0x00007f7098f704a4           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.67%          0x00007f7098f6f706:   mov    0x30(%rsp),%ecx
   0.01%          0x00007f7098f6f70a:   sub    %r13d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@53 (line 3823)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.16%          0x00007f7098f6f70d:   cmp    %r8d,%ecx
   0.00%          0x00007f7098f6f710:   mov    %r8d,%ebp
   0.70%          0x00007f7098f6f713:   cmovl  %ecx,%ebp                    ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@55 (line 3824)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.00%          0x00007f7098f6f716:   mov    %r13d,%r11d
   0.16%          0x00007f7098f6f719:   add    %ebp,%r11d
   0.00%          0x00007f7098f6f71c:   mov    0x30(%rsp),%ecx
   0.63%          0x00007f7098f6f720:   cmp    %r11d,%ecx
                  0x00007f7098f6f723:   jb     0x00007f7098f704a4
   0.00%          0x00007f7098f6f729:   cmp    %ebp,%r8d
                  0x00007f7098f6f72c:   jb     0x00007f7098f704a4
   0.16%          0x00007f7098f6f732:   test   %ebp,%ebp
                  0x00007f7098f6f734:   jl     0x00007f7098f704a4           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
                  0x00007f7098f6f73a:   add    $0x17,%rsi                   ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.64%          0x00007f7098f6f73e:   xchg   %ax,%ax
   0.00%          0x00007f7098f6f740:   cmp    $0x100000,%r8d
                  0x00007f7098f6f747:   ja     0x00007f7098f701ed
   0.16%          0x00007f7098f6f74d:   mov    %r9d,0x38(%rsp)
                  0x00007f7098f6f752:   mov    0x108(%r15),%rbx
   0.66%          0x00007f7098f6f759:   mov    %rsi,%r11
   0.00%          0x00007f7098f6f75c:   and    $0xfffffffffffffff8,%r11
   0.14%          0x00007f7098f6f760:   mov    %rbx,%r9
                  0x00007f7098f6f763:   add    %r11,%r9
   0.66%          0x00007f7098f6f766:   cmp    0x118(%r15),%r9
                  0x00007f7098f6f76d:   jae    0x00007f7098f701e8           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::&lt;init&gt;@6 (line 4536)
                                                                            ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.00%          0x00007f7098f6f773:   mov    %r9,0x108(%r15)
   0.16%          0x00007f7098f6f77a:   prefetchw 0xc0(%r9)
   0.05%          0x00007f7098f6f782:   movq   $0x1,(%rbx)
   0.62%          0x00007f7098f6f789:   prefetchw 0x100(%r9)
   0.03%          0x00007f7098f6f791:   movl   $0x6848,0x8(%rbx)            ;   {metadata({type array byte})}
   0.19%          0x00007f7098f6f798:   mov    %r8d,0xc(%rbx)
   0.03%          0x00007f7098f6f79c:   prefetchw 0x140(%r9)
   0.60%          0x00007f7098f6f7a4:   prefetchw 0x180(%r9)                ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                            ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.31%          0x00007f7098f6f7ac:   mov    %rbx,%r11
   0.11%          0x00007f7098f6f7af:   add    $0x10,%r11
   0.03%          0x00007f7098f6f7b3:   shr    $0x3,%rsi
   0.59%          0x00007f7098f6f7b7:   mov    %rbx,%r14
   0.03%          0x00007f7098f6f7ba:   shr    $0x3,%r14
   0.16%          0x00007f7098f6f7be:   xchg   %ax,%ax
   0.03%          0x00007f7098f6f7c0:   test   %ebp,%ebp
                  0x00007f7098f6f7c2:   je     0x00007f7098f70405
   0.60%          0x00007f7098f6f7c8:   movslq %ebp,%rdx
   0.03%          0x00007f7098f6f7cb:   shl    $0x3,%r10                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::length@1 (line 1477)
                                                                            ; - java.lang.String::substring@1 (line 2704)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.13%          0x00007f7098f6f7cf:   lea    0x10(%r10,%r13,1),%r10
   0.03%          0x00007f7098f6f7d4:   cmp    %r8d,%ebp
                  0x00007f7098f6f7d7:   jl     0x00007f7098f700b7
   0.60%          0x00007f7098f6f7dd:   mov    %r10,%rdi
   0.01%          0x00007f7098f6f7e0:   mov    %r11,%rsi
   0.14%          0x00007f7098f6f7e3:   vzeroupper 
   0.74%          0x00007f7098f6f7e6:   movabs $0x7f70989e2d20,%r10
   0.03%          0x00007f7098f6f7f0:   call   *%r10
   1.28%          0x00007f7098f6f7f3:   cmpb   $0x0,0x38(%r15)
   3.40%  ╭       0x00007f7098f6f7f8:   jne    0x00007f7098f6f7fa
   0.82%  ↘       0x00007f7098f6f7fa:   mov    0x58(%rsp),%r10
   0.02%          0x00007f7098f6f7ff:   mov    %r14d,0x14(%r10)
   4.72%          0x00007f7098f6f803:   mov    %rbx,%r10
   0.01%          0x00007f7098f6f806:   mov    0x58(%rsp),%r11
   0.01%          0x00007f7098f6f80b:   xor    %r11,%r10
   0.00%          0x00007f7098f6f80e:   shr    $0x15,%r10
   0.83%          0x00007f7098f6f812:   test   %r10,%r10
           ╭      0x00007f7098f6f815:   je     0x00007f7098f6f831
           │      0x00007f7098f6f817:   shr    $0x9,%r11
           │      0x00007f7098f6f81b:   movabs $0x7f70aa534000,%rdi
           │      0x00007f7098f6f825:   add    %r11,%rdi
           │      0x00007f7098f6f828:   cmpb   $0x4,(%rdi)
           │      0x00007f7098f6f82b:   jne    0x00007f7098f7013e           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.lang.String::&lt;init&gt;@6 (line 4536)
           │                                                                ; - java.lang.StringLatin1::newString@20 (line 769)
           │                                                                ; - java.lang.String::substring@41 (line 2710)
           │                                                                ; - java.lang.String::split@164 (line 3123)
   0.00%   ↘      0x00007f7098f6f831:   mov    0x58(%rsp),%r10
   0.01%          0x00007f7098f6f836:   mov    %r12b,0x10(%r10)             ;*synchronization entry
                                                                            ; - java.lang.StringLatin1::newString@-1 (line 766)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.95%          0x00007f7098f6f83a:   mov    0x38(%rsp),%r9d              ;*invokevirtual substring {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.22%          0x00007f7098f6f83f:   mov    0x50(%rsp),%r10
   0.01%          0x00007f7098f6f844:   incl   0xc(%r10)                    ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::add@7 (line 466)
                                                                            ; - java.lang.String::split@167 (line 3123)
   1.62%          0x00007f7098f6f848:   mov    0x14(%r10),%r8d              ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::add@13 (line 467)
                                                                            ; - java.lang.String::split@167 (line 3123)
   0.00%          0x00007f7098f6f84c:   mov    0xc(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f7098f709f8
                                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::add@2 (line 453)
                                                                            ; - java.util.ArrayList::add@20 (line 467)
                                                                            ; - java.lang.String::split@167 (line 3123)
   0.78%          0x00007f7098f6f851:   mov    0x10(%r10),%ebx              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::add@17 (line 467)
                                                                            ; - java.lang.String::split@167 (line 3123)
   0.01%          0x00007f7098f6f855:   lea    (%r12,%r8,8),%rdi            ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::add@13 (line 467)
                                                                            ; - java.lang.String::split@167 (line 3123)
   0.00%          0x00007f7098f6f859:   mov    %ebx,%r14d
   0.00%          0x00007f7098f6f85c:   inc    %r14d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::grow@6 (line 244)
                                                                            ; - java.util.ArrayList::add@7 (line 454)
                                                                            ; - java.util.ArrayList::add@20 (line 467)
                                                                            ; - java.lang.String::split@167 (line 3123)
   0.83%          0x00007f7098f6f85f:   nop
   0.01%          0x00007f7098f6f860:   cmp    %r11d,%ebx
                  0x00007f7098f6f863:   je     0x00007f7098f6fa88           ;*aload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::add@11 (line 455)
                                                                            ; - java.util.ArrayList::add@20 (line 467)
                                                                            ; - java.lang.String::split@167 (line 3123)
   0.10%          0x00007f7098f6f869:   cmp    %r11d,%ebx
                  0x00007f7098f6f86c:   jae    0x00007f7098f703c5
   1.35%          0x00007f7098f6f872:   mov    0x8(%rdi),%r10d
   0.03%          0x00007f7098f6f876:   data16 nopw 0x0(%rax,%rax,1)
   0.00%          0x00007f7098f6f880:   cmp    $0x1550,%r10d                ;   {metadata(&apos;java/lang/Object&apos;[])}
                  0x00007f7098f6f887:   jne    0x00007f7098f70471
   0.11%          0x00007f7098f6f88d:   lea    0x10(%rdi,%rbx,4),%rbx       ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::&lt;init&gt;@6 (line 4536)
                                                                            ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.66%          0x00007f7098f6f892:   cmpb   $0x0,0x38(%r15)
   0.03%          0x00007f7098f6f897:   jne    0x00007f7098f70030           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.util.ArrayList::add@14 (line 455)
                                                                            ; - java.util.ArrayList::add@20 (line 467)
                                                                            ; - java.lang.String::split@167 (line 3123)
   0.07%          0x00007f7098f6f89d:   mov    0x58(%rsp),%r10
   0.04%          0x00007f7098f6f8a2:   mov    0xc(%rsp),%r13d
   0.67%          0x00007f7098f6f8a7:   inc    %r13d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::split@174 (line 3124)
   0.04%          0x00007f7098f6f8aa:   mov    0x58(%rsp),%r11
   0.05%          0x00007f7098f6f8af:   mov    %r11,%r8
   0.05%          0x00007f7098f6f8b2:   shr    $0x3,%r8
   0.77%          0x00007f7098f6f8b6:   mov    %r8d,(%rbx)
   0.84%          0x00007f7098f6f8b9:   mov    %rbx,%r11
   0.00%          0x00007f7098f6f8bc:   xor    %r11,%r10
   0.01%          0x00007f7098f6f8bf:   shr    $0x15,%r10
   0.20%          0x00007f7098f6f8c3:   test   %r10,%r10
            ╭     0x00007f7098f6f8c6:   je     0x00007f7098f6f8e6
   0.01%    │     0x00007f7098f6f8c8:   shr    $0x9,%r11
   0.01%    │     0x00007f7098f6f8cc:   movabs $0x7f70aa534000,%rdi
            │     0x00007f7098f6f8d6:   add    %r11,%rdi
   0.00%    │     0x00007f7098f6f8d9:   cmpb   $0x4,(%rdi)
   0.01%    │     0x00007f7098f6f8dc:   nopl   0x0(%rax)
            │     0x00007f7098f6f8e0:   jne    0x00007f7098f70066           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
            │                                                               ; - java.util.ArrayList::add@14 (line 455)
            │                                                               ; - java.util.ArrayList::add@20 (line 467)
            │                                                               ; - java.lang.String::split@167 (line 3123)
   0.61%    ↘     0x00007f7098f6f8e6:   mov    0x50(%rsp),%r10
   0.03%          0x00007f7098f6f8eb:   mov    %r14d,0x10(%r10)             ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::split@177 (line 3124)
   0.37%          0x00007f7098f6f8ef:   mov    (%rsp),%r10
   0.07%          0x00007f7098f6f8f3:   movsbl 0x10(%r10),%r8d              ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::&lt;init&gt;@6 (line 4536)
                                                                            ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                            ; - java.lang.String::substring@41 (line 2710)
                                                                            ; - java.lang.String::split@164 (line 3123)
   0.44%          0x00007f7098f6f8f8:   mov    0x348(%r15),%r10             ; ImmutableOopMap {[0]=Oop [80]=Oop }
                                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                            ; - (reexecute) java.lang.String::split@177 (line 3124)
   0.01%          0x00007f7098f6f8ff:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::split@177 (line 3124)
                                                                            ;   {poll}
   0.50%          0x00007f7098f6f902:   test   %r8d,%r8d
                  0x00007f7098f6f905:   jne    0x00007f7098f705ac           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::isLatin1@10 (line 4549)
                                                                            ; - java.lang.String::indexOf@1 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
   0.07%          0x00007f7098f6f90b:   mov    (%rsp),%r10
   0.44%          0x00007f7098f6f90f:   mov    0x14(%r10),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::indexOf@8 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
   0.04%          0x00007f7098f6f913:   mov    0xc(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f7098f70a08
                                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.StringLatin1::indexOf@10 (line 206)
                                                                            ; - java.lang.String::indexOf@13 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
   2.08%          0x00007f7098f6f918:   test   %r13d,%r13d
   0.00%          0x00007f7098f6f91b:   nopl   0x0(%rax,%rax,1)
   0.01%          0x00007f7098f6f920:   jl     0x00007f7098f7063c           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.StringLatin1::indexOf@13 (line 207)
                                                                            ; - java.lang.String::indexOf@13 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
   0.01%          0x00007f7098f6f926:   cmp    %r11d,%r13d
                  0x00007f7098f6f929:   jge    0x00007f7098f6fc25           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.StringLatin1::indexOf@23 (line 209)
                                                                            ; - java.lang.String::indexOf@13 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
   0.85%          0x00007f7098f6f92f:   mov    %r11d,%edx
   0.02%          0x00007f7098f6f932:   sub    0xc(%rsp),%edx
   0.01%          0x00007f7098f6f936:   dec    %edx
   0.83%          0x00007f7098f6f938:   test   %edx,%edx
   0.80%          0x00007f7098f6f93a:   nopw   0x0(%rax,%rax,1)
   0.01%          0x00007f7098f6f940:   jl     0x00007f7098f704e0           ;*invokestatic indexOfChar {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.StringLatin1::indexOf@32 (line 213)
                                                                            ; - java.lang.String::indexOf@13 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
   0.83%          0x00007f7098f6f946:   lea    (%r12,%r10,8),%rcx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.String::indexOf@8 (line 2419)
                                                                            ; - java.lang.String::split@131 (line 3121)
   0.00%          0x00007f7098f6f94a:   movslq 0xc(%rsp),%rbx
   0.01%          0x00007f7098f6f94f:   lea    0x11(%rcx,%rbx,1),%rdi
   0.01%          0x00007f7098f6f954:   mov    %r9d,%eax
   0.75%          0x00007f7098f6f957:   mov    %rdi,%rbx
   0.00%          0x00007f7098f6f95a:   cmp    $0x10,%edx
                  0x00007f7098f6f95d:   jl     0x00007f7098f6f9dc
   0.02%          0x00007f7098f6f963:   cmp    $0x20,%edx
             ╭    0x00007f7098f6f966:   jl     0x00007f7098f6f9a2
   0.01%     │    0x00007f7098f6f96c:   vmovd  %eax,%xmm0
   0.78%     │    0x00007f7098f6f970:   vpbroadcastb %xmm0,%ymm0
   0.00%     │    0x00007f7098f6f975:   vpxor  %ymm2,%ymm2,%ymm2
   0.02%     │    0x00007f7098f6f979:   mov    %edx,%ecx
   0.01%     │    0x00007f7098f6f97b:   and    $0xffffffe0,%ecx
   1.60%     │    0x00007f7098f6f97e:   and    $0x1f,%edx
   0.00%     │↗   0x00007f7098f6f981:   vmovdqu (%rbx),%ymm1
   1.72%     ││   0x00007f7098f6f985:   vpcmpeqb %ymm0,%ymm1,%ymm1
   5.34%     ││   0x00007f7098f6f989:   vptest %ymm1,%ymm2
   0.10%     ││   0x00007f7098f6f98e:   jae    0x00007f7098f6f9fd
             ││   0x00007f7098f6f994:   add    $0x20,%rbx
             ││   0x00007f7098f6f998:   sub    $0x20,%ecx
             │╰   0x00007f7098f6f99b:   jne    0x00007f7098f6f981
             │ ╭  0x00007f7098f6f99d:   jmp    0x00007f7098f6f9af
             ↘ │  0x00007f7098f6f9a2:   vmovd  %eax,%xmm0
               │  0x00007f7098f6f9a6:   vpxor  %xmm2,%xmm2,%xmm2
               │  0x00007f7098f6f9aa:   vpshufb %xmm2,%xmm0,%xmm0
               ↘  0x00007f7098f6f9af:   cmp    $0x10,%edx
                  0x00007f7098f6f9b2:   jl     0x00007f7098f6f9dc
                  0x00007f7098f6f9b8:   mov    %edx,%ecx
....................................................................................................
  53.57%  <total for region 1>

....[Hottest Region 2]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                    --------------------------------------------------------------------------------
                    - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                    - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                    StubRoutines::jbyte_disjoint_arraycopy [0x00007f70989e2c60, 0x00007f70989e2d1b] (187 bytes)
                    --------------------------------------------------------------------------------
                      0x00007f70989e2c60:   push   %rbp
                      0x00007f70989e2c61:   mov    %rsp,%rbp
   0.36%           ↗  0x00007f70989e2c64:   mov    %rdx,%rcx
   0.02%           │  0x00007f70989e2c67:   shr    $0x3,%rdx
   0.49%           │  0x00007f70989e2c6b:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.09%           │  0x00007f70989e2c70:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.32%           │  0x00007f70989e2c75:   neg    %rdx
   0.07%  ╭        │  0x00007f70989e2c78:   jmp    Stub::jbyte_disjoint_arraycopy+136 0x00007f70989e2ce8
   1.51%  │↗     ↗ │  0x00007f70989e2c7d:   mov    0x8(%rdi,%rdx,8),%rax
   1.74%  ││     │ │  0x00007f70989e2c82:   mov    %rax,0x8(%rsi,%rdx,8)
   0.44%  ││     │ │  0x00007f70989e2c87:   inc    %rdx
          │╰     │ │  0x00007f70989e2c8a:   jne    Stub::jbyte_disjoint_arraycopy+29 0x00007f70989e2c7d
   1.01%  │      │↗│  0x00007f70989e2c8c:   test   $0x4,%ecx
          │ ╭    │││  0x00007f70989e2c92:   je     Stub::jbyte_disjoint_arraycopy+66 0x00007f70989e2ca2
   0.58%  │ │    │││  0x00007f70989e2c94:   mov    0x8(%rdi),%eax
   1.25%  │ │    │││  0x00007f70989e2c97:   mov    %eax,0x8(%rsi)
   0.73%  │ │    │││  0x00007f70989e2c9a:   add    $0x4,%rdi
   0.13%  │ │    │││  0x00007f70989e2c9e:   add    $0x4,%rsi
   1.44%  │ ↘    │││  0x00007f70989e2ca2:   test   $0x2,%ecx
          │  ╭   │││  0x00007f70989e2ca8:   je     Stub::jbyte_disjoint_arraycopy+90 0x00007f70989e2cba
   1.20%  │  │   │││  0x00007f70989e2caa:   mov    0x8(%rdi),%ax
   1.72%  │  │   │││  0x00007f70989e2cae:   mov    %ax,0x8(%rsi)
   0.73%  │  │   │││  0x00007f70989e2cb2:   add    $0x2,%rdi
   0.02%  │  │   │││  0x00007f70989e2cb6:   add    $0x2,%rsi
   0.63%  │  ↘   │││  0x00007f70989e2cba:   test   $0x1,%ecx
   0.39%  │   ╭  │││  0x00007f70989e2cc0:   je     Stub::jbyte_disjoint_arraycopy+104 0x00007f70989e2cc8
   1.48%  │   │  │││  0x00007f70989e2cc2:   mov    0x8(%rdi),%al
   1.56%  │   │  │││  0x00007f70989e2cc5:   mov    %al,0x8(%rsi)
   2.31%  │   ↘  │││  0x00007f70989e2cc8:   xor    %rax,%rax
   0.12%  │      │││  0x00007f70989e2ccb:   vzeroupper 
   0.91%  │      │││  0x00007f70989e2cce:   leave  
   2.72%  │      │││  0x00007f70989e2ccf:   ret    
          │    ↗ │││  0x00007f70989e2cd0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │ │││  0x00007f70989e2cd6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │ │││  0x00007f70989e2cdc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
          │    │ │││  0x00007f70989e2ce2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
   0.29%  ↘    │ │││  0x00007f70989e2ce8:   add    $0x8,%rdx
               ╰ │││  0x00007f70989e2cec:   jle    Stub::jbyte_disjoint_arraycopy+112 0x00007f70989e2cd0
   0.09%         │││  0x00007f70989e2cee:   sub    $0x4,%rdx
                ╭│││  0x00007f70989e2cf2:   jg     Stub::jbyte_disjoint_arraycopy+164 0x00007f70989e2d04
                ││││  0x00007f70989e2cf4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                ││││  0x00007f70989e2cfa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                ││││  0x00007f70989e2d00:   add    $0x4,%rdx
   0.67%        ↘│││  0x00007f70989e2d04:   vpxor  %ymm0,%ymm0,%ymm0
                 │││  0x00007f70989e2d08:   vpxor  %ymm1,%ymm1,%ymm1
                 │││  0x00007f70989e2d0c:   sub    $0x4,%rdx
                 ╰││  0x00007f70989e2d10:   jl     Stub::jbyte_disjoint_arraycopy+29 0x00007f70989e2c7d
   0.29%          ╰│  0x00007f70989e2d16:   jmp    Stub::jbyte_disjoint_arraycopy+44 0x00007f70989e2c8c
                   │--------------------------------------------------------------------------------
                   │- - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   │- - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   │StubRoutines::jbyte_arraycopy [0x00007f70989e2d20, 0x00007f70989e2de6] (198 bytes)
                   │--------------------------------------------------------------------------------
   1.10%           │  0x00007f70989e2d20:   push   %rbp
   1.98%           │  0x00007f70989e2d21:   mov    %rsp,%rbp
   0.34%           │  0x00007f70989e2d24:   cmp    %rdi,%rsi
   0.02%           │  0x00007f70989e2d27:   lea    (%rdi,%rdx,1),%rax
....................................................................................................
  29.19%  <total for region 2>

....[Hottest Regions]...............................................................................
  53.57%         c2, level 4  java.lang.String::split, version 2, compile id 517 
  29.19%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   7.58%         c2, level 4  java.lang.String::split, version 2, compile id 517 
   4.07%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.31%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.73%              kernel  [unknown] 
   0.48%         c2, level 4  java.lang.String::split, version 2, compile id 517 
   0.48%         c2, level 4  java.lang.String::split, version 2, compile id 517 
   0.17%         c2, level 4  java.lang.String::split, version 2, compile id 517 
   0.17%         c2, level 4  java.lang.String::split, version 2, compile id 517 
   0.08%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%         c2, level 4  java.util.ArrayList$SubList::toArray, version 3, compile id 531 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  java.lang.String::split, version 2, compile id 517 
   0.04%         c2, level 4  java.util.ArrayList$SubList::toArray, version 3, compile id 531 
   0.04%           libjvm.so  G1BarrierSet::invalidate 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   1.77%  <...other 463 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  62.56%         c2, level 4  java.lang.String::split, version 2, compile id 517 
  29.19%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   4.09%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.78%              kernel  [unknown] 
   1.31%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.13%                      <unknown> 
   0.11%         c2, level 4  java.util.ArrayList$SubList::toArray, version 3, compile id 531 
   0.04%           libjvm.so  G1BarrierSet::invalidate 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%           libjvm.so  HeapRegionManager::par_iterate 
   0.03%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.02%           libjvm.so  HeapRegionClaimer::claim_region 
   0.02%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.02%           libjvm.so  G1FromCardCache::clear 
   0.02%         c2, level 4  java.lang.String::substring, version 2, compile id 508 
   0.02%        libc-2.31.so  __strncat_ssse3 
   0.02%         c2, level 4  java.util.ArrayList::subList, version 2, compile id 527 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.54%  <...other 146 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  62.73%         c2, level 4
  34.59%        runtime stub
   1.78%              kernel
   0.58%           libjvm.so
   0.13%                    
   0.08%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.01%         interpreter
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split
# Parameters: (regexp = __)

# Run progress: 75.00% complete, ETA 00:01:48
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 258.899 us/op
# Warmup Iteration   2: 219.494 us/op
# Warmup Iteration   3: 218.873 us/op
# Warmup Iteration   4: 219.034 us/op
# Warmup Iteration   5: 218.888 us/op
Iteration   1: 218.923 us/op
Iteration   2: 218.927 us/op
Iteration   3: 219.010 us/op
Iteration   4: 218.966 us/op
Iteration   5: 218.898 us/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split":
  218.945 ±(99.9%) 0.168 us/op [Average]
  (min, avg, max) = (218.898, 218.945, 219.010), stdev = 0.044
  CI (99.9%): [218.776, 219.113] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.micro.compiler.StringPatternSplitBenchmark.string_split:·asm":
PrintAssembly processed: 158290 total address lines.
Perf output processed (skipped 55.865 seconds):
 Column 1: cycles (51063 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.regex.Matcher::find, version 2, compile id 512 

                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
                 0x00007fe858f6bce1:   cmp    %edx,%ebx
                 0x00007fe858f6bce3:   jge    0x00007fe858f6c270           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
                                                                           ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
                 0x00007fe858f6bce9:   mov    %ebx,%r8d
                 0x00007fe858f6bcec:   jmp    0x00007fe858f6bbb3
   1.81%         0x00007fe858f6bcf1:   cmp    $0x268728,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$Slice&apos;)}
                 0x00007fe858f6bcf8:   jne    0x00007fe858f6c290
   0.06%         0x00007fe858f6bcfe:   mov    %r13,%r11                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.47%         0x00007fe858f6bd01:   vmovq  %r11,%xmm3
   0.00%         0x00007fe858f6bd06:   mov    0x10(%r11),%r11d             ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   2.11%         0x00007fe858f6bd0a:   vmovd  %r11d,%xmm5
   0.05%         0x00007fe858f6bd0f:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007fe858f6c4a8
                                                                           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@8 (line 4079)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.49%         0x00007fe858f6bd14:   mov    %r8d,0x30(%rsp)
   0.20%         0x00007fe858f6bd19:   test   %r8d,%r8d
   1.78%         0x00007fe858f6bd1c:   nopl   0x0(%rax)
   0.05%         0x00007fe858f6bd20:   jbe    0x00007fe858f6be72           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@18 (line 4080)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.53%         0x00007fe858f6bd26:   mov    %r8d,%r11d
   0.09%         0x00007fe858f6bd29:   dec    %r11d
   1.69%         0x00007fe858f6bd2c:   cmp    %r8d,%r11d
                 0x00007fe858f6bd2f:   jae    0x00007fe858f6c2c4
   0.08%         0x00007fe858f6bd35:   cmp    (%rsp),%r10d
                 0x00007fe858f6bd39:   jae    0x00007fe858f6c2c4
   0.52%         0x00007fe858f6bd3f:   movslq %r8d,%rax
   0.08%         0x00007fe858f6bd42:   movslq %r10d,%rdx                   ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@21 (line 50)
                                                                           ; - java.lang.String::charAt@12 (line 1513)
                                                                           ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   1.68%         0x00007fe858f6bd45:   mov    %rdx,%r11
   0.09%         0x00007fe858f6bd48:   add    %rax,%r11
   0.52%         0x00007fe858f6bd4b:   dec    %r11
   0.08%         0x00007fe858f6bd4e:   cmp    0x8(%rsp),%r11
                 0x00007fe858f6bd53:   jae    0x00007fe858f6c2c4
   1.74%         0x00007fe858f6bd59:   cmp    %r9d,%r10d
   0.11%         0x00007fe858f6bd5c:   nopl   0x0(%rax)
   0.55%         0x00007fe858f6bd60:   jge    0x00007fe858f6c2fc           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@29 (line 4081)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.07%         0x00007fe858f6bd66:   movzbl 0x10(%rdi,%rdx,1),%ebx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.lang.StringLatin1::charAt@25 (line 50)
                                                                           ; - java.lang.String::charAt@12 (line 1513)
                                                                           ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   1.75%         0x00007fe858f6bd6b:   vmovd  %xmm5,%r11d
   0.12%         0x00007fe858f6bd70:   mov    0x10(%r12,%r11,8),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@43 (line 4085)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
   0.47%         0x00007fe858f6bd75:   cmp    %ebx,%r8d
          ╭      0x00007fe858f6bd78:   jne    0x00007fe858f6be19           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
          │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                                ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                ; - java.util.regex.Matcher::find@65 (line 745)
   0.45%  │      0x00007fe858f6bd7e:   vmovq  %xmm11,%r8
   2.31%  │      0x00007fe858f6bd83:   sub    %rdx,%r8
   0.55%  │      0x00007fe858f6bd86:   lea    (%r12,%r11,8),%rsi           ;*getfield buffer {reexecute=0 rethrow=0 return_oop=0}
          │                                                                ; - java.util.regex.Pattern$Slice::match@1 (line 4078)
          │                                                                ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │                                                                ; - java.util.regex.Matcher::search@121 (line 1728)
          │                                                                ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%  │      0x00007fe858f6bd8a:   mov    $0xffffffff80000000,%r11
   0.01%  │      0x00007fe858f6bd91:   cmp    $0xffffffff80000000,%r8
   0.03%  │      0x00007fe858f6bd98:   mov    %r8,%rcx
   0.30%  │      0x00007fe858f6bd9b:   cmovl  %r11,%rcx
   0.02%  │      0x00007fe858f6bd9f:   mov    %ecx,%ecx
   0.53%  │      0x00007fe858f6bda1:   cmp    %r8,%rax
   0.03%  │      0x00007fe858f6bda4:   mov    0x30(%rsp),%r11d
          │      0x00007fe858f6bda9:   cmovg  %ecx,%r11d
   0.02%  │      0x00007fe858f6bdad:   cmp    $0x1,%r11d
          │      0x00007fe858f6bdb1:   jle    0x00007fe858f6c348
   0.27%  │      0x00007fe858f6bdb7:   mov    $0x1,%ecx
   0.05%  │   ↗  0x00007fe858f6bdbc:   mov    %ecx,%ebp
   0.01%  │   │  0x00007fe858f6bdbe:   xchg   %ax,%ax                      ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.regex.Pattern$Slice::match@21 (line 4081)
          │   │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │   │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │   │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.02%  │ ↗ │  0x00007fe858f6bdc0:   movslq %ebp,%rbx
   0.66%  │ │ │  0x00007fe858f6bdc3:   mov    0x10(%rsi,%rbx,4),%r8d       ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.util.regex.Pattern$Slice::match@43 (line 4085)
          │ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.05%  │ │ │  0x00007fe858f6bdc8:   add    %rdx,%rbx
          │ │ │  0x00007fe858f6bdcb:   movzbl 0x10(%rdi,%rbx,1),%ebx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │ │                                                            ; - java.lang.StringLatin1::charAt@25 (line 50)
          │ │ │                                                            ; - java.lang.String::charAt@12 (line 1513)
          │ │ │                                                            ; - java.util.regex.Pattern$Slice::match@49 (line 4085)
          │ │ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │ │ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │ │ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.19%  │ │ │  0x00007fe858f6bdd0:   cmp    %ebx,%r8d
          │╭│ │  0x00007fe858f6bdd3:   jne    0x00007fe858f6be19           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - java.util.regex.Pattern$Slice::match@54 (line 4085)
          │││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │││ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.33%  │││ │  0x00007fe858f6bdd9:   mov    %r11d,%eax
   0.03%  │││ │  0x00007fe858f6bddc:   sub    %ecx,%eax
          │││ │  0x00007fe858f6bdde:   xor    %ebx,%ebx
   0.01%  │││ │  0x00007fe858f6bde0:   cmp    %ecx,%r11d
   0.32%  │││ │  0x00007fe858f6bde3:   cmovl  %ebx,%eax
   0.11%  │││ │  0x00007fe858f6bde6:   cmp    $0x3e8,%eax
          │││ │  0x00007fe858f6bdec:   mov    $0x3e8,%r8d
   0.02%  │││ │  0x00007fe858f6bdf2:   cmova  %r8d,%eax
   0.33%  │││ │  0x00007fe858f6bdf6:   add    %ecx,%eax
   0.27%  │││ │  0x00007fe858f6bdf8:   mov    %ebp,%r8d
   0.02%  │││ │  0x00007fe858f6bdfb:   inc    %r8d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││ │                                                            ; - java.util.regex.Pattern$Slice::match@59 (line 4080)
          │││ │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          │││ │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          │││ │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          │││ │  0x00007fe858f6bdfe:   mov    %r8d,%ebp
   0.04%  │││ │  0x00007fe858f6be01:   cmp    %eax,%r8d
          ││╰ │  0x00007fe858f6be04:   jl     0x00007fe858f6bdc0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.regex.Pattern$Slice::match@62 (line 4080)
          ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.33%  ││  │  0x00007fe858f6be06:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rdi=Oop rsi=Oop r13=Oop xmm0=NarrowOop xmm1=NarrowOop xmm2=Oop xmm3=Oop xmm4=NarrowOop xmm5=NarrowOop xmm6=Oop xmm7=Oop xmm9=Oop }
          ││  │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
          ││  │                                                            ; - (reexecute) java.util.regex.Pattern$Slice::match@62 (line 4080)
          ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%  ││  │  0x00007fe858f6be0d:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││  │                                                            ; - java.util.regex.Pattern$Slice::match@62 (line 4080)
          ││  │                                                            ; - java.util.regex.Pattern$Start::match@44 (line 3608)
          ││  │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
          ││  │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
          ││  │                                                            ;   {poll}
   0.49%  ││  │  0x00007fe858f6be10:   cmp    %r11d,%ebp
          ││ ╭│  0x00007fe858f6be13:   jge    0x00007fe858f6be25
          ││ ││  0x00007fe858f6be15:   mov    %ebp,%ecx
          ││ │╰  0x00007fe858f6be17:   jmp    0x00007fe858f6bdbc
   0.31%  ↘↘ │   0x00007fe858f6be19:   xor    %r11d,%r11d
   1.43%     │   0x00007fe858f6be1c:   nopl   0x0(%rax)
   0.06%     │   0x00007fe858f6be20:   jmp    0x00007fe858f6bb40
   0.03%     ↘   0x00007fe858f6be25:   mov    %ebp,%r8d
   0.02%         0x00007fe858f6be28:   cmp    0x30(%rsp),%r8d
                 0x00007fe858f6be2d:   jge    0x00007fe858f6be72
                 0x00007fe858f6be2f:   mov    %r8d,%eax
                 0x00007fe858f6be32:   xchg   %ax,%ax                      ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@21 (line 4081)
                                                                           ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                           ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                           ; - java.util.regex.Matcher::find@65 (line 745)
                 0x00007fe858f6be34:   mov    %eax,%ebp
                 0x00007fe858f6be36:   add    %r10d,%ebp                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.regex.Pattern$Slice::match@24 (line 4081)
....................................................................................................
  26.82%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.regex.Matcher::find, version 2, compile id 512 

                    # {method} {0x00000008000fe320} &apos;find&apos; &apos;()Z&apos; in &apos;java/util/regex/Matcher&apos;
                    #           [sp+0x80]  (sp of caller)
                    0x00007fe858f6b880:   mov    0x8(%rsi),%r10d
                    0x00007fe858f6b884:   movabs $0x800000000,%r11
                    0x00007fe858f6b88e:   add    %r11,%r10
                    0x00007fe858f6b891:   cmp    %r10,%rax
                    0x00007fe858f6b894:   jne    0x00007fe8589fbd80           ;   {runtime_call ic_miss_stub}
                    0x00007fe858f6b89a:   xchg   %ax,%ax
                    0x00007fe858f6b89c:   nopl   0x0(%rax)
                  [Verified Entry Point]
   0.01%            0x00007fe858f6b8a0:   mov    %eax,-0x14000(%rsp)
   0.37%            0x00007fe858f6b8a7:   push   %rbp
   0.01%            0x00007fe858f6b8a8:   sub    $0x70,%rsp                   ;*synchronization entry
                                                                              ; - java.util.regex.Matcher::find@-1 (line 731)
   0.33%            0x00007fe858f6b8ac:   vmovq  %rsi,%xmm6
                    0x00007fe858f6b8b1:   mov    0x1c(%rsi),%ebp              ;*getfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@7 (line 732)
   0.03%            0x00007fe858f6b8b4:   mov    0x20(%rsi),%r10d             ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@1 (line 731)
   0.01%            0x00007fe858f6b8b8:   cmp    %ebp,%r10d
   0.36%            0x00007fe858f6b8bb:   nopl   0x0(%rax,%rax,1)
                    0x00007fe858f6b8c0:   je     0x00007fe858f6c1e5           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@10 (line 732)
   0.03%            0x00007fe858f6b8c6:   mov    0xc(%rsi),%ebp               ;*getfield from {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@18 (line 736)
   0.00%            0x00007fe858f6b8c9:   cmp    %ebp,%r10d
                    0x00007fe858f6b8cc:   jl     0x00007fe858f6c1fc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@21 (line 736)
   0.34%            0x00007fe858f6b8d2:   mov    0x10(%rsi),%ebp              ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@31 (line 740)
   0.00%            0x00007fe858f6b8d5:   cmp    %ebp,%r10d
                    0x00007fe858f6b8d8:   jg     0x00007fe858f6c210           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::find@34 (line 740)
   0.02%            0x00007fe858f6b8de:   mov    %r12b,0x31(%rsi)             ;*putfield requireEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@7 (line 1717)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%            0x00007fe858f6b8e2:   mov    %r12b,0x30(%rsi)             ;*putfield hitEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@2 (line 1716)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.32%            0x00007fe858f6b8e6:   test   %r10d,%r10d
                    0x00007fe858f6b8e9:   jl     0x00007fe858f6c224           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@11 (line 1718)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%            0x00007fe858f6b8ef:   mov    0x24(%rsi),%r11d             ;*getfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@27 (line 1720)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%            0x00007fe858f6b8f3:   test   %r11d,%r11d
                    0x00007fe858f6b8f6:   jl     0x00007fe858f6beed
   0.00%            0x00007fe858f6b8fc:   mov    %r11d,0x24(%rsi)             ;*putfield oldLast {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@41 (line 1720)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.33%            0x00007fe858f6b900:   mov    %r10d,0x1c(%rsi)             ;*putfield first {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@22 (line 1719)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%            0x00007fe858f6b904:   mov    0x38(%rsi),%r11d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@48 (line 1721)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.03%            0x00007fe858f6b908:   mov    0xc(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007fe858f6c40c
                                                                              ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@65 (line 1721)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.02%            0x00007fe858f6b90d:   test   %r9d,%r9d
          ╭         0x00007fe858f6b910:   jbe    0x00007fe858f6b9e5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@52 (line 1721)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
   0.32%  │         0x00007fe858f6b916:   mov    %r9d,%r8d
          │         0x00007fe858f6b919:   dec    %r8d
   0.01%  │         0x00007fe858f6b91c:   nopl   0x0(%rax)
          │         0x00007fe858f6b920:   cmp    %r9d,%r8d
          │         0x00007fe858f6b923:   jae    0x00007fe858f6c1c4
   0.31%  │         0x00007fe858f6b929:   lea    (%r12,%r11,8),%rbx
   0.00%  │         0x00007fe858f6b92d:   mov    %ebx,%r8d
   0.01%  │         0x00007fe858f6b930:   shr    $0x2,%r8d
          │         0x00007fe858f6b934:   and    $0x3,%r8d
   0.32%  │         0x00007fe858f6b938:   mov    $0xffffffff,%r11d
   0.01%  │         0x00007fe858f6b93e:   sub    %r8d,%r11d
   0.01%  │         0x00007fe858f6b941:   and    $0x3,%r11d
   0.00%  │         0x00007fe858f6b945:   inc    %r11d
   0.33%  │         0x00007fe858f6b948:   cmp    %r9d,%r11d
   0.01%  │         0x00007fe858f6b94b:   cmovg  %r9d,%r11d
   0.02%  │         0x00007fe858f6b94f:   xor    %edi,%edi                    ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                   ; - java.util.regex.Matcher::search@55 (line 1722)
          │                                                                   ; - java.util.regex.Matcher::find@65 (line 745)
   0.21%  │ ↗       0x00007fe858f6b951:   movl   $0xffffffff,0x10(%rbx,%rdi,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - java.util.regex.Matcher::search@61 (line 1722)
          │ │                                                                 ; - java.util.regex.Matcher::find@65 (line 745)
   0.48%  │ │       0x00007fe858f6b959:   mov    %edi,%ecx
   0.36%  │ │       0x00007fe858f6b95b:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                 ; - java.util.regex.Matcher::search@62 (line 1721)
          │ │                                                                 ; - java.util.regex.Matcher::find@65 (line 745)
   0.17%  │ │       0x00007fe858f6b95d:   data16 xchg %ax,%ax
   0.18%  │ │       0x00007fe858f6b960:   cmp    %r11d,%ecx
          │╭│       0x00007fe858f6b963:   jge    0x00007fe858f6b969           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                 ; - java.util.regex.Matcher::search@52 (line 1721)
          │││                                                                 ; - java.util.regex.Matcher::find@65 (line 745)
   0.38%  │││       0x00007fe858f6b965:   mov    %ecx,%edi
   0.19%  ││╰       0x00007fe858f6b967:   jmp    0x00007fe858f6b951
   0.04%  │↘        0x00007fe858f6b969:   mov    %r9d,%esi
   0.16%  │         0x00007fe858f6b96c:   add    $0xfffffffd,%esi
   0.03%  │         0x00007fe858f6b96f:   cmp    %esi,%ecx
          │         0x00007fe858f6b971:   jge    0x00007fe858f6c1dc
   0.18%  │         0x00007fe858f6b977:   inc    %edi
   0.01%  │         0x00007fe858f6b979:   mov    $0xfa0,%ecx
   0.19%  │         0x00007fe858f6b97e:   vpcmpeqb %xmm0,%xmm0,%xmm0
   0.02%  │   ↗     0x00007fe858f6b982:   mov    %r9d,%r8d
   0.20%  │   │     0x00007fe858f6b985:   sub    %edi,%r8d
   0.00%  │   │     0x00007fe858f6b988:   add    $0xfffffffd,%r8d
   0.18%  │   │     0x00007fe858f6b98c:   xor    %r11d,%r11d
   0.01%  │   │     0x00007fe858f6b98f:   cmp    %edi,%esi
   0.16%  │   │     0x00007fe858f6b991:   cmovl  %r11d,%r8d
   0.01%  │   │     0x00007fe858f6b995:   cmp    $0xfa0,%r8d
   0.19%  │   │     0x00007fe858f6b99c:   cmova  %ecx,%r8d
   0.16%  │   │     0x00007fe858f6b9a0:   add    %edi,%r8d
   0.03%  │   │     0x00007fe858f6b9a3:   nopw   0x0(%rax,%rax,1)
   0.15%  │   │     0x00007fe858f6b9ac:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@55 (line 1722)
          │   │                                                               ; - java.util.regex.Matcher::find@65 (line 745)
   0.72%  │  ↗│     0x00007fe858f6b9b0:   vmovdqu %xmm0,0x10(%rbx,%rdi,4)     ;*iastore {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.Matcher::search@61 (line 1722)
          │  ││                                                               ; - java.util.regex.Matcher::find@65 (line 745)
   0.25%  │  ││     0x00007fe858f6b9b6:   add    $0x4,%edi                    ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                               ; - java.util.regex.Matcher::search@62 (line 1721)
          │  ││                                                               ; - java.util.regex.Matcher::find@65 (line 745)
   0.19%  │  ││     0x00007fe858f6b9b9:   cmp    %r8d,%edi
          │  ╰│     0x00007fe858f6b9bc:   jl     0x00007fe858f6b9b0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@65 (line 1721)
          │   │                                                               ; - java.util.regex.Matcher::find@65 (line 745)
   0.02%  │   │     0x00007fe858f6b9be:   mov    0x348(%r15),%r8              ; ImmutableOopMap {rbx=Oop xmm6=Oop }
          │   │                                                               ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │   │                                                               ; - (reexecute) java.util.regex.Matcher::search@65 (line 1721)
          │   │                                                               ; - java.util.regex.Matcher::find@65 (line 745)
   0.36%  │   │     0x00007fe858f6b9c5:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                               ; - java.util.regex.Matcher::search@65 (line 1721)
          │   │                                                               ; - java.util.regex.Matcher::find@65 (line 745)
          │   │                                                               ;   {poll}
   0.18%  │   │     0x00007fe858f6b9c8:   cmp    %esi,%edi
          │   ╰     0x00007fe858f6b9ca:   jl     0x00007fe858f6b982
   0.01%  │         0x00007fe858f6b9cc:   cmp    %r9d,%edi
          │    ╭    0x00007fe858f6b9cf:   jge    0x00007fe858f6b9e5
   0.00%  │    │    0x00007fe858f6b9d1:   data16 xchg %ax,%ax                 ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.util.regex.Matcher::search@55 (line 1722)
          │    │                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.23%  │    │↗   0x00007fe858f6b9d4:   movl   $0xffffffff,0x10(%rbx,%rdi,4);*iastore {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - java.util.regex.Matcher::search@61 (line 1722)
          │    ││                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.11%  │    ││   0x00007fe858f6b9dc:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │    ││                                                             ; - java.util.regex.Matcher::search@62 (line 1721)
          │    ││                                                             ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%  │    ││   0x00007fe858f6b9de:   xchg   %ax,%ax
   0.00%  │    ││   0x00007fe858f6b9e0:   cmp    %r9d,%edi
          │    │╰   0x00007fe858f6b9e3:   jl     0x00007fe858f6b9d4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │    │                                                              ; - java.util.regex.Matcher::search@52 (line 1721)
          │    │                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.12%  ↘    ↘    0x00007fe858f6b9e5:   vmovq  %xmm6,%r11
   0.22%            0x00007fe858f6b9ea:   mov    0x44(%r11),%r11d             ;*getfield localsPos {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@72 (line 1723)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.03%            0x00007fe858f6b9ee:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007fe858f6c418
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@75 (line 1723)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   1.03%            0x00007fe858f6b9f3:   test   %ebp,%ebp
                    0x00007fe858f6b9f5:   ja     0x00007fe858f6c238           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@76 (line 1723)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.42%            0x00007fe858f6b9fb:   vmovq  %xmm6,%r11
   0.02%            0x00007fe858f6ba00:   mov    %r12d,0x18(%r11)             ;*putfield acceptMode {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@105 (line 1727)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                    0x00007fe858f6ba04:   mov    0x34(%r11),%r11d             ;*getfield parentPattern {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@109 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%            0x00007fe858f6ba08:   mov    0x34(%r12,%r11,8),%ecx       ; implicit exception: dispatches to 0x00007fe858f6c424
                                                                              ;*getfield root {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@112 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.38%            0x00007fe858f6ba0d:   vmovq  %xmm6,%r11
   0.02%            0x00007fe858f6ba12:   mov    0x3c(%r11),%r11d             ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                    0x00007fe858f6ba16:   data16 nopw 0x0(%rax,%rax,1)
                    0x00007fe858f6ba20:   mov    0x8(%r12,%rcx,8),%r9d        ; implicit exception: dispatches to 0x00007fe858f6c430
   1.40%            0x00007fe858f6ba25:   cmp    $0x267b28,%r9d               ;   {metadata(&apos;java/util/regex/Pattern$Start&apos;)}
                    0x00007fe858f6ba2c:   jne    0x00007fe858f6c0f8           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.39%            0x00007fe858f6ba32:   vmovq  %xmm6,%r8
                    0x00007fe858f6ba37:   mov    0x10(%r8),%r9d               ;*getfield to {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@2 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                    0x00007fe858f6ba3b:   lea    (%r12,%rcx,8),%rbx           ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%            0x00007fe858f6ba3f:   mov    %r9d,%ecx
   0.36%            0x00007fe858f6ba42:   sub    0x10(%rbx),%ecx              ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@9 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%            0x00007fe858f6ba45:   cmp    %ecx,%r10d
                    0x00007fe858f6ba48:   jg     0x00007fe858f6c24c           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@10 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.33%            0x00007fe858f6ba4e:   mov    0xc(%rbx),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@38 (line 3608)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%            0x00007fe858f6ba52:   mov    0x8(%r12,%r8,8),%edi         ; implicit exception: dispatches to 0x00007fe858f6c448
                                                                              ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   1.05%            0x00007fe858f6ba57:   nopw   0x0(%rax,%rax,1)
                    0x00007fe858f6ba60:   mov    0x8(%r12,%r11,8),%edx        ; implicit exception: dispatches to 0x00007fe858f6c0a5
   0.00%            0x00007fe858f6ba65:   cmp    $0xeba0,%edx                 ;   {metadata(&apos;java/lang/String&apos;)}
                    0x00007fe858f6ba6b:   jne    0x00007fe858f6c0a5
   0.00%            0x00007fe858f6ba71:   lea    (%r12,%r11,8),%rax           ;*getfield text {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Matcher::search@118 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.35%            0x00007fe858f6ba75:   mov    %rax,%rbp                    ;*invokeinterface charAt {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                    0x00007fe858f6ba78:   nopl   0x0(%rax,%rax,1)
                    0x00007fe858f6ba80:   cmpb   $0x0,0x10(%rbp)
   0.00%            0x00007fe858f6ba84:   jne    0x00007fe858f6c0a5
   0.29%            0x00007fe858f6ba8a:   mov    0x14(%rbp),%esi              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.String::charAt@8 (line 1513)
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                    0x00007fe858f6ba8d:   mov    0xc(%r12,%rsi,8),%edx        ; implicit exception: dispatches to 0x00007fe858f6c0a5
                                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.lang.StringLatin1::charAt@6 (line 47)
                                                                              ; - java.lang.String::charAt@12 (line 1513)
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@21 (line 4322)
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.01%            0x00007fe858f6ba92:   cmp    %edx,%r10d
                    0x00007fe858f6ba95:   jae    0x00007fe858f6c0a5
   0.02%            0x00007fe858f6ba9b:   vmovq  %rbp,%xmm2
   0.30%            0x00007fe858f6baa0:   vmovd  %r8d,%xmm1
                    0x00007fe858f6baa5:   vmovd  %r11d,%xmm0
                    0x00007fe858f6baaa:   mov    %ecx,%r14d
   0.00%            0x00007fe858f6baad:   inc    %r14d
   0.30%            0x00007fe858f6bab0:   movslq %edx,%r8
   0.00%            0x00007fe858f6bab3:   movslq %r14d,%r11
                    0x00007fe858f6bab6:   dec    %r11
   0.01%            0x00007fe858f6bab9:   cmp    %r8,%r11
   0.30%            0x00007fe858f6babc:   nopl   0x0(%rax)
                    0x00007fe858f6bac0:   jae    0x00007fe858f6c0a0
   0.00%            0x00007fe858f6bac6:   mov    %r8,0x8(%rsp)
   0.00%            0x00007fe858f6bacb:   mov    %edx,(%rsp)
   0.35%            0x00007fe858f6bace:   vmovq  %rax,%xmm9
                    0x00007fe858f6bad3:   vmovd  %edi,%xmm10
   0.00%            0x00007fe858f6bad7:   vmovq  %rbx,%xmm7
   0.01%            0x00007fe858f6badc:   vmovd  %r10d,%xmm8
   0.36%            0x00007fe858f6bae1:   movslq %r9d,%r10
                    0x00007fe858f6bae4:   vmovq  %r10,%xmm11
   0.00%            0x00007fe858f6bae9:   dec    %r10
   0.00%            0x00007fe858f6baec:   cmp    0x8(%rsp),%r10
                    0x00007fe858f6baf1:   jae    0x00007fe858f6c0c8
   0.39%            0x00007fe858f6baf7:   nopw   0x0(%rax,%rax,1)
                    0x00007fe858f6bb00:   cmp    $0x7ffffffe,%ecx
                    0x00007fe858f6bb06:   jg     0x00007fe858f6c0d4
   0.01%            0x00007fe858f6bb0c:   vmovd  %ecx,%xmm13
   0.01%            0x00007fe858f6bb10:   vmovq  %xmm6,%r10
   0.33%            0x00007fe858f6bb15:   mov    0x38(%r10),%r10d             ;*getfield groups {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$LastNode::match@24 (line 3581)
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@70 (line 4329)
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
   0.00%            0x00007fe858f6bb19:   vmovd  %r10d,%xmm4
   0.00%            0x00007fe858f6bb1e:   lea    (%r12,%rsi,8),%rdi
   0.01%            0x00007fe858f6bb22:   vmovd  %xmm1,%r10d
   0.34%            0x00007fe858f6bb27:   lea    (%r12,%r10,8),%r13
                    0x00007fe858f6bb2b:   vmovd  %xmm8,%r10d
   0.00%            0x00007fe858f6bb30:   mov    $0x1,%r11d
   0.01%            0x00007fe858f6bb36:   vmovd  %r11d,%xmm12
   0.37%         ╭  0x00007fe858f6bb3b:   jmp    0x00007fe858f6bb69
                 │  0x00007fe858f6bb3d:   xor    %r11d,%r11d                  ;*synchronization entry
                 │                                                            ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   1.06%         │  0x00007fe858f6bb40:   vmovq  %xmm6,%r8
   0.36%         │  0x00007fe858f6bb45:   mov    0x20(%r8),%r8d               ;*getfield last {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@71 (line 3611)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   1.79%         │  0x00007fe858f6bb49:   test   %r11d,%r11d
                 │  0x00007fe858f6bb4c:   jne    0x00007fe858f6bc76           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@80 (line 3607)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.05%         │  0x00007fe858f6bb52:   mov    0x348(%r15),%r11
   0.46%         │  0x00007fe858f6bb59:   inc    %r10d                        ; ImmutableOopMap {rdi=Oop r13=Oop xmm0=NarrowOop xmm1=NarrowOop xmm2=Oop xmm4=NarrowOop xmm6=Oop xmm7=Oop xmm9=Oop }
                 │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
                 │                                                            ; - (reexecute) java.util.regex.Pattern$Start::match@80 (line 3607)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
                 │  0x00007fe858f6bb5c:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@80 (line 3607)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
                 │                                                            ;   {poll}
   1.61%         │  0x00007fe858f6bb5f:   nop
   0.06%         │  0x00007fe858f6bb60:   cmp    %r14d,%r10d
                 │  0x00007fe858f6bb63:   jge    0x00007fe858f6bed5           ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
                 │                                                            ; - java.util.regex.Pattern$Start::match@37 (line 3608)
                 │                                                            ; - java.util.regex.Matcher::search@121 (line 1728)
                 │                                                            ; - java.util.regex.Matcher::find@65 (line 745)
   0.49%         ↘  0x00007fe858f6bb69:   vmovd  %xmm10,%r11d
   0.00%            0x00007fe858f6bb6e:   cmp    $0x269e38,%r11d              ;   {metadata(&apos;java/util/regex/Pattern$BmpCharPropertyGreedy&apos;)}
                    0x00007fe858f6bb75:   jne    0x00007fe858f6bcf1
                    0x00007fe858f6bb7b:   mov    %r13,%r11                    ;*invokevirtual match {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$Start::match@44 (line 3608)
                                                                              ; - java.util.regex.Matcher::search@121 (line 1728)
                                                                              ; - java.util.regex.Matcher::find@65 (line 745)
                    0x00007fe858f6bb7e:   xchg   %ax,%ax
                    0x00007fe858f6bb80:   cmp    %r9d,%r10d
                    0x00007fe858f6bb83:   jge    0x00007fe858f6c01c           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                              ; - java.util.regex.Pattern$BmpCharPropertyGreedy::match@12 (line 4322)
                                                                              ; - java.util.regex.Pattern$Start::match@-1 (line 3602)
....................................................................................................
  24.86%  <total for region 2>

....[Hottest Region 3]..............................................................................
runtime stub, StubRoutines::jbyte_disjoint_arraycopy 

                   --------------------------------------------------------------------------------
                   - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   StubRoutines::jbyte_disjoint_arraycopy [0x00007fe8589e2c60, 0x00007fe8589e2d1b] (187 bytes)
                   --------------------------------------------------------------------------------
   0.00%             0x00007fe8589e2c60:   push   %rbp
                     0x00007fe8589e2c61:   mov    %rsp,%rbp
                     0x00007fe8589e2c64:   mov    %rdx,%rcx
                     0x00007fe8589e2c67:   shr    $0x3,%rdx
   0.37%             0x00007fe8589e2c6b:   lea    -0x8(%rdi,%rdx,8),%rdi
   0.07%             0x00007fe8589e2c70:   lea    -0x8(%rsi,%rdx,8),%rsi
   0.13%             0x00007fe8589e2c75:   neg    %rdx
          ╭          0x00007fe8589e2c78:   jmp    Stub::jbyte_disjoint_arraycopy+136 0x00007fe8589e2ce8
   0.29%  │↗     ↗   0x00007fe8589e2c7d:   mov    0x8(%rdi,%rdx,8),%rax
   0.48%  ││     │   0x00007fe8589e2c82:   mov    %rax,0x8(%rsi,%rdx,8)
   0.18%  ││     │   0x00007fe8589e2c87:   inc    %rdx
          │╰     │   0x00007fe8589e2c8a:   jne    Stub::jbyte_disjoint_arraycopy+29 0x00007fe8589e2c7d
   0.41%  │      │↗  0x00007fe8589e2c8c:   test   $0x4,%ecx
          │ ╭    ││  0x00007fe8589e2c92:   je     Stub::jbyte_disjoint_arraycopy+66 0x00007fe8589e2ca2
   0.04%  │ │    ││  0x00007fe8589e2c94:   mov    0x8(%rdi),%eax
   0.74%  │ │    ││  0x00007fe8589e2c97:   mov    %eax,0x8(%rsi)
   0.38%  │ │    ││  0x00007fe8589e2c9a:   add    $0x4,%rdi
          │ │    ││  0x00007fe8589e2c9e:   add    $0x4,%rsi
   0.10%  │ ↘    ││  0x00007fe8589e2ca2:   test   $0x2,%ecx
          │  ╭   ││  0x00007fe8589e2ca8:   je     Stub::jbyte_disjoint_arraycopy+90 0x00007fe8589e2cba
   0.07%  │  │   ││  0x00007fe8589e2caa:   mov    0x8(%rdi),%ax
   0.67%  │  │   ││  0x00007fe8589e2cae:   mov    %ax,0x8(%rsi)
   0.32%  │  │   ││  0x00007fe8589e2cb2:   add    $0x2,%rdi
          │  │   ││  0x00007fe8589e2cb6:   add    $0x2,%rsi
   0.07%  │  ↘   ││  0x00007fe8589e2cba:   test   $0x1,%ecx
   0.06%  │   ╭  ││  0x00007fe8589e2cc0:   je     Stub::jbyte_disjoint_arraycopy+104 0x00007fe8589e2cc8
   0.25%  │   │  ││  0x00007fe8589e2cc2:   mov    0x8(%rdi),%al
   0.32%  │   │  ││  0x00007fe8589e2cc5:   mov    %al,0x8(%rsi)
   0.62%  │   ↘  ││  0x00007fe8589e2cc8:   xor    %rax,%rax
   0.01%  │      ││  0x00007fe8589e2ccb:   vzeroupper 
   0.48%  │      ││  0x00007fe8589e2cce:   leave  
   0.89%  │      ││  0x00007fe8589e2ccf:   ret    
          │    ↗ ││  0x00007fe8589e2cd0:   vmovdqu -0x38(%rdi,%rdx,8),%ymm0
          │    │ ││  0x00007fe8589e2cd6:   vmovdqu %ymm0,-0x38(%rsi,%rdx,8)
          │    │ ││  0x00007fe8589e2cdc:   vmovdqu -0x18(%rdi,%rdx,8),%ymm1
          │    │ ││  0x00007fe8589e2ce2:   vmovdqu %ymm1,-0x18(%rsi,%rdx,8)
   0.12%  ↘    │ ││  0x00007fe8589e2ce8:   add    $0x8,%rdx
               ╰ ││  0x00007fe8589e2cec:   jle    Stub::jbyte_disjoint_arraycopy+112 0x00007fe8589e2cd0
   0.07%         ││  0x00007fe8589e2cee:   sub    $0x4,%rdx
                ╭││  0x00007fe8589e2cf2:   jg     Stub::jbyte_disjoint_arraycopy+164 0x00007fe8589e2d04
                │││  0x00007fe8589e2cf4:   vmovdqu -0x18(%rdi,%rdx,8),%ymm0
                │││  0x00007fe8589e2cfa:   vmovdqu %ymm0,-0x18(%rsi,%rdx,8)
                │││  0x00007fe8589e2d00:   add    $0x4,%rdx
   0.29%        ↘││  0x00007fe8589e2d04:   vpxor  %ymm0,%ymm0,%ymm0
                 ││  0x00007fe8589e2d08:   vpxor  %ymm1,%ymm1,%ymm1
                 ││  0x00007fe8589e2d0c:   sub    $0x4,%rdx
                 ╰│  0x00007fe8589e2d10:   jl     Stub::jbyte_disjoint_arraycopy+29 0x00007fe8589e2c7d
   0.16%          ╰  0x00007fe8589e2d16:   jmp    Stub::jbyte_disjoint_arraycopy+44 0x00007fe8589e2c8c
                   --------------------------------------------------------------------------------
                   - - - [END] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   - - - [BEGIN] - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                   StubRoutines::jbyte_arraycopy [0x00007fe8589e2d20, 0x00007fe8589e2de6] (198 bytes)
                   --------------------------------------------------------------------------------
   0.71%             0x00007fe8589e2d20:   push   %rbp
   3.90%             0x00007fe8589e2d21:   mov    %rsp,%rbp
                     0x00007fe8589e2d24:   cmp    %rdi,%rsi
....................................................................................................
  12.55%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 532 

             0x00007fe858f70f71:   shr    $0x9,%r10
             0x00007fe858f70f75:   movabs $0x7fe84c76f000,%rdi
             0x00007fe858f70f7f:   add    %r10,%rdi                    ;*invokevirtual end {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@111 (line 1274)
             0x00007fe858f70f82:   cmpb   $0x4,(%rdi)
             0x00007fe858f70f85:   jne    0x00007fe858f71447
             0x00007fe858f70f8b:   mov    %r12b,0x10(%r13)             ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@54 (line 1267)
             0x00007fe858f70f8f:   mov    0x8(%r13),%r11d
             0x00007fe858f70f93:   nopw   0x0(%rax,%rax,1)
   0.32%     0x00007fe858f70f9c:   data16 data16 xchg %ax,%ax
             0x00007fe858f70fa0:   cmp    $0xeba0,%r11d                ;   {metadata(&apos;java/lang/String&apos;)}
             0x00007fe858f70fa7:   jne    0x00007fe858f71fa4           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkBoundsBeginEnd@11 (line 4601)
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%     0x00007fe858f70fad:   mov    0x30(%rsp),%r10
   0.73%     0x00007fe858f70fb2:   incl   0xc(%r10)
   2.79%     0x00007fe858f70fb6:   mov    0x14(%r10),%ecx              ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@12 (line 2706)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%     0x00007fe858f70fba:   nopw   0x0(%rax,%rax,1)
             0x00007fe858f70fc0:   mov    0xc(%r12,%rcx,8),%r9d        ; implicit exception: dispatches to 0x00007fe858f7309c
   0.33%     0x00007fe858f70fc5:   mov    0x10(%r10),%r11d             ;*invokevirtual start {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@60 (line 1267)
             0x00007fe858f70fc9:   lea    (%r12,%rcx,8),%rdi           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::grow@56 (line 239)
                                                                       ; - java.util.ArrayList::grow@7 (line 244)
                                                                       ; - java.util.ArrayList::add@7 (line 454)
                                                                       ; - java.util.ArrayList::add@20 (line 467)
                                                                       ; - java.util.regex.Pattern::split@218 (line 1289)
             0x00007fe858f70fcd:   mov    %r11d,%r10d
             0x00007fe858f70fd0:   inc    %r10d                        ;*invokevirtual start {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@60 (line 1267)
   0.34%     0x00007fe858f70fd3:   cmp    %r9d,%r11d
             0x00007fe858f70fd6:   je     0x00007fe858f71112           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Matcher::start@4 (line 449)
                                                                       ; - java.util.regex.Pattern::split@60 (line 1267)
   0.01%     0x00007fe858f70fdc:   nopl   0x0(%rax)
   0.00%     0x00007fe858f70fe0:   cmp    %r9d,%r11d
             0x00007fe858f70fe3:   jae    0x00007fe858f71f5d           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::grow@56 (line 239)
                                                                       ; - java.util.ArrayList::grow@7 (line 244)
                                                                       ; - java.util.ArrayList::add@7 (line 454)
                                                                       ; - java.util.ArrayList::add@20 (line 467)
                                                                       ; - java.util.regex.Pattern::split@218 (line 1289)
   0.42%     0x00007fe858f70fe9:   mov    0x8(%rdi),%r8d
   0.00%     0x00007fe858f70fed:   cmp    $0x1550,%r8d                 ;   {metadata(&apos;java/lang/Object&apos;[])}
             0x00007fe858f70ff4:   jne    0x00007fe858f71fd4           ;*invokevirtual isLatin1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@28 (line 2710)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.24%     0x00007fe858f70ffa:   lea    0x10(%rdi,%r11,4),%rbp       ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
             0x00007fe858f70fff:   nop
   0.08%     0x00007fe858f71000:   cmpb   $0x0,0x38(%r15)
   0.01%     0x00007fe858f71005:   jne    0x00007fe858f7133c           ;*invokevirtual coder {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::length@6 (line 1477)
                                                                       ; - java.lang.String::substring@1 (line 2704)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.23%     0x00007fe858f7100b:   mov    %rbp,%r11                    ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::grow@41 (line 237)
                                                                       ; - java.util.ArrayList::grow@7 (line 244)
                                                                       ; - java.util.ArrayList::add@7 (line 454)
                                                                       ; - java.util.ArrayList::add@20 (line 467)
                                                                       ; - java.util.regex.Pattern::split@105 (line 1273)
   0.01%     0x00007fe858f7100e:   mov    %r13,%r8
   0.07%     0x00007fe858f71011:   shr    $0x3,%r8
             0x00007fe858f71015:   mov    %r8d,0x0(%rbp)               ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.73%     0x00007fe858f71019:   mov    %r13,%r8
   0.00%     0x00007fe858f7101c:   xor    %r11,%r8
             0x00007fe858f7101f:   shr    $0x15,%r8
             0x00007fe858f71023:   test   %r8,%r8
          ╭  0x00007fe858f71026:   je     0x00007fe858f71046           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.String::&lt;init&gt;@6 (line 4536)
          │                                                            ; - java.lang.StringLatin1::newString@20 (line 769)
          │                                                            ; - java.lang.String::substring@41 (line 2710)
          │                                                            ; - java.lang.String::subSequence@3 (line 2743)
          │                                                            ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%  │  0x00007fe858f71028:   shr    $0x9,%r11
          │  0x00007fe858f7102c:   movabs $0x7fe84c76f000,%rdi
          │  0x00007fe858f71036:   add    %r11,%rdi                    ;*invokestatic copyOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::grow@37 (line 237)
          │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │                                                            ; - java.util.ArrayList::add@7 (line 454)
          │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
          │  0x00007fe858f71039:   cmpb   $0x4,(%rdi)
   0.00%  │  0x00007fe858f7103c:   nopl   0x0(%rax)
          │  0x00007fe858f71040:   jne    0x00007fe858f71373           ;*synchronization entry
          │                                                            ; - java.util.Arrays::copyOf@-1 (line 3481)
          │                                                            ; - java.util.ArrayList::grow@37 (line 237)
          │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │                                                            ; - java.util.ArrayList::add@7 (line 454)
          │                                                            ; - java.util.ArrayList::add@20 (line 467)
          │                                                            ; - java.util.regex.Pattern::split@105 (line 1273)
   0.35%  ↘  0x00007fe858f71046:   mov    0x30(%rsp),%r11
   0.01%     0x00007fe858f7104b:   mov    %r10d,0x10(%r11)             ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@34 (line 1265)
   0.60%     0x00007fe858f7104f:   mov    0x18(%rsp),%r10
   0.00%     0x00007fe858f71054:   mov    0x1c(%r10),%r11d             ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@63 (line 1267)
   0.01%     0x00007fe858f71058:   test   %r11d,%r11d
   0.00%     0x00007fe858f7105b:   nopl   0x0(%rax,%rax,1)
   0.35%     0x00007fe858f71060:   jl     0x00007fe858f7243c           ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@31 (line 1265)
             0x00007fe858f71066:   mov    %r14,0x8(%rsp)
   0.01%     0x00007fe858f7106b:   mov    %rbx,(%rsp)                  ;*invokestatic newString {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@41 (line 2710)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
             0x00007fe858f7106f:   mov    0x20(%r10),%ebp              ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::&lt;init&gt;@8 (line 169)
                                                                       ; - java.util.regex.Pattern::split@17 (line 1261)
   0.36%     0x00007fe858f71073:   mov    0x18(%rsp),%rsi
   0.00%     0x00007fe858f71078:   vzeroupper 
   0.33%     0x00007fe858f7107b:   call   0x00007fe858f6b8a0           ; ImmutableOopMap {[8]=Oop [24]=Oop [32]=Oop [40]=Oop [48]=Oop }
                                                                       ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@31 (line 1265)
                                                                       ;   {optimized virtual_call}
   0.21%     0x00007fe858f71080:   test   %eax,%eax
             0x00007fe858f71082:   je     0x00007fe858f71685           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::&lt;init&gt;@6 (line 4536)
                                                                       ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                       ; - java.lang.String::substring@41 (line 2710)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.12%     0x00007fe858f71088:   mov    (%rsp),%rbx
   0.02%     0x00007fe858f7108c:   mov    0x8(%rsp),%r14
   0.15%     0x00007fe858f71091:   mov    %ebp,%r10d
   0.10%     0x00007fe858f71094:   mov    0x18(%rsp),%r11
   0.03%     0x00007fe858f71099:   mov    0x1c(%r11),%ebp
   0.57%     0x00007fe858f7109d:   data16 xchg %ax,%ax
   0.05%     0x00007fe858f710a0:   test   %r10d,%r10d
             0x00007fe858f710a3:   je     0x00007fe858f71669           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@34 (line 1265)
   0.03%     0x00007fe858f710a9:   test   %ebp,%ebp
             0x00007fe858f710ab:   jl     0x00007fe858f72390           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkBoundsBeginEnd@1 (line 4601)
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.26%     0x00007fe858f710b1:   mov    0x28(%rsp),%r11
   0.00%     0x00007fe858f710b6:   mov    0x14(%r11),%eax              ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkBoundsBeginEnd@11 (line 4601)
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.06%     0x00007fe858f710ba:   nopw   0x0(%rax,%rax,1)
   0.01%     0x00007fe858f710c0:   mov    0xc(%r12,%rax,8),%r9d        ; implicit exception: dispatches to 0x00007fe858f7308c
                                                                       ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4601)
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   1.47%     0x00007fe858f710c5:   movsbl 0x10(%r11),%ecx
             0x00007fe858f710ca:   mov    %r9d,%r11d
   0.04%     0x00007fe858f710cd:   sar    %cl,%r11d                    ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.regex.Pattern::split@37 (line 1266)
   0.60%     0x00007fe858f710d0:   test   %r10d,%r10d
             0x00007fe858f710d3:   jl     0x00007fe858f72164           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4601)
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.04%     0x00007fe858f710d9:   cmp    %ebp,%r10d
             0x00007fe858f710dc:   nopl   0x0(%rax)
   0.01%     0x00007fe858f710e0:   jg     0x00007fe858f723b4           ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.31%     0x00007fe858f710e6:   cmp    %r11d,%ebp
             0x00007fe858f710e9:   jg     0x00007fe858f723f8           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::checkBoundsBeginEnd@6 (line 4601)
                                                                       ; - java.lang.String::substring@8 (line 2705)
                                                                       ; - java.lang.String::subSequence@3 (line 2743)
                                                                       ; - java.util.regex.Pattern::split@89 (line 1272)
   0.04%     0x00007fe858f710ef:   test   %r10d,%r10d
             0x00007fe858f710f2:   jne    0x00007fe858f70de0
             0x00007fe858f710f8:   cmp    %r11d,%ebp
             0x00007fe858f710fb:   je     0x00007fe858f71108           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.lang.String::&lt;init&gt;@6 (line 4536)
                                                                       ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                       ; - java.lang.String::substring@41 (line 2710)
....................................................................................................
  12.50%  <total for region 4>

....[Hottest Region 5]..............................................................................
c2, level 4, java.util.regex.Pattern::split, version 4, compile id 532 

            0x00007fe858f70db1:   mov    0x20(%rsp),%r10              ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::&lt;init&gt;@8 (line 169)
                                                                      ; - java.util.regex.Pattern::split@17 (line 1261)
            0x00007fe858f70db6:   mov    %r10,0x28(%rsp)
            0x00007fe858f70dbb:   movabs $0x7fe84c76f000,%rbx
            0x00007fe858f70dc5:   movabs $0x7ffe00010,%r14            ;   {oop(&quot;&quot;{0x00000007ffe00010})}
            0x00007fe858f70dcf:   xor    %r10d,%r10d
            0x00007fe858f70dd2:   jmp    0x00007fe858f71094
            0x00007fe858f70dd7:   nopw   0x0(%rax,%rax,1)
            0x00007fe858f70de0:   mov    %ebp,%r11d
   0.01%    0x00007fe858f70de3:   sub    %r10d,%r11d                  ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@37 (line 1266)
   0.31%    0x00007fe858f70de6:   test   %ecx,%ecx
            0x00007fe858f70de8:   jne    0x00007fe858f721fc           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::checkBoundsBeginEnd@6 (line 4601)
                                                                      ; - java.lang.String::substring@8 (line 2705)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.05%    0x00007fe858f70dee:   cmp    %r10d,%ebp
            0x00007fe858f70df1:   je     0x00007fe858f71b2a           ;*invokespecial &lt;init&gt; {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::&lt;init&gt;@1 (line 4535)
                                                                      ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
            0x00007fe858f70df7:   mov    %r9d,0x40(%rsp)              ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::substring@8 (line 2705)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%    0x00007fe858f70dfc:   mov    0x108(%r15),%r13             ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.31%    0x00007fe858f70e03:   mov    %r13,%r8
   0.05%    0x00007fe858f70e06:   add    $0x18,%r8
   0.00%    0x00007fe858f70e0a:   cmp    0x118(%r15),%r8
            0x00007fe858f70e11:   jae    0x00007fe858f71b39           ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::substring@8 (line 2705)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.02%    0x00007fe858f70e17:   mov    %r8,0x108(%r15)              ;*invokevirtual add {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.29%    0x00007fe858f70e1e:   prefetchw 0xc0(%r8)                 ;*synchronization entry
                                                                      ; - java.util.ArrayList::add@-1 (line 466)
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.06%    0x00007fe858f70e26:   movq   $0x1,0x0(%r13)               ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@2 (line 466)
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.62%    0x00007fe858f70e2e:   movl   $0xeba0,0x8(%r13)            ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@7 (line 466)
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
                                                                      ;   {metadata(&apos;java/lang/String&apos;)}
   0.01%    0x00007fe858f70e36:   mov    %r12d,0xc(%r13)              ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::add@13 (line 467)
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.00%    0x00007fe858f70e3a:   mov    %r12,0x10(%r13)              ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@39 (line 1266)
   0.04%    0x00007fe858f70e3e:   xchg   %ax,%ax
   0.28%    0x00007fe858f70e40:   test   %r11d,%r11d
            0x00007fe858f70e43:   jl     0x00007fe858f72460           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::checkBoundsBeginEnd@6 (line 4601)
                                                                      ; - java.lang.String::substring@8 (line 2705)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.01%    0x00007fe858f70e49:   cmp    $0x100000,%r11d
            0x00007fe858f70e50:   ja     0x00007fe858f7201c           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@17 (line 233)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@105 (line 1273)
   0.01%    0x00007fe858f70e56:   movslq %r11d,%rcx                   ;*anewarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@52 (line 239)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@105 (line 1273)
   0.07%    0x00007fe858f70e59:   test   %r10d,%r10d
   0.32%    0x00007fe858f70e5c:   nopl   0x0(%rax)
   0.01%    0x00007fe858f70e60:   jl     0x00007fe858f7208e           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.00%    0x00007fe858f70e66:   mov    0x40(%rsp),%r8d
   0.04%    0x00007fe858f70e6b:   sub    %r10d,%r8d                   ;*synchronization entry
                                                                      ; - java.lang.String::toString@-1 (line 4051)
                                                                      ; - java.util.regex.Pattern::split@94 (line 1272)
   0.30%    0x00007fe858f70e6e:   cmp    %r11d,%r8d
   0.02%    0x00007fe858f70e71:   mov    %r11d,%ebp
   0.01%    0x00007fe858f70e74:   cmovl  %r8d,%ebp                    ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Object::&lt;init&gt;@0 (line 44)
                                                                      ; - java.lang.String::&lt;init&gt;@1 (line 4535)
                                                                      ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.04%    0x00007fe858f70e78:   mov    %r10d,%esi
   0.37%    0x00007fe858f70e7b:   add    %ebp,%esi
   0.01%    0x00007fe858f70e7d:   mov    0x40(%rsp),%r8d
   0.01%    0x00007fe858f70e82:   cmp    %esi,%r8d
            0x00007fe858f70e85:   jb     0x00007fe858f7208e
   0.03%    0x00007fe858f70e8b:   cmp    %ebp,%r11d
            0x00007fe858f70e8e:   jb     0x00007fe858f7208e           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.29%    0x00007fe858f70e94:   test   %ebp,%ebp
            0x00007fe858f70e96:   jl     0x00007fe858f7208e
   0.02%    0x00007fe858f70e9c:   add    $0x17,%rcx                   ;*invokeinterface toString {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@94 (line 1272)
            0x00007fe858f70ea0:   cmp    $0x100000,%r11d
            0x00007fe858f70ea7:   ja     0x00007fe858f71b86
   0.05%    0x00007fe858f70ead:   mov    0x108(%r15),%r9
   0.30%    0x00007fe858f70eb4:   mov    %rcx,%r8
   0.02%    0x00007fe858f70eb7:   and    $0xfffffffffffffff8,%r8
   0.00%    0x00007fe858f70ebb:   mov    %r9,%rdi
   0.04%    0x00007fe858f70ebe:   add    %r8,%rdi
   0.30%    0x00007fe858f70ec1:   cmp    0x118(%r15),%rdi
            0x00007fe858f70ec8:   jae    0x00007fe858f71b86           ;*invokestatic checkBoundsBeginEnd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::substring@8 (line 2705)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.03%    0x00007fe858f70ece:   mov    %rdi,0x108(%r15)
            0x00007fe858f70ed5:   prefetchw 0xc0(%rdi)
   0.35%    0x00007fe858f70edc:   movq   $0x1,(%r9)
   0.01%    0x00007fe858f70ee3:   prefetchw 0x100(%rdi)
   0.01%    0x00007fe858f70eea:   movl   $0x6848,0x8(%r9)             ;   {metadata({type array byte})}
   0.29%    0x00007fe858f70ef2:   mov    %r11d,0xc(%r9)
   1.39%    0x00007fe858f70ef6:   prefetchw 0x140(%rdi)
   0.01%    0x00007fe858f70efd:   prefetchw 0x180(%rdi)               ;*return {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Object::&lt;init&gt;@0 (line 44)
                                                                      ; - java.lang.String::&lt;init&gt;@1 (line 4535)
                                                                      ; - java.lang.StringLatin1::newString@20 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@89 (line 1272)
   0.18%    0x00007fe858f70f04:   mov    %r9,%r8
   0.00%    0x00007fe858f70f07:   add    $0x10,%r8                    ;*newarray {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@41 (line 3822)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
   0.34%    0x00007fe858f70f0b:   shr    $0x3,%rcx
   0.01%    0x00007fe858f70f0f:   mov    %r9,%rsi
   0.05%    0x00007fe858f70f12:   shr    $0x3,%rsi
            0x00007fe858f70f16:   mov    %esi,(%rsp)
   0.35%    0x00007fe858f70f19:   test   %ebp,%ebp
   0.00%    0x00007fe858f70f1b:   nopl   0x0(%rax,%rax,1)
   0.05%    0x00007fe858f70f20:   je     0x00007fe858f72025           ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
   0.00%    0x00007fe858f70f26:   movslq %ebp,%rdx                    ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@51 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
   0.37%    0x00007fe858f70f29:   lea    (%r12,%rax,8),%rdi           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@56 (line 239)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@218 (line 1289)
   0.01%    0x00007fe858f70f2d:   lea    0x10(%rdi,%r10,1),%r10       ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
   0.04%    0x00007fe858f70f32:   cmp    %r11d,%ebp
            0x00007fe858f70f35:   jl     0x00007fe858f713ca           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@51 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
            0x00007fe858f70f3b:   mov    %r10,%rdi
   0.33%    0x00007fe858f70f3e:   mov    %r9,%rbp                     ;*invokestatic min {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@55 (line 3824)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
   0.01%    0x00007fe858f70f41:   mov    %r8,%rsi
   0.04%    0x00007fe858f70f44:   vzeroupper 
   0.43%    0x00007fe858f70f47:   movabs $0x7fe8589e2d20,%r10
            0x00007fe858f70f51:   call   *%r10
   0.56%    0x00007fe858f70f54:   mov    %rbp,%r9                     ;*invokestatic arraycopy {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::copyOfRange@58 (line 3823)
                                                                      ; - java.lang.StringLatin1::newString@16 (line 769)
                                                                      ; - java.lang.String::substring@41 (line 2710)
                                                                      ; - java.lang.String::subSequence@3 (line 2743)
                                                                      ; - java.util.regex.Pattern::split@208 (line 1289)
   0.04%    0x00007fe858f70f57:   mov    (%rsp),%r10d
   1.91%    0x00007fe858f70f5b:   mov    %r10d,0x14(%r13)             ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@41 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@105 (line 1273)
   0.69%    0x00007fe858f70f5f:   mov    %r13,%r10                    ;*invokevirtual find {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@31 (line 1265)
            0x00007fe858f70f62:   mov    %r9,%r11
            0x00007fe858f70f65:   xor    %r10,%r11
            0x00007fe858f70f68:   shr    $0x15,%r11
   0.34%    0x00007fe858f70f6c:   test   %r11,%r11
            0x00007fe858f70f6f:   je     0x00007fe858f70f8b           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::grow@41 (line 237)
                                                                      ; - java.util.ArrayList::grow@7 (line 244)
                                                                      ; - java.util.ArrayList::add@7 (line 454)
                                                                      ; - java.util.ArrayList::add@20 (line 467)
                                                                      ; - java.util.regex.Pattern::split@105 (line 1273)
            0x00007fe858f70f71:   shr    $0x9,%r10
            0x00007fe858f70f75:   movabs $0x7fe84c76f000,%rdi
            0x00007fe858f70f7f:   add    %r10,%rdi                    ;*invokevirtual end {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.regex.Pattern::split@111 (line 1274)
....................................................................................................
  12.17%  <total for region 5>

....[Hottest Regions]...............................................................................
  26.82%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 512 
  24.86%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 512 
  12.55%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
  12.50%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 532 
  12.17%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 532 
   2.94%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 512 
   2.11%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 512 
   1.73%        runtime stub  StubRoutines::checkcast_arraycopy 
   1.30%              kernel  [unknown] 
   0.57%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.20%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 532 
   0.18%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 532 
   0.16%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 532 
   0.08%              kernel  [unknown] 
   0.07%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.06%              kernel  [unknown] 
   0.06%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 532 
   1.50%  <...other 397 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  56.75%         c2, level 4  java.util.regex.Matcher::find, version 2, compile id 512 
  25.30%         c2, level 4  java.util.regex.Pattern::split, version 4, compile id 532 
  12.55%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   2.19%              kernel  [unknown] 
   1.74%        runtime stub  StubRoutines::checkcast_arraycopy 
   0.63%        runtime stub  StubRoutines::jint_disjoint_arraycopy 
   0.11%                      <unknown> 
   0.08%         c2, level 4  java.util.regex.Pattern::compile, version 2, compile id 590 
   0.07%           libjvm.so  G1YoungRemSetSamplingClosure::do_heap_region 
   0.05%         c2, level 4  java.util.ArrayList$SubList::toArray, version 3, compile id 596 
   0.03%           libjvm.so  OtherRegionsTable::occupied 
   0.03%         c2, level 4  java.util.regex.Pattern::matcher, version 2, compile id 589 
   0.02%           libjvm.so  G1BarrierSet::invalidate 
   0.02%         c2, level 4  java.util.regex.Pattern::atom, version 2, compile id 591 
   0.02%          ld-2.31.so  _dl_tunable_set_hwcaps 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%        libc-2.31.so  getifaddrs_internal 
   0.01%        libc-2.31.so  __strxfrm_l 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.37%  <...other 132 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  82.24%         c2, level 4
  14.91%        runtime stub
   2.19%              kernel
   0.42%           libjvm.so
   0.11%                    
   0.05%        libc-2.31.so
   0.02%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.00%     perf-112406.map
   0.00%         libjsvml.so
   0.00%      libz.so.1.2.11
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:14

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

Benchmark                                       (regexp)  Mode  Cnt    Score   Error  Units
StringPatternSplitBenchmark.pattern_split              _  avgt    5  415.744 ± 0.493  us/op
StringPatternSplitBenchmark.pattern_split:·asm         _  avgt           NaN            ---
StringPatternSplitBenchmark.pattern_split             __  avgt    5  217.286 ± 0.393  us/op
StringPatternSplitBenchmark.pattern_split:·asm        __  avgt           NaN            ---
StringPatternSplitBenchmark.string_split               _  avgt    5   96.795 ± 1.297  us/op
StringPatternSplitBenchmark.string_split:·asm          _  avgt           NaN            ---
StringPatternSplitBenchmark.string_split              __  avgt    5  218.945 ± 0.168  us/op
StringPatternSplitBenchmark.string_split:·asm         __  avgt           NaN            ---
