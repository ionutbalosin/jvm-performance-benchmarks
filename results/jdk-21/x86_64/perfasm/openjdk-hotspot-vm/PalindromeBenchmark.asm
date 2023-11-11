# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional

# Run progress: 0.00% complete, ETA 00:06:40
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.347 ms/op
# Warmup Iteration   2: 3.471 ms/op
# Warmup Iteration   3: 3.483 ms/op
# Warmup Iteration   4: 3.447 ms/op
# Warmup Iteration   5: 3.444 ms/op
Iteration   1: 3.447 ms/op
Iteration   2: 3.446 ms/op
Iteration   3: 3.447 ms/op
Iteration   4: 3.444 ms/op
Iteration   5: 3.450 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional":
  3.447 ±(99.9%) 0.009 ms/op [Average]
  (min, avg, max) = (3.444, 3.447, 3.450), stdev = 0.002
  CI (99.9%): [3.438, 3.456] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional:asm":
PrintAssembly processed: 240041 total address lines.
Perf output processed (skipped 58.437 seconds):
 Column 1: cycles (51019 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.Spliterator$OfInt::forEachRemaining, version 2, compile id 941 

                                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
                                                                             ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
                                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                   0x00007f9bc8689aa5:   jge    0x00007f9bc8689c7e
                   0x00007f9bc8689aab:   cmp    0x8(%rsp),%r9d
          ╭        0x00007f9bc8689ab0:   jae    0x00007f9bc8689ac5
          │        0x00007f9bc8689ab2:   movslq 0x8(%rsp),%r10
          │        0x00007f9bc8689ab7:   movslq 0xc(%rsp),%r11
          │        0x00007f9bc8689abc:   dec    %r11
          │        0x00007f9bc8689abf:   nop
   0.00%  │        0x00007f9bc8689ac0:   cmp    %r10,%r11
          │╭       0x00007f9bc8689ac3:   jb     0x00007f9bc8689b2b
          ↘│       0x00007f9bc8689ac5:   mov    $0xffffff76,%esi
           │       0x00007f9bc8689aca:   mov    (%rsp),%rbp
           │       0x00007f9bc8689ace:   mov    %r9d,0x8(%rsp)
           │       0x00007f9bc8689ad3:   call   0x00007f9bc80c9f00           ; ImmutableOopMap {rbp=Oop [24]=NarrowOop }
           │                                                                 ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
           │                                                                 ; - (reexecute) java.lang.StringLatin1$CharsSpliterator::forEachRemaining@68 (line 807)
           │                                                                 ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │                                                                 ;   {runtime_call UncommonTrapBlob}
           │       0x00007f9bc8689ad8:   nopl   0x50006c8(%rax,%rax,1)       ;   {other}
   0.53%   │  ↗    0x00007f9bc8689ae0:   mov    0xc(%rbp),%r11d
           │  │    0x00007f9bc8689ae4:   mov    %r11,%rsi
           │  │    0x00007f9bc8689ae7:   shl    $0x3,%rsi
   0.25%   │  │    0x00007f9bc8689aeb:   mov    0x10(%rsp),%rdx              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
           │  │                                                              ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
           │  │                                                              ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
           │  │                                                              ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.46%   │  │    0x00007f9bc8689af0:   nop
           │  │    0x00007f9bc8689af1:   movabs $0x7f9b500357d0,%rax
   0.19%   │  │    0x00007f9bc8689afb:   call   0x00007f9bc865d100           ; ImmutableOopMap {[0]=Oop [24]=NarrowOop [32]=Oop }
           │  │                                                              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │  │                                                              ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
           │  │                                                              ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
           │  │                                                              ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │  │                                                              ;   {virtual_call}
   0.02%   │  │    0x00007f9bc8689b00:   nopl   0x60006f0(%rax,%rax,1)       ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │  │                                                              ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
           │  │                                                              ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
           │  │                                                              ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │  │                                                              ;   {other}
   0.31%   │  │    0x00007f9bc8689b08:   nopl   0x0(%rax,%rax,1)             ;*return {reexecute=0 rethrow=0 return_oop=0}
           │  │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@26 (line 180)
           │  │                                                              ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
           │  │                                                              ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
           │  │                                                              ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.12%   │  │↗   0x00007f9bc8689b10:   mov    0x8(%rsp),%r9d
   2.07%   │  ││   0x00007f9bc8689b15:   inc    %r9d
   0.86%   │  ││   0x00007f9bc8689b18:   nopl   0x0(%rax,%rax,1)
   0.00%   │  ││   0x00007f9bc8689b20:   cmp    0xc(%rsp),%r9d
           │  ││   0x00007f9bc8689b25:   jge    0x00007f9bc8689c7e
   0.83%   ↘  ││   0x00007f9bc8689b2b:   mov    (%rsp),%rcx                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
              ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
              ││                                                             ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
              ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.13%      ││   0x00007f9bc8689b2f:   mov    0x10(%rcx),%r11d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@5 (line 180)
              ││                                                             ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
              ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   2.79%      ││   0x00007f9bc8689b33:   mov    0x34(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007f9bc868a540
   5.04%      ││   0x00007f9bc8689b38:   mov    0x20(%rsp),%rdi              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
              ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
              ││                                                             ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
              ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
              ││   0x00007f9bc8689b3d:   movzbl 0x10(%rdi,%r9,1),%r10d       ;*iand {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@56 (line 807)
              ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.15%      ││   0x00007f9bc8689b43:   mov    0x8(%r12,%r11,8),%ebx        ; implicit exception: dispatches to 0x00007f9bc868a554
              ││                                                             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
              ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
              ││                                                             ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
              ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   4.83%      ││   0x00007f9bc8689b48:   mov    0xc(%rcx),%r8d               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
              ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@1 (line 180)
              ││                                                             ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
              ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
              ││   0x00007f9bc8689b4c:   cmp    $0x102b910,%ebx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/functional/FunctionalPredicate$$Lambda+0x00007f9b5002b910&apos;)}
              ││   0x00007f9bc8689b52:   jne    0x00007f9bc8689fd8
   0.93%      ││   0x00007f9bc8689b58:   nopl   0x0(%rax,%rax,1)
   0.02%      ││   0x00007f9bc8689b60:   cmp    $0x41,%r10d
            ╭ ││   0x00007f9bc8689b64:   jl     0x00007f9bc8689c2d
   0.13%    │ ││   0x00007f9bc8689b6a:   mov    %r10d,%ebp
   0.20%    │ ││   0x00007f9bc8689b6d:   or     $0x20,%ebp
   0.89%    │ ││   0x00007f9bc8689b70:   cmp    $0x7a,%ebp                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
            │ ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            │ ││                                                             ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
            │ ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            │ ││   0x00007f9bc8689b73:   jg     0x00007f9bc8689c91           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@40 (line 170)
            │ ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@1
            │ ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            │ ││                                                             ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │ ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.16%    │ ││   0x00007f9bc8689b79:   cmp    $0xffffff80,%ebp             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
            │ ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            │ ││                                                             ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
            │ ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.00%    │ ││   0x00007f9bc8689b7c:   nopl   0x0(%rax)
            │ ││   0x00007f9bc8689b80:   jl     0x00007f9bc868a0d0           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │ ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@1
            │ ││                                                             ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            │ ││                                                             ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │ ││                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   1.36%    │ ││↗  0x00007f9bc8689b86:   cmp    $0x7f,%ebp
            │╭│││  0x00007f9bc8689b89:   jg     0x00007f9bc8689c35
   0.30%    │││││  0x00007f9bc8689b8f:   lea    0x80(%rbp),%r10d
            │││││  0x00007f9bc8689b96:   data16 nopw 0x0(%rax,%rax,1)
   0.01%    │││││  0x00007f9bc8689ba0:   cmp    $0x100,%r10d
            │││││  0x00007f9bc8689ba7:   jae    0x00007f9bc868a044
   0.82%    │││││  0x00007f9bc8689bad:   movslq %ebp,%r10
   0.39%    │││││  0x00007f9bc8689bb0:   movabs $0x7ffec4a80,%r11            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffec4a80})}
            │││││  0x00007f9bc8689bba:   mov    0x210(%r11,%r10,4),%r10d
   0.41%    │││││  0x00007f9bc8689bc2:   shl    $0x3,%r10
   1.05%    │││││  0x00007f9bc8689bc6:   mov    %r10,0x10(%rsp)
   0.36%    │││││  0x00007f9bc8689bcb:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007f9bc868a56c
            │││││  0x00007f9bc8689bd0:   cmp    $0x35bb40,%r10d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
            │││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            │││││                                                            ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
            │││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            │││││                                                            ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
            │││││  0x00007f9bc8689bd7:   jne    0x00007f9bc868a014
            │││││  0x00007f9bc8689bdd:   lea    (%r12,%r8,8),%rbp            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            │││││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.78%    │││││  0x00007f9bc8689be1:   mov    0x10(%rbp),%r11d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
            │││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            │││││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   0.23%    │││││  0x00007f9bc8689be5:   mov    0x34(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007f9bc868a580
   0.75%    │││││  0x00007f9bc8689bea:   mov    %rdi,0x20(%rsp)
   0.00%    │││││  0x00007f9bc8689bef:   mov    %r9d,0x8(%rsp)
   0.69%    │││││  0x00007f9bc8689bf4:   mov    %rcx,(%rsp)
   0.02%    │││││  0x00007f9bc8689bf8:   mov    %r11,%rsi
   0.25%    │││││  0x00007f9bc8689bfb:   shl    $0x3,%rsi
   0.00%    │││││  0x00007f9bc8689bff:   mov    0x10(%rsp),%rdx              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
            │││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            │││││                                                            ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
            │││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
   1.10%    │││││  0x00007f9bc8689c04:   nop
   0.03%    │││││  0x00007f9bc8689c05:   movabs $0x7f9b5002bb28,%rax
   0.21%    │││││  0x00007f9bc8689c0f:   call   0x00007f9bc865b640           ; ImmutableOopMap {rbp=Oop [0]=Oop [16]=Oop [24]=NarrowOop [32]=Oop }
            │││││                                                            ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
            │││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            │││││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            │││││                                                            ;   {virtual_call}
   0.30%    │││││  0x00007f9bc8689c14:   nopl   0x7000804(%rax,%rax,1)       ;   {other}
            │││││  0x00007f9bc8689c1c:   nopl   0x0(%rax)
   0.33%    │││││  0x00007f9bc8689c20:   test   %eax,%eax                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002b910::apply@4
            │││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            │││││                                                            ; - java.lang.StringUTF16$CharsSpliterator::forEachRemaining@57 (line 1217)
            │││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            ││╰││  0x00007f9bc8689c22:   jne    0x00007f9bc8689ae0
   0.05%    ││ ╰│  0x00007f9bc8689c28:   jmp    0x00007f9bc8689b10
   0.28%    ↘│  │  0x00007f9bc8689c2d:   mov    %r10d,%ebp
   0.15%     │  ╰  0x00007f9bc8689c30:   jmp    0x00007f9bc8689b86
             ↘     0x00007f9bc8689c35:   mov    0x1b8(%r15),%rax
                   0x00007f9bc8689c3c:   mov    %rax,%r10
                   0x00007f9bc8689c3f:   add    $0x10,%r10
                   0x00007f9bc8689c43:   cmp    0x1c8(%r15),%r10
                   0x00007f9bc8689c4a:   jae    0x00007f9bc8689f9e
                   0x00007f9bc8689c50:   mov    %r10,0x1b8(%r15)
                   0x00007f9bc8689c57:   prefetchw 0xc0(%r10)
                   0x00007f9bc8689c5f:   movq   $0x1,(%rax)
                   0x00007f9bc8689c66:   movl   $0x25c88,0x8(%rax)           ;   {metadata(&apos;java/lang/Integer&apos;)}
                   0x00007f9bc8689c6d:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  30.76%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f9b5002bb28::test, version 2, compile id 691 

              nul chk table  [0x00007f9bc865bb38,0x00007f9bc865bb48] = 16
             [Disassembly]
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Entry Point]
               # {method} {0x00007f9b444e7bd8} &apos;test&apos; &apos;(Ljava/lang/Object;)Z&apos; in &apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/functional/FunctionalPredicate$$Lambda+0x00007f9b5002bb28&apos;
               # this:     rsi:rsi   = &apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/functional/FunctionalPredicate$$Lambda+0x00007f9b5002bb28&apos;
               # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
               #           [sp+0x30]  (sp of caller)
   0.79%       0x00007f9bc865b640:   mov    0x8(%rsi),%r10d
   3.04%       0x00007f9bc865b644:   movabs $0x7f9b4f000000,%r11
   0.01%       0x00007f9bc865b64e:   add    %r11,%r10
   1.14%       0x00007f9bc865b651:   cmp    %r10,%rax
               0x00007f9bc865b654:   jne    0x00007f9bc80c4080           ;   {runtime_call ic_miss_stub}
   1.15%       0x00007f9bc865b65a:   xchg   %ax,%ax
   0.02%       0x00007f9bc865b65c:   nopl   0x0(%rax)
             [Verified Entry Point]
               0x00007f9bc865b660:   mov    %eax,-0x14000(%rsp)
   1.27%       0x00007f9bc865b667:   push   %rbp
   0.01%       0x00007f9bc865b668:   sub    $0x20,%rsp
   0.01%       0x00007f9bc865b66c:   cmpl   $0x0,0x20(%r15)
   1.30%       0x00007f9bc865b674:   jne    0x00007f9bc865b7e3           ;*synchronization entry
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@-1
   0.01%       0x00007f9bc865b67a:   nopw   0x0(%rax,%rax,1)
   0.01%       0x00007f9bc865b680:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f9bc865b7ac
   0.01%       0x00007f9bc865b684:   cmp    $0x25c88,%r10d               ;   {metadata(&apos;java/lang/Integer&apos;)}
               0x00007f9bc865b68b:   jne    0x00007f9bc865b794           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@1
   1.24%       0x00007f9bc865b691:   mov    0xc(%rdx),%r8d               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Integer::intValue@1 (line 1143)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@4
   0.03%       0x00007f9bc865b695:   mov    %r8d,%r10d
   0.00%       0x00007f9bc865b698:   shr    $0x8,%r10d
               0x00007f9bc865b69c:   nopl   0x0(%rax)
   1.23%       0x00007f9bc865b6a0:   test   %r10d,%r10d
          ╭    0x00007f9bc865b6a3:   jne    0x00007f9bc865b710           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.CharacterData::of@4 (line 78)
          │                                                              ; - java.lang.Character::getType@1 (line 11557)
          │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
   0.01%  │    0x00007f9bc865b6a9:   movabs $0x7ffc034e0,%r10            ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.Character::getType@1 (line 11557)
          │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
          │                                                              ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.00%  │ ↗  0x00007f9bc865b6b3:   mov    0x8(%r10),%r11d
   0.01%  │ │  0x00007f9bc865b6b7:   nopw   0x0(%rax,%rax,1)
   1.22%  │ │  0x00007f9bc865b6c0:   cmp    $0x2f110,%r11d               ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
          │╭│  0x00007f9bc865b6c7:   jne    0x00007f9bc865b72a           ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.Character::getType@5 (line 11557)
          │││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
   0.01%  │││  0x00007f9bc865b6cd:   movzwl %r8w,%ebp                    ;*i2c {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.CharacterDataLatin1::getProperties@1 (line 73)
          │││                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          │││                                                            ; - java.lang.Character::getType@5 (line 11557)
          │││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
   0.01%  │││  0x00007f9bc865b6d1:   cmp    $0x100,%ebp
          │││  0x00007f9bc865b6d7:   jae    0x00007f9bc865b74d
          │││  0x00007f9bc865b6dd:   movabs $0x7ffc034f0,%r10            ;   {oop([I{0x00000007ffc034f0})}
   1.20%  │││  0x00007f9bc865b6e7:   mov    0x10(%r10,%rbp,4),%eax
   0.16%  │││  0x00007f9bc865b6ec:   and    $0x1f,%eax                   ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.Character::getType@5 (line 11557)
          │││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
   0.47%  │││  0x00007f9bc865b6ef:   mov    $0x23e,%r10d
          │││  0x00007f9bc865b6f5:   sarx   %eax,%r10d,%eax
   1.22%  │││  0x00007f9bc865b6fa:   and    $0x1,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │││                                                            ; - java.lang.Character::isLetterOrDigit@9 (line 10300)
          │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
   0.63%  │││  0x00007f9bc865b6fd:   add    $0x20,%rsp
   0.00%  │││  0x00007f9bc865b701:   pop    %rbp
          │││  0x00007f9bc865b702:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │││  0x00007f9bc865b709:   ja     0x00007f9bc865b7cd
   1.27%  │││  0x00007f9bc865b70f:   ret    
          ↘││  0x00007f9bc865b710:   mov    %r8d,%ebp
           ││  0x00007f9bc865b713:   shr    $0x10,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.lang.CharacterData::of@14 (line 81)
           ││                                                            ; - java.lang.Character::getType@1 (line 11557)
           ││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
           ││  0x00007f9bc865b716:   test   %ebp,%ebp
           ││  0x00007f9bc865b718:   jne    0x00007f9bc865b760           ;*tableswitch {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.lang.CharacterData::of@15 (line 81)
           ││                                                            ; - java.lang.Character::getType@1 (line 11557)
           ││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
   0.01%   ││  0x00007f9bc865b71e:   movabs $0x7ff072ea8,%r10            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
           │╰  0x00007f9bc865b728:   jmp    0x00007f9bc865b6b3
   0.00%   ↘   0x00007f9bc865b72a:   cmp    $0x1b41d8,%r11d              ;   {metadata(&apos;java/lang/CharacterData00&apos;)}
               0x00007f9bc865b731:   jne    0x00007f9bc865b778           ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Character::getType@5 (line 11557)
                                                                         ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
               0x00007f9bc865b733:   mov    %r10,%rsi
               0x00007f9bc865b736:   mov    %r8d,%edx
   0.01%       0x00007f9bc865b739:   xchg   %ax,%ax
               0x00007f9bc865b73b:   call   0x00007f9bc80c4380           ; ImmutableOopMap {}
                                                                         ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterData00::getType@2 (line 84)
                                                                         ; - java.lang.Character::getType@5 (line 11557)
                                                                         ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
                                                                         ;   {optimized virtual_call}
   0.01%       0x00007f9bc865b740:   nopl   0x2b0(%rax,%rax,1)           ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterData00::getType@2 (line 84)
                                                                         ; - java.lang.Character::getType@5 (line 11557)
                                                                         ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b5002bb28::test@7
....................................................................................................
  17.49%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.stream.ReduceOps$4ReducingSink::accept, version 2, compile id 693 

           nul chk table  [0x00007f9bc865e370,0x00007f9bc865e3a0] = 48
          [Disassembly]
          --------------------------------------------------------------------------------
          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x00007f9b44276d28} &apos;accept&apos; &apos;(Ljava/lang/Object;)V&apos; in &apos;java/util/stream/ReduceOps$4ReducingSink&apos;
            # this:     rsi:rsi   = &apos;java/util/stream/ReduceOps$4ReducingSink&apos;
            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x70]  (sp of caller)
   0.81%    0x00007f9bc865d100:   mov    0x8(%rsi),%r10d
   1.82%    0x00007f9bc865d104:   movabs $0x7f9b4f000000,%r11
   0.01%    0x00007f9bc865d10e:   add    %r11,%r10
   0.88%    0x00007f9bc865d111:   cmp    %r10,%rax
            0x00007f9bc865d114:   jne    0x00007f9bc80c4080           ;   {runtime_call ic_miss_stub}
   0.83%    0x00007f9bc865d11a:   xchg   %ax,%ax
            0x00007f9bc865d11c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.01%    0x00007f9bc865d120:   mov    %eax,-0x14000(%rsp)
   1.77%    0x00007f9bc865d127:   push   %rbp
            0x00007f9bc865d128:   sub    $0x60,%rsp
   0.01%    0x00007f9bc865d12c:   cmpl   $0x1,0x20(%r15)
   0.85%    0x00007f9bc865d134:   jne    0x00007f9bc865d94a           ;*synchronization entry
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@-1 (line 220)
            0x00007f9bc865d13a:   mov    0xc(%rsi),%r8d               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@5 (line 220)
   0.00%    0x00007f9bc865d13e:   mov    0x14(%rsi),%r11d             ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@1 (line 220)
   0.03%    0x00007f9bc865d142:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f9bc865d884
   0.87%    0x00007f9bc865d147:   cmp    $0x1084000,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/functional/FunctionalPredicate$$Lambda+0x00007f9b50084000&apos;)}
            0x00007f9bc865d14e:   jne    0x00007f9bc865d644           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   0.09%    0x00007f9bc865d154:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f9bc865d8a0
   0.00%    0x00007f9bc865d159:   nopl   0x0(%rax)
   0.01%    0x00007f9bc865d160:   cmp    $0x8128,%r11d                ;   {metadata(&apos;java/lang/StringBuilder&apos;)}
            0x00007f9bc865d167:   jne    0x00007f9bc865d84b
   0.83%    0x00007f9bc865d16d:   lea    (%r12,%r8,8),%rbx            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@1
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            0x00007f9bc865d171:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f9bc865d8b8
   0.00%    0x00007f9bc865d175:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%    0x00007f9bc865d180:   cmp    $0x25c88,%r10d               ;   {metadata(&apos;java/lang/Integer&apos;)}
            0x00007f9bc865d187:   jne    0x00007f9bc865d868           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@5
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   0.93%    0x00007f9bc865d18d:   mov    0xc(%rdx),%r13d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Integer::intValue@1 (line 1143)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@8
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   0.00%    0x00007f9bc865d191:   mov    %r13d,%ebp
            0x00007f9bc865d194:   shr    $0x10,%ebp                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::isBmpCodePoint@3 (line 9136)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@1 (line 960)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   0.02%    0x00007f9bc865d197:   test   %ebp,%ebp
            0x00007f9bc865d199:   jne    0x00007f9bc865d668           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Character::isBmpCodePoint@4 (line 9136)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@1 (line 960)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   0.85%    0x00007f9bc865d19f:   mov    0x14(%rbx),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@1 (line 240)
                                                                      ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            0x00007f9bc865d1a3:   mov    0xc(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f9bc865d8d0
                                                                      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 240)
                                                                      ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   3.05%    0x00007f9bc865d1a8:   movsbl 0x10(%rbx),%r8d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@6 (line 240)
                                                                      ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   0.00%    0x00007f9bc865d1ad:   mov    0xc(%rbx),%r9d               ;*getfield count {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.AbstractStringBuilder::append@2 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            0x00007f9bc865d1b1:   sarx   %r8d,%r10d,%edi
   0.90%    0x00007f9bc865d1b6:   mov    %r9d,%ecx
            0x00007f9bc865d1b9:   sub    %edi,%ecx
   1.75%    0x00007f9bc865d1bb:   movzwl %r13w,%edx                   ;*i2c {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@9 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            0x00007f9bc865d1bf:   mov    %edx,0x30(%rsp)
            0x00007f9bc865d1c3:   inc    %ecx
            0x00007f9bc865d1c5:   test   %ecx,%ecx
            0x00007f9bc865d1c7:   jle    0x00007f9bc865d376           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 241)
                                                                      ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
   0.01%    0x00007f9bc865d1cd:   inc    %r9d
   0.00%    0x00007f9bc865d1d0:   shlx   %r8d,%r9d,%ecx
            0x00007f9bc865d1d5:   sub    %r10d,%ecx                   ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.AbstractStringBuilder::newCapacity@15 (line 262)
                                                                      ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                      ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            0x00007f9bc865d1d8:   mov    $0x2,%r9d
            0x00007f9bc865d1de:   shlx   %r8d,%r9d,%ebp
            0x00007f9bc865d1e3:   add    %r10d,%ebp
   0.00%    0x00007f9bc865d1e6:   cmp    %ecx,%ebp
            0x00007f9bc865d1e8:   cmovl  %ecx,%ebp
            0x00007f9bc865d1eb:   add    %r10d,%ebp                   ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.internal.util.ArraysSupport::newLength@6 (line 740)
                                                                      ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 263)
                                                                      ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                      ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
                                                                      ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                      ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f9b50084000::accept@11
                                                                      ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            0x00007f9bc865d1ee:   mov    %ebp,%r9d
   0.00%    0x00007f9bc865d1f1:   dec    %r9d
            0x00007f9bc865d1f4:   nopl   0x0(%rax,%rax,1)
            0x00007f9bc865d1fc:   data16 data16 xchg %ax,%ax
            0x00007f9bc865d200:   cmp    $0x7ffffff7,%r9d
            0x00007f9bc865d207:   jae    0x00007f9bc865d798           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - jdk.internal.util.ArraysSupport::newLength@16 (line 741)
                                                                      ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 263)
                                                                      ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                      ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                      ; - java.lang.StringBuilder::append@2 (line 246)
                                                                      ; - java.lang.StringBuilder::append@2 (line 91)
....................................................................................................
  16.34%  <total for region 3>

....[Hottest Regions]...............................................................................
  30.76%         c2, level 4  java.util.Spliterator$OfInt::forEachRemaining, version 2, compile id 941 
  17.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f9b5002bb28::test, version 2, compile id 691 
  16.34%         c2, level 4  java.util.stream.ReduceOps$4ReducingSink::accept, version 2, compile id 693 
   9.59%         c2, level 4  java.util.Spliterator$OfInt::forEachRemaining, version 2, compile id 941 
   7.00%         c2, level 4  java.util.stream.ReduceOps$4ReducingSink::accept, version 2, compile id 693 
   3.88%         c2, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 3, compile id 1066 
   2.17%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 648 
   1.95%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 965 
   1.78%         c2, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 3, compile id 1066 
   0.83%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 707 
   0.75%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.53%              kernel  [unknown] 
   0.46%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.42%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.40%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 965 
   0.24%              kernel  [unknown] 
   0.22%              kernel  [unknown] 
   0.19%              kernel  [unknown] 
   0.19%         c2, level 4  java.util.stream.ReduceOps$4ReducingSink::accept, version 2, compile id 693 
   4.38%  <...other 761 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  40.52%         c2, level 4  java.util.Spliterator$OfInt::forEachRemaining, version 2, compile id 941 
  23.55%         c2, level 4  java.util.stream.ReduceOps$4ReducingSink::accept, version 2, compile id 693 
  17.49%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f9b5002bb28::test, version 2, compile id 691 
   5.76%         c2, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 3, compile id 1066 
   3.78%              kernel  [unknown] 
   2.40%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 965 
   2.23%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 648 
   1.03%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 707 
   0.77%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.42%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.20%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 937 
   0.12%         c2, level 4  java.lang.CharacterData00::toLowerCase, version 2, compile id 793 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::test, version 2, compile id 926 
   0.10%                      <unknown> 
   0.08%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.08%         c2, level 4  java.lang.CharacterData00::getProperties, version 2, compile id 694 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::palindromes, version 2, compile id 1100 
   0.06%         c2, level 4  java.io.InputStreamReader::read, version 2, compile id 970 
   0.05%         c2, level 4  java.lang.StringUTF16::putChars, version 4, compile id 753 
   0.04%         c2, level 4  java.util.Iterator::forEachRemaining, version 2, compile id 1026 
   1.10%  <...other 176 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.87%         c2, level 4
   3.78%              kernel
   1.20%        runtime stub
   0.49%           libjvm.so
   0.21%        libc-2.31.so
   0.12%  libpthread-2.31.so
   0.10%                    
   0.04%    perf-1945099.map
   0.03%         c1, level 1
   0.03%          libjava.so
   0.03%         interpreter
   0.03%    Unknown, level 0
   0.02%          ld-2.31.so
   0.02%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative

# Run progress: 25.00% complete, ETA 00:05:38
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.426 ms/op
# Warmup Iteration   2: 1.140 ms/op
# Warmup Iteration   3: 1.142 ms/op
# Warmup Iteration   4: 1.141 ms/op
# Warmup Iteration   5: 1.147 ms/op
Iteration   1: 1.140 ms/op
Iteration   2: 1.140 ms/op
Iteration   3: 1.141 ms/op
Iteration   4: 1.141 ms/op
Iteration   5: 1.139 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative":
  1.140 ±(99.9%) 0.003 ms/op [Average]
  (min, avg, max) = (1.139, 1.140, 1.141), stdev = 0.001
  CI (99.9%): [1.137, 1.143] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative:asm":
PrintAssembly processed: 219317 total address lines.
Perf output processed (skipped 58.189 seconds):
 Column 1: cycles (51756 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 

                   0x00007fbcac66eed6:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
                                                                             ;   {poll}
                   0x00007fbcac66eed9:   cmp    %r11d,%edi
                   0x00007fbcac66eedc:   nopl   0x0(%rax)
                   0x00007fbcac66eee0:   jge    0x00007fbcac66f5ee
                   0x00007fbcac66eee6:   mov    %edi,%r8d
                   0x00007fbcac66eee9:   jmp    0x00007fbcac66ee2b
   0.00%    ↗      0x00007fbcac66eeee:   mov    %r8d,%edi                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@10 (line 39)
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
            │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.31%   ↗│      0x00007fbcac66eef1:   mov    %edi,%eax
   0.37%   ││      0x00007fbcac66eef3:   movzbl 0x10(%rsi,%rax,1),%r9d       ;*iand {reexecute=0 rethrow=0 return_oop=0}
           ││                                                                ; - java.lang.StringLatin1::charAt@12 (line 47)
           ││                                                                ; - java.lang.String::charAt@12 (line 1555)
           ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
           ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           ││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.85%   ││      0x00007fbcac66eef9:   movabs $0x7ffc034f0,%rax            ;   {oop([I{0x00000007ffc034f0})}
   0.23%   ││      0x00007fbcac66ef03:   mov    0x10(%rax,%r9,4),%eax
   1.16%   ││      0x00007fbcac66ef08:   and    $0x1f,%eax
   0.44%   ││      0x00007fbcac66ef0b:   mov    $0x23e,%ebp
   0.71%   ││      0x00007fbcac66ef10:   sarx   %eax,%ebp,%eax
   0.38%   ││      0x00007fbcac66ef15:   test   $0x1,%al
          ╭││      0x00007fbcac66ef17:   jne    0x00007fbcac66ef56           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@18 (line 39)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.21%  │││      0x00007fbcac66ef19:   mov    %r11d,%ebp
   0.65%  │││      0x00007fbcac66ef1c:   sub    %r8d,%ebp
   0.78%  │││      0x00007fbcac66ef1f:   cmp    %r8d,%r11d
   0.05%  │││      0x00007fbcac66ef22:   cmovl  %ebx,%ebp
   0.16%  │││      0x00007fbcac66ef25:   cmp    $0x3e8,%ebp
   0.02%  │││      0x00007fbcac66ef2b:   mov    $0x3e8,%r9d
   0.58%  │││      0x00007fbcac66ef31:   cmova  %r9d,%ebp
   0.23%  │││      0x00007fbcac66ef35:   add    %r8d,%ebp
   0.03%  │││      0x00007fbcac66ef38:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@21 (line 40)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.33%  │││      0x00007fbcac66ef3a:   cmp    %ebp,%edi
          │╰│      0x00007fbcac66ef3c:   jl     0x00007fbcac66eef1           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%  │ │      0x00007fbcac66ef3e:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rsi=Oop }
          │ │                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │ │                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │ │      0x00007fbcac66ef45:   test   %eax,(%r8)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │ │                                                                ;   {poll}
   0.00%  │ │      0x00007fbcac66ef48:   cmp    %r11d,%edi
          │ │      0x00007fbcac66ef4b:   jge    0x00007fbcac66f5ee
          │ │      0x00007fbcac66ef51:   mov    %edi,%r8d
          │ ╰      0x00007fbcac66ef54:   jmp    0x00007fbcac66eeee
   1.37%  ↘        0x00007fbcac66ef56:   mov    %rcx,%r9                     ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@18 (line 39)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.53%           0x00007fbcac66ef59:   cmp    %edi,%r11d
   0.64%           0x00007fbcac66ef5c:   nopl   0x0(%rax)
   0.07%           0x00007fbcac66ef60:   jle    0x00007fbcac66f3d5           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@29 (line 42)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.81%           0x00007fbcac66ef66:   mov    %ebx,%ecx
   0.05%           0x00007fbcac66ef68:   mov    %r9,%r8
   0.54%           0x00007fbcac66ef6b:   mov    0xc(%r12,%rdx,8),%r9d        ; implicit exception: dispatches to 0x00007fbcac66f48c
                                                                             ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.lang.StringLatin1::charAt@2 (line 46)
                                                                             ; - java.lang.String::charAt@12 (line 1555)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.38%           0x00007fbcac66ef70:   movslq %r9d,%rbx
   0.70%           0x00007fbcac66ef73:   movslq %edi,%rax
   0.05%           0x00007fbcac66ef76:   add    $0x1,%rax
   0.50%           0x00007fbcac66ef7a:   nopw   0x0(%rax,%rax,1)
   0.08%           0x00007fbcac66ef80:   cmp    %rbx,%rax
                   0x00007fbcac66ef83:   jae    0x00007fbcac66f48c
   0.60%           0x00007fbcac66ef89:   cmp    %r9d,%r11d
                   0x00007fbcac66ef8c:   jae    0x00007fbcac66f48c
   0.04%           0x00007fbcac66ef92:   lea    (%r12,%rdx,8),%rsi
   0.46%           0x00007fbcac66ef96:   test   %r10d,%r10d
             ╭     0x00007fbcac66ef99:   je     0x00007fbcac66f085
   0.11%     │     0x00007fbcac66ef9f:   sar    %r9d                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
             │                                                               ; - java.lang.StringUTF16::length@3 (line 75)
             │                                                               ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
             │                                                               ; - java.lang.StringUTF16::charAt@2 (line 1418)
             │                                                               ; - java.lang.String::charAt@21 (line 1557)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.07%     │     0x00007fbcac66efa2:   movslq %r9d,%rbx
   0.07%     │     0x00007fbcac66efa5:   cmp    %rbx,%rax
             │     0x00007fbcac66efa8:   jae    0x00007fbcac66f48c
   0.14%     │     0x00007fbcac66efae:   cmp    %r9d,%r11d
             │     0x00007fbcac66efb1:   jae    0x00007fbcac66f48c
   0.09%     │ ↗   0x00007fbcac66efb7:   mov    %r11d,0x18(%rsp)
   0.09%     │ │   0x00007fbcac66efbc:   nopl   0x0(%rax)                    ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@32 (line 42)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%     │↗│   0x00007fbcac66efc0:   mov    0x18(%rsp),%r9d              ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
             │││                                                             ; - java.lang.String::checkIndex@5 (line 4828)
             │││                                                             ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
             │││                                                             ; - java.lang.StringUTF16::charAt@2 (line 1418)
             │││                                                             ; - java.lang.String::charAt@21 (line 1557)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.44%     │││   0x00007fbcac66efc5:   movzwl 0x10(%rsi,%r9,2),%eax        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
             │││                                                             ; - java.lang.StringUTF16::charAt@7 (line 1419)
             │││                                                             ; - java.lang.String::charAt@21 (line 1557)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.95%     │││   0x00007fbcac66efcb:   mov    %eax,%ebx
   0.01%     │││   0x00007fbcac66efcd:   shr    $0x8,%ebx
   0.21%     │││   0x00007fbcac66efd0:   test   %ebx,%ebx
   0.45%     │││   0x00007fbcac66efd2:   movabs $0x7ffc034e0,%rbp            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.02%     │││   0x00007fbcac66efdc:   movabs $0x7ff172ea8,%r9             ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff172ea8})}
   0.01%     │││   0x00007fbcac66efe6:   cmovne %r9,%rbp                     ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
             │││                                                             ; - java.lang.Character::getType@1 (line 11557)
             │││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
             │││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.04%     │││   0x00007fbcac66efea:   mov    0x8(%rbp),%r9d
   1.08%     │││   0x00007fbcac66efee:   cmp    $0x2f110,%r9d                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
             │││   0x00007fbcac66eff5:   jne    0x00007fbcac66f2c5
   0.22%     │││   0x00007fbcac66effb:   nopl   0x0(%rax,%rax,1)
   0.02%     │││   0x00007fbcac66f000:   cmp    $0x100,%eax
             │││   0x00007fbcac66f005:   jae    0x00007fbcac66f548
   0.05%     │││   0x00007fbcac66f00b:   movabs $0x7ffc034f0,%r9             ;   {oop([I{0x00000007ffc034f0})}
   0.08%     │││   0x00007fbcac66f015:   mov    0x10(%r9,%rax,4),%r9d
   0.24%     │││   0x00007fbcac66f01a:   and    $0x1f,%r9d                   ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
             │││                                                             ; - java.lang.Character::getType@5 (line 11557)
             │││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
             │││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.02%     │││   0x00007fbcac66f01e:   mov    $0x23e,%eax
   0.03%     │││   0x00007fbcac66f023:   sarx   %r9d,%eax,%r9d
   0.10%     │││   0x00007fbcac66f028:   test   $0x1,%r9b
             │││   0x00007fbcac66f02c:   jne    0x00007fbcac66f111           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@40 (line 42)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.59%     │││   0x00007fbcac66f032:   mov    %r11d,%r9d
   0.09%     │││   0x00007fbcac66f035:   sub    %edi,%r9d
   0.65%     │││   0x00007fbcac66f038:   cmp    %edi,%r11d
   0.00%     │││   0x00007fbcac66f03b:   cmovl  %ecx,%r9d
   0.02%     │││   0x00007fbcac66f03f:   cmp    $0x3e8,%r9d
   0.01%     │││   0x00007fbcac66f046:   mov    $0x3e8,%ebx
   0.08%     │││   0x00007fbcac66f04b:   cmova  %ebx,%r9d
   0.16%     │││   0x00007fbcac66f04f:   mov    %r11d,%eax
   0.01%     │││   0x00007fbcac66f052:   sub    %r9d,%eax
   0.00%     │││   0x00007fbcac66f055:   mov    0x18(%rsp),%ebx
   0.00%     │││   0x00007fbcac66f059:   dec    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@43 (line 43)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.09%     │││   0x00007fbcac66f05b:   mov    %ebx,0x18(%rsp)
   0.16%     │││   0x00007fbcac66f05f:   nop
             │││   0x00007fbcac66f060:   cmp    %eax,%ebx
             │╰│   0x00007fbcac66f062:   jg     0x00007fbcac66efc0           ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%     │ │   0x00007fbcac66f068:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r8=Oop rdx=NarrowOop rsi=Oop }
             │ │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
             │ │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@46 (line 43)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
             │ │   0x00007fbcac66f06f:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@46 (line 43)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
             │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
             │ │                                                             ;   {poll}
   0.00%     │ │   0x00007fbcac66f072:   cmp    %edi,%ebx
             │ │   0x00007fbcac66f074:   jle    0x00007fbcac66f5e4
             │ │   0x00007fbcac66f07a:   mov    %ebx,%r11d
             │ │   0x00007fbcac66f07d:   data16 xchg %ax,%ax
             │ ╰   0x00007fbcac66f080:   jmp    0x00007fbcac66efb7
   0.00%     ↘     0x00007fbcac66f085:   mov    %r11d,0x18(%rsp)             ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@32 (line 42)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.64%        ↗  0x00007fbcac66f08a:   mov    0x18(%rsp),%r9d
   0.74%        │  0x00007fbcac66f08f:   movzbl 0x10(%rsi,%r9,1),%ebx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - java.lang.StringLatin1::charAt@12 (line 47)
                │                                                            ; - java.lang.String::charAt@12 (line 1555)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   2.22%        │  0x00007fbcac66f095:   movabs $0x7ffc034f0,%r9             ;   {oop([I{0x00000007ffc034f0})}
   0.01%        │  0x00007fbcac66f09f:   mov    0x10(%r9,%rbx,4),%r9d
   2.45%        │  0x00007fbcac66f0a4:   and    $0x1f,%r9d
   0.57%        │  0x00007fbcac66f0a8:   mov    $0x23e,%ebx
   0.59%        │  0x00007fbcac66f0ad:   sarx   %r9d,%ebx,%r9d
   0.58%        │  0x00007fbcac66f0b2:   test   $0x1,%r9b
                │  0x00007fbcac66f0b6:   jne    0x00007fbcac66f111           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@40 (line 42)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.65%        │  0x00007fbcac66f0bc:   mov    %r11d,%r9d
   0.15%        │  0x00007fbcac66f0bf:   sub    %edi,%r9d
   1.35%        │  0x00007fbcac66f0c2:   cmp    %edi,%r11d
                │  0x00007fbcac66f0c5:   cmovl  %ecx,%r9d
   0.24%        │  0x00007fbcac66f0c9:   cmp    $0x3e8,%r9d
   0.00%        │  0x00007fbcac66f0d0:   mov    $0x3e8,%eax
   0.21%        │  0x00007fbcac66f0d5:   cmova  %eax,%r9d
   0.51%        │  0x00007fbcac66f0d9:   mov    %r11d,%eax
                │  0x00007fbcac66f0dc:   sub    %r9d,%eax
   0.06%        │  0x00007fbcac66f0df:   mov    0x18(%rsp),%r9d
                │  0x00007fbcac66f0e4:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@43 (line 43)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.35%        │  0x00007fbcac66f0e7:   mov    %r9d,0x18(%rsp)
   0.26%        │  0x00007fbcac66f0ec:   cmp    %eax,%r9d
                ╰  0x00007fbcac66f0ef:   jg     0x00007fbcac66f08a           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
                   0x00007fbcac66f0f1:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r8=Oop rdx=NarrowOop rsi=Oop }
                                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@46 (line 43)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
                   0x00007fbcac66f0f8:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  34.37%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 

              0x00007fbcac66ed20:   mov    0xc(%r12,%rdx,8),%r11d       ; implicit exception: dispatches to 0x00007fbcac66f750
              0x00007fbcac66ed25:   movsbl 0x10(%r9),%r10d              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::coder@7 (line 4809)
                                                                        ; - java.lang.String::length@6 (line 1519)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@4 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
              0x00007fbcac66ed2a:   sarx   %r10d,%r11d,%r11d
              0x00007fbcac66ed2f:   dec    %r11d                        ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@8 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%      0x00007fbcac66ed32:   test   %r11d,%r11d
              0x00007fbcac66ed35:   jle    0x00007fbcac66f3bd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@2 (line 38)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
              0x00007fbcac66ed3b:   xor    %r8d,%r8d
              0x00007fbcac66ed3e:   xor    %ebx,%ebx
          ╭   0x00007fbcac66ed40:   jmp    0x00007fbcac66edcf
   0.00%  │   0x00007fbcac66ed45:   shl    $0x3,%r10
   0.65%  │   0x00007fbcac66ed49:   movzbl 0x10(%r10,%r11,1),%edx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
          │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │   0x00007fbcac66ed4f:   movabs $0x7ffc034e0,%rsi            ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │                                                             ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.35%  │   0x00007fbcac66ed59:   mov    0x8(%rsi),%r11d
   0.14%  │   0x00007fbcac66ed5d:   data16 xchg %ax,%ax
   0.69%  │   0x00007fbcac66ed60:   cmp    $0x2f110,%r11d               ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
          │   0x00007fbcac66ed67:   jne    0x00007fbcac66f3fd           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.19%  │   0x00007fbcac66ed6d:   cmp    $0x41,%edx
          │   0x00007fbcac66ed70:   jl     0x00007fbcac66f2bb           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.40%  │   0x00007fbcac66ed76:   mov    %edx,%eax
   0.02%  │   0x00007fbcac66ed78:   or     $0x20,%eax                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
          │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.79%  │   0x00007fbcac66ed7b:   nopl   0x0(%rax,%rax,1)
   0.20%  │   0x00007fbcac66ed80:   cmp    $0x7a,%eax
          │   0x00007fbcac66ed83:   jg     0x00007fbcac66f445           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.42%  │   0x00007fbcac66ed89:   movzwl %ax,%r11d
   0.02%  │   0x00007fbcac66ed8d:   mov    0x1c(%rsp),%r8d
   0.64%  │   0x00007fbcac66ed92:   cmp    %r11d,%r8d
          │   0x00007fbcac66ed95:   jne    0x00007fbcac66f465           ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.21%  │   0x00007fbcac66ed9b:   mov    0x458(%r15),%r10
   0.35%  │   0x00007fbcac66eda2:   mov    0x18(%rsp),%r11d
   0.02%  │   0x00007fbcac66eda7:   dec    %r11d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@80 (line 52)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.70%  │   0x00007fbcac66edaa:   mov    0x8(%rsp),%r8d
   0.20%  │   0x00007fbcac66edaf:   inc    %r8d                         ; ImmutableOopMap {[16]=Oop }
          │                                                             ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@83 (line 52)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.38%  │   0x00007fbcac66edb2:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@83 (line 52)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │                                                             ;   {poll}
   0.03%  │   0x00007fbcac66edb5:   cmp    %r11d,%r8d
          │   0x00007fbcac66edb8:   jge    0x00007fbcac66f3bd           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@2 (line 38)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.68%  │   0x00007fbcac66edbe:   mov    0x10(%rsp),%r9
   0.22%  │   0x00007fbcac66edc3:   mov    0x14(%r9),%edx               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.String::charAt@8 (line 1555)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.49%  │   0x00007fbcac66edc7:   movsbl 0x10(%r9),%r10d
   0.01%  │   0x00007fbcac66edcc:   mov    (%rsp),%ebx                  ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.String::isLatin1@7 (line 4817)
          │                                                             ; - java.lang.String::charAt@1 (line 1554)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.78%  ↘   0x00007fbcac66edcf:   cmp    %r11d,%r8d
              0x00007fbcac66edd2:   jge    0x00007fbcac66f419           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@7 (line 39)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.21%      0x00007fbcac66edd8:   mov    %r9,%rcx
   0.42%      0x00007fbcac66eddb:   nopl   0x0(%rax,%rax,1)
   0.02%      0x00007fbcac66ede0:   mov    0xc(%r12,%rdx,8),%r9d        ; implicit exception: dispatches to 0x00007fbcac66f46d
                                                                        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringLatin1::charAt@2 (line 46)
                                                                        ; - java.lang.String::charAt@12 (line 1555)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.24%      0x00007fbcac66ede5:   cmp    %r9d,%r8d
              0x00007fbcac66ede8:   jae    0x00007fbcac66f46d
   0.32%      0x00007fbcac66edee:   movslq %r9d,%rdi
   0.26%      0x00007fbcac66edf1:   movslq %r11d,%rax
   0.03%      0x00007fbcac66edf4:   dec    %rax
   0.75%      0x00007fbcac66edf7:   cmp    %rdi,%rax
   0.29%      0x00007fbcac66edfa:   nopw   0x0(%rax,%rax,1)
   0.23%      0x00007fbcac66ee00:   jae    0x00007fbcac66f46d
   0.16%      0x00007fbcac66ee06:   lea    (%r12,%rdx,8),%rsi
   0.70%      0x00007fbcac66ee0a:   test   %r10d,%r10d
              0x00007fbcac66ee0d:   je     0x00007fbcac66eeee
   0.21%      0x00007fbcac66ee13:   sar    %r9d                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.StringUTF16::length@3 (line 75)
                                                                        ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
                                                                        ; - java.lang.StringUTF16::charAt@2 (line 1418)
                                                                        ; - java.lang.String::charAt@21 (line 1557)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%      0x00007fbcac66ee16:   cmp    %r9d,%r8d
              0x00007fbcac66ee19:   jae    0x00007fbcac66f46d
   0.02%      0x00007fbcac66ee1f:   movslq %r9d,%r9
   0.07%      0x00007fbcac66ee22:   cmp    %r9,%rax
              0x00007fbcac66ee25:   jae    0x00007fbcac66f46d
   0.21%      0x00007fbcac66ee2b:   mov    %r8d,%edi
   0.00%      0x00007fbcac66ee2e:   xchg   %ax,%ax                      ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@10 (line 39)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%   ↗  0x00007fbcac66ee30:   mov    %edi,%r9d                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.String::checkIndex@5 (line 4828)
           │                                                            ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
           │                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
           │                                                            ; - java.lang.String::charAt@21 (line 1557)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.06%   │  0x00007fbcac66ee33:   movzwl 0x10(%rsi,%r9,2),%r13d       ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
           │                                                            ; - java.lang.String::charAt@21 (line 1557)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.31%   │  0x00007fbcac66ee39:   mov    %r13d,%eax
   0.13%   │  0x00007fbcac66ee3c:   shr    $0x8,%eax
   0.04%   │  0x00007fbcac66ee3f:   test   %eax,%eax
   0.26%   │  0x00007fbcac66ee41:   movabs $0x7ffc034e0,%rbp            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.20%   │  0x00007fbcac66ee4b:   movabs $0x7ff172ea8,%r9             ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff172ea8})}
   0.01%   │  0x00007fbcac66ee55:   cmovne %r9,%rbp                     ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.Character::getType@1 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%   │  0x00007fbcac66ee59:   mov    0x8(%rbp),%eax
   0.66%   │  0x00007fbcac66ee5c:   nopl   0x0(%rax)
   0.16%   │  0x00007fbcac66ee60:   cmp    $0x2f110,%eax                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
           │  0x00007fbcac66ee66:   jne    0x00007fbcac66f337
   0.13%   │  0x00007fbcac66ee6c:   cmp    $0x100,%r13d
           │  0x00007fbcac66ee73:   jae    0x00007fbcac66f564
   0.02%   │  0x00007fbcac66ee79:   movabs $0x7ffc034f0,%r9             ;   {oop([I{0x00000007ffc034f0})}
   0.07%   │  0x00007fbcac66ee83:   mov    0x10(%r9,%r13,4),%r9d
   0.14%   │  0x00007fbcac66ee88:   and    $0x1f,%r9d                   ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.15%   │  0x00007fbcac66ee8c:   mov    $0x23e,%ebp
   0.03%   │  0x00007fbcac66ee91:   sarx   %r9d,%ebp,%r9d
   0.10%   │  0x00007fbcac66ee96:   test   $0x1,%r9b
   0.19%   │  0x00007fbcac66ee9a:   nopw   0x0(%rax,%rax,1)
   0.11%   │  0x00007fbcac66eea0:   jne    0x00007fbcac66ef56           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@18 (line 39)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.58%   │  0x00007fbcac66eea6:   mov    %r11d,%ebp
   0.44%   │  0x00007fbcac66eea9:   sub    %r8d,%ebp
   0.36%   │  0x00007fbcac66eeac:   cmp    %r8d,%r11d
   0.00%   │  0x00007fbcac66eeaf:   cmovl  %ebx,%ebp
   0.00%   │  0x00007fbcac66eeb2:   cmp    $0x3e8,%ebp
   0.01%   │  0x00007fbcac66eeb8:   mov    $0x3e8,%r9d
   0.27%   │  0x00007fbcac66eebe:   cmova  %r9d,%ebp
   0.01%   │  0x00007fbcac66eec2:   add    %r8d,%ebp
   0.01%   │  0x00007fbcac66eec5:   inc    %edi                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@21 (line 40)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.17%   │  0x00007fbcac66eec7:   cmp    %ebp,%edi
           ╰  0x00007fbcac66eec9:   jl     0x00007fbcac66ee30           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
              0x00007fbcac66eecf:   mov    0x458(%r15),%r8              ; ImmutableOopMap {rcx=Oop rdx=NarrowOop rsi=Oop }
                                                                        ;*goto {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@24 (line 40)
....................................................................................................
  18.46%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 

               0x00007fbcac66f0f8:   test   %eax,(%r11)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@46 (line 43)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
                                                                         ;   {poll}
               0x00007fbcac66f0fb:   nopl   0x0(%rax,%rax,1)
               0x00007fbcac66f100:   cmp    %edi,%r9d
               0x00007fbcac66f103:   jle    0x00007fbcac66f5e4
               0x00007fbcac66f109:   mov    %r9d,%r11d
               0x00007fbcac66f10c:   jmp    0x00007fbcac66f085
   2.59%       0x00007fbcac66f111:   mov    %r8,%r9
   0.19%       0x00007fbcac66f114:   mov    %ecx,%ebx                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@40 (line 42)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.43%       0x00007fbcac66f116:   cmp    0x18(%rsp),%edi
   1.31%       0x00007fbcac66f11a:   nopw   0x0(%rax,%rax,1)
   0.80%       0x00007fbcac66f120:   jge    0x00007fbcac66f3b6           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@51 (line 45)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.17%       0x00007fbcac66f126:   test   %r10d,%r10d
          ╭    0x00007fbcac66f129:   je     0x00007fbcac66f179           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.String::charAt@4 (line 1554)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%  │    0x00007fbcac66f12f:   mov    0xc(%r12,%rdx,8),%ebp        ; implicit exception: dispatches to 0x00007fbcac66f700
   0.06%  │    0x00007fbcac66f134:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.StringUTF16::length@3 (line 75)
          │                                                              ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
          │                                                              ; - java.lang.StringUTF16::charAt@2 (line 1418)
          │                                                              ; - java.lang.String::charAt@21 (line 1557)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.17%  │    0x00007fbcac66f136:   cmp    %ebp,%edi
          │    0x00007fbcac66f138:   jae    0x00007fbcac66f588
   0.04%  │    0x00007fbcac66f13e:   mov    %edi,%r11d
   0.03%  │    0x00007fbcac66f141:   lea    (%r12,%rdx,8),%r10
   0.06%  │    0x00007fbcac66f145:   movzwl 0x10(%r10,%r11,2),%edx       ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.StringUTF16::charAt@7 (line 1419)
          │                                                              ; - java.lang.String::charAt@21 (line 1557)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.17%  │    0x00007fbcac66f14b:   mov    %edx,%r10d
   0.01%  │    0x00007fbcac66f14e:   shr    $0x8,%r10d
   0.03%  │    0x00007fbcac66f152:   test   %r10d,%r10d
   0.13%  │    0x00007fbcac66f155:   movabs $0x7ffc034e0,%rsi            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.13%  │    0x00007fbcac66f15f:   movabs $0x7ff172ea8,%r10            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff172ea8})}
          │    0x00007fbcac66f169:   cmovne %r10,%rsi                    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.lang.Character::toLowerCase@1 (line 10962)
          │                                                              ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%  │    0x00007fbcac66f16d:   mov    %r9,%rbp
   0.09%  │    0x00007fbcac66f170:   mov    %ebx,(%rsp)
   0.16%  │    0x00007fbcac66f173:   mov    %edi,0x8(%rsp)
   0.03%  │╭   0x00007fbcac66f177:   jmp    0x00007fbcac66f1bd
   0.29%  ↘│   0x00007fbcac66f179:   nopl   0x0(%rax)
   0.00%   │   0x00007fbcac66f180:   mov    0xc(%r12,%rdx,8),%r11d       ; implicit exception: dispatches to 0x00007fbcac66f6d8
           │                                                             ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.lang.StringLatin1::charAt@2 (line 46)
           │                                                             ; - java.lang.String::charAt@12 (line 1555)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.75%   │   0x00007fbcac66f185:   cmp    %r11d,%edi
           │   0x00007fbcac66f188:   jae    0x00007fbcac66f4ac
   0.12%   │   0x00007fbcac66f18e:   mov    %edi,0x8(%rsp)
   0.36%   │   0x00007fbcac66f192:   mov    %ebx,(%rsp)
   0.17%   │   0x00007fbcac66f195:   mov    %r9,%rbp
   0.67%   │   0x00007fbcac66f198:   mov    %edi,%r8d                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.lang.String::checkIndex@5 (line 4828)
           │                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
           │                                                             ; - java.lang.String::charAt@12 (line 1555)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%   │   0x00007fbcac66f19b:   nopl   0x0(%rax,%rax,1)
   0.27%   │   0x00007fbcac66f1a0:   cmp    %r11d,%r8d
           │   0x00007fbcac66f1a3:   jae    0x00007fbcac66f4d4
   0.14%   │   0x00007fbcac66f1a9:   lea    (%r12,%rdx,8),%r10
   0.66%   │   0x00007fbcac66f1ad:   movzbl 0x10(%r10,%r8,1),%edx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
           │                                                             ; - java.lang.String::charAt@12 (line 1555)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.05%   │   0x00007fbcac66f1b3:   movabs $0x7ffc034e0,%rsi            ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
           │                                                             ; - java.lang.Character::toLowerCase@1 (line 10962)
           │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
           │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
           │                                                             ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.26%   ↘   0x00007fbcac66f1bd:   mov    0x8(%rsi),%r11d
   0.22%       0x00007fbcac66f1c1:   cmp    $0x2f110,%r11d               ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
               0x00007fbcac66f1c8:   jne    0x00007fbcac66f3df           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                         ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.85%       0x00007fbcac66f1ce:   cmp    $0x41,%edx
               0x00007fbcac66f1d1:   jl     0x00007fbcac66f2b4           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
                                                                         ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                         ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.06%       0x00007fbcac66f1d7:   mov    %edx,%eax
   0.25%       0x00007fbcac66f1d9:   or     $0x20,%eax                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
                                                                         ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                         ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.10%       0x00007fbcac66f1dc:   nopl   0x0(%rax)
   0.86%       0x00007fbcac66f1e0:   cmp    $0x7a,%eax
               0x00007fbcac66f1e3:   jg     0x00007fbcac66f425           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                         ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.05%       0x00007fbcac66f1e9:   mov    0x14(%rbp),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::charAt@8 (line 1555)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.24%       0x00007fbcac66f1ed:   movzwl %ax,%r8d                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.Character::toLowerCase@4 (line 10933)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.12%       0x00007fbcac66f1f1:   cmpb   $0x0,0x10(%rbp)
   0.93%    ╭  0x00007fbcac66f1f5:   je     0x00007fbcac66f250           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.String::charAt@4 (line 1554)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%    │  0x00007fbcac66f1fb:   mov    %r8d,0x1c(%rsp)
   0.03%    │  0x00007fbcac66f200:   mov    %rbp,0x10(%rsp)
   0.06%    │  0x00007fbcac66f205:   mov    0xc(%r12,%r10,8),%ebp        ; implicit exception: dispatches to 0x00007fbcac66f714
   0.15%    │  0x00007fbcac66f20a:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringUTF16::length@3 (line 75)
            │                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │                                                            ; - java.lang.String::charAt@21 (line 1557)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%    │  0x00007fbcac66f20c:   mov    0x18(%rsp),%r11d
   0.02%    │  0x00007fbcac66f211:   cmp    %ebp,%r11d
            │  0x00007fbcac66f214:   jae    0x00007fbcac66f5bc
   0.06%    │  0x00007fbcac66f21a:   mov    0x18(%rsp),%r8d
   0.14%    │  0x00007fbcac66f21f:   shl    $0x3,%r10
   0.00%    │  0x00007fbcac66f223:   movzwl 0x10(%r10,%r8,2),%edx        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │                                                            ; - java.lang.String::charAt@21 (line 1557)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.02%    │  0x00007fbcac66f229:   mov    %edx,%r10d
   0.07%    │  0x00007fbcac66f22c:   shr    $0x8,%r10d
   0.18%    │  0x00007fbcac66f230:   test   %r10d,%r10d
            │  0x00007fbcac66f233:   movabs $0x7ffc034e0,%rsi            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.02%    │  0x00007fbcac66f23d:   movabs $0x7ff172ea8,%r10            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff172ea8})}
   0.05%    │  0x00007fbcac66f247:   cmovne %r10,%rsi                    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
            │                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.17%    │  0x00007fbcac66f24b:   jmp    0x00007fbcac66ed59
   0.05%    ↘  0x00007fbcac66f250:   mov    %r8d,0x1c(%rsp)
   0.51%       0x00007fbcac66f255:   mov    %rbp,0x10(%rsp)
   0.01%       0x00007fbcac66f25a:   nopw   0x0(%rax,%rax,1)
   0.68%       0x00007fbcac66f260:   mov    0xc(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007fbcac66f6ec
                                                                         ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.StringLatin1::charAt@2 (line 46)
                                                                         ; - java.lang.String::charAt@12 (line 1555)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%       0x00007fbcac66f265:   mov    0x18(%rsp),%r9d
   0.38%       0x00007fbcac66f26a:   cmp    %r8d,%r9d
               0x00007fbcac66f26d:   jae    0x00007fbcac66f4f4
   0.00%       0x00007fbcac66f273:   mov    0x18(%rsp),%r11d             ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.lang.String::checkIndex@5 (line 4828)
                                                                         ; - java.lang.StringLatin1::charAt@3 (line 46)
                                                                         ; - java.lang.String::charAt@12 (line 1555)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.65%       0x00007fbcac66f278:   cmp    %r8d,%r11d
   0.01%       0x00007fbcac66f27b:   nopl   0x0(%rax,%rax,1)
   0.33%       0x00007fbcac66f280:   jb     0x00007fbcac66ed45
               0x00007fbcac66f286:   mov    $0xffffffe4,%esi
               0x00007fbcac66f28b:   mov    %rax,-0x8(%rsp)
               0x00007fbcac66f290:   mov    0x8(%rsp),%eax
               0x00007fbcac66f294:   mov    %eax,(%rsp)
               0x00007fbcac66f297:   mov    -0x8(%rsp),%rax
               0x00007fbcac66f29c:   mov    %r10d,0xc(%rsp)
               0x00007fbcac66f2a1:   mov    %r11d,0x10(%rsp)
               0x00007fbcac66f2a6:   nop
               0x00007fbcac66f2a7:   call   0x00007fbcac0c9f00           ; ImmutableOopMap {rbp=Oop [12]=NarrowOop }
                                                                         ;*baload {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  17.67%  <total for region 3>

....[Hottest Regions]...............................................................................
  34.37%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 
  18.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 
  17.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 
   5.65%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 834 
   4.81%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 662 
   3.28%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 696 
   1.82%              kernel  [unknown] 
   1.34%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   1.17%              kernel  [unknown] 
   1.10%              kernel  [unknown] 
   1.02%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 834 
   0.93%              kernel  [unknown] 
   0.57%              kernel  [unknown] 
   0.57%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.48%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 
   0.29%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 800 
   0.28%              kernel  [unknown] 
   0.26%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.23%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 800 
   0.10%              kernel  [unknown] 
   5.61%  <...other 978 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  70.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 2, compile id 803 
   8.74%              kernel  [unknown] 
   6.78%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 834 
   5.01%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 662 
   3.34%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 696 
   1.34%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.57%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.55%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 800 
   0.27%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.14%         c2, level 4  java.util.Iterator::forEachRemaining, version 2, compile id 911 
   0.13%         c2, level 4  java.io.InputStreamReader::read, version 2, compile id 864 
   0.11%         c2, level 4  java.lang.StringUTF16::putChars, version 4, compile id 718 
   0.11%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::palindromes, version 2, compile id 944 
   0.09%                      <unknown> 
   0.07%         c2, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 923 
   0.06%           libjvm.so  jni_GetObjectField 
   0.06%           libjvm.so  ThreadInVMfromNative::ThreadInVMfromNative 
   0.06%         c2, level 4  java.lang.StringUTF16::compress, version 2, compile id 811 
   0.06%  libpthread-2.31.so  __libc_read 
   0.06%           libjvm.so  jni_GetArrayLength 
   1.45%  <...other 246 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  87.44%         c2, level 4
   8.74%              kernel
   1.92%        runtime stub
   0.88%           libjvm.so
   0.52%        libc-2.31.so
   0.16%  libpthread-2.31.so
   0.10%          libjava.so
   0.09%                    
   0.06%    Unknown, level 0
   0.03%    perf-1945168.map
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.02%          ld-2.31.so
   0.01%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive

# Run progress: 50.00% complete, ETA 00:03:44
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1.600 ms/op
# Warmup Iteration   2: 1.434 ms/op
# Warmup Iteration   3: 1.388 ms/op
# Warmup Iteration   4: 1.388 ms/op
# Warmup Iteration   5: 1.388 ms/op
Iteration   1: 1.389 ms/op
Iteration   2: 1.389 ms/op
Iteration   3: 1.389 ms/op
Iteration   4: 1.390 ms/op
Iteration   5: 1.390 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive":
  1.390 ±(99.9%) 0.001 ms/op [Average]
  (min, avg, max) = (1.389, 1.390, 1.390), stdev = 0.001
  CI (99.9%): [1.388, 1.391] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive:asm":
PrintAssembly processed: 221615 total address lines.
Perf output processed (skipped 58.413 seconds):
 Column 1: cycles (50690 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 686 

                                                   # parm2:    r8        = int
                                                   #           [sp+0x50]  (sp of caller)
                                                   0x00007f57cc65e5a0:   mov    0x8(%rsi),%r10d
                                                   0x00007f57cc65e5a4:   movabs $0x7f574f000000,%r11
                                                   0x00007f57cc65e5ae:   add    %r11,%r10
                                                   0x00007f57cc65e5b1:   cmp    %r10,%rax
                                                   0x00007f57cc65e5b4:   jne    0x00007f57cc0c4080           ;   {runtime_call ic_miss_stub}
                                                   0x00007f57cc65e5ba:   xchg   %ax,%ax
                                                   0x00007f57cc65e5bc:   nopl   0x0(%rax)
                                                 [Verified Entry Point]
   0.16%                                      ↗    0x00007f57cc65e5c0:   mov    %eax,-0x14000(%rsp)
   0.47%                                      │    0x00007f57cc65e5c7:   push   %rbp
   0.15%                                      │    0x00007f57cc65e5c8:   sub    $0x40,%rsp
   0.15%                                      │    0x00007f57cc65e5cc:   cmpl   $0x1,0x20(%r15)
   0.29%                                      │    0x00007f57cc65e5d4:   jne    0x00007f57cc65f7aa           ;*synchronization entry
                                              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@-1 (line 38)
   0.14%                                      │    0x00007f57cc65e5da:   mov    %rsi,0x20(%rsp)
   0.23%                                      │    0x00007f57cc65e5df:   mov    %r8d,0xc(%rsp)
   0.40%                                      │    0x00007f57cc65e5e4:   cmp    %r8d,%ecx
                                              │    0x00007f57cc65e5e7:   jge    0x00007f57cc65efa8           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@2 (line 38)
   0.13%                                      │    0x00007f57cc65e5ed:   mov    %rdx,%rdi
   0.07%                                      │    0x00007f57cc65e5f0:   test   %rdx,%rdx
                                              │    0x00007f57cc65e5f3:   je     0x00007f57cc65f21c
   0.04%                                      │    0x00007f57cc65e5f9:   mov    %ecx,%r10d
   0.28%                                      │    0x00007f57cc65e5fc:   xor    %r9d,%r9d
   0.15%                                      │    0x00007f57cc65e5ff:   movabs $0x7ffc034e0,%rbx            ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
                                              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@5 (line 38)
                                              │                                                              ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.64%      ↗                               │    0x00007f57cc65e609:   mov    0x14(%rdi),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │                               │                                                              ; - java.lang.String::charAt@8 (line 1555)
              │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.06%      │                               │    0x00007f57cc65e60d:   cmpb   $0x0,0x10(%rdi)
   0.43%  ╭   │                               │    0x00007f57cc65e611:   je     0x00007f57cc65e63f           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │   │                               │                                                              ; - java.lang.String::charAt@4 (line 1554)
          │   │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.06%  │   │                               │    0x00007f57cc65e613:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007f57cc65f704
   0.08%  │   │                               │    0x00007f57cc65e618:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │   │                               │                                                              ; - java.lang.StringUTF16::length@3 (line 75)
          │   │                               │                                                              ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
          │   │                               │                                                              ; - java.lang.StringUTF16::charAt@2 (line 1418)
          │   │                               │                                                              ; - java.lang.String::charAt@21 (line 1557)
          │   │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.05%  │   │                               │    0x00007f57cc65e61a:   nopw   0x0(%rax,%rax,1)
   0.07%  │   │                               │    0x00007f57cc65e620:   cmp    %ebp,%r10d
          │   │                               │    0x00007f57cc65e623:   jae    0x00007f57cc65f448
   0.09%  │   │                               │    0x00007f57cc65e629:   mov    %r10d,%r8d
   0.01%  │   │                               │    0x00007f57cc65e62c:   shl    $0x3,%r11
   0.01%  │   │                               │    0x00007f57cc65e630:   movzwl 0x10(%r11,%r8,2),%r8d        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
          │   │                               │                                                              ; - java.lang.StringUTF16::charAt@7 (line 1419)
          │   │                               │                                                              ; - java.lang.String::charAt@21 (line 1557)
          │   │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.07%  │   │                               │    0x00007f57cc65e636:   mov    %r8d,%r11d
   0.07%  │   │                               │    0x00007f57cc65e639:   shr    $0x8,%r11d                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
          │   │                               │                                                              ; - java.lang.CharacterData::of@3 (line 78)
          │   │                               │                                                              ; - java.lang.Character::getType@1 (line 11557)
          │   │                               │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │   │                               │                                                              ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │   │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
   0.02%  │╭  │                               │    0x00007f57cc65e63d:   jmp    0x00007f57cc65e666
   0.23%  ↘│  │                               │    0x00007f57cc65e63f:   nop
   0.08%   │  │                               │    0x00007f57cc65e640:   mov    0xc(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f57cc65f674
           │  │                               │                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
           │  │                               │                                                              ; - java.lang.StringLatin1::charAt@2 (line 46)
           │  │                               │                                                              ; - java.lang.String::charAt@12 (line 1555)
           │  │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.19%   │  │                               │    0x00007f57cc65e645:   cmp    %ecx,%r10d
           │  │                               │    0x00007f57cc65e648:   jae    0x00007f57cc65f178
   0.40%   │  │                               │    0x00007f57cc65e64e:   mov    %r10d,%ebp                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
           │  │                               │                                                              ; - java.lang.String::checkIndex@5 (line 4828)
           │  │                               │                                                              ; - java.lang.StringLatin1::charAt@3 (line 46)
           │  │                               │                                                              ; - java.lang.String::charAt@12 (line 1555)
           │  │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.12%   │  │                               │    0x00007f57cc65e651:   cmp    %ecx,%ebp
           │  │                               │    0x00007f57cc65e653:   jae    0x00007f57cc65f1ac
   0.10%   │  │                               │    0x00007f57cc65e659:   shl    $0x3,%r11
   0.04%   │  │                               │    0x00007f57cc65e65d:   movzbl 0x10(%r11,%rbp,1),%r8d       ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │  │                               │                                                              ; - java.lang.StringLatin1::charAt@12 (line 47)
           │  │                               │                                                              ; - java.lang.String::charAt@12 (line 1555)
           │  │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.43%   │  │                               │    0x00007f57cc65e663:   xor    %r11d,%r11d                  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
           │  │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.14%   ↘  │                               │    0x00007f57cc65e666:   test   %r11d,%r11d
   0.17%      │                               │    0x00007f57cc65e669:   movabs $0x7ffc034e0,%r11            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.13%      │                               │    0x00007f57cc65e673:   movabs $0x7ff072ea8,%rcx            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
   0.37%      │                               │    0x00007f57cc65e67d:   cmovne %rcx,%r11                    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
              │                               │                                                              ; - java.lang.Character::getType@1 (line 11557)
              │                               │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
              │                               │                                                              ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
              │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
   0.12%      │                               │    0x00007f57cc65e681:   mov    0x8(%r11),%edx
   0.47%      │                               │    0x00007f57cc65e685:   cmp    $0x2f110,%edx                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            ╭ │                               │    0x00007f57cc65e68b:   jne    0x00007f57cc65ed2d
   0.22%    │ │                               │    0x00007f57cc65e691:   cmp    $0x100,%r8d
            │ │                               │    0x00007f57cc65e698:   jae    0x00007f57cc65f08c
   0.29%    │ │                               │    0x00007f57cc65e69e:   movabs $0x7ffc034f0,%r11            ;   {oop([I{0x00000007ffc034f0})}
   0.13%    │ │                               │    0x00007f57cc65e6a8:   mov    0x10(%r11,%r8,4),%eax
   0.35%    │ │                               │    0x00007f57cc65e6ad:   and    $0x1f,%eax                   ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
            │ │                               │                                                              ; - java.lang.Character::getType@5 (line 11557)
            │ │                               │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │ │                               │                                                              ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │ │                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
   0.42%    │ │                               │    0x00007f57cc65e6b0:   mov    $0x23e,%r11d
   0.14%    │ │                               │    0x00007f57cc65e6b6:   sarx   %eax,%r11d,%r8d
   0.41%    │ │                               │    0x00007f57cc65e6bb:   nopl   0x0(%rax,%rax,1)
   0.04%    │ │                               │    0x00007f57cc65e6c0:   test   $0x1,%r8b
            │╭│                               │    0x00007f57cc65e6c4:   jne    0x00007f57cc65e6d4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │││                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@13 (line 38)
   0.99%    │││                               │    0x00007f57cc65e6c6:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                               │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@16 (line 39)
   0.58%    │││                               │    0x00007f57cc65e6c9:   cmp    0xc(%rsp),%r10d
            ││╰                               │    0x00007f57cc65e6ce:   jl     0x00007f57cc65e609           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            ││                                │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@13 (line 38)
   0.89%    │↘                                │    0x00007f57cc65e6d4:   mov    0xc(%rsp),%ecx
   0.49%    │                                 │    0x00007f57cc65e6d8:   cmp    %r10d,%ecx
   0.08%    │                                 │    0x00007f57cc65e6db:   nopl   0x0(%rax,%rax,1)
   0.04%    │  ╭                              │    0x00007f57cc65e6e0:   jle    0x00007f57cc65e7ba           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
            │  │                              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@24 (line 41)
   0.42%    │  │                              │    0x00007f57cc65e6e6:   test   %rdi,%rdi
            │  │                              │    0x00007f57cc65e6e9:   je     0x00007f57cc65f238           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │  │                              │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@27 (line 41)
   0.21%    │  │    ↗                         │    0x00007f57cc65e6ef:   mov    0x14(%rdi),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │  │    │                         │                                                              ; - java.lang.String::charAt@8 (line 1555)
            │  │    │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.37%    │  │    │                         │    0x00007f57cc65e6f3:   cmpb   $0x0,0x10(%rdi)
   0.26%    │  │╭   │                         │    0x00007f57cc65e6f7:   je     0x00007f57cc65e724           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │  ││   │                         │                                                              ; - java.lang.String::charAt@4 (line 1554)
            │  ││   │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.14%    │  ││   │                         │    0x00007f57cc65e6f9:   nopl   0x0(%rax)
   0.01%    │  ││   │                         │    0x00007f57cc65e700:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007f57cc65f6dc
   0.10%    │  ││   │                         │    0x00007f57cc65e705:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │  ││   │                         │                                                              ; - java.lang.StringUTF16::length@3 (line 75)
            │  ││   │                         │                                                              ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │  ││   │                         │                                                              ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │  ││   │                         │                                                              ; - java.lang.String::charAt@21 (line 1557)
            │  ││   │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.06%    │  ││   │                         │    0x00007f57cc65e707:   cmp    %ebp,%ecx
            │  ││   │                         │    0x00007f57cc65e709:   jae    0x00007f57cc65f3f8
   0.16%    │  ││   │                         │    0x00007f57cc65e70f:   mov    %ecx,%edx
   0.00%    │  ││   │                         │    0x00007f57cc65e711:   shl    $0x3,%r11
   0.01%    │  ││   │                         │    0x00007f57cc65e715:   movzwl 0x10(%r11,%rdx,2),%edx       ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │  ││   │                         │                                                              ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │  ││   │                         │                                                              ; - java.lang.String::charAt@21 (line 1557)
            │  ││   │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.05%    │  ││   │                         │    0x00007f57cc65e71b:   mov    %edx,%r11d
   0.14%    │  ││   │                         │    0x00007f57cc65e71e:   shr    $0x8,%r11d                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
            │  ││   │                         │                                                              ; - java.lang.CharacterData::of@3 (line 78)
            │  ││   │                         │                                                              ; - java.lang.Character::getType@1 (line 11557)
            │  ││   │                         │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │  ││   │                         │                                                              ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │  ││   │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.00%    │  ││╭  │                         │    0x00007f57cc65e722:   jmp    0x00007f57cc65e74a
   0.43%    │  │↘│  │                         │    0x00007f57cc65e724:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f57cc65f64c
            │  │ │  │                         │                                                              ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  │                         │                                                              ; - java.lang.StringLatin1::charAt@2 (line 46)
            │  │ │  │                         │                                                              ; - java.lang.String::charAt@12 (line 1555)
            │  │ │  │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.29%    │  │ │  │                         │    0x00007f57cc65e729:   cmp    %r8d,%ecx
            │  │ │  │                         │    0x00007f57cc65e72c:   jae    0x00007f57cc65f0d8
   0.23%    │  │ │  │                         │    0x00007f57cc65e732:   mov    %ecx,%ebp                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  │                         │                                                              ; - java.lang.String::checkIndex@5 (line 4828)
            │  │ │  │                         │                                                              ; - java.lang.StringLatin1::charAt@3 (line 46)
            │  │ │  │                         │                                                              ; - java.lang.String::charAt@12 (line 1555)
            │  │ │  │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.11%    │  │ │  │                         │    0x00007f57cc65e734:   cmp    %r8d,%ebp
            │  │ │  │                         │    0x00007f57cc65e737:   jae    0x00007f57cc65f104
   0.33%    │  │ │  │                         │    0x00007f57cc65e73d:   shl    $0x3,%r11
   0.06%    │  │ │  │                         │    0x00007f57cc65e741:   movzbl 0x10(%r11,%rbp,1),%edx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  │                         │                                                              ; - java.lang.StringLatin1::charAt@12 (line 47)
            │  │ │  │                         │                                                              ; - java.lang.String::charAt@12 (line 1555)
            │  │ │  │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.23%    │  │ │  │                         │    0x00007f57cc65e747:   xor    %r11d,%r11d                  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
            │  │ │  │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.07%    │  │ ↘  │                         │    0x00007f57cc65e74a:   test   %r11d,%r11d
   0.37%    │  │    │                         │    0x00007f57cc65e74d:   movabs $0x7ffc034e0,%rsi            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.23%    │  │    │                         │    0x00007f57cc65e757:   movabs $0x7ff072ea8,%r11            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
   0.17%    │  │    │                         │    0x00007f57cc65e761:   cmovne %r11,%rsi                    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
            │  │    │                         │                                                              ; - java.lang.Character::getType@1 (line 11557)
            │  │    │                         │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │  │    │                         │                                                              ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │  │    │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.10%    │  │    │                         │    0x00007f57cc65e765:   mov    0x8(%rsi),%r8d
   0.65%    │  │    │                         │    0x00007f57cc65e769:   cmp    $0x2f110,%r8d                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            │  │  ╭ │                         │    0x00007f57cc65e770:   jne    0x00007f57cc65ec8d
   0.19%    │  │  │ │                         │    0x00007f57cc65e776:   data16 nopw 0x0(%rax,%rax,1)
   0.11%    │  │  │ │                         │    0x00007f57cc65e780:   cmp    $0x100,%edx
            │  │  │ │                         │    0x00007f57cc65e786:   jae    0x00007f57cc65f045
   0.09%    │  │  │ │                         │    0x00007f57cc65e78c:   movabs $0x7ffc034f0,%r11            ;   {oop([I{0x00000007ffc034f0})}
   0.35%    │  │  │ │                         │    0x00007f57cc65e796:   mov    0x10(%r11,%rdx,4),%eax
   0.45%    │  │  │ │                         │    0x00007f57cc65e79b:   and    $0x1f,%eax                   ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
            │  │  │ │                         │                                                              ; - java.lang.Character::getType@5 (line 11557)
            │  │  │ │                         │                                                              ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │  │  │ │                         │                                                              ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │  │  │ │                         │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
   0.33%    │  │  │ │                         │↗   0x00007f57cc65e79e:   mov    $0x23e,%r8d
   0.07%    │  │  │ │                         ││   0x00007f57cc65e7a4:   sarx   %eax,%r8d,%r8d
   0.45%    │  │  │ │                         ││   0x00007f57cc65e7a9:   test   $0x1,%r8b
            │  │  │╭│                         ││   0x00007f57cc65e7ad:   jne    0x00007f57cc65e7ba           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │  │  │││                         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
   1.09%    │  │  │││                         ││   0x00007f57cc65e7af:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │  │  │││                         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@38 (line 42)
   0.50%    │  │  │││                         ││   0x00007f57cc65e7b1:   cmp    %r10d,%ecx
            │  │  ││╰                         ││   0x00007f57cc65e7b4:   jg     0x00007f57cc65e6ef           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │  │  ││                          ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
   0.91%    │  ↘  │↘                          ││   0x00007f57cc65e7ba:   nopw   0x0(%rax,%rax,1)
   0.09%    │     │                           ││   0x00007f57cc65e7c0:   cmp    %ecx,%r10d
            │     │                           ││   0x00007f57cc65e7c3:   jge    0x00007f57cc65ef92           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@46 (line 44)
   0.37%    │     │                           ││   0x00007f57cc65e7c9:   movsbl 0x10(%rdi),%eax              ; implicit exception: dispatches to 0x00007f57cc65f69c
            │     │                           ││                                                             ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.String::isLatin1@7 (line 4817)
            │     │                           ││                                                             ; - java.lang.String::charAt@1 (line 1554)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.30%    │     │                           ││   0x00007f57cc65e7cd:   mov    0x14(%rdi),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.String::charAt@8 (line 1555)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.34%    │     │                           ││   0x00007f57cc65e7d1:   test   %eax,%eax
            │     │  ╭                        ││   0x00007f57cc65e7d3:   je     0x00007f57cc65e819           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │     │  │                        ││                                                             ; - java.lang.String::charAt@4 (line 1554)
            │     │  │                        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.01%    │     │  │                        ││   0x00007f57cc65e7d9:   nopl   0x0(%rax)
            │     │  │                        ││   0x00007f57cc65e7e0:   mov    0xc(%r12,%r11,8),%ebp        ; implicit exception: dispatches to 0x00007f57cc65f72c
   0.04%    │     │  │                        ││   0x00007f57cc65e7e5:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │     │  │                        ││                                                             ; - java.lang.StringUTF16::length@3 (line 75)
            │     │  │                        ││                                                             ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │     │  │                        ││                                                             ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │     │  │                        ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │  │                        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.11%    │     │  │                        ││   0x00007f57cc65e7e7:   cmp    %ebp,%r10d
            │     │  │                        ││   0x00007f57cc65e7ea:   jae    0x00007f57cc65f4a4
   0.02%    │     │  │                        ││   0x00007f57cc65e7f0:   mov    %r10d,%r8d
            │     │  │                        ││   0x00007f57cc65e7f3:   lea    (%r12,%r11,8),%rdx
            │     │  │                        ││   0x00007f57cc65e7f7:   movzwl 0x10(%rdx,%r8,2),%edx        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │     │  │                        ││                                                             ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │     │  │                        ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │  │                        ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.09%    │     │  │                        ││   0x00007f57cc65e7fd:   mov    %edx,%r8d
   0.00%    │     │  │                        ││   0x00007f57cc65e800:   shr    $0x8,%r8d
   0.00%    │     │  │                        ││   0x00007f57cc65e804:   test   %r8d,%r8d
            │     │  │╭                       ││   0x00007f57cc65e807:   je     0x00007f57cc65e844           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │  ││                       ││                                                             ; - java.lang.CharacterData::of@4 (line 78)
            │     │  ││                       ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10962)
            │     │  ││                       ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │  ││                       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │  ││                       ││   0x00007f57cc65e80d:   movabs $0x7ff072ea8,%rsi            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
            │     │  ││╭                      ││   0x00007f57cc65e817:   jmp    0x00007f57cc65e84e
   0.06%    │     │  ↘││                      ││   0x00007f57cc65e819:   nopl   0x0(%rax)
   0.04%    │     │   ││                      ││   0x00007f57cc65e820:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f57cc65f6b4
            │     │   ││                      ││                                                             ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │     │   ││                      ││                                                             ; - java.lang.StringLatin1::charAt@2 (line 46)
            │     │   ││                      ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │   ││                      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.29%    │     │   ││                      ││   0x00007f57cc65e825:   cmp    %r8d,%r10d
            │     │   ││                      ││   0x00007f57cc65e828:   jae    0x00007f57cc65f258
   0.32%    │     │   ││                      ││   0x00007f57cc65e82e:   mov    %r10d,%ebp                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │     │   ││                      ││                                                             ; - java.lang.String::checkIndex@5 (line 4828)
            │     │   ││                      ││                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
            │     │   ││                      ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │   ││                      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.02%    │     │   ││                      ││   0x00007f57cc65e831:   cmp    %r8d,%ebp
            │     │   ││                      ││   0x00007f57cc65e834:   jae    0x00007f57cc65f288
   0.06%    │     │   ││                      ││   0x00007f57cc65e83a:   lea    (%r12,%r11,8),%r8
   0.09%    │     │   ││                      ││   0x00007f57cc65e83e:   movzbl 0x10(%r8,%rbp,1),%edx        ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
            │     │   ││                      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.30%    │     │   ↘│                      ││   0x00007f57cc65e844:   movabs $0x7ffc034e0,%rsi            ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │    │                      ││                                                             ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │    │                      ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │    │                      ││                                                             ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.11%    │     │    ↘                      ││   0x00007f57cc65e84e:   mov    0x8(%rsi),%ebp
   0.08%    │     │                           ││   0x00007f57cc65e851:   cmp    $0x2f110,%ebp                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            │     │                           ││   0x00007f57cc65e857:   jne    0x00007f57cc65edf4           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.07%    │     │                           ││   0x00007f57cc65e85d:   data16 xchg %ax,%ax
   0.29%    │     │                           ││   0x00007f57cc65e860:   cmp    $0x41,%edx
            │     │                           ││   0x00007f57cc65e863:   jl     0x00007f57cc65edd1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.14%    │     │                           ││   0x00007f57cc65e869:   mov    %edx,%r8d
   0.10%    │     │                           ││   0x00007f57cc65e86c:   or     $0x20,%r8d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.07%    │     │                           ││   0x00007f57cc65e870:   cmp    $0x7a,%r8d
            │     │                           ││   0x00007f57cc65e874:   jg     0x00007f57cc65efc5           ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.29%    │     │                           ││   0x00007f57cc65e87a:   test   %eax,%eax
   0.11%    │     │                           ││   0x00007f57cc65e87c:   nopl   0x0(%rax)
   0.05%    │     │     ╭                     ││   0x00007f57cc65e880:   je     0x00007f57cc65e8c3           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │     │     │                     ││                                                             ; - java.lang.String::charAt@4 (line 1554)
            │     │     │                     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.00%    │     │     │                     ││   0x00007f57cc65e886:   test   %r11d,%r11d
            │     │     │                     ││   0x00007f57cc65e889:   je     0x00007f57cc65f57c           ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │     │                     ││                                                             ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │     │                     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.00%    │     │     │                     ││   0x00007f57cc65e88f:   mov    0xc(%r12,%r11,8),%ebp
   0.10%    │     │     │                     ││   0x00007f57cc65e894:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │     │     │                     ││                                                             ; - java.lang.StringUTF16::length@3 (line 75)
            │     │     │                     ││                                                             ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │     │     │                     ││                                                             ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │     │     │                     ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │     │                     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.01%    │     │     │                     ││   0x00007f57cc65e896:   cmp    %ebp,%ecx
            │     │     │                     ││   0x00007f57cc65e898:   jae    0x00007f57cc65f4d8
   0.00%    │     │     │                     ││   0x00007f57cc65e89e:   mov    %ecx,%edx
            │     │     │                     ││   0x00007f57cc65e8a0:   shl    $0x3,%r11
   0.12%    │     │     │                     ││   0x00007f57cc65e8a4:   movzwl 0x10(%r11,%rdx,2),%edx       ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │     │     │                     ││                                                             ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │     │     │                     ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │     │                     ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.02%    │     │     │                     ││   0x00007f57cc65e8aa:   mov    %edx,%esi
   0.00%    │     │     │                     ││   0x00007f57cc65e8ac:   shr    $0x8,%esi
   0.01%    │     │     │                     ││   0x00007f57cc65e8af:   test   %esi,%esi
            │     │     │╭                    ││   0x00007f57cc65e8b1:   je     0x00007f57cc65e8f0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │     ││                    ││                                                             ; - java.lang.CharacterData::of@4 (line 78)
            │     │     ││                    ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10962)
            │     │     ││                    ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │     ││                    ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │     ││                    ││   0x00007f57cc65e8b7:   movabs $0x7ff072ea8,%rsi            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
            │     │     ││╭                   ││   0x00007f57cc65e8c1:   jmp    0x00007f57cc65e8fa
   0.07%    │     │     ↘││                   ││   0x00007f57cc65e8c3:   test   %r11d,%r11d
            │     │      ││                   ││   0x00007f57cc65e8c6:   je     0x00007f57cc65f3d0           ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │      ││                   ││                                                             ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │      ││                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.28%    │     │      ││                   ││   0x00007f57cc65e8cc:   mov    0xc(%r12,%r11,8),%eax        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │     │      ││                   ││                                                             ; - java.lang.StringLatin1::charAt@2 (line 46)
            │     │      ││                   ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │      ││                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.02%    │     │      ││                   ││   0x00007f57cc65e8d1:   cmp    %eax,%ecx
            │     │      ││                   ││   0x00007f57cc65e8d3:   jae    0x00007f57cc65f2ac
   0.08%    │     │      ││                   ││   0x00007f57cc65e8d9:   mov    %ecx,%ebp                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │     │      ││                   ││                                                             ; - java.lang.String::checkIndex@5 (line 4828)
            │     │      ││                   ││                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
            │     │      ││                   ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │      ││                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.07%    │     │      ││                   ││   0x00007f57cc65e8db:   cmp    %eax,%ebp
   0.29%    │     │      ││                   ││   0x00007f57cc65e8dd:   data16 xchg %ax,%ax
   0.01%    │     │      ││                   ││   0x00007f57cc65e8e0:   jae    0x00007f57cc65f2e8
   0.07%    │     │      ││                   ││   0x00007f57cc65e8e6:   shl    $0x3,%r11
   0.07%    │     │      ││                   ││   0x00007f57cc65e8ea:   movzbl 0x10(%r11,%rbp,1),%edx       ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
            │     │      ││                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.35%    │     │      ↘│                   ││   0x00007f57cc65e8f0:   movabs $0x7ffc034e0,%rsi            ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
            │     │       │                   ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10962)
            │     │       │                   ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │       │                   ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │       │                   ││                                                             ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.02%    │     │       ↘                   ││   0x00007f57cc65e8fa:   mov    0x8(%rsi),%r11d
   0.07%    │     │                           ││   0x00007f57cc65e8fe:   xchg   %ax,%ax
   0.08%    │     │                           ││   0x00007f57cc65e900:   cmp    $0x2f110,%r11d               ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            │     │                           ││   0x00007f57cc65e907:   jne    0x00007f57cc65ee71           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.35%    │     │                           ││   0x00007f57cc65e90d:   cmp    $0x41,%edx
            │     │                           ││   0x00007f57cc65e910:   jl     0x00007f57cc65edd9           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.03%    │     │                           ││   0x00007f57cc65e916:   mov    %edx,%eax
   0.05%    │     │                           ││   0x00007f57cc65e918:   or     $0x20,%eax                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.09%    │     │                           ││   0x00007f57cc65e91b:   nopl   0x0(%rax,%rax,1)
   0.42%    │     │                           ││   0x00007f57cc65e920:   cmp    $0x7a,%eax
            │     │                           ││   0x00007f57cc65e923:   jg     0x00007f57cc65efe6           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │                           ││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │                           ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.06%    │     │                           ││   0x00007f57cc65e929:   movzwl %ax,%r11d
   0.06%    │     │                           ││   0x00007f57cc65e92d:   cmp    %r11d,%r8d
            │     │        ╭                  ││   0x00007f57cc65e930:   jne    0x00007f57cc65ec77           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
            │     │        │                  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@67 (line 47)
   0.07%    │     │        │                  ││   0x00007f57cc65e936:   dec    %ecx                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
            │     │        │                  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@79 (line 51)
   0.40%    │     │        │                  ││   0x00007f57cc65e938:   inc    %r10d                        ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │     │        │                  ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@74 (line 50)
   0.05%    │     │        │                  ││   0x00007f57cc65e93b:   nopl   0x0(%rax,%rax,1)
   0.05%    │     │        │                  ││   0x00007f57cc65e940:   cmp    %ecx,%r10d
            │     │        │╭                 ││   0x00007f57cc65e943:   jge    0x00007f57cc65ea1c           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││                 ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@5 (line 38)
            │     │        ││                 ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.28%    │     │        ││   ↗             ││   0x00007f57cc65e949:   mov    0x14(%rdi),%edx              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││   │             ││                                                             ; - java.lang.String::charAt@8 (line 1555)
            │     │        ││   │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        ││   │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.69%    │     │        ││   │             ││   0x00007f57cc65e94c:   cmpb   $0x0,0x10(%rdi)
   0.23%    │     │        ││╭  │             ││   0x00007f57cc65e950:   je     0x00007f57cc65e97c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │     │        │││  │             ││                                                             ; - java.lang.String::charAt@4 (line 1554)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.03%    │     │        │││  │             ││   0x00007f57cc65e952:   mov    0xc(%r12,%rdx,8),%ebp        ; implicit exception: dispatches to 0x00007f57cc65f718
   0.14%    │     │        │││  │             ││   0x00007f57cc65e957:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │     │        │││  │             ││                                                             ; - java.lang.StringUTF16::length@3 (line 75)
            │     │        │││  │             ││                                                             ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │     │        │││  │             ││                                                             ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │     │        │││  │             ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.15%    │     │        │││  │             ││   0x00007f57cc65e959:   cmp    %ebp,%r10d
   0.04%    │     │        │││  │             ││   0x00007f57cc65e95c:   nopl   0x0(%rax)
            │     │        │││  │             ││   0x00007f57cc65e960:   jae    0x00007f57cc65f470
   0.05%    │     │        │││  │             ││   0x00007f57cc65e966:   mov    %r10d,%r11d
   0.10%    │     │        │││  │             ││   0x00007f57cc65e969:   lea    (%r12,%rdx,8),%r8
   0.01%    │     │        │││  │             ││   0x00007f57cc65e96d:   movzwl 0x10(%r8,%r11,2),%r8d        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │     │        │││  │             ││                                                             ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │     │        │││  │             ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.02%    │     │        │││  │             ││   0x00007f57cc65e973:   mov    %r8d,%r11d
   0.05%    │     │        │││  │             ││   0x00007f57cc65e976:   shr    $0x8,%r11d                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
            │     │        │││  │             ││                                                             ; - java.lang.CharacterData::of@3 (line 78)
            │     │        │││  │             ││                                                             ; - java.lang.Character::getType@1 (line 11557)
            │     │        │││  │             ││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │     │        │││  │             ││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
            │     │        │││  │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.12%    │     │        │││╭ │             ││   0x00007f57cc65e97a:   jmp    0x00007f57cc65e9a7
   0.14%    │     │        ││↘│ │             ││   0x00007f57cc65e97c:   nopl   0x0(%rax)
   0.07%    │     │        ││ │ │             ││   0x00007f57cc65e980:   mov    0xc(%r12,%rdx,8),%r11d       ; implicit exception: dispatches to 0x00007f57cc65f688
            │     │        ││ │ │             ││                                                             ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││ │ │             ││                                                             ; - java.lang.StringLatin1::charAt@2 (line 46)
            │     │        ││ │ │             ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.50%    │     │        ││ │ │             ││   0x00007f57cc65e985:   cmp    %r11d,%r10d
            │     │        ││ │ │             ││   0x00007f57cc65e988:   jae    0x00007f57cc65f1cc
   0.25%    │     │        ││ │ │             ││   0x00007f57cc65e98e:   mov    %r10d,%ebp                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││ │ │             ││                                                             ; - java.lang.String::checkIndex@5 (line 4828)
            │     │        ││ │ │             ││                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
            │     │        ││ │ │             ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.05%    │     │        ││ │ │             ││   0x00007f57cc65e991:   cmp    %r11d,%ebp
            │     │        ││ │ │             ││   0x00007f57cc65e994:   jae    0x00007f57cc65f1f8
   0.15%    │     │        ││ │ │             ││   0x00007f57cc65e99a:   lea    (%r12,%rdx,8),%r11
   0.27%    │     │        ││ │ │             ││   0x00007f57cc65e99e:   movzbl 0x10(%r11,%rbp,1),%r8d       ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││ │ │             ││                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
            │     │        ││ │ │             ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.19%    │     │        ││ │ │             ││   0x00007f57cc65e9a4:   xor    %r11d,%r11d                  ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
            │     │        ││ │ │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.07%    │     │        ││ ↘ │             ││   0x00007f57cc65e9a7:   test   %r11d,%r11d
   0.16%    │     │        ││   │             ││   0x00007f57cc65e9aa:   movabs $0x7ffc034e0,%r11            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.35%    │     │        ││   │             ││   0x00007f57cc65e9b4:   movabs $0x7ff072ea8,%rdx            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
   0.33%    │     │        ││   │             ││   0x00007f57cc65e9be:   cmovne %rdx,%r11                    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││   │             ││                                                             ; - java.lang.Character::getType@1 (line 11557)
            │     │        ││   │             ││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │     │        ││   │             ││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │     │        ││   │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
            │     │        ││   │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.07%    │     │        ││   │             ││   0x00007f57cc65e9c2:   mov    0x8(%r11),%esi
   0.39%    │     │        ││   │             ││   0x00007f57cc65e9c6:   cmp    $0x2f110,%esi                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            │     │        ││   │             ││   0x00007f57cc65e9cc:   jne    0x00007f57cc65ed79
   0.43%    │     │        ││   │             ││   0x00007f57cc65e9d2:   data16 nopw 0x0(%rax,%rax,1)
   0.18%    │     │        ││   │             ││   0x00007f57cc65e9dc:   data16 data16 xchg %ax,%ax
   0.07%    │     │        ││   │             ││   0x00007f57cc65e9e0:   cmp    $0x100,%r8d
            │     │        ││   │             ││   0x00007f57cc65e9e7:   jae    0x00007f57cc65f0b4
   0.10%    │     │        ││   │             ││   0x00007f57cc65e9ed:   movabs $0x7ffc034f0,%r11            ;   {oop([I{0x00000007ffc034f0})}
   0.39%    │     │        ││   │             ││   0x00007f57cc65e9f7:   mov    0x10(%r11,%r8,4),%eax
   0.33%    │     │        ││   │             ││   0x00007f57cc65e9fc:   and    $0x1f,%eax                   ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││   │             ││                                                             ; - java.lang.Character::getType@5 (line 11557)
            │     │        ││   │             ││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │     │        ││   │             ││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │     │        ││   │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
            │     │        ││   │             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.14%    │     │        ││   │             ││   0x00007f57cc65e9ff:   mov    $0x23e,%r11d
   0.07%    │     │        ││   │             ││   0x00007f57cc65ea05:   sarx   %eax,%r11d,%r8d
   0.52%    │     │        ││   │             ││   0x00007f57cc65ea0a:   test   $0x1,%r8b
            │     │        ││  ╭│             ││   0x00007f57cc65ea0e:   jne    0x00007f57cc65ea1c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││  ││             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@13 (line 38)
            │     │        ││  ││             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.93%    │     │        ││  ││             ││   0x00007f57cc65ea10:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││  ││             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@16 (line 39)
            │     │        ││  ││             ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.52%    │     │        ││  ││             ││   0x00007f57cc65ea13:   cmp    %ecx,%r10d
            │     │        ││  │╰             ││   0x00007f57cc65ea16:   jl     0x00007f57cc65e949           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │        ││  │              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@13 (line 38)
            │     │        ││  │              ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.75%    │     │        │↘  ↘              ││   0x00007f57cc65ea1c:   nopl   0x0(%rax)
   0.08%    │     │        │                  ││   0x00007f57cc65ea20:   cmp    %r10d,%ecx
            │     │        │     ╭            ││   0x00007f57cc65ea23:   jle    0x00007f57cc65eaf1           ;*aload_1 {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │            ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@27 (line 41)
            │     │        │     │            ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.41%    │     │        │     │    ↗       ││   0x00007f57cc65ea29:   mov    0x14(%rdi),%r8d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │    │       ││                                                             ; - java.lang.String::charAt@8 (line 1555)
            │     │        │     │    │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     │    │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.64%    │     │        │     │    │       ││   0x00007f57cc65ea2d:   cmpb   $0x0,0x10(%rdi)
   0.52%    │     │        │     │╭   │       ││   0x00007f57cc65ea31:   je     0x00007f57cc65ea5c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     ││   │       ││                                                             ; - java.lang.String::charAt@4 (line 1554)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.05%    │     │        │     ││   │       ││   0x00007f57cc65ea33:   mov    0xc(%r12,%r8,8),%ebp         ; implicit exception: dispatches to 0x00007f57cc65f6f0
   0.17%    │     │        │     ││   │       ││   0x00007f57cc65ea38:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     ││   │       ││                                                             ; - java.lang.StringUTF16::length@3 (line 75)
            │     │        │     ││   │       ││                                                             ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │     │        │     ││   │       ││                                                             ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │     │        │     ││   │       ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.14%    │     │        │     ││   │       ││   0x00007f57cc65ea3a:   cmp    %ebp,%ecx
   0.10%    │     │        │     ││   │       ││   0x00007f57cc65ea3c:   nopl   0x0(%rax)
   0.01%    │     │        │     ││   │       ││   0x00007f57cc65ea40:   jae    0x00007f57cc65f420
   0.04%    │     │        │     ││   │       ││   0x00007f57cc65ea46:   mov    %ecx,%r11d
   0.08%    │     │        │     ││   │       ││   0x00007f57cc65ea49:   shl    $0x3,%r8
   0.03%    │     │        │     ││   │       ││   0x00007f57cc65ea4d:   movzwl 0x10(%r8,%r11,2),%edx        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     ││   │       ││                                                             ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │     │        │     ││   │       ││                                                             ; - java.lang.String::charAt@21 (line 1557)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.04%    │     │        │     ││   │       ││   0x00007f57cc65ea53:   mov    %edx,%r8d
   0.04%    │     │        │     ││   │       ││   0x00007f57cc65ea56:   shr    $0x8,%r8d                    ;*iushr {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     ││   │       ││                                                             ; - java.lang.CharacterData::of@3 (line 78)
            │     │        │     ││   │       ││                                                             ; - java.lang.Character::getType@1 (line 11557)
            │     │        │     ││   │       ││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │     │        │     ││   │       ││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │     │        │     ││   │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.09%    │     │        │     ││╭  │       ││   0x00007f57cc65ea5a:   jmp    0x00007f57cc65ea84
   0.16%    │     │        │     │↘│  │       ││   0x00007f57cc65ea5c:   nopl   0x0(%rax)
   0.03%    │     │        │     │ │  │       ││   0x00007f57cc65ea60:   mov    0xc(%r12,%r8,8),%edx         ; implicit exception: dispatches to 0x00007f57cc65f660
            │     │        │     │ │  │       ││                                                             ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │ │  │       ││                                                             ; - java.lang.StringLatin1::charAt@2 (line 46)
            │     │        │     │ │  │       ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.41%    │     │        │     │ │  │       ││   0x00007f57cc65ea65:   cmp    %edx,%ecx
            │     │        │     │ │  │       ││   0x00007f57cc65ea67:   jae    0x00007f57cc65f128
   0.38%    │     │        │     │ │  │       ││   0x00007f57cc65ea6d:   mov    %ecx,%ebp                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │ │  │       ││                                                             ; - java.lang.String::checkIndex@5 (line 4828)
            │     │        │     │ │  │       ││                                                             ; - java.lang.StringLatin1::charAt@3 (line 46)
            │     │        │     │ │  │       ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.06%    │     │        │     │ │  │       ││   0x00007f57cc65ea6f:   cmp    %edx,%ebp
            │     │        │     │ │  │       ││   0x00007f57cc65ea71:   jae    0x00007f57cc65f154
   0.10%    │     │        │     │ │  │       ││   0x00007f57cc65ea77:   lea    (%r12,%r8,8),%r11
   0.12%    │     │        │     │ │  │       ││   0x00007f57cc65ea7b:   movzbl 0x10(%r11,%rbp,1),%edx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │ │  │       ││                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
            │     │        │     │ │  │       ││                                                             ; - java.lang.String::charAt@12 (line 1555)
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.43%    │     │        │     │ │  │       ││   0x00007f57cc65ea81:   xor    %r8d,%r8d                    ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
            │     │        │     │ │  │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.06%    │     │        │     │ ↘  │       ││   0x00007f57cc65ea84:   test   %r8d,%r8d
   0.12%    │     │        │     │    │       ││   0x00007f57cc65ea87:   movabs $0x7ffc034e0,%rsi            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.17%    │     │        │     │    │       ││   0x00007f57cc65ea91:   movabs $0x7ff072ea8,%r11            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
   0.48%    │     │        │     │    │       ││   0x00007f57cc65ea9b:   cmovne %r11,%rsi                    ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │    │       ││                                                             ; - java.lang.Character::getType@1 (line 11557)
            │     │        │     │    │       ││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │     │        │     │    │       ││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │     │        │     │    │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │     │        │     │    │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.09%    │     │        │     │    │       ││   0x00007f57cc65ea9f:   mov    0x8(%rsi),%r11d
   0.30%    │     │        │     │    │       ││   0x00007f57cc65eaa3:   cmp    $0x2f110,%r11d               ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            │     │        │     │  ╭ │       ││   0x00007f57cc65eaaa:   jne    0x00007f57cc65ecd9
   0.21%    │     │        │     │  │ │       ││   0x00007f57cc65eab0:   cmp    $0x100,%edx
            │     │        │     │  │ │       ││   0x00007f57cc65eab6:   jae    0x00007f57cc65f068
   0.36%    │     │        │     │  │ │       ││   0x00007f57cc65eabc:   movabs $0x7ffc034f0,%r11            ;   {oop([I{0x00000007ffc034f0})}
   0.08%    │     │        │     │  │ │       ││   0x00007f57cc65eac6:   mov    0x10(%r11,%rdx,4),%eax
   0.33%    │     │        │     │  │ │       ││   0x00007f57cc65eacb:   and    $0x1f,%eax                   ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │  │ │       ││                                                             ; - java.lang.Character::getType@5 (line 11557)
            │     │        │     │  │ │       ││                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │     │        │     │  │ │       ││                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │     │        │     │  │ │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │     │        │     │  │ │       ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.47%    │     │        │     │  │ │       ││↗  0x00007f57cc65eace:   mov    $0x23e,%r8d
   0.21%    │     │        │     │  │ │       │││  0x00007f57cc65ead4:   sarx   %eax,%r8d,%r11d
   0.33%    │     │        │     │  │ │       │││  0x00007f57cc65ead9:   nopl   0x0(%rax)
   0.07%    │     │        │     │  │ │       │││  0x00007f57cc65eae0:   test   $0x1,%r11b
            │     │        │     │  │╭│       │││  0x00007f57cc65eae4:   jne    0x00007f57cc65eaf1           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │  │││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
            │     │        │     │  │││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.96%    │     │        │     │  │││       │││  0x00007f57cc65eae6:   dec    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │  │││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@38 (line 42)
            │     │        │     │  │││       │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.58%    │     │        │     │  │││       │││  0x00007f57cc65eae8:   cmp    %r10d,%ecx
            │     │        │     │  ││╰       │││  0x00007f57cc65eaeb:   jg     0x00007f57cc65ea29           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │        │     │  ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
            │     │        │     │  ││        │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.93%    │     │        │     ↘  │↘        │││  0x00007f57cc65eaf1:   cmp    %ecx,%r10d
            │     │        │        │         │││  0x00007f57cc65eaf4:   jge    0x00007f57cc65ef9d           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@46 (line 44)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.42%    │     │        │        │         │││  0x00007f57cc65eafa:   movsbl 0x10(%rdi),%eax              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.String::isLatin1@7 (line 4817)
            │     │        │        │         │││                                                            ; - java.lang.String::charAt@1 (line 1554)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.25%    │     │        │        │         │││  0x00007f57cc65eafe:   mov    0x14(%rdi),%r8d              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.String::charAt@8 (line 1555)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.03%    │     │        │        │         │││  0x00007f57cc65eb02:   test   %eax,%eax
            │     │        │        │  ╭      │││  0x00007f57cc65eb04:   je     0x00007f57cc65eb42           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │  │      │││                                                            ; - java.lang.String::charAt@4 (line 1554)
            │     │        │        │  │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │  │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.09%    │     │        │        │  │      │││  0x00007f57cc65eb0a:   mov    0xc(%r12,%r8,8),%ebp         ; implicit exception: dispatches to 0x00007f57cc65f740
   0.05%    │     │        │        │  │      │││  0x00007f57cc65eb0f:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │  │      │││                                                            ; - java.lang.StringUTF16::length@3 (line 75)
            │     │        │        │  │      │││                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │     │        │        │  │      │││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │     │        │        │  │      │││                                                            ; - java.lang.String::charAt@21 (line 1557)
            │     │        │        │  │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │  │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.01%    │     │        │        │  │      │││  0x00007f57cc65eb11:   cmp    %ebp,%r10d
            │     │        │        │  │      │││  0x00007f57cc65eb14:   jae    0x00007f57cc65f510
   0.02%    │     │        │        │  │      │││  0x00007f57cc65eb1a:   mov    %r10d,%edx
   0.07%    │     │        │        │  │      │││  0x00007f57cc65eb1d:   lea    (%r12,%r8,8),%r11
   0.02%    │     │        │        │  │      │││  0x00007f57cc65eb21:   movzwl 0x10(%r11,%rdx,2),%edx       ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │  │      │││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │     │        │        │  │      │││                                                            ; - java.lang.String::charAt@21 (line 1557)
            │     │        │        │  │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │  │      │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.01%    │     │        │        │  │      │││  0x00007f57cc65eb27:   mov    %edx,%esi
   0.01%    │     │        │        │  │      │││  0x00007f57cc65eb29:   shr    $0x8,%esi
   0.05%    │     │        │        │  │      │││  0x00007f57cc65eb2c:   test   %esi,%esi
            │     │        │        │  │╭     │││  0x00007f57cc65eb2e:   je     0x00007f57cc65eb66           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │  ││     │││                                                            ; - java.lang.CharacterData::of@4 (line 78)
            │     │        │        │  ││     │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
            │     │        │        │  ││     │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │  ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │  ││     │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │     │        │        │  ││     │││  0x00007f57cc65eb34:   movabs $0x7ff072ea8,%rsi            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
            │     │        │        │  ││     │││  0x00007f57cc65eb3e:   xchg   %ax,%ax
            │     │        │        │  ││╭    │││  0x00007f57cc65eb40:   jmp    0x00007f57cc65eb70
   0.36%    │     │        │        │  ↘││    │││  0x00007f57cc65eb42:   mov    0xc(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f57cc65f6c8
            │     │        │        │   ││    │││                                                            ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │   ││    │││                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
            │     │        │        │   ││    │││                                                            ; - java.lang.String::charAt@12 (line 1555)
            │     │        │        │   ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │   ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.23%    │     │        │        │   ││    │││  0x00007f57cc65eb47:   cmp    %r11d,%r10d
            │     │        │        │   ││    │││  0x00007f57cc65eb4a:   jae    0x00007f57cc65f314
   0.07%    │     │        │        │   ││    │││  0x00007f57cc65eb50:   mov    %r10d,%ebp                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │   ││    │││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
            │     │        │        │   ││    │││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
            │     │        │        │   ││    │││                                                            ; - java.lang.String::charAt@12 (line 1555)
            │     │        │        │   ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │   ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.02%    │     │        │        │   ││    │││  0x00007f57cc65eb53:   cmp    %r11d,%ebp
            │     │        │        │   ││    │││  0x00007f57cc65eb56:   jae    0x00007f57cc65f344
   0.36%    │     │        │        │   ││    │││  0x00007f57cc65eb5c:   lea    (%r12,%r8,8),%r11
   0.05%    │     │        │        │   ││    │││  0x00007f57cc65eb60:   movzbl 0x10(%r11,%rbp,1),%edx       ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │   ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
            │     │        │        │   ││    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.05%    │     │        │        │   ↘│    │││  0x00007f57cc65eb66:   movabs $0x7ffc034e0,%rsi            ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │    │    │││                                                            ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │        │        │    │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │    │    │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │     │        │        │    │    │││                                                            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.04%    │     │        │        │    ↘    │││  0x00007f57cc65eb70:   mov    0x8(%rsi),%r11d
   0.37%    │     │        │        │         │││  0x00007f57cc65eb74:   nopl   0x0(%rax,%rax,1)
   0.13%    │     │        │        │         │││  0x00007f57cc65eb7c:   data16 data16 xchg %ax,%ax
   0.06%    │     │        │        │         │││  0x00007f57cc65eb80:   cmp    $0x2f110,%r11d               ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            │     │        │        │         │││  0x00007f57cc65eb87:   jne    0x00007f57cc65eec5           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.03%    │     │        │        │         │││  0x00007f57cc65eb8d:   cmp    $0x41,%edx
            │     │        │        │         │││  0x00007f57cc65eb90:   jl     0x00007f57cc65ede5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.33%    │     │        │        │         │││  0x00007f57cc65eb96:   mov    %edx,%r11d
   0.12%    │     │        │        │         │││  0x00007f57cc65eb99:   or     $0x20,%r11d                  ;*ior {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.06%    │     │        │        │         │││  0x00007f57cc65eb9d:   data16 xchg %ax,%ax
   0.02%    │     │        │        │         │││  0x00007f57cc65eba0:   cmp    $0x7a,%r11d
            │     │        │        │         │││  0x00007f57cc65eba4:   jg     0x00007f57cc65f005           ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.37%    │     │        │        │         │││  0x00007f57cc65ebaa:   test   %eax,%eax
            │     │        │        │     ╭   │││  0x00007f57cc65ebac:   je     0x00007f57cc65ebf2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │     │   │││                                                            ; - java.lang.String::charAt@4 (line 1554)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.07%    │     │        │        │     │   │││  0x00007f57cc65ebb2:   test   %r8d,%r8d
            │     │        │        │     │   │││  0x00007f57cc65ebb5:   je     0x00007f57cc65f590           ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │     │   │││                                                            ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.03%    │     │        │        │     │   │││  0x00007f57cc65ebbb:   mov    0xc(%r12,%r8,8),%ebp
   0.01%    │     │        │        │     │   │││  0x00007f57cc65ebc0:   sar    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │     │   │││                                                            ; - java.lang.StringUTF16::length@3 (line 75)
            │     │        │        │     │   │││                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
            │     │        │        │     │   │││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
            │     │        │        │     │   │││                                                            ; - java.lang.String::charAt@21 (line 1557)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.03%    │     │        │        │     │   │││  0x00007f57cc65ebc2:   cmp    %ebp,%ecx
            │     │        │        │     │   │││  0x00007f57cc65ebc4:   jae    0x00007f57cc65f544
   0.08%    │     │        │        │     │   │││  0x00007f57cc65ebca:   mov    %ecx,%esi
   0.02%    │     │        │        │     │   │││  0x00007f57cc65ebcc:   shl    $0x3,%r8
   0.01%    │     │        │        │     │   │││  0x00007f57cc65ebd0:   movzwl 0x10(%r8,%rsi,2),%edx        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │     │   │││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
            │     │        │        │     │   │││                                                            ; - java.lang.String::charAt@21 (line 1557)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
            │     │        │        │     │   │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.02%    │     │        │        │     │   │││  0x00007f57cc65ebd6:   mov    %edx,%esi
   0.06%    │     │        │        │     │   │││  0x00007f57cc65ebd8:   shr    $0x8,%esi
   0.03%    │     │        │        │     │   │││  0x00007f57cc65ebdb:   test   %esi,%esi
   0.02%    │     │        │        │     │   │││  0x00007f57cc65ebdd:   data16 xchg %ax,%ax
   0.02%    │     │        │        │     │╭  │││  0x00007f57cc65ebe0:   je     0x00007f57cc65ec1c           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │     ││  │││                                                            ; - java.lang.CharacterData::of@4 (line 78)
            │     │        │        │     ││  │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
            │     │        │        │     ││  │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │     ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │        │        │     ││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │     │        │        │     ││  │││  0x00007f57cc65ebe6:   movabs $0x7ff072ea8,%rbx            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
            │     │        │        │     ││╭ │││  0x00007f57cc65ebf0:   jmp    0x00007f57cc65ec1c
   0.05%    │     │        │        │     ↘││ │││  0x00007f57cc65ebf2:   test   %r8d,%r8d
            │     │        │        │      ││ │││  0x00007f57cc65ebf5:   je     0x00007f57cc65f3e4           ;*i2c {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │      ││ │││                                                            ; - java.lang.Character::toLowerCase@4 (line 10933)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.06%    │     │        │        │      ││ │││  0x00007f57cc65ebfb:   mov    0xc(%r12,%r8,8),%eax         ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │      ││ │││                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
            │     │        │        │      ││ │││                                                            ; - java.lang.String::charAt@12 (line 1555)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.03%    │     │        │        │      ││ │││  0x00007f57cc65ec00:   cmp    %eax,%ecx
            │     │        │        │      ││ │││  0x00007f57cc65ec02:   jae    0x00007f57cc65f368
   0.31%    │     │        │        │      ││ │││  0x00007f57cc65ec08:   mov    %ecx,%ebp                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │      ││ │││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
            │     │        │        │      ││ │││                                                            ; - java.lang.StringLatin1::charAt@3 (line 46)
            │     │        │        │      ││ │││                                                            ; - java.lang.String::charAt@12 (line 1555)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.05%    │     │        │        │      ││ │││  0x00007f57cc65ec0a:   cmp    %eax,%ebp
            │     │        │        │      ││ │││  0x00007f57cc65ec0c:   jae    0x00007f57cc65f3a4
   0.07%    │     │        │        │      ││ │││  0x00007f57cc65ec12:   shl    $0x3,%r8
   0.02%    │     │        │        │      ││ │││  0x00007f57cc65ec16:   movzbl 0x10(%r8,%rbp,1),%edx        ;*invokestatic of {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │      ││ │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
            │     │        │        │      ││ │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │        │        │      ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.36%    │     │        │        │      ↘↘ │││  0x00007f57cc65ec1c:   mov    0x8(%rbx),%r8d
   0.05%    │     │        │        │         │││  0x00007f57cc65ec20:   cmp    $0x2f110,%r8d                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
            │     │        │        │         │││  0x00007f57cc65ec27:   jne    0x00007f57cc65ef46           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.12%    │     │        │        │         │││  0x00007f57cc65ec2d:   cmp    $0x41,%edx
            │     │        │        │         │││  0x00007f57cc65ec30:   jl     0x00007f57cc65eded           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.10%    │     │        │        │         │││  0x00007f57cc65ec36:   mov    %edx,%eax
   0.28%    │     │        │        │         │││  0x00007f57cc65ec38:   or     $0x20,%eax                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.08%    │     │        │        │         │││  0x00007f57cc65ec3b:   nopl   0x0(%rax,%rax,1)
   0.10%    │     │        │        │         │││  0x00007f57cc65ec40:   cmp    $0x7a,%eax
            │     │        │        │         │││  0x00007f57cc65ec43:   jg     0x00007f57cc65f026           ;*invokevirtual toLowerCase {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            │     │        │        │         │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
            │     │        │        │         │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.14%    │     │        │        │         │││  0x00007f57cc65ec49:   movzwl %ax,%r8d
   0.27%    │     │        │        │         │││  0x00007f57cc65ec4d:   cmp    %r8d,%r11d
            │     │        │        │        ╭│││  0x00007f57cc65ec50:   jne    0x00007f57cc65ec77           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@67 (line 47)
            │     │        │        │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.09%    │     │        │        │        ││││  0x00007f57cc65ec52:   mov    %ecx,%r8d
   0.05%    │     │        │        │        ││││  0x00007f57cc65ec55:   dec    %r8d                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@79 (line 51)
            │     │        │        │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.12%    │     │        │        │        ││││  0x00007f57cc65ec58:   mov    %r10d,%ecx
   0.28%    │     │        │        │        ││││  0x00007f57cc65ec5b:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@74 (line 50)
            │     │        │        │        ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.13%    │     │        │        │        ││││  0x00007f57cc65ec5d:   mov    0x20(%rsp),%rsi
   0.07%    │     │        │        │        ││││  0x00007f57cc65ec62:   mov    %rdi,%rdx
   0.08%    │     │        │        │        ││││  0x00007f57cc65ec65:   xchg   %ax,%ax
   0.26%    │     │        │        │        │╰││  0x00007f57cc65ec67:   call   0x00007f57cc65e5c0           ; ImmutableOopMap {}
            │     │        │        │        │ ││                                                            ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │     │        │        │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │     │        │        │        │ ││                                                            ;   {optimized virtual_call}
   9.43%    │     │        │        │        │ ││  0x00007f57cc65ec6c:   nopl   0x9dc(%rax,%rax,1)           ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │     │        │        │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │     │        │        │        │ ││                                                            ;   {other}
   0.45%    │     │        │        │        │ ││  0x00007f57cc65ec74:   mov    %eax,%r9d                    ;*ifne {reexecute=0 rethrow=0 return_oop=0}
            │     │        │        │        │ ││                                                            ; - java.lang.CharacterData::of@4 (line 78)
            │     │        │        │        │ ││                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
            │     │        │        │        │ ││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
            │     │        │        │        │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.10%    │     │        ↘        │        ↘ ││  0x00007f57cc65ec77:   mov    %r9d,%eax
   2.24%    │     │                 │          ││  0x00007f57cc65ec7a:   add    $0x40,%rsp
   1.54%    │     │                 │          ││  0x00007f57cc65ec7e:   pop    %rbp
   7.31%    │     │                 │          ││  0x00007f57cc65ec7f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
            │     │                 │          ││  0x00007f57cc65ec86:   ja     0x00007f57cc65f794
   0.02%    │     │                 │          ││  0x00007f57cc65ec8c:   ret    
   0.03%    │     ↘                 │          ││  0x00007f57cc65ec8d:   cmp    $0x1b41d8,%r8d               ;   {metadata(&apos;java/lang/CharacterData00&apos;)}
            │                       │          ││  0x00007f57cc65ec94:   jne    0x00007f57cc65f5a4
   0.02%    │                       │          ││  0x00007f57cc65ec9a:   mov    %ecx,0x10(%rsp)
   0.02%    │                       │          ││  0x00007f57cc65ec9e:   mov    %r10d,0x4(%rsp)
   0.00%    │                       │          ││  0x00007f57cc65eca3:   mov    %rbx,0x8(%rsp)
            │                       │          ││  0x00007f57cc65eca8:   mov    %r9d,(%rsp)
   0.00%    │                       │          ││  0x00007f57cc65ecac:   mov    %rdi,%rbp
            │                       │          ││  0x00007f57cc65ecaf:   call   0x00007f57cc65a340           ; ImmutableOopMap {rbp=Oop [8]=Oop [32]=Oop }
            │                       │          ││                                                            ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
            │                       │          ││                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
            │                       │          ││                                                            ; - java.lang.Character::getType@5 (line 11557)
            │                       │          ││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │                       │          ││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │                       │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │                       │          ││                                                            ;   {optimized virtual_call}
            │                       │          ││  0x00007f57cc65ecb4:   nopl   0x1000a24(%rax,%rax,1)       ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
            │                       │          ││                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
            │                       │          ││                                                            ; - java.lang.Character::getType@5 (line 11557)
            │                       │          ││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │                       │          ││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │                       │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │                       │          ││                                                            ;   {other}
            │                       │          ││  0x00007f57cc65ecbc:   and    $0x1f,%eax                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │                       │          ││                                                            ; - java.lang.CharacterData00::getType@9 (line 85)
            │                       │          ││                                                            ; - java.lang.Character::getType@5 (line 11557)
            │                       │          ││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │                       │          ││                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │                       │          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │                       │          ││  0x00007f57cc65ecbf:   mov    %rbp,%rdi
            │                       │          ││  0x00007f57cc65ecc2:   mov    (%rsp),%r9d
   0.00%    │                       │          ││  0x00007f57cc65ecc6:   mov    0x8(%rsp),%rbx
   0.00%    │                       │          ││  0x00007f57cc65eccb:   mov    0x4(%rsp),%r10d
            │                       │          ││  0x00007f57cc65ecd0:   mov    0x10(%rsp),%ecx
            │                       │          ╰│  0x00007f57cc65ecd4:   jmp    0x00007f57cc65e79e
   0.02%    │                       ↘           │  0x00007f57cc65ecd9:   nopl   0x0(%rax)
   0.00%    │                                   │  0x00007f57cc65ece0:   cmp    $0x1b41d8,%r11d              ;   {metadata(&apos;java/lang/CharacterData00&apos;)}
            │                                   │  0x00007f57cc65ece7:   jne    0x00007f57cc65f5cc
   0.00%    │                                   │  0x00007f57cc65eced:   mov    %ecx,0x10(%rsp)
   0.02%    │                                   │  0x00007f57cc65ecf1:   mov    %r10d,0x4(%rsp)
   0.01%    │                                   │  0x00007f57cc65ecf6:   mov    %rbx,0x8(%rsp)
            │                                   │  0x00007f57cc65ecfb:   mov    %r9d,(%rsp)
            │                                   │  0x00007f57cc65ecff:   mov    %rdi,%rbp                    ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
            │                                   │                                                            ; - java.lang.Character::getType@5 (line 11557)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │                                   │  0x00007f57cc65ed02:   nop
            │                                   │  0x00007f57cc65ed03:   call   0x00007f57cc65a340           ; ImmutableOopMap {rbp=Oop [8]=Oop [32]=Oop }
            │                                   │                                                            ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
            │                                   │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
            │                                   │                                                            ; - java.lang.Character::getType@5 (line 11557)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │                                   │                                                            ;   {optimized virtual_call}
            │                                   │  0x00007f57cc65ed08:   nopl   0x2000a78(%rax,%rax,1)       ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
            │                                   │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
            │                                   │                                                            ; - java.lang.Character::getType@5 (line 11557)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │                                   │                                                            ;   {other}
            │                                   │  0x00007f57cc65ed10:   and    $0x1f,%eax                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
            │                                   │                                                            ; - java.lang.CharacterData00::getType@9 (line 85)
            │                                   │                                                            ; - java.lang.Character::getType@5 (line 11557)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
            │                                   │                                                            ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
            │                                   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
            │                                   │  0x00007f57cc65ed13:   mov    %rbp,%rdi
   0.00%    │                                   │  0x00007f57cc65ed16:   mov    (%rsp),%r9d
   0.00%    │                                   │  0x00007f57cc65ed1a:   mov    0x8(%rsp),%rbx
            │                                   │  0x00007f57cc65ed1f:   mov    0x4(%rsp),%r10d
            │                                   │  0x00007f57cc65ed24:   mov    0x10(%rsp),%ecx
            │                                   ╰  0x00007f57cc65ed28:   jmp    0x00007f57cc65eace
   0.02%    ↘                                      0x00007f57cc65ed2d:   cmp    $0x1b41d8,%edx               ;   {metadata(&apos;java/lang/CharacterData00&apos;)}
                                                   0x00007f57cc65ed33:   jne    0x00007f57cc65f5f4
   0.01%                                           0x00007f57cc65ed39:   mov    %r10d,0x4(%rsp)
   0.02%                                           0x00007f57cc65ed3e:   mov    %rbx,0x10(%rsp)
   0.00%                                           0x00007f57cc65ed43:   mov    %r9d,(%rsp)
                                                   0x00007f57cc65ed47:   mov    %rdi,%rbp                    ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
                                                                                                             ; - java.lang.Character::getType@5 (line 11557)
                                                                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
                                                                                                             ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                                                                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
                                                   0x00007f57cc65ed4a:   mov    %r11,%rsi
                                                   0x00007f57cc65ed4d:   mov    %r8d,%edx
                                                   0x00007f57cc65ed50:   data16 xchg %ax,%ax
                                                   0x00007f57cc65ed53:   call   0x00007f57cc0c4380           ; ImmutableOopMap {rbp=Oop [16]=Oop [32]=Oop }
                                                                                                             ;*invokevirtual getProperties {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  77.13%  <total for region 1>

....[Hottest Regions]...............................................................................
  77.13%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 686 
   4.47%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 824 
   3.79%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 645 
   2.44%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 656 
   1.04%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.87%              kernel  [unknown] 
   0.84%              kernel  [unknown] 
   0.76%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 824 
   0.61%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.37%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.36%              kernel  [unknown] 
   0.31%              kernel  [unknown] 
   0.28%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 798 
   0.19%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 798 
   0.17%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.16%         c2, level 4  java.lang.CharacterData00::getProperties, version 2, compile id 669 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   5.52%  <...other 955 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  77.23%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 686 
   6.55%              kernel  [unknown] 
   5.35%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 824 
   3.96%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 645 
   2.52%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 656 
   1.06%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.49%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 798 
   0.37%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.17%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.16%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::palindromes, version 2, compile id 977 
   0.16%         c2, level 4  java.io.InputStreamReader::read, version 2, compile id 847 
   0.16%         c2, level 4  java.lang.CharacterData00::getProperties, version 2, compile id 669 
   0.12%         c2, level 4  java.util.Iterator::forEachRemaining, version 2, compile id 898 
   0.09%                      <unknown> 
   0.09%         c2, level 4  java.lang.StringUTF16::putChars, version 4, compile id 701 
   0.07%         c2, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 910 
   0.06%           libjvm.so  jni_GetObjectField 
   0.06%           libjvm.so  ThreadInVMfromNative::ThreadInVMfromNative 
   0.04%           libjvm.so  jni_GetArrayLength 
   0.04%    perf-1945236.map  [unknown] 
   1.24%  <...other 204 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.45%         c2, level 4
   6.55%              kernel
   1.43%        runtime stub
   0.73%           libjvm.so
   0.34%        libc-2.31.so
   0.15%  libpthread-2.31.so
   0.09%                    
   0.07%    Unknown, level 0
   0.06%          libjava.so
   0.05%         interpreter
   0.04%    perf-1945236.map
   0.01%      hsdis-amd64.so
   0.01%         c1, level 3
   0.00%              [vdso]
   0.00%          ld-2.31.so
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, OpenJDK 64-Bit Server VM, 21+35-2513
# VM invoker: /home/gogu/bench_jdks/jdk-21/bin/java
# VM options: -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline

# Run progress: 75.00% complete, ETA 00:01:51
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.440 ms/op
# Warmup Iteration   2: 2.030 ms/op
# Warmup Iteration   3: 1.995 ms/op
# Warmup Iteration   4: 1.996 ms/op
# Warmup Iteration   5: 1.993 ms/op
Iteration   1: 1.993 ms/op
Iteration   2: 1.996 ms/op
Iteration   3: 1.995 ms/op
Iteration   4: 1.993 ms/op
Iteration   5: 1.993 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline":
  1.994 ±(99.9%) 0.005 ms/op [Average]
  (min, avg, max) = (1.993, 1.994, 1.996), stdev = 0.001
  CI (99.9%): [1.989, 1.999] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline:asm":
PrintAssembly processed: 225287 total address lines.
Perf output processed (skipped 58.242 seconds):
 Column 1: cycles (50824 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.stream.Stream$1::tryAdvance, version 4, compile id 685 

                              # parm0:    rdx:rdx   = &apos;java/util/function/Consumer&apos;
                              #           [sp+0x60]  (sp of caller)
                              0x00007fc7cc662840:   mov    0x8(%rsi),%r10d
                              0x00007fc7cc662844:   movabs $0x7fc753000000,%r11
                              0x00007fc7cc66284e:   add    %r11,%r10
                              0x00007fc7cc662851:   cmp    %r10,%rax
                              0x00007fc7cc662854:   jne    0x00007fc7cc0c4080           ;   {runtime_call ic_miss_stub}
                              0x00007fc7cc66285a:   xchg   %ax,%ax
                              0x00007fc7cc66285c:   nopl   0x0(%rax)
                            [Verified Entry Point]
   0.02%                      0x00007fc7cc662860:   mov    %eax,-0x14000(%rsp)
   2.97%                      0x00007fc7cc662867:   push   %rbp
                              0x00007fc7cc662868:   sub    $0x50,%rsp
   0.03%                      0x00007fc7cc66286c:   cmpl   $0x0,0x20(%r15)
   0.75%                      0x00007fc7cc662874:   jne    0x00007fc7cc663725           ;*synchronization entry
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@-1 (line 1461)
   0.00%                      0x00007fc7cc66287a:   mov    %rsi,0x18(%rsp)
   0.01%                      0x00007fc7cc66287f:   mov    %rdx,0x38(%rsp)
   0.56%                      0x00007fc7cc662884:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007fc7cc663674
   0.31%                      0x00007fc7cc662888:   mov    %r10d,0x8(%rsp)
   0.02%                      0x00007fc7cc66288d:   movzbl 0x1c(%rsi),%r10d
   0.02%                      0x00007fc7cc662892:   test   %r10d,%r10d
                              0x00007fc7cc662895:   je     0x00007fc7cc663145           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.54%                      0x00007fc7cc66289b:   mov    0x20(%rsi),%r11d             ;*getfield prev {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@17 (line 1464)
   0.28%                      0x00007fc7cc66289f:   mov    0x24(%rsi),%ebp              ;*getfield val$f {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@13 (line 1464)
   0.01%                      0x00007fc7cc6628a2:   mov    0x8(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007fc7cc663618
   1.50%                      0x00007fc7cc6628a7:   cmp    $0x102b228,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/trampoline/ATrampoline$$Lambda+0x00007fc75402b228&apos;)}
                              0x00007fc7cc6628ae:   jne    0x00007fc7cc66332c
   0.77%                      0x00007fc7cc6628b4:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fc7cc663630
   0.05%                      0x00007fc7cc6628b9:   nopl   0x0(%rax)
   0.01%                      0x00007fc7cc6628c0:   cmp    $0x102b6c0,%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
                                                                                        ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/trampoline/TrampolinePredicate$$Lambda+0x00007fc75402b6c0&apos;)}
                              0x00007fc7cc6628c7:   jne    0x00007fc7cc6635c0
   0.04%                      0x00007fc7cc6628cd:   shl    $0x3,%r11                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@1
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.75%                      0x00007fc7cc6628d1:   mov    0x14(%r11),%r13d             ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@1
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.01%                      0x00007fc7cc6628d5:   mov    0x10(%r11),%r8d              ;*getfield arg$4 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@13
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.01%                      0x00007fc7cc6628d9:   mov    0x18(%r11),%r10d             ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@5
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.06%                      0x00007fc7cc6628dd:   mov    0xc(%r11),%r11d              ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@9
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.78%                      0x00007fc7cc6628e1:   test   %r13d,%r13d
                              0x00007fc7cc6628e4:   je     0x00007fc7cc663298
   0.01%                      0x00007fc7cc6628ea:   cmp    %r8d,%r11d
                              0x00007fc7cc6628ed:   jge    0x00007fc7cc663075
   0.03%                      0x00007fc7cc6628f3:   test   %r10d,%r10d
                              0x00007fc7cc6628f6:   je     0x00007fc7cc6632b8
   0.09%                      0x00007fc7cc6628fc:   movabs $0x7ffc034e0,%rdi            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
                                                                                        ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   1.02%     ↗                0x00007fc7cc662906:   mov    0x14(%r12,%r10,8),%ecx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
             │                                                                          ; - java.lang.String::charAt@8 (line 1555)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
             │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   1.91%     │                0x00007fc7cc66290b:   cmpb   $0x0,0x10(%r12,%r10,8)
   1.02%  ╭  │                0x00007fc7cc662911:   je     0x00007fc7cc66293d
   0.23%  │  │                0x00007fc7cc662913:   mov    0xc(%r12,%rcx,8),%ebp        ; implicit exception: dispatches to 0x00007fc7cc663698
   0.71%  │  │                0x00007fc7cc662918:   sar    %ebp
   0.22%  │  │                0x00007fc7cc66291a:   nopw   0x0(%rax,%rax,1)
   0.01%  │  │                0x00007fc7cc662920:   cmp    %ebp,%r11d
          │  │                0x00007fc7cc662923:   jae    0x00007fc7cc66345d
   0.26%  │  │                0x00007fc7cc662929:   mov    %r11d,%ebx
          │  │                0x00007fc7cc66292c:   lea    (%r12,%rcx,8),%r9            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
          │  │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.00%  │  │                0x00007fc7cc662930:   movzwl 0x10(%r9,%rbx,2),%ecx        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
          │  │                                                                          ; - java.lang.StringUTF16::charAt@7 (line 1419)
          │  │                                                                          ; - java.lang.String::charAt@21 (line 1557)
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
          │  │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
          │  │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.07%  │  │                0x00007fc7cc662936:   mov    %ecx,%ebx
   0.23%  │  │                0x00007fc7cc662938:   shr    $0x8,%ebx
   0.01%  │╭ │                0x00007fc7cc66293b:   jmp    0x00007fc7cc662965           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          ││ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
          ││ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
          ││ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
          ││ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
          ││ │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.73%  ↘│ │                0x00007fc7cc66293d:   data16 xchg %ax,%ax
   0.00%   │ │                0x00007fc7cc662940:   mov    0xc(%r12,%rcx,8),%ebx        ; implicit exception: dispatches to 0x00007fc7cc6635dc
   2.19%   │ │                0x00007fc7cc662945:   cmp    %ebx,%r11d
           │ │                0x00007fc7cc662948:   jae    0x00007fc7cc6631b8
   0.80%   │ │                0x00007fc7cc66294e:   mov    %r11d,%ebp                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                          ; - java.lang.String::checkIndex@5 (line 4828)
           │ │                                                                          ; - java.lang.StringLatin1::charAt@3 (line 46)
           │ │                                                                          ; - java.lang.String::charAt@12 (line 1555)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
           │ │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
           │ │                0x00007fc7cc662951:   cmp    %ebx,%ebp
           │ │                0x00007fc7cc662953:   jae    0x00007fc7cc6631f4
   0.67%   │ │                0x00007fc7cc662959:   lea    (%r12,%rcx,8),%r9            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
           │ │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.10%   │ │                0x00007fc7cc66295d:   movzbl 0x10(%r9,%rbp,1),%ecx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                          ; - java.lang.StringLatin1::charAt@12 (line 47)
           │ │                                                                          ; - java.lang.String::charAt@12 (line 1555)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
           │ │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.17%   │ │                0x00007fc7cc662963:   xor    %ebx,%ebx                    ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@7 (line 40)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
           │ │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
           │ │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.01%   ↘ │                0x00007fc7cc662965:   test   %ebx,%ebx
   0.87%     │                0x00007fc7cc662967:   movabs $0x7ffc034e0,%rbx            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.37%     │                0x00007fc7cc662971:   movabs $0x7ff072ea8,%r9             ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
   0.09%     │                0x00007fc7cc66297b:   cmovne %r9,%rbx                     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
             │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.01%     │                0x00007fc7cc66297f:   mov    0x8(%rbx),%r9d               ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
             │                                                                          ; - java.lang.Character::getType@5 (line 11557)
             │                                                                          ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
             │                                                                          ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@10 (line 40)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
             │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
             │                                                                          ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   1.71%     │                0x00007fc7cc662983:   cmp    $0x2f110,%r9d                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
             │                0x00007fc7cc66298a:   jne    0x00007fc7cc662d56
   0.33%     │                0x00007fc7cc662990:   cmp    $0x100,%ecx
             │                0x00007fc7cc662996:   jae    0x00007fc7cc663151
   0.11%     │                0x00007fc7cc66299c:   movabs $0x7ffc034f0,%r9             ;   {oop([I{0x00000007ffc034f0})}
   0.01%     │                0x00007fc7cc6629a6:   mov    0x10(%r9,%rcx,4),%eax
   1.48%     │                0x00007fc7cc6629ab:   and    $0x1f,%eax
   1.00%     │                0x00007fc7cc6629ae:   mov    $0x23e,%r9d
   0.05%     │                0x00007fc7cc6629b4:   sarx   %eax,%r9d,%ecx
   0.74%     │                0x00007fc7cc6629b9:   test   $0x1,%cl
            ╭│                0x00007fc7cc6629bc:   jne    0x00007fc7cc6629ca
   1.71%    ││                0x00007fc7cc6629be:   inc    %r11d
   0.91%    ││                0x00007fc7cc6629c1:   cmp    %r8d,%r11d
            │╰                0x00007fc7cc6629c4:   jl     0x00007fc7cc662906
   1.14%    ↘                 0x00007fc7cc6629ca:   cmp    %r11d,%r8d
              ╭               0x00007fc7cc6629cd:   jle    0x00007fc7cc662aa9
   0.57%      │               0x00007fc7cc6629d3:   test   %r10d,%r10d
              │               0x00007fc7cc6629d6:   je     0x00007fc7cc6632e8           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
              │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │                                                                         ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.36%      │   ↗           0x00007fc7cc6629dc:   mov    0x14(%r12,%r10,8),%ecx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                                     ; - java.lang.String::charAt@8 (line 1555)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │   │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.77%      │   │           0x00007fc7cc6629e1:   cmpb   $0x0,0x10(%r12,%r10,8)
   0.98%      │╭  │           0x00007fc7cc6629e7:   je     0x00007fc7cc662a0d
   0.04%      ││  │           0x00007fc7cc6629e9:   mov    0xc(%r12,%rcx,8),%ebp        ; implicit exception: dispatches to 0x00007fc7cc6636ac
   0.20%      ││  │           0x00007fc7cc6629ee:   sar    %ebp
   0.06%      ││  │           0x00007fc7cc6629f0:   cmp    %ebp,%r8d
              ││  │           0x00007fc7cc6629f3:   jae    0x00007fc7cc66348c
   0.24%      ││  │           0x00007fc7cc6629f9:   mov    %r8d,%ebx
   0.01%      ││  │           0x00007fc7cc6629fc:   lea    (%r12,%rcx,8),%r9            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              ││  │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.00%      ││  │           0x00007fc7cc662a00:   movzwl 0x10(%r9,%rbx,2),%ecx        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
              ││  │                                                                     ; - java.lang.StringUTF16::charAt@7 (line 1419)
              ││  │                                                                     ; - java.lang.String::charAt@21 (line 1557)
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              ││  │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              ││  │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.04%      ││  │           0x00007fc7cc662a06:   mov    %ecx,%ebx
   0.23%      ││  │           0x00007fc7cc662a08:   shr    $0x8,%ebx
   0.01%      ││╭ │           0x00007fc7cc662a0b:   jmp    0x00007fc7cc662a34           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              │││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
              │││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │││ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │││ │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.22%      │↘│ │           0x00007fc7cc662a0d:   mov    0xc(%r12,%rcx,8),%ebx        ; implicit exception: dispatches to 0x00007fc7cc6635f0
   0.43%      │ │ │           0x00007fc7cc662a12:   cmp    %ebx,%r8d
              │ │ │           0x00007fc7cc662a15:   jae    0x00007fc7cc663228
   0.73%      │ │ │           0x00007fc7cc662a1b:   mov    %r8d,%ebp                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
              │ │ │                                                                     ; - java.lang.String::checkIndex@5 (line 4828)
              │ │ │                                                                     ; - java.lang.StringLatin1::charAt@3 (line 46)
              │ │ │                                                                     ; - java.lang.String::charAt@12 (line 1555)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │ │ │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.00%      │ │ │           0x00007fc7cc662a1e:   xchg   %ax,%ax
   0.09%      │ │ │           0x00007fc7cc662a20:   cmp    %ebx,%ebp
              │ │ │           0x00007fc7cc662a22:   jae    0x00007fc7cc663264
   0.15%      │ │ │           0x00007fc7cc662a28:   lea    (%r12,%rcx,8),%r9            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │ │ │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.60%      │ │ │           0x00007fc7cc662a2c:   movzbl 0x10(%r9,%rbp,1),%ecx        ;*iand {reexecute=0 rethrow=0 return_oop=0}
              │ │ │                                                                     ; - java.lang.StringLatin1::charAt@12 (line 47)
              │ │ │                                                                     ; - java.lang.String::charAt@12 (line 1555)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │ │ │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.06%      │ │ │           0x00007fc7cc662a32:   xor    %ebx,%ebx                    ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@29 (line 43)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │ │ │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │ │ │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.09%      │ ↘ │           0x00007fc7cc662a34:   test   %ebx,%ebx
   0.16%      │   │           0x00007fc7cc662a36:   movabs $0x7ffc034e0,%rbx            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.93%      │   │           0x00007fc7cc662a40:   movabs $0x7ff072ea8,%r9             ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
   0.01%      │   │           0x00007fc7cc662a4a:   cmovne %r9,%rbx                     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │   │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.11%      │   │           0x00007fc7cc662a4e:   mov    0x8(%rbx),%r9d               ;*invokevirtual getType {reexecute=0 rethrow=0 return_oop=0}
              │   │                                                                     ; - java.lang.Character::getType@5 (line 11557)
              │   │                                                                     ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
              │   │                                                                     ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@32 (line 43)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
              │   │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
              │   │                                                                     ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.51%      │   │           0x00007fc7cc662a52:   data16 nopw 0x0(%rax,%rax,1)
   0.76%      │   │           0x00007fc7cc662a5c:   data16 data16 xchg %ax,%ax
   0.02%      │   │           0x00007fc7cc662a60:   cmp    $0x2f110,%r9d                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
              │   │           0x00007fc7cc662a67:   jne    0x00007fc7cc662df5
   0.22%      │   │           0x00007fc7cc662a6d:   cmp    $0x100,%ecx
              │   │           0x00007fc7cc662a73:   jae    0x00007fc7cc663184
   0.18%      │   │           0x00007fc7cc662a79:   movabs $0x7ffc034f0,%r9             ;   {oop([I{0x00000007ffc034f0})}
   0.74%      │   │           0x00007fc7cc662a83:   mov    0x10(%r9,%rcx,4),%eax
   0.28%      │   │           0x00007fc7cc662a88:   and    $0x1f,%eax
   0.41%      │   │           0x00007fc7cc662a8b:   mov    $0x23e,%r9d
   0.06%      │   │           0x00007fc7cc662a91:   sarx   %eax,%r9d,%ecx
   0.80%      │   │           0x00007fc7cc662a96:   test   $0x1,%cl
              │  ╭│           0x00007fc7cc662a99:   jne    0x00007fc7cc662aa9
   1.09%      │  ││           0x00007fc7cc662a9b:   dec    %r8d
   0.89%      │  ││           0x00007fc7cc662a9e:   xchg   %ax,%ax
   0.00%      │  ││           0x00007fc7cc662aa0:   cmp    %r11d,%r8d
              │  │╰           0x00007fc7cc662aa3:   jg     0x00007fc7cc6629dc
   0.85%      ↘  ↘            0x00007fc7cc662aa9:   cmp    %r8d,%r11d
                              0x00007fc7cc662aac:   jge    0x00007fc7cc663057
   0.68%                      0x00007fc7cc662ab2:   movsbl 0x10(%r12,%r10,8),%eax       ; implicit exception: dispatches to 0x00007fc7cc663648
                                                                                        ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.37%                      0x00007fc7cc662ab8:   mov    0x14(%r12,%r10,8),%ecx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.lang.String::charAt@8 (line 1555)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@59 (line 49)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.46%                      0x00007fc7cc662abd:   data16 xchg %ax,%ax
   0.13%                      0x00007fc7cc662ac0:   test   %eax,%eax
                   ╭          0x00007fc7cc662ac2:   je     0x00007fc7cc662afa
   0.11%           │          0x00007fc7cc662ac8:   mov    0xc(%r12,%rcx,8),%ebp        ; implicit exception: dispatches to 0x00007fc7cc6636c0
   0.06%           │          0x00007fc7cc662acd:   sar    %ebp
   0.09%           │          0x00007fc7cc662acf:   cmp    %ebp,%r11d
                   │          0x00007fc7cc662ad2:   jae    0x00007fc7cc6634c4
   0.01%           │          0x00007fc7cc662ad8:   mov    %r11d,%r9d
   0.08%           │          0x00007fc7cc662adb:   lea    (%r12,%rcx,8),%rbx           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                   │                                                                    ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.00%           │          0x00007fc7cc662adf:   movzwl 0x10(%rbx,%r9,2),%edx        ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
                   │                                                                    ; - java.lang.StringUTF16::charAt@7 (line 1419)
                   │                                                                    ; - java.lang.String::charAt@21 (line 1557)
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@59 (line 49)
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                   │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                   │                                                                    ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.06%           │          0x00007fc7cc662ae5:   mov    %edx,%ebx
   0.02%           │          0x00007fc7cc662ae7:   shr    $0x8,%ebx
   0.09%           │          0x00007fc7cc662aea:   test   %ebx,%ebx
                   │╭         0x00007fc7cc662aec:   je     0x00007fc7cc662b23
                   ││         0x00007fc7cc662aee:   movabs $0x7ff072ea8,%rsi            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
                   ││╭        0x00007fc7cc662af8:   jmp    0x00007fc7cc662b2d           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                   │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                   │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                   │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                   │││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                   │││                                                                  ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.09%           ↘││        0x00007fc7cc662afa:   nopw   0x0(%rax,%rax,1)
   0.01%            ││        0x00007fc7cc662b00:   mov    0xc(%r12,%rcx,8),%ebx        ; implicit exception: dispatches to 0x00007fc7cc663660
   0.62%            ││        0x00007fc7cc662b05:   cmp    %ebx,%r11d
                    ││        0x00007fc7cc662b08:   jae    0x00007fc7cc663344
   0.26%            ││        0x00007fc7cc662b0e:   mov    %r11d,%ebp                   ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                  ; - java.lang.String::checkIndex@5 (line 4828)
                    ││                                                                  ; - java.lang.StringLatin1::charAt@3 (line 46)
                    ││                                                                  ; - java.lang.String::charAt@12 (line 1555)
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@59 (line 49)
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                    ││                                                                  ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.04%            ││        0x00007fc7cc662b11:   cmp    %ebx,%ebp
                    ││        0x00007fc7cc662b13:   jae    0x00007fc7cc663380
   0.03%            ││        0x00007fc7cc662b19:   lea    (%r12,%rcx,8),%r9            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                    ││                                                                  ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.31%            ││        0x00007fc7cc662b1d:   movzbl 0x10(%r9,%rbp,1),%edx        ;*invokevirtual charAt {reexecute=0 rethrow=0 return_oop=0}
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@59 (line 49)
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                    ││                                                                  ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                    ││                                                                  ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.20%            ↘│        0x00007fc7cc662b23:   movabs $0x7ffc034e0,%rsi            ;   {oop(a &apos;java/lang/CharacterDataLatin1&apos;{0x00000007ffc034e0})}
   0.09%             ↘        0x00007fc7cc662b2d:   mov    0x8(%rsi),%r9d
   0.06%                      0x00007fc7cc662b31:   lea    (%r12,%r10,8),%rbx
   0.41%                      0x00007fc7cc662b35:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.20%                      0x00007fc7cc662b40:   cmp    $0x2f110,%r9d                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
                              0x00007fc7cc662b47:   jne    0x00007fc7cc662e95
   0.08%                      0x00007fc7cc662b4d:   cmp    $0x41,%edx
                              0x00007fc7cc662b50:   jl     0x00007fc7cc662fbc
   0.07%                      0x00007fc7cc662b56:   mov    %edx,%r9d
   0.46%                      0x00007fc7cc662b59:   or     $0x20,%r9d
   0.23%                      0x00007fc7cc662b5d:   data16 xchg %ax,%ax
   0.11%                      0x00007fc7cc662b60:   cmp    $0x7a,%r9d
                              0x00007fc7cc662b64:   jg     0x00007fc7cc663085
   0.06%                      0x00007fc7cc662b6a:   test   %eax,%eax
                      ╭       0x00007fc7cc662b6c:   je     0x00007fc7cc662bb2
   0.08%              │       0x00007fc7cc662b72:   test   %ecx,%ecx
                      │       0x00007fc7cc662b74:   je     0x00007fc7cc66353c
   0.00%              │       0x00007fc7cc662b7a:   mov    0xc(%r12,%rcx,8),%ebp
   0.07%              │       0x00007fc7cc662b7f:   sar    %ebp
   0.02%              │       0x00007fc7cc662b81:   cmp    %ebp,%r8d
                      │       0x00007fc7cc662b84:   jae    0x00007fc7cc6634fc
   0.10%              │       0x00007fc7cc662b8a:   mov    %r8d,%esi
   0.01%              │       0x00007fc7cc662b8d:   shl    $0x3,%rcx                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                      │                                                                 ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.07%              │       0x00007fc7cc662b91:   movzwl 0x10(%rcx,%rsi,2),%edx       ;*invokestatic getChar {reexecute=0 rethrow=0 return_oop=0}
                      │                                                                 ; - java.lang.StringUTF16::charAt@7 (line 1419)
                      │                                                                 ; - java.lang.String::charAt@21 (line 1557)
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@67 (line 49)
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                      │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                      │                                                                 ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.01%              │       0x00007fc7cc662b96:   mov    %edx,%esi
   0.10%              │       0x00007fc7cc662b98:   shr    $0x8,%esi
                      │       0x00007fc7cc662b9b:   test   %esi,%esi
   0.07%              │       0x00007fc7cc662b9d:   data16 xchg %ax,%ax
   0.01%              │╭      0x00007fc7cc662ba0:   je     0x00007fc7cc662bdd
                      ││      0x00007fc7cc662ba6:   movabs $0x7ff072ea8,%rdi            ;   {oop(a &apos;java/lang/CharacterData00&apos;{0x00000007ff072ea8})}
                      ││╭     0x00007fc7cc662bb0:   jmp    0x00007fc7cc662bdd
   0.35%              ↘││     0x00007fc7cc662bb2:   test   %ecx,%ecx
                       ││     0x00007fc7cc662bb4:   je     0x00007fc7cc66342c           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                       ││                                                               ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.28%               ││     0x00007fc7cc662bba:   mov    0xc(%r12,%rcx,8),%edx        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                       ││                                                               ; - java.lang.StringLatin1::charAt@2 (line 46)
                       ││                                                               ; - java.lang.String::charAt@12 (line 1555)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@67 (line 49)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                       ││                                                               ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.03%               ││     0x00007fc7cc662bbf:   nop
   0.02%               ││     0x00007fc7cc662bc0:   cmp    %edx,%r8d
                       ││     0x00007fc7cc662bc3:   jae    0x00007fc7cc6633b4
   0.37%               ││     0x00007fc7cc662bc9:   mov    %r8d,%ebp                    ;*invokestatic checkIndex {reexecute=0 rethrow=0 return_oop=0}
                       ││                                                               ; - java.lang.String::checkIndex@5 (line 4828)
                       ││                                                               ; - java.lang.StringLatin1::charAt@3 (line 46)
                       ││                                                               ; - java.lang.String::charAt@12 (line 1555)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@67 (line 49)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                       ││                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                       ││                                                               ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.22%               ││     0x00007fc7cc662bcc:   cmp    %edx,%ebp
                       ││     0x00007fc7cc662bce:   jae    0x00007fc7cc6633f4
   0.07%               ││     0x00007fc7cc662bd4:   shl    $0x3,%rcx
   0.01%               ││     0x00007fc7cc662bd8:   movzbl 0x10(%rcx,%rbp,1),%edx
   0.44%               ↘↘     0x00007fc7cc662bdd:   mov    0x8(%rdi),%ecx
   0.23%                      0x00007fc7cc662be0:   cmp    $0x2f110,%ecx                ;   {metadata(&apos;java/lang/CharacterDataLatin1&apos;)}
                              0x00007fc7cc662be6:   jne    0x00007fc7cc662f4d
   0.16%                      0x00007fc7cc662bec:   cmp    $0x41,%edx
                              0x00007fc7cc662bef:   jl     0x00007fc7cc662fc5
   0.10%                      0x00007fc7cc662bf5:   mov    %edx,%eax
   0.40%                      0x00007fc7cc662bf7:   or     $0x20,%eax
   0.10%                      0x00007fc7cc662bfa:   nopw   0x0(%rax,%rax,1)
   0.12%                      0x00007fc7cc662c00:   cmp    $0x7a,%eax
                              0x00007fc7cc662c03:   jg     0x00007fc7cc6630a6
   0.14%                      0x00007fc7cc662c09:   movzwl %ax,%ecx
   0.42%                      0x00007fc7cc662c0c:   cmp    %ecx,%r9d                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
                              0x00007fc7cc662c0f:   jne    0x00007fc7cc6630c5           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@19 (line 41)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.23%                      0x00007fc7cc662c15:   mov    0x1b8(%r15),%rax
   0.13%                      0x00007fc7cc662c1c:   mov    %rax,%r9
   0.02%                      0x00007fc7cc662c1f:   add    $0x20,%r9
   0.43%                      0x00007fc7cc662c23:   inc    %r11d                        ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.23%                      0x00007fc7cc662c26:   dec    %r8d
   0.14%                      0x00007fc7cc662c29:   cmp    0x1c8(%r15),%r9
                              0x00007fc7cc662c30:   jae    0x00007fc7cc6630e5           ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@19 (line 41)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.03%                      0x00007fc7cc662c36:   mov    %r9,0x1b8(%r15)
   0.45%                      0x00007fc7cc662c3d:   prefetchw 0xc0(%r9)
   0.34%                      0x00007fc7cc662c45:   movq   $0x1,(%rax)
   0.65%                      0x00007fc7cc662c4c:   movl   $0x102b6c0,0x8(%rax)         ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/palindrome/trampoline/TrampolinePredicate$$Lambda+0x00007fc75402b6c0&apos;)}
   0.04%                      0x00007fc7cc662c53:   mov    %r12d,0xc(%rax)
   0.69%                      0x00007fc7cc662c57:   mov    %r12d,0x10(%rax)
   0.37%                      0x00007fc7cc662c5b:   mov    %r12d,0x1c(%rax)             ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                                        ; - java.lang.invoke.LambdaForm$DMH/0x00007fc754080800::newInvokeSpecial@1
                                                                                        ; - java.lang.invoke.LambdaForm$MH/0x00007fc754081000::linkToTargetMethod@9
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@100 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.23%                      0x00007fc7cc662c5f:   mov    %r13d,0x14(%rax)             ;*putfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::&lt;init&gt;@6
                                                                                        ; - java.lang.invoke.LambdaForm$DMH/0x00007fc754080800::newInvokeSpecial@24
                                                                                        ; - java.lang.invoke.LambdaForm$MH/0x00007fc754081000::linkToTargetMethod@9
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@100 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.14%                      0x00007fc7cc662c63:   mov    %r10d,0x18(%rax)             ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                                        ; - java.lang.invoke.LambdaForm$DMH/0x00007fc754080800::newInvokeSpecial@1
                                                                                        ; - java.lang.invoke.LambdaForm$MH/0x00007fc754081000::linkToTargetMethod@9
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@100 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.53%                      0x00007fc7cc662c67:   mov    %r8d,0x10(%rax)              ;*putfield arg$4 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::&lt;init&gt;@22
                                                                                        ; - java.lang.invoke.LambdaForm$DMH/0x00007fc754080800::newInvokeSpecial@24
                                                                                        ; - java.lang.invoke.LambdaForm$MH/0x00007fc754081000::linkToTargetMethod@9
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@100 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.18%                      0x00007fc7cc662c6b:   mov    %r11d,0xc(%rax)
   0.18%                      0x00007fc7cc662c6f:   mov    %rax,%rbp
   0.04%                      0x00007fc7cc662c72:   shr    $0x3,%rbp                    ;*goto {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@19 (line 41)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.36%                      0x00007fc7cc662c76:   data16 nopw 0x0(%rax,%rax,1)
   0.15%                      0x00007fc7cc662c80:   cmpb   $0x0,0x40(%r15)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.30%                      0x00007fc7cc662c85:   jne    0x00007fc7cc662fcc           ;*putfield prev {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@43 (line 1469)
   0.03%                      0x00007fc7cc662c8b:   mov    0x18(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.48%                      0x00007fc7cc662c90:   mov    %ebp,0x20(%r10)              ;*putfield prev {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@43 (line 1469)
   0.46%                      0x00007fc7cc662c94:   mov    %rbp,%rbx
   0.17%                      0x00007fc7cc662c97:   shl    $0x3,%rbx
   0.02%                      0x00007fc7cc662c9b:   mov    %rbx,%r11
   0.27%                      0x00007fc7cc662c9e:   xor    %r10,%r11
   0.29%                      0x00007fc7cc662ca1:   shr    $0x15,%r11
   0.18%                      0x00007fc7cc662ca5:   test   %r11,%r11
                         ╭    0x00007fc7cc662ca8:   je     0x00007fc7cc662cc9
   0.01%                 │    0x00007fc7cc662caa:   test   %ebp,%ebp
                         │╭   0x00007fc7cc662cac:   je     0x00007fc7cc662cc9
   0.07%                 ││   0x00007fc7cc662cae:   shr    $0x9,%r10
   0.08%                 ││   0x00007fc7cc662cb2:   movabs $0x7fc7de6b2000,%rdi
   0.05%                 ││   0x00007fc7cc662cbc:   add    %r10,%rdi
   0.01%                 ││   0x00007fc7cc662cbf:   nop
   0.07%                 ││   0x00007fc7cc662cc0:   cmpb   $0x2,(%rdi)                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                         ││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                         ││                                                             ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.09%                 ││   0x00007fc7cc662cc3:   jne    0x00007fc7cc663008           ;*putfield prev {reexecute=0 rethrow=0 return_oop=0}
                         ││                                                             ; - java.util.stream.Stream$1::tryAdvance@43 (line 1469)
   0.07%                 ↘↘   0x00007fc7cc662cc9:   mov    0x8(%rsp),%r11d
   0.24%                      0x00007fc7cc662cce:   cmp    $0x35bb40,%r11d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
                                                                                        ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
                              0x00007fc7cc662cd5:   jne    0x00007fc7cc663318
   0.30%                      0x00007fc7cc662cdb:   mov    0x38(%rsp),%rbp              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
   0.28%                      0x00007fc7cc662ce0:   mov    0x10(%rbp),%r10d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
   0.11%                      0x00007fc7cc662ce4:   mov    0x34(%r12,%r10,8),%r11d      ; implicit exception: dispatches to 0x00007fc7cc663604
                                                                                        ;*synchronization entry
                                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@-1 (line 178)
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
   0.40%                      0x00007fc7cc662ce9:   mov    %r11,%rsi
   0.23%                      0x00007fc7cc662cec:   shl    $0x3,%rsi
   0.31%                      0x00007fc7cc662cf0:   mov    %rbx,%rdx
   0.07%                      0x00007fc7cc662cf3:   mov    %rbx,0x8(%rsp)               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
   0.18%                      0x00007fc7cc662cf8:   nop
   0.23%                      0x00007fc7cc662cf9:   movabs $0xffffffffffffffff,%rax
   0.30%                      0x00007fc7cc662d03:   call   0x00007fc7cc0c4680           ; ImmutableOopMap {rbp=Oop [8]=Oop }
                                                                                        ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
                                                                                        ;   {virtual_call}
   0.27%                      0x00007fc7cc662d08:   nopl   0x778(%rax,%rax,1)           ;   {other}
   0.02%                      0x00007fc7cc662d10:   test   %eax,%eax                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
                           ╭  0x00007fc7cc662d12:   jne    0x00007fc7cc662d2c           ;*return {reexecute=0 rethrow=0 return_oop=0}
                           │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@26 (line 180)
                           │                                                            ; - java.util.stream.Stream$1::tryAdvance@46 (line 1469)
   0.02%                   │  0x00007fc7cc662d14:   mov    $0x1,%eax
   0.56%                   │  0x00007fc7cc662d19:   add    $0x50,%rsp
   0.16%                   │  0x00007fc7cc662d1d:   pop    %rbp
   0.03%                   │  0x00007fc7cc662d1e:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                           │  0x00007fc7cc662d25:   ja     0x00007fc7cc66370f
   0.70%                   │  0x00007fc7cc662d2b:   ret    
                           ↘  0x00007fc7cc662d2c:   mov    0xc(%rbp),%r11d
                              0x00007fc7cc662d30:   mov    %r11,%rsi
                              0x00007fc7cc662d33:   shl    $0x3,%rsi
                              0x00007fc7cc662d37:   mov    0x8(%rsp),%rdx               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome@50 (line 47)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::lambda$isPalindrome$0@4 (line 54)
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate$$Lambda/0x00007fc75402b6c0::jump@16
                                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda/0x00007fc75402b228::apply@4
                                                                                        ; - java.util.stream.Stream$1::tryAdvance@20 (line 1464)
                              0x00007fc7cc662d3c:   nop
....................................................................................................
  66.56%  <total for region 1>

....[Hottest Regions]...............................................................................
  66.56%         c2, level 4  java.util.stream.Stream$1::tryAdvance, version 4, compile id 685 
   9.20%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::test, version 2, compile id 846 
   7.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda.0x00007fc75402b478::test, version 2, compile id 602 
   2.89%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 878 
   2.61%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 618 
   1.54%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 655 
   0.79%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.78%              kernel  [unknown] 
   0.53%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 878 
   0.50%              kernel  [unknown] 
   0.38%              kernel  [unknown] 
   0.35%         c2, level 4  java.util.stream.Stream$1::tryAdvance, version 4, compile id 685 
   0.34%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.32%              kernel  [unknown] 
   0.30%              kernel  [unknown] 
   0.29%              kernel  [unknown] 
   0.25%              kernel  [unknown] 
   0.22%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 655 
   0.20%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 837 
   0.13%        libc-2.31.so  __memmove_avx_unaligned_erms 
   4.20%  <...other 767 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.93%         c2, level 4  java.util.stream.Stream$1::tryAdvance, version 4, compile id 685 
   9.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::test, version 2, compile id 846 
   7.61%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline$$Lambda.0x00007fc75402b478::test, version 2, compile id 602 
   4.77%              kernel  [unknown] 
   3.47%         c2, level 4  java.lang.AbstractStringBuilder::append, version 2, compile id 878 
   2.72%         c2, level 4  java.io.BufferedReader::implReadLine, version 4, compile id 618 
   1.77%         c2, level 4  sun.nio.cs.UTF_8$Decoder::decodeArrayLoop, version 4, compile id 655 
   0.81%        runtime stub  StubRoutines::jbyte_disjoint_arraycopy 
   0.34%        runtime stub  StubRoutines::jlong_disjoint_arraycopy 
   0.34%         c2, level 4  java.lang.String::decodeASCII, version 2, compile id 837 
   0.14%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.10%         c2, level 4  java.lang.CharacterData00::getProperties, version 2, compile id 672 
   0.09%         c2, level 4  java.util.Iterator::forEachRemaining, version 2, compile id 939 
   0.08%                      <unknown> 
   0.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::palindromes, version 2, compile id 1010 
   0.08%         c2, level 4  java.io.InputStreamReader::read, version 2, compile id 893 
   0.06%           libjvm.so  ThreadInVMfromNative::ThreadInVMfromNative 
   0.06%         c2, level 4  java.lang.StringUTF16::putChars, version 4, compile id 712 
   0.05%           libjvm.so  jni_GetObjectField 
   0.05%         c2, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 993 
   1.16%  <...other 197 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  92.72%         c2, level 4
   4.77%              kernel
   1.16%        runtime stub
   0.68%           libjvm.so
   0.29%        libc-2.31.so
   0.10%  libpthread-2.31.so
   0.08%                    
   0.06%    Unknown, level 0
   0.05%          libjava.so
   0.03%         interpreter
   0.03%    perf-1945301.map
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:27

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

Benchmark                           Mode  Cnt  Score   Error  Units
PalindromeBenchmark.functional      avgt    5  3.447 ± 0.009  ms/op
PalindromeBenchmark.functional:asm  avgt         NaN            ---
PalindromeBenchmark.iterative       avgt    5  1.140 ± 0.003  ms/op
PalindromeBenchmark.iterative:asm   avgt         NaN            ---
PalindromeBenchmark.recursive       avgt    5  1.390 ± 0.001  ms/op
PalindromeBenchmark.recursive:asm   avgt         NaN            ---
PalindromeBenchmark.trampoline      avgt    5  1.994 ± 0.005  ms/op
PalindromeBenchmark.trampoline:asm  avgt         NaN            ---
