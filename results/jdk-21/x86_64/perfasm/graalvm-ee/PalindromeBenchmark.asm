# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
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
# Warmup Iteration   1: 4.915 ms/op
# Warmup Iteration   2: 1.613 ms/op
# Warmup Iteration   3: 1.375 ms/op
# Warmup Iteration   4: 1.373 ms/op
# Warmup Iteration   5: 1.373 ms/op
Iteration   1: 1.371 ms/op
Iteration   2: 1.373 ms/op
Iteration   3: 1.373 ms/op
Iteration   4: 1.371 ms/op
Iteration   5: 1.372 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional":
  1.372 ±(99.9%) 0.004 ms/op [Average]
  (min, avg, max) = (1.371, 1.372, 1.373), stdev = 0.001
  CI (99.9%): [1.368, 1.376] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.functional:asm":
PrintAssembly processed: 420489 total address lines.
Perf output processed (skipped 62.558 seconds):
 Column 1: cycles (50989 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 

                                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
                  0x00007f03dee032af:   data16 data16 nopw 0x0(%rax,%rax,1)
                  0x00007f03dee032ba:   data16 data16 xchg %ax,%ax
                  0x00007f03dee032be:   xchg   %ax,%ax
   1.43%   ↗      0x00007f03dee032c0:   mov    %r13d,%esi
   0.81%   │      0x00007f03dee032c3:   or     $0x20,%esi                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
           │                                                                ; - java.lang.Character::toLowerCase@5 (line 10962)
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084498::apply@1
           │                                                                ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
           │                                                                ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
           │                                                                ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │                                                                ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
           │                                                                ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
           │                                                                ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
           │                                                                ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
           │                                                                ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   1.23%   │      0x00007f03dee032c6:   cmp    $0x7b,%esi
           │      0x00007f03dee032c9:   jae    0x00007f03dee035fa           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
           │                                                                ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
           │                                                                ; - java.lang.Character::toLowerCase@5 (line 10962)
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084498::apply@1
           │                                                                ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
           │                                                                ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
           │                                                                ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │                                                                ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
           │                                                                ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
           │                                                                ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
           │                                                                ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
           │                                                                ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
           │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.72%   │      0x00007f03dee032cf:   mov    %esi,%r14d
   1.57%   │   ↗  0x00007f03dee032d2:   mov    $0x1f,%ecx
   0.38%   │   │  0x00007f03dee032d7:   and    0x10(%r10,%r14,4),%cl
   3.78%   │   │  0x00007f03dee032dc:   movzbl %cl,%ecx                     ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
           │   │                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
           │   │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │   │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f03640846b0::test@7
           │   │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │   │                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
           │   │                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
           │   │                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │   │                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
           │   │                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
           │   │                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
           │   │                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
           │   │                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   1.37%   │   │  0x00007f03dee032df:   mov    $0x23e,%esi
   0.60%   │   │  0x00007f03dee032e4:   shr    %cl,%esi                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │   │                                                            ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f03640846b0::test@7
           │   │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │   │                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
           │   │                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
           │   │                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │   │                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
           │   │                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
           │   │                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
           │   │                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
           │   │                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
           │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   3.57%   │   │  0x00007f03dee032e6:   test   $0x1,%esi
          ╭│   │  0x00007f03dee032ec:   jne    0x00007f03dee0330e           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││   │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@13 (line 178)
          ││   │                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
          ││   │                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          ││   │                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          ││   │                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││   │                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││   │                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││   │                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││   │                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
          ││   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.58%  ││  ↗│  0x00007f03dee032f2:   inc    %ebx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@62 (line 807)
          ││  ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││  ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││  ││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.85%  ││  ││  0x00007f03dee032f4:   cmp    %ebx,%r8d
          ││  ││  0x00007f03dee032f7:   jle    0x00007f03dee03688           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@68 (line 807)
          ││  ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││  ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││  ││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.63%  ││  ││  0x00007f03dee032fd:   movzbl 0x10(%rbx,%r11,8),%r13d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
          ││  ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@56 (line 807)
          ││  ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││  ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││  ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││  ││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
          ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.51%  ││  ││  0x00007f03dee03303:   cmp    $0x41,%r13d
          │╰  ││  0x00007f03dee03307:   jae    0x00007f03dee032c0
   1.18%  │ ╭ ││  0x00007f03dee03309:   jmp    0x00007f03dee03340           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │ │ ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          │ │ ││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084498::apply@1
          │ │ ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
          │ │ ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
          │ │ ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │ │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │ │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │ │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │ │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │ │ ││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
          │ │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.28%  ↘ │ ││  0x00007f03dee0330e:   mov    0xc(%rdi),%ecx               ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@4 (line 240)
            │ ││                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
            │ ││                                                            ; - java.lang.StringBuilder::append@2 (line 246)
            │ ││                                                            ; - java.lang.StringBuilder::append@-3
            │ ││                                                            ; - java.lang.StringBuilder::append@2 (line 91)
            │ ││                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
            │ ││                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
            │ ││                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │ ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            │ ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │ ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
            │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            │ ││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.65%    │ ││  0x00007f03dee03311:   mov    %ebp,%eax
   0.36%    │ ││  0x00007f03dee03313:   inc    %eax                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - java.lang.AbstractStringBuilder::append@35 (line 808)
            │ ││                                                            ; - java.lang.StringBuilder::append@2 (line 246)
            │ ││                                                            ; - java.lang.StringBuilder::append@-3
            │ ││                                                            ; - java.lang.StringBuilder::append@2 (line 91)
            │ ││                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
            │ ││                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
            │ ││                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │ ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            │ ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │ ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
            │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            │ ││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.44%    │ ││  0x00007f03dee03315:   mov    %eax,%esi
   0.32%    │ ││  0x00007f03dee03317:   sub    %ecx,%esi                    ;*isub {reexecute=0 rethrow=0 return_oop=0}
            │ ││                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@13 (line 241)
            │ ││                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
            │ ││                                                            ; - java.lang.StringBuilder::append@2 (line 246)
            │ ││                                                            ; - java.lang.StringBuilder::append@-3
            │ ││                                                            ; - java.lang.StringBuilder::append@2 (line 91)
            │ ││                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
            │ ││                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
            │ ││                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │ ││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            │ ││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            │ ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
            │ ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
            │ ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            │ ││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
            │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.65%    │ ││  0x00007f03dee03319:   nopl   0x0(%rax)
   0.38%    │ ││  0x00007f03dee03320:   cmp    $0x1,%esi
            │╭││  0x00007f03dee03323:   jge    0x00007f03dee03345           ;*ifle {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@14 (line 241)
            ││││                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
            ││││                                                            ; - java.lang.StringBuilder::append@2 (line 246)
            ││││                                                            ; - java.lang.StringBuilder::append@-3
            ││││                                                            ; - java.lang.StringBuilder::append@2 (line 91)
            ││││                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
            ││││                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
            ││││                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            ││││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            ││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            ││││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            ││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            ││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
            ││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
            ││││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
            ││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            ││││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.43%    ││││  0x00007f03dee03329:   cmp    %ebp,%ecx
            ││││  0x00007f03dee0332b:   jbe    0x00007f03dee056a5
   0.33%    ││││  0x00007f03dee03331:   mov    %r14b,0x10(%rdi,%rbp,1)      ;*bastore {reexecute=0 rethrow=0 return_oop=0}
            ││││                                                            ; - java.lang.AbstractStringBuilder::append@41 (line 808)
            ││││                                                            ; - java.lang.StringBuilder::append@2 (line 246)
            ││││                                                            ; - java.lang.StringBuilder::append@-3
            ││││                                                            ; - java.lang.StringBuilder::append@2 (line 91)
            ││││                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
            ││││                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
            ││││                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
            ││││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            ││││                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
            ││││                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            ││││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            ││││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
            ││││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
            ││││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
            ││││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            ││││                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
            ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.69%    ││││  0x00007f03dee03336:   mov    %eax,%ebp
   0.37%    ││╰│  0x00007f03dee03338:   jmp    0x00007f03dee032f2
            ││ │  0x00007f03dee0333a:   nopw   0x0(%rax,%rax,1)             ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││ │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
            ││ │                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
            ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084498::apply@1
            ││ │                                                            ; - java.util.stream.IntPipeline$1$1::accept@12 (line 180)
            ││ │                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
            ││ │                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
            ││ │                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
            ││ │                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
            ││ │                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
            ││ │                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
            ││ │                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
            ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   2.31%    ↘│ │  0x00007f03dee03340:   mov    %r13d,%r14d
   0.09%     │ ╰  0x00007f03dee03343:   jmp    0x00007f03dee032d2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │                                                              ; - jdk.internal.util.ArraysSupport::newLength@10 (line 741)
             │                                                              ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 263)
             │                                                              ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
             │                                                              ; - java.lang.AbstractStringBuilder::append@7 (line 806)
             │                                                              ; - java.lang.StringBuilder::append@2 (line 246)
             │                                                              ; - java.lang.StringBuilder::append@-3
             │                                                              ; - java.lang.StringBuilder::append@2 (line 91)
             │                                                              ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
             │                                                              ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
             │                                                              ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
             │                                                              ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
             │                                                              ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
             │                                                              ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
             │                                                              ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
             │                                                              ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
             │                                                              ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
             │                                                              ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
             │                                                              ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
             │                                                              ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
             │                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.00%     ↘    0x00007f03dee03345:   lea    0x2(%rcx),%edx               ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.AbstractStringBuilder::newCapacity@28 (line 263)
                                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                            ; - java.lang.StringBuilder::append@2 (line 246)
                                                                            ; - java.lang.StringBuilder::append@-3
                                                                            ; - java.lang.StringBuilder::append@2 (line 91)
                                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
                                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
                                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
                                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
                                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.01%          0x00007f03dee03348:   cmp    %esi,%edx
                  0x00007f03dee0334a:   cmovg  %edx,%esi                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.Math::max@2 (line 2020)
                                                                            ; - jdk.internal.util.ArraysSupport::newLength@3 (line 740)
                                                                            ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 263)
                                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                            ; - java.lang.StringBuilder::append@2 (line 246)
                                                                            ; - java.lang.StringBuilder::append@-3
                                                                            ; - java.lang.StringBuilder::append@2 (line 91)
                                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
                                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
                                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
                                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
                                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
                  0x00007f03dee0334d:   add    %ecx,%esi                    ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.util.ArraysSupport::newLength@6 (line 740)
                                                                            ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 263)
                                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                            ; - java.lang.StringBuilder::append@2 (line 246)
                                                                            ; - java.lang.StringBuilder::append@-3
                                                                            ; - java.lang.StringBuilder::append@2 (line 91)
                                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
                                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
                                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
                                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
                                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
                  0x00007f03dee0334f:   mov    %esi,%edx
   0.00%          0x00007f03dee03351:   dec    %edx                         ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.util.ArraysSupport::newLength@10 (line 741)
                                                                            ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 263)
                                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                            ; - java.lang.StringBuilder::append@2 (line 246)
                                                                            ; - java.lang.StringBuilder::append@-3
                                                                            ; - java.lang.StringBuilder::append@2 (line 91)
                                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
                                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
                                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
                                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
                                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
                  0x00007f03dee03353:   cmp    $0x7ffffff7,%edx
                  0x00007f03dee03359:   jae    0x00007f03dee0566a           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - jdk.internal.util.ArraysSupport::newLength@16 (line 741)
                                                                            ; - java.lang.AbstractStringBuilder::newCapacity@29 (line 263)
                                                                            ; - java.lang.AbstractStringBuilder::ensureCapacityInternal@24 (line 243)
                                                                            ; - java.lang.AbstractStringBuilder::append@7 (line 806)
                                                                            ; - java.lang.StringBuilder::append@2 (line 246)
                                                                            ; - java.lang.StringBuilder::append@-3
                                                                            ; - java.lang.StringBuilder::append@2 (line 91)
                                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
                                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
                                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
                                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
                                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
   0.00%          0x00007f03dee0335f:   nop
                  0x00007f03dee03360:   cmp    %ebp,%esi
                  0x00007f03dee03362:   jbe    0x00007f03dee05916           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                            ; - java.lang.AbstractStringBuilder::append@41 (line 808)
                                                                            ; - java.lang.StringBuilder::append@2 (line 246)
                                                                            ; - java.lang.StringBuilder::append@-3
                                                                            ; - java.lang.StringBuilder::append@2 (line 91)
                                                                            ; - java.lang.AbstractStringBuilder::appendCodePoint@10 (line 961)
                                                                            ; - java.lang.StringBuilder::appendCodePoint@2 (line 280)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda/0x00007f0364084b10::accept@11
                                                                            ; - java.util.stream.ReduceOps$4ReducingSink::accept@9 (line 220)
                                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                            ; - java.util.stream.IntPipeline$1$1::accept@17 (line 180)
                                                                            ; - java.lang.StringLatin1$CharsSpliterator::forEachRemaining@57 (line 807)
                                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                            ; - java.util.stream.ReferencePipeline::collect@7 (line 693)
                                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome@39 (line 40)
                  0x00007f03dee03368:   mov    %ebx,0x60(%rsp)
   0.00%          0x00007f03dee0336c:   mov    0x1b8(%r15),%rdx
                  0x00007f03dee03373:   mov    %esi,%ebx
                  0x00007f03dee03375:   lea    0x17(%rbx),%rbx
                  0x00007f03dee03379:   and    $0xfffffffffffffff8,%rbx
                  0x00007f03dee0337d:   mov    %rbx,%r11
                  0x00007f03dee03380:   add    %rdx,%r11
                  0x00007f03dee03383:   cmp    0x1c8(%r15),%r11
                  0x00007f03dee0338a:   ja     0x00007f03dee03645
                  0x00007f03dee03390:   mov    %r11,0x1b8(%r15)             ;   {no_reloc}
                  0x00007f03dee03397:   prefetchw 0xc0(%rbx,%rdx,1)
   0.01%          0x00007f03dee0339f:   prefetchw 0x100(%rbx,%rdx,1)
....................................................................................................
  26.54%  <total for region 1>

....[Hottest Regions]...............................................................................
  26.54%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
   9.80%      jvmci, level 4  java.util.stream.ReduceOps$4ReducingSink::accept, version 2, compile id 1067 
   9.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f03640846b0::test, version 2, compile id 1059 
   7.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
   6.51%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 2, compile id 1508 
   4.55%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 2, compile id 1508 
   4.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
   4.09%      jvmci, level 4  sun.nio.cs.StreamDecoder::implRead, version 6, compile id 1434 
   3.79%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
   3.50%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
   3.18%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
   1.67%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
   0.90%              kernel  [unknown] 
   0.87%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 2, compile id 1508 
   0.86%              kernel  [unknown] 
   0.70%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 2, compile id 1508 
   0.60%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 2, compile id 1508 
   0.57%              kernel  [unknown] 
   0.53%              kernel  [unknown] 
   0.50%      jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1015 
   8.94%  <...other 906 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.74%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate::isPalindrome, version 4, compile id 1403 
  13.70%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 2, compile id 1508 
   9.98%      jvmci, level 4  java.util.stream.ReduceOps$4ReducingSink::accept, version 2, compile id 1067 
   9.56%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.functional.FunctionalPredicate$$Lambda.0x00007f03640846b0::test, version 2, compile id 1059 
   6.22%              kernel  [unknown] 
   4.31%      jvmci, level 4  sun.nio.cs.StreamDecoder::implRead, version 6, compile id 1434 
   0.74%                      <unknown> 
   0.50%      jvmci, level 4  java.lang.AbstractStringBuilder::appendChars, version 3, compile id 1015 
   0.36%        libc-2.31.so  __memset_avx2_erms 
   0.20%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.09%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::functional, version 2, compile id 1509 
   0.09%           libjvm.so  jni_GetObjectField 
   0.07%           libjvm.so  ThreadInVMfromNative::ThreadInVMfromNative 
   0.06%           libjvm.so  jni_SetByteArrayRegion 
   0.06%      jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 1503 
   0.05%           libjvm.so  jni_GetArrayLength 
   0.05%        libc-2.31.so  __fxstat64 
   0.05%      jvmci, level 4  java.lang.StringUTF16::putChars, version 4, compile id 1516 
   0.04%    perf-2138998.map  [unknown] 
   0.03%  libpthread-2.31.so  __libc_read 
   1.10%  <...other 206 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  91.04%      jvmci, level 4
   6.22%              kernel
   0.86%           libjvm.so
   0.74%                    
   0.74%        libc-2.31.so
   0.13%  libpthread-2.31.so
   0.09%          libjava.so
   0.05%         interpreter
   0.05%    Unknown, level 0
   0.04%    perf-2138998.map
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%        runtime stub
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative

# Run progress: 25.00% complete, ETA 00:05:54
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 2.304 ms/op
# Warmup Iteration   2: 1.404 ms/op
# Warmup Iteration   3: 1.470 ms/op
# Warmup Iteration   4: 1.090 ms/op
# Warmup Iteration   5: 1.054 ms/op
Iteration   1: 1.054 ms/op
Iteration   2: 1.058 ms/op
Iteration   3: 1.055 ms/op
Iteration   4: 1.053 ms/op
Iteration   5: 1.053 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative":
  1.055 ±(99.9%) 0.007 ms/op [Average]
  (min, avg, max) = (1.053, 1.055, 1.058), stdev = 0.002
  CI (99.9%): [1.047, 1.062] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.iterative:asm":
PrintAssembly processed: 439722 total address lines.
Perf output processed (skipped 63.362 seconds):
 Column 1: cycles (50986 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 3, compile id 1265 

                                       0x00007f46c2dca2ec:   movabs $0x7fed72748,%r8             ;   {oop([I{0x00000007fed72748})}
                                       0x00007f46c2dca2f6:   movabs $0x7fed6f7f8,%r9             ;   {oop([C{0x00000007fed6f7f8})}
                                       0x00007f46c2dca300:   movabs $0x7fed6e7e8,%rbx            ;   {oop([C{0x00000007fed6e7e8})}
                                       0x00007f46c2dca30a:   movabs $0x7ffc03750,%rdi            ;   {oop([I{0x00000007ffc03750})}
                                       0x00007f46c2dca314:   mov    %esi,%edx
                                       0x00007f46c2dca316:   mov    $0x0,%ecx
          ╭                            0x00007f46c2dca31b:   jmp    0x00007f46c2dca62b           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@0 (line 38)
          │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.42%  │                    ↗       0x00007f46c2dca320:   mov    0x14(%r10),%esi              ; ImmutableOopMap {rbx=Oop rsi=NarrowOop rdi=Oop r8=Oop r9=Oop r10=Oop [8]=Oop [16]=Oop }
          │                    │                                                                 ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                    │                                                                 ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@0 (line 38)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.57%  │                    │       0x00007f46c2dca324:   mov    0xc(,%rsi,8),%eax            ; implicit exception: dispatches to 0x00007f46c2dcaa9d
   2.39%  │                    │       0x00007f46c2dca32b:   movsbl 0x10(%r10),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │                    │                                                                 ; - java.lang.String::isLatin1@7 (line 4817)
          │                    │                                                                 ; - java.lang.String::charAt@1 (line 1554)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   2.06%  │  ↗  ↗ ↗            │       0x00007f46c2dca330:   mov    %ecx,%r13d
   0.11%  │  │  │ │            │       0x00007f46c2dca333:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │  │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@21 (line 40)
          │  │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │  │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.92%  │  │  │ │            │       0x00007f46c2dca336:   cmp    %ecx,%edx
          │  │  │ │            │       0x00007f46c2dca338:   jle    0x00007f46c2dca7cc           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │  │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@7 (line 39)
          │  │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │  │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.76%  │  │  │ │            │       0x00007f46c2dca33e:   xchg   %ax,%ax
   0.54%  │  │  │ │            │       0x00007f46c2dca340:   test   %bpl,%bpl
          │╭ │  │ │            │       0x00007f46c2dca343:   jne    0x00007f46c2dca392           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │            │                                                                 ; - java.lang.String::charAt@4 (line 1554)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.02%  ││ │  │ │            │       0x00007f46c2dca349:   cmp    %ecx,%eax
          ││ │  │ │            │       0x00007f46c2dca34b:   jbe    0x00007f46c2dcaa45           ;* unwind (locked if synchronized)
          ││ │  │ │            │                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
          ││ │  │ │            │                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
          ││ │  │ │            │                                                                 ; - java.lang.StringLatin1::charAt@3 (line 46)
          ││ │  │ │            │                                                                 ; - java.lang.String::charAt@12 (line 1555)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.91%  ││ │  │ │            │       0x00007f46c2dca351:   movzbl 0x10(%rcx,%rsi,8),%r14d
   1.62%  ││ │  │ │            │       0x00007f46c2dca357:   mov    $0x1f,%r10d
   0.43%  ││ │  │ │            │       0x00007f46c2dca35d:   and    0x10(%rdi,%r14,4),%r10b
   4.07%  ││ │  │ │            │       0x00007f46c2dca362:   movzbl %r10b,%r10d                  ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │            │                                                                 ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          ││ │  │ │            │                                                                 ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          ││ │  │ │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          ││ │  │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          ││ │  │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.39%  ││ │  │ │            │       0x00007f46c2dca366:   mov    $0x23e,%r14d
   0.01%  ││ │  │ │            │       0x00007f46c2dca36c:   mov    %ecx,%r11d
   0.19%  ││ │  │ │            │       0x00007f46c2dca36f:   mov    %r10d,%ecx
   0.01%  ││ │  │ │            │       0x00007f46c2dca372:   shr    %cl,%r14d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││ │  │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          ││ │  │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          ││ │  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   3.11%  ││ │  │ │            │       0x00007f46c2dca375:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.03%  ││ │  │ │            │       0x00007f46c2dca380:   test   $0x1,%r14d
          ││╭│  │ │            │       0x00007f46c2dca387:   jne    0x00007f46c2dca478           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          ││││  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@18 (line 39)
          ││││  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          ││││  │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.91%  ││││  │ │            │       0x00007f46c2dca38d:   mov    %r13d,%ecx
   0.20%  │││╰  │ │            │       0x00007f46c2dca390:   jmp    0x00007f46c2dca330           ;* unwind (locked if synchronized)
          │││   │ │            │                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
          │││   │ │            │                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
          │││   │ │            │                                                                 ; - java.lang.StringLatin1::charAt@3 (line 46)
          │││   │ │            │                                                                 ; - java.lang.String::charAt@12 (line 1555)
          │││   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │││   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │││   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.10%  │↘│   │ │            │       0x00007f46c2dca392:   mov    %ecx,%r11d
   0.19%  │ │   │ │            │       0x00007f46c2dca395:   mov    %eax,%ecx
   0.10%  │ │   │ │            │       0x00007f46c2dca397:   shr    %ecx                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │   │ │            │                                                                 ; - java.lang.StringUTF16::length@3 (line 75)
          │ │   │ │            │                                                                 ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
          │ │   │ │            │                                                                 ; - java.lang.StringUTF16::charAt@2 (line 1418)
          │ │   │ │            │                                                                 ; - java.lang.String::charAt@21 (line 1557)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.07%  │ │   │ │            │       0x00007f46c2dca399:   nopl   0x0(%rax)
   0.09%  │ │   │ │            │       0x00007f46c2dca3a0:   cmp    %r11d,%ecx
          │ │   │ │            │       0x00007f46c2dca3a3:   jbe    0x00007f46c2dcaa05           ;* unwind (locked if synchronized)
          │ │   │ │            │                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
          │ │   │ │            │                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
          │ │   │ │            │                                                                 ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
          │ │   │ │            │                                                                 ; - java.lang.StringUTF16::charAt@2 (line 1418)
          │ │   │ │            │                                                                 ; - java.lang.String::charAt@21 (line 1557)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.28%  │ │   │ │            │       0x00007f46c2dca3a9:   mov    %r11d,%ecx
   0.14%  │ │   │ │            │       0x00007f46c2dca3ac:   shl    %ecx
   0.02%  │ │   │ │            │       0x00007f46c2dca3ae:   movswl 0x10(%rcx,%rsi,8),%ecx
   0.60%  │ │   │ │            │       0x00007f46c2dca3b3:   movzwl %cx,%r10d                    ;* unwind (locked if synchronized)
          │ │   │ │            │                                                                 ; - java.lang.StringUTF16::getChar@-3
          │ │   │ │            │                                                                 ; - java.lang.StringUTF16::charAt@7 (line 1419)
          │ │   │ │            │                                                                 ; - java.lang.String::charAt@21 (line 1557)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │   │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.16%  │ │   │ │            │       0x00007f46c2dca3b7:   nopw   0x0(%rax,%rax,1)
   0.15%  │ │   │ │            │       0x00007f46c2dca3c0:   test   $0xffffff00,%r10d
          │ │ ╭ │ │            │       0x00007f46c2dca3c7:   jne    0x00007f46c2dca3fd           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │            │                                                                 ; - java.lang.CharacterData::of@4 (line 78)
          │ │ │ │ │            │                                                                 ; - java.lang.Character::getType@1 (line 11557)
          │ │ │ │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │ │ │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.19%  │ │ │ │ │            │       0x00007f46c2dca3cd:   movzwl %cx,%ecx
   0.08%  │ │ │ │ │            │       0x00007f46c2dca3d0:   mov    $0x1f,%r10d
   0.08%  │ │ │ │ │            │       0x00007f46c2dca3d6:   and    0x10(%rdi,%rcx,4),%r10b
   1.08%  │ │ │ │ │            │       0x00007f46c2dca3db:   movzbl %r10b,%ecx                   ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │            │                                                                 ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          │ │ │ │ │            │                                                                 ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          │ │ │ │ │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │ │ │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │ │ │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │ │ │ │ │            │       0x00007f46c2dca3df:   mov    $0x23e,%r10d
   0.10%  │ │ │ │ │            │       0x00007f46c2dca3e5:   shr    %cl,%r10d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │ │ │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          │ │ │ │ │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │ │ │ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.87%  │ │ │ │ │            │       0x00007f46c2dca3e8:   test   $0x1,%r10d
          │ │ │╭│ │            │       0x00007f46c2dca3ef:   jne    0x00007f46c2dca478           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │ │││ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@18 (line 39)
          │ │ │││ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │ │││ │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.99%  │ │ │││ │            │       0x00007f46c2dca3f5:   mov    %r13d,%ecx
   0.10%  │ │ ││╰ │            │       0x00007f46c2dca3f8:   jmp    0x00007f46c2dca330
   0.05%  │ │ ↘│  │            │       0x00007f46c2dca3fd:   mov    %r10d,%ecx
   0.01%  │ │  │  │            │       0x00007f46c2dca400:   shr    $0x5,%ecx                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@14 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.05%  │ │  │  │            │       0x00007f46c2dca403:   mov    %r10d,%r14d
          │ │  │  │            │       0x00007f46c2dca406:   shr    %r14d                        ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@18 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │ │  │  │            │       0x00007f46c2dca409:   and    $0xf,%r14d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@21 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │ │  │  │            │                                                                 ;   {no_reloc}
          │ │  │  │            │       0x00007f46c2dca40d:   movzwl 0x10(%rbx,%rcx,2),%ecx       ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@15 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%  │ │  │  │            │       0x00007f46c2dca412:   or     %ecx,%r14d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@22 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │ │  │  │            │       0x00007f46c2dca415:   data16 data16 nopw 0x0(%rax,%rax,1)
          │ │  │  │            │       0x00007f46c2dca420:   cmp    $0x17a0,%r14d
          │ │  │  │            │       0x00007f46c2dca427:   jae    0x00007f46c2dca9e8           ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@23 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.02%  │ │  │  │            │       0x00007f46c2dca42d:   and    $0x1,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@26 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │ │  │  │            │       0x00007f46c2dca431:   movzwl 0x10(%r9,%r14,2),%ecx        ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@23 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │ │  │  │            │       0x00007f46c2dca437:   or     %ecx,%r10d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@27 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │ │  │  │            │       0x00007f46c2dca43a:   nopw   0x0(%rax,%rax,1)
          │ │  │  │            │       0x00007f46c2dca440:   cmp    $0x420,%r10d
          │ │  │  │            │       0x00007f46c2dca447:   jae    0x00007f46c2dca8c9
   0.01%  │ │  │  │            │       0x00007f46c2dca44d:   mov    $0x1f,%ecx
          │ │  │  │            │       0x00007f46c2dca452:   and    0x10(%r8,%r10,4),%cl
   0.03%  │ │  │  │            │       0x00007f46c2dca457:   movzbl %cl,%ecx                     ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getProperties@28 (line 73)
          │ │  │  │            │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │ │  │  │            │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │ │  │  │            │       0x00007f46c2dca45a:   mov    $0x23e,%r10d
          │ │  │  │            │       0x00007f46c2dca460:   shr    %cl,%r10d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          │ │  │  │            │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@15 (line 39)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │  │            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%  │ │  │  │            │       0x00007f46c2dca463:   test   $0x1,%r10d
          │ │  │ ╭│            │       0x00007f46c2dca46a:   jne    0x00007f46c2dca478           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │ │  │ ││            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@18 (line 39)
          │ │  │ ││            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │ │  │ ││            │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │ │  │ ││            │       0x00007f46c2dca470:   mov    %r13d,%ecx
   0.01%  │ │  │ │╰            │       0x00007f46c2dca473:   jmp    0x00007f46c2dca330
   1.49%  │ ↘  ↘ ↘             │       0x00007f46c2dca478:   mov    %r13d,0x30(%rsp)
   1.27%  │                    │       0x00007f46c2dca47d:   data16 xchg %ax,%ax                 ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@27 (line 42)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   2.45%  │          ↗  ↗ ↗    │       0x00007f46c2dca480:   cmp    %r11d,%edx
          │          │  │ │    │       0x00007f46c2dca483:   jle    0x00007f46c2dca888           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │          │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@29 (line 42)
          │          │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │          │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.03%  │          │  │ │    │       0x00007f46c2dca489:   mov    %edx,%r10d
   0.50%  │          │  │ │    │       0x00007f46c2dca48c:   dec    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │          │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@43 (line 43)
          │          │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │          │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.32%  │          │  │ │    │       0x00007f46c2dca48f:   test   %bpl,%bpl
          │        ╭ │  │ │    │       0x00007f46c2dca492:   jne    0x00007f46c2dca4d2           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │        │ │  │ │    │                                                                 ; - java.lang.String::charAt@4 (line 1554)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.82%  │        │ │  │ │    │       0x00007f46c2dca498:   cmp    %edx,%eax
          │        │ │  │ │    │       0x00007f46c2dca49a:   jbe    0x00007f46c2dca9b2           ;* unwind (locked if synchronized)
          │        │ │  │ │    │                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
          │        │ │  │ │    │                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
          │        │ │  │ │    │                                                                 ; - java.lang.StringLatin1::charAt@3 (line 46)
          │        │ │  │ │    │                                                                 ; - java.lang.String::charAt@12 (line 1555)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.37%  │        │ │  │ │    │       0x00007f46c2dca4a0:   movzbl 0x10(%rdx,%rsi,8),%ecx
   1.56%  │        │ │  │ │    │       0x00007f46c2dca4a5:   mov    $0x1f,%r14d
   0.15%  │        │ │  │ │    │       0x00007f46c2dca4ab:   and    0x10(%rdi,%rcx,4),%r14b
   3.21%  │        │ │  │ │    │       0x00007f46c2dca4b0:   movzbl %r14b,%ecx                   ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │        │ │  │ │    │                                                                 ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          │        │ │  │ │    │                                                                 ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          │        │ │  │ │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │        │ │  │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │        │ │  │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.50%  │        │ │  │ │    │       0x00007f46c2dca4b4:   mov    $0x23e,%r14d
   0.35%  │        │ │  │ │    │       0x00007f46c2dca4ba:   shr    %cl,%r14d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │        │ │  │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          │        │ │  │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │        │ │  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.88%  │        │ │  │ │    │       0x00007f46c2dca4bd:   data16 xchg %ax,%ax
   0.29%  │        │ │  │ │    │       0x00007f46c2dca4c0:   test   $0x1,%r14d
          │        │╭│  │ │    │       0x00007f46c2dca4c7:   jne    0x00007f46c2dca598           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │        │││  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@40 (line 42)
          │        │││  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │        │││  │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.38%  │        │││  │ │    │       0x00007f46c2dca4cd:   mov    %r10d,%edx
   0.26%  │        ││╰  │ │    │       0x00007f46c2dca4d0:   jmp    0x00007f46c2dca480           ;* unwind (locked if synchronized)
          │        ││   │ │    │                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
          │        ││   │ │    │                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
          │        ││   │ │    │                                                                 ; - java.lang.StringLatin1::charAt@3 (line 46)
          │        ││   │ │    │                                                                 ; - java.lang.String::charAt@12 (line 1555)
          │        ││   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
          │        ││   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │        ││   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.15%  │        ↘│   │ │    │       0x00007f46c2dca4d2:   mov    %eax,%ecx
   0.17%  │         │   │ │    │       0x00007f46c2dca4d4:   shr    %ecx                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │         │   │ │    │                                                                 ; - java.lang.StringUTF16::length@3 (line 75)
          │         │   │ │    │                                                                 ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
          │         │   │ │    │                                                                 ; - java.lang.StringUTF16::charAt@2 (line 1418)
          │         │   │ │    │                                                                 ; - java.lang.String::charAt@21 (line 1557)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.09%  │         │   │ │    │       0x00007f46c2dca4d6:   cmp    %edx,%ecx
          │         │   │ │    │       0x00007f46c2dca4d8:   jbe    0x00007f46c2dca9f8           ;* unwind (locked if synchronized)
          │         │   │ │    │                                                                 ; - jdk.internal.util.Preconditions::checkIndex@-3
          │         │   │ │    │                                                                 ; - java.lang.String::checkIndex@5 (line 4828)
          │         │   │ │    │                                                                 ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
          │         │   │ │    │                                                                 ; - java.lang.StringUTF16::charAt@2 (line 1418)
          │         │   │ │    │                                                                 ; - java.lang.String::charAt@21 (line 1557)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.11%  │         │   │ │    │       0x00007f46c2dca4de:   mov    %edx,%ecx
   0.13%  │         │   │ │    │       0x00007f46c2dca4e0:   shl    %ecx
   0.22%  │         │   │ │    │       0x00007f46c2dca4e2:   movswl 0x10(%rcx,%rsi,8),%ecx
   0.46%  │         │   │ │    │       0x00007f46c2dca4e7:   movzwl %cx,%r14d                    ;* unwind (locked if synchronized)
          │         │   │ │    │                                                                 ; - java.lang.StringUTF16::getChar@-3
          │         │   │ │    │                                                                 ; - java.lang.StringUTF16::charAt@7 (line 1419)
          │         │   │ │    │                                                                 ; - java.lang.String::charAt@21 (line 1557)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │   │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.16%  │         │   │ │    │       0x00007f46c2dca4eb:   test   $0xffffff00,%r14d
          │         │ ╭ │ │    │       0x00007f46c2dca4f2:   jne    0x00007f46c2dca528           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │ │ │ │    │                                                                 ; - java.lang.CharacterData::of@4 (line 78)
          │         │ │ │ │    │                                                                 ; - java.lang.Character::getType@1 (line 11557)
          │         │ │ │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │ │ │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.23%  │         │ │ │ │    │       0x00007f46c2dca4f8:   movzwl %cx,%ecx
   0.18%  │         │ │ │ │    │       0x00007f46c2dca4fb:   mov    $0x1f,%r14d
   0.08%  │         │ │ │ │    │       0x00007f46c2dca501:   and    0x10(%rdi,%rcx,4),%r14b
   0.58%  │         │ │ │ │    │       0x00007f46c2dca506:   movzbl %r14b,%ecx                   ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │ │ │ │    │                                                                 ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          │         │ │ │ │    │                                                                 ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          │         │ │ │ │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │ │ │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │ │ │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │         │ │ │ │    │                                                                 ;   {no_reloc}
   0.15%  │         │ │ │ │    │       0x00007f46c2dca50a:   mov    $0x23e,%r14d
   0.14%  │         │ │ │ │    │       0x00007f46c2dca510:   shr    %cl,%r14d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │         │ │ │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          │         │ │ │ │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │ │ │ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.49%  │         │ │ │ │    │       0x00007f46c2dca513:   test   $0x1,%r14d
          │         │ │╭│ │    │       0x00007f46c2dca51a:   jne    0x00007f46c2dca598           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │ │││ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@40 (line 42)
          │         │ │││ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │ │││ │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.87%  │         │ │││ │    │       0x00007f46c2dca520:   mov    %r10d,%edx
   0.09%  │         │ ││╰ │    │       0x00007f46c2dca523:   jmp    0x00007f46c2dca480
   0.05%  │         │ ↘│  │    │       0x00007f46c2dca528:   mov    %r14d,%ecx
   0.01%  │         │  │  │    │       0x00007f46c2dca52b:   shr    $0x5,%ecx                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@14 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.05%  │         │  │  │    │       0x00007f46c2dca52e:   mov    %r14d,%r13d
          │         │  │  │    │       0x00007f46c2dca531:   shr    %r13d                        ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@18 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │         │  │  │    │       0x00007f46c2dca534:   and    $0xf,%r13d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@21 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │         │  │  │    │       0x00007f46c2dca538:   movzwl 0x10(%rbx,%rcx,2),%ecx       ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@15 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.02%  │         │  │  │    │       0x00007f46c2dca53d:   or     %ecx,%r13d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@22 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%  │         │  │  │    │       0x00007f46c2dca540:   cmp    $0x17a0,%r13d
          │         │  │  │    │       0x00007f46c2dca547:   jae    0x00007f46c2dca956           ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@23 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │         │  │  │    │       0x00007f46c2dca54d:   and    $0x1,%r14d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@26 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │         │  │  │    │       0x00007f46c2dca551:   movzwl 0x10(%r9,%r13,2),%ecx        ;*caload {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@23 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.02%  │         │  │  │    │       0x00007f46c2dca557:   or     %ecx,%r14d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@27 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │         │  │  │    │       0x00007f46c2dca55a:   nopw   0x0(%rax,%rax,1)
          │         │  │  │    │       0x00007f46c2dca560:   cmp    $0x420,%r14d
          │         │  │  │    │       0x00007f46c2dca567:   jae    0x00007f46c2dca90e
   0.01%  │         │  │  │    │       0x00007f46c2dca56d:   mov    $0x1f,%ecx
          │         │  │  │    │       0x00007f46c2dca572:   and    0x10(%r8,%r14,4),%cl
   0.03%  │         │  │  │    │       0x00007f46c2dca577:   movzbl %cl,%ecx                     ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getProperties@28 (line 73)
          │         │  │  │    │                                                                 ; - java.lang.CharacterData00::getType@2 (line 84)
          │         │  │  │    │                                                                 ; - java.lang.Character::getType@5 (line 11557)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.01%  │         │  │  │    │       0x00007f46c2dca57a:   mov    $0x23e,%r13d
          │         │  │  │    │       0x00007f46c2dca580:   shr    %cl,%r13d                    ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
          │         │  │  │    │                                                                 ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@37 (line 42)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │  │    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%  │         │  │  │    │       0x00007f46c2dca583:   test   $0x1,%r13d
          │         │  │ ╭│    │       0x00007f46c2dca58a:   jne    0x00007f46c2dca598           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │         │  │ ││    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@40 (line 42)
          │         │  │ ││    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │ ││    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │         │  │ ││    │       0x00007f46c2dca590:   mov    %r10d,%edx
   0.01%  │         │  │ │╰    │       0x00007f46c2dca593:   jmp    0x00007f46c2dca480           ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │         │  │ │     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@49 (line 45)
          │         │  │ │     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │         │  │ │     │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.76%  │         ↘  ↘ ↘     │       0x00007f46c2dca598:   movsbl %bpl,%ecx                    ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          │                    │                                                                 ; - java.lang.String::isLatin1@7 (line 4817)
          │                    │                                                                 ; - java.lang.String::charAt@1 (line 1554)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   1.56%  │                    │       0x00007f46c2dca59c:   mov    %esi,%r13d
   0.36%  │                    │       0x00007f46c2dca59f:   shl    $0x3,%r13                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                    │                                                                 ; - java.lang.String::charAt@17 (line 1557)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                    │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.49%  │                    │       0x00007f46c2dca5a3:   test   %bpl,%bpl
          │                ╭   │       0x00007f46c2dca5a6:   jne    0x00007f46c2dca638           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                │   │                                                                 ; - java.lang.String::charAt@4 (line 1554)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.07%  │                │   │       0x00007f46c2dca5ac:   cmp    %r11d,%eax
          │                │   │       0x00007f46c2dca5af:   jbe    0x00007f46c2dca95e           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                │   │                                                                 ; - java.lang.StringLatin1::charAt@8 (line 47)
          │                │   │                                                                 ; - java.lang.String::charAt@12 (line 1555)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.45%  │                │   │       0x00007f46c2dca5b5:   movzbl 0x10(%r11,%rsi,8),%esi       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                │   │                                                                 ; - java.lang.StringLatin1::charAt@12 (line 47)
          │                │   │                                                                 ; - java.lang.String::charAt@12 (line 1555)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │   │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.72%  │                │   │       0x00007f46c2dca5bb:   nopl   0x0(%rax,%rax,1)
   0.22%  │                │   │       0x00007f46c2dca5c0:   cmp    $0x41,%esi
          │                │╭  │       0x00007f46c2dca5c3:   jb     0x00007f46c2dca6ae           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                ││  │                                                                 ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          │                ││  │                                                                 ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                ││  │                                                                 ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                ││  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
          │                ││  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                ││  │                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.33%  │                ││  │ ↗     0x00007f46c2dca5c9:   mov    %esi,%eax
   0.54%  │                ││  │ │     0x00007f46c2dca5cb:   or     $0x20,%eax                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                ││  │ │                                                               ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
          │                ││  │ │                                                               ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                ││  │ │                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                ││  │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
          │                ││  │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                ││  │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.56%  │                ││  │ │     0x00007f46c2dca5ce:   cmp    $0x7b,%eax
          │                ││  │ │     0x00007f46c2dca5d1:   jae    0x00007f46c2dca7d4           ; ImmutableOopMap {rbx=Oop rdi=Oop r8=Oop r9=Oop r13=Oop [8]=Oop [16]=Oop }
          │                ││  │ │                                                               ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          │                ││  │ │                                                               ; - (reexecute) java.lang.Character::toLowerCase@8 (line 10962)
          │                ││  │ │                                                               ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                ││  │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
          │                ││  │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                ││  │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.43%  │                ││  │ │ ↗   0x00007f46c2dca5d7:   mov    0xc(%r13),%ebp               ; implicit exception: dispatches to 0x00007f46c2dcaac0
   0.18%  │                ││  │ │ │   0x00007f46c2dca5db:   movzwl %ax,%r14d                    ;*i2c {reexecute=0 rethrow=0 return_oop=0}
          │                ││  │ │ │                                                             ; - java.lang.Character::toLowerCase@4 (line 10933)
          │                ││  │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
          │                ││  │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                ││  │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.46%  │                ││  │ │ │   0x00007f46c2dca5df:   nop
   0.54%  │                ││  │ │ │   0x00007f46c2dca5e0:   test   %ecx,%ecx
          │                ││╭ │ │ │   0x00007f46c2dca5e2:   jne    0x00007f46c2dca670           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                │││ │ │ │                                                             ; - java.lang.String::charAt@4 (line 1554)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.31%  │                │││ │ │ │   0x00007f46c2dca5e8:   cmp    %edx,%ebp
          │                │││ │ │ │   0x00007f46c2dca5ea:   jbe    0x00007f46c2dca9bd           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                │││ │ │ │                                                             ; - java.lang.StringLatin1::charAt@8 (line 47)
          │                │││ │ │ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.11%  │                │││ │ │ │   0x00007f46c2dca5f0:   movzbl 0x10(%r13,%rdx,1),%ecx       ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │                │││ │ │ │                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
          │                │││ │ │ │                                                             ; - java.lang.String::charAt@12 (line 1555)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││ │ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.37%  │                │││ │ │ │   0x00007f46c2dca5f6:   cmp    $0x41,%ecx
          │                │││╭│ │ │   0x00007f46c2dca5f9:   jb     0x00007f46c2dca6b5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
          │                │││││ │ │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
          │                │││││ │ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                │││││ │ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.46%  │                │││││ │ │   0x00007f46c2dca5ff:   mov    %ecx,%esi
   0.22%  │                │││││ │ │   0x00007f46c2dca601:   or     $0x20,%esi                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
          │                │││││ │ │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
          │                │││││ │ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                │││││ │ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.10%  │                │││││ │ │   0x00007f46c2dca604:   cmp    $0x7b,%esi
          │                │││││ │ │   0x00007f46c2dca607:   jae    0x00007f46c2dca826           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
          │                │││││ │ │                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
          │                │││││ │ │                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
          │                │││││ │ │                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││││ │ │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
          │                │││││ │ │                                                             ;   {no_reloc}
   0.82%  │                │││││ │↗│↗  0x00007f46c2dca60d:   cmp    %ax,%si
          │                │││││ ││││  0x00007f46c2dca610:   jne    0x00007f46c2dca8c2           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@72 (line 48)
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.35%  │                │││││ ││││  0x00007f46c2dca616:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rbx=Oop rdi=Oop r8=Oop r9=Oop [8]=Oop [16]=Oop }
          │                │││││ ││││                                                            ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
          │                │││││ ││││                                                            ; - (reexecute) java.lang.Character::toLowerCase@8 (line 10962)
          │                │││││ ││││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.23%  │                │││││ ││││  0x00007f46c2dca61d:   test   %eax,(%rax)                  ;   {poll}
   0.69%  │                │││││ ││││  0x00007f46c2dca61f:   mov    %r10d,%edx
   0.43%  │                │││││ ││││  0x00007f46c2dca622:   mov    0x30(%rsp),%ecx
   0.38%  │                │││││ ││││  0x00007f46c2dca626:   mov    0x10(%rsp),%r10              ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@0 (line 38)
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
          │                │││││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.27%  ↘                │││││ ││││  0x00007f46c2dca62b:   cmp    %ecx,%edx
                           ││││╰ ││││  0x00007f46c2dca62d:   jg     0x00007f46c2dca320
   0.00%                   ││││  ││││  0x00007f46c2dca633:   jmp    0x00007f46c2dca8ba           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                           ││││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@2 (line 38)
                           ││││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                           ││││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.09%                   ↘│││  ││││  0x00007f46c2dca638:   shr    %eax                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                            │││  ││││                                                            ; - java.lang.StringUTF16::length@3 (line 75)
                            │││  ││││                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
                            │││  ││││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                            │││  ││││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.15%                    │││  ││││  0x00007f46c2dca63a:   nopw   0x0(%rax,%rax,1)
   0.04%                    │││  ││││  0x00007f46c2dca640:   cmp    %r11d,%eax
                            │││  ││││  0x00007f46c2dca643:   jbe    0x00007f46c2dcaa38           ;* unwind (locked if synchronized)
                            │││  ││││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
                            │││  ││││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
                            │││  ││││                                                            ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
                            │││  ││││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                            │││  ││││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.05%                    │││  ││││  0x00007f46c2dca649:   mov    %r11d,%eax
   0.11%                    │││  ││││  0x00007f46c2dca64c:   shl    %eax                         ;* unwind (locked if synchronized)
                            │││  ││││                                                            ; - java.lang.StringUTF16::getChar@-3
                            │││  ││││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                            │││  ││││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@12 (line 39)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.16%                    │││  ││││  0x00007f46c2dca64e:   movzwl 0x10(%rax,%rsi,8),%eax       ;* unwind (locked if synchronized)
                            │││  ││││                                                            ; - java.lang.StringUTF16::getChar@-3
                            │││  ││││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                            │││  ││││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@58 (line 48)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.11%                    │││  ││││  0x00007f46c2dca653:   test   $0xffffff00,%eax
                            │││ ╭││││  0x00007f46c2dca659:   jne    0x00007f46c2dca6bc           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                            │││ │││││                                                            ; - java.lang.CharacterData::of@4 (line 78)
                            │││ │││││                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
                            │││ │││││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                            │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                            │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.06%                    │││ │││││  0x00007f46c2dca65f:   nop
   0.09%                    │││ │││││  0x00007f46c2dca660:   cmp    $0x41,%eax
                            │││ │││││  0x00007f46c2dca663:   jb     0x00007f46c2dca7ba           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                            │││ │││││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
                            │││ │││││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
                            │││ │││││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                            │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                            │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │││ │││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.15%                    │││ │││││  0x00007f46c2dca669:   mov    %eax,%esi
   0.03%                    │││ │╰│││  0x00007f46c2dca66b:   jmp    0x00007f46c2dca5c9           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                            │││ │ │││                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
                            │││ │ │││                                                            ; - java.lang.String::charAt@12 (line 1555)
                            │││ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
                            │││ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │││ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.02%                    │↘│ │ │││  0x00007f46c2dca670:   shr    %ebp                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::length@3 (line 75)
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                            │ │ │ │││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.04%                    │ │ │ │││  0x00007f46c2dca672:   cmp    %edx,%ebp
                            │ │ │ │││  0x00007f46c2dca674:   jbe    0x00007f46c2dca988           ;* unwind (locked if synchronized)
                            │ │ │ │││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
                            │ │ │ │││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                            │ │ │ │││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.08%                    │ │ │ │││  0x00007f46c2dca67a:   mov    %edx,%esi
   0.17%                    │ │ │ │││  0x00007f46c2dca67c:   shl    %esi                         ;* unwind (locked if synchronized)
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::getChar@-3
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                            │ │ │ │││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@34 (line 42)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%                    │ │ │ │││  0x00007f46c2dca67e:   movzwl 0x10(%r13,%rsi,1),%ecx       ;* unwind (locked if synchronized)
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::getChar@-3
                            │ │ │ │││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                            │ │ │ │││                                                            ; - java.lang.String::charAt@21 (line 1557)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@66 (line 48)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.03%                    │ │ │ │││  0x00007f46c2dca684:   test   $0xffffff00,%ecx
                            │ │ │ │││  0x00007f46c2dca68a:   jne    0x00007f46c2dca73e           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                            │ │ │ │││                                                            ; - java.lang.CharacterData::of@4 (line 78)
                            │ │ │ │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
                            │ │ │ │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.08%                    │ │ │ │││  0x00007f46c2dca690:   cmp    $0x41,%ecx
                            │ │ │ │││  0x00007f46c2dca693:   jb     0x00007f46c2dca7c5           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                            │ │ │ │││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
                            │ │ │ │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
                            │ │ │ │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.16%                    │ │ │ │││  0x00007f46c2dca699:   mov    %ecx,%esi
   0.02%                    │ │ │ │││  0x00007f46c2dca69b:   or     $0x20,%esi                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                            │ │ │ │││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
                            │ │ │ │││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
                            │ │ │ │││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.04%                    │ │ │ │││  0x00007f46c2dca69e:   xchg   %ax,%ax
   0.12%                    │ │ │ │││  0x00007f46c2dca6a0:   cmp    $0x7b,%esi
                            │ │ │ ╰││  0x00007f46c2dca6a3:   jb     0x00007f46c2dca60d
                            │ │ │  ││  0x00007f46c2dca6a9:   jmp    0x00007f46c2dca826           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                            │ │ │  ││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
                            │ │ │  ││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
                            │ │ │  ││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                            │ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
                            │ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                            │ │ │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
   0.00%                    ↘ │ │  ││  0x00007f46c2dca6ae:   mov    %esi,%eax
   0.00%                      │ │  ╰│  0x00007f46c2dca6b0:   jmp    0x00007f46c2dca5d7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                              │ │   │                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
                              │ │   │                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
                              │ │   │                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                              │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@69 (line 48)
                              │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                              │ │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
                              ↘ │   │  0x00007f46c2dca6b5:   mov    %ecx,%esi
   0.00%                        │   ╰  0x00007f46c2dca6b7:   jmp    0x00007f46c2dca60d           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                │                                                                ; - java.lang.CharacterDataLatin1::toLowerCase@23 (line 168)
                                │                                                                ; - java.lang.Character::toLowerCase@5 (line 10962)
                                │                                                                ; - java.lang.Character::toLowerCase@1 (line 10933)
                                │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::isPalindrome@61 (line 48)
                                │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@9 (line 34)
                                │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test@5 (line 30)
                                ↘      0x00007f46c2dca6bc:   mov    %r10d,0x28(%rsp)
                                       0x00007f46c2dca6c1:   mov    %edx,0x2c(%rsp)
                                       0x00007f46c2dca6c5:   mov    %r11d,0x34(%rsp)
                                       0x00007f46c2dca6ca:   mov    0x8(%rsp),%r11
....................................................................................................
  64.96%  <total for region 1>

....[Hottest Regions]...............................................................................
  64.96%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 3, compile id 1265 
   8.42%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   5.92%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   5.51%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   2.13%              kernel  [unknown] 
   1.08%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   1.08%              kernel  [unknown] 
   0.89%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   0.79%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   0.60%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   0.58%              kernel  [unknown] 
   0.44%              kernel  [unknown] 
   0.43%              kernel  [unknown] 
   0.34%                      <unknown> 
   0.28%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.24%                      <unknown> 
   0.23%        libc-2.31.so  __memset_avx2_erms 
   0.13%              kernel  [unknown] 
   0.13%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   0.11%              kernel  [unknown] 
   5.71%  <...other 892 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  64.99%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.iterative.IterativePredicate::test, version 3, compile id 1265 
  24.17%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1476 
   7.69%              kernel  [unknown] 
   0.82%                      <unknown> 
   0.30%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.23%        libc-2.31.so  __memset_avx2_erms 
   0.12%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::iterative, version 2, compile id 1447 
   0.11%           libjvm.so  jni_GetObjectField 
   0.07%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.07%           libjvm.so  ThreadInVMfromNative::ThreadInVMfromNative 
   0.07%      jvmci, level 4  java.lang.AbstractStringBuilder::inflate, version 2, compile id 1426 
   0.06%  libpthread-2.31.so  __libc_read 
   0.05%    perf-2139067.map  [unknown] 
   0.05%           libjvm.so  jni_SetByteArrayRegion 
   0.04%           libjvm.so  JNIHandleBlock::allocate_handle 
   0.04%    Unknown, level 0  java.io.FileInputStream::readBytes, version 1, compile id 1156 
   0.04%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.04%      jvmci, level 4  sun.nio.cs.StreamDecoder::&lt;init&gt;, version 2, compile id 1457 
   0.04%           libjvm.so  jni_GetArrayLength 
   0.03%  libpthread-2.31.so  __libc_lseek64 
   0.99%  <...other 206 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.44%      jvmci, level 4
   7.69%              kernel
   0.92%           libjvm.so
   0.82%                    
   0.67%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.09%          libjava.so
   0.08%    Unknown, level 0
   0.05%    perf-2139067.map
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%        runtime stub
   0.00%         c1, level 3
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive

# Run progress: 50.00% complete, ETA 00:03:55
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 4.103 ms/op
# Warmup Iteration   2: 2.796 ms/op
# Warmup Iteration   3: 2.369 ms/op
# Warmup Iteration   4: 2.564 ms/op
# Warmup Iteration   5: 2.974 ms/op
Iteration   1: 2.350 ms/op
Iteration   2: 2.348 ms/op
Iteration   3: 2.348 ms/op
Iteration   4: 2.346 ms/op
Iteration   5: 2.347 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive":
  2.348 ±(99.9%) 0.006 ms/op [Average]
  (min, avg, max) = (2.346, 2.348, 2.350), stdev = 0.002
  CI (99.9%): [2.342, 2.354] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.recursive:asm":
PrintAssembly processed: 428608 total address lines.
Perf output processed (skipped 62.695 seconds):
 Column 1: cycles (54225 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1164 

                            # parm2:    r8        = int
                            #           [sp+0x50]  (sp of caller)
                            0x00007f0b3eda1180:   mov    0x8(%rsi),%r10d
                            0x00007f0b3eda1184:   movabs $0x7f0ac3000000,%r12
                            0x00007f0b3eda118e:   add    %r12,%r10
                            0x00007f0b3eda1191:   xor    %r12,%r12
                            0x00007f0b3eda1194:   cmp    %r10,%rax
                            0x00007f0b3eda1197:   jne    0x00007f0b3e764080           ;   {runtime_call ic_miss_stub}
                            0x00007f0b3eda119d:   data16 xchg %ax,%ax
                          [Verified Entry Point]
   0.11%              ↗     0x00007f0b3eda11a0:   mov    %eax,-0x14000(%rsp)
   0.57%              │     0x00007f0b3eda11a7:   sub    $0x48,%rsp
   0.00%              │     0x00007f0b3eda11ab:   nop
   0.12%              │     0x00007f0b3eda11ac:   cmpl   $0x1,0x20(%r15)
   0.49%              │     0x00007f0b3eda11b4:   jne    0x00007f0b3eda1719
   0.03%              │     0x00007f0b3eda11ba:   mov    %rbp,0x40(%rsp)
   0.00%              │     0x00007f0b3eda11bf:   mov    %rsi,0x10(%rsp)
   0.15%              │     0x00007f0b3eda11c4:   mov    %rdx,0x8(%rsp)
   0.46%              │     0x00007f0b3eda11c9:   mov    %r8d,0x34(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop [8]=Oop [16]=Oop }
                      │                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                      │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@0 (line 38)
   0.06%              │     0x00007f0b3eda11ce:   test   %eax,(%rdx)                  ; implicit exception: dispatches to 0x00007f0b3eda1766
                      │                                                               ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
                      │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@0 (line 38)
   0.06%    ↗ ↗       │     0x00007f0b3eda11d0:   mov    %ecx,0x30(%rsp)
   0.37%    │ │       │     0x00007f0b3eda11d4:   mov    %ecx,%r10d
   0.45%    │ │       │     0x00007f0b3eda11d7:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │ │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@16 (line 39)
   0.05%    │ │       │     0x00007f0b3eda11da:   nopw   0x0(%rax,%rax,1)
   0.03%    │ │       │     0x00007f0b3eda11e0:   cmp    %ecx,%r8d
            │ │       │     0x00007f0b3eda11e3:   jle    0x00007f0b3eda158e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │ │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@2 (line 38)
   0.33%    │ │       │     0x00007f0b3eda11e9:   mov    0x14(%rdx),%r11d             ; ImmutableOopMap {rdx=Oop r11=NarrowOop [8]=Oop [16]=Oop }
            │ │       │                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
            │ │       │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@0 (line 38)
   0.99%    │ │       │     0x00007f0b3eda11ed:   mov    0xc(,%r11,8),%r9d            ; implicit exception: dispatches to 0x00007f0b3eda178d
   1.34%    │ │       │     0x00007f0b3eda11f5:   cmpb   $0x0,0x10(%rdx)
   0.02%  ╭ │ │       │     0x00007f0b3eda11f9:   jne    0x00007f0b3eda123c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │ │ │       │                                                               ; - java.lang.String::charAt@4 (line 1554)
          │ │ │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.04%  │ │ │       │     0x00007f0b3eda11ff:   nop
   0.35%  │ │ │       │     0x00007f0b3eda1200:   cmp    %ecx,%r9d
          │ │ │       │     0x00007f0b3eda1203:   jbe    0x00007f0b3eda161a           ;* unwind (locked if synchronized)
          │ │ │       │                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
          │ │ │       │                                                               ; - java.lang.String::checkIndex@5 (line 4828)
          │ │ │       │                                                               ; - java.lang.StringLatin1::charAt@3 (line 46)
          │ │ │       │                                                               ; - java.lang.String::charAt@12 (line 1555)
          │ │ │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.24%  │ │ │       │     0x00007f0b3eda1209:   mov    %r10d,0x2c(%rsp)
   0.00%  │ │ │       │     0x00007f0b3eda120e:   movzbl 0x10(%rcx,%r11,8),%r11d      ;*iand {reexecute=0 rethrow=0 return_oop=0}
          │ │ │       │                                                               ; - java.lang.StringLatin1::charAt@12 (line 47)
          │ │ │       │                                                               ; - java.lang.String::charAt@12 (line 1555)
          │ │ │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.19%  │ │ │       │     0x00007f0b3eda1214:   mov    %r11d,%esi
   0.38%  │ │ │       │     0x00007f0b3eda1217:   call   0x00007f0b3ed8b500           ; ImmutableOopMap {[8]=Oop [16]=Oop }
          │ │ │       │                                                               ;*invokestatic isLetterOrDigit {reexecute=0 rethrow=0 return_oop=0}
          │ │ │       │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
          │ │ │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
          │ │ │       │                                                               ;   {static_call}
   1.65%  │ │ │       │     0x00007f0b3eda121c:   nopl   0x200028c(%rax,%rax,1)       ;   {other}
   0.06%  │ │ │       │     0x00007f0b3eda1224:   test   %eax,%eax
          │╭│ │       │     0x00007f0b3eda1226:   jne    0x00007f0b3eda1285           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │││ │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@13 (line 38)
   0.67%  │││ │       │     0x00007f0b3eda122c:   mov    0x2c(%rsp),%ecx
   1.20%  │││ │       │     0x00007f0b3eda1230:   mov    0x34(%rsp),%r8d
   0.01%  │││ │       │     0x00007f0b3eda1235:   mov    0x8(%rsp),%rdx
   0.07%  ││╰ │       │     0x00007f0b3eda123a:   jmp    0x00007f0b3eda11d0           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
          ││  │       │                                                               ; - java.lang.StringLatin1::charAt@2 (line 46)
          ││  │       │                                                               ; - java.lang.String::charAt@12 (line 1555)
          ││  │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.11%  ↘│  │       │     0x00007f0b3eda123c:   mov    %r10d,0x2c(%rsp)
           │  │       │     0x00007f0b3eda1241:   shr    %r9d                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │  │       │                                                               ; - java.lang.StringUTF16::length@3 (line 75)
           │  │       │                                                               ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
           │  │       │                                                               ; - java.lang.StringUTF16::charAt@2 (line 1418)
           │  │       │                                                               ; - java.lang.String::charAt@21 (line 1557)
           │  │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.07%   │  │       │     0x00007f0b3eda1244:   cmp    0x30(%rsp),%r9d
           │  │       │     0x00007f0b3eda1249:   jbe    0x00007f0b3eda161a           ;* unwind (locked if synchronized)
           │  │       │                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
           │  │       │                                                               ; - java.lang.String::checkIndex@5 (line 4828)
           │  │       │                                                               ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
           │  │       │                                                               ; - java.lang.StringUTF16::charAt@2 (line 1418)
           │  │       │                                                               ; - java.lang.String::charAt@21 (line 1557)
           │  │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
   0.08%   │  │       │     0x00007f0b3eda124f:   mov    0x30(%rsp),%ecx
   0.09%   │  │       │     0x00007f0b3eda1253:   shl    %ecx                         ;* unwind (locked if synchronized)
           │  │       │                                                               ; - java.lang.StringUTF16::getChar@-3
           │  │       │                                                               ; - java.lang.StringUTF16::charAt@7 (line 1419)
           │  │       │                                                               ; - java.lang.String::charAt@21 (line 1557)
           │  │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
           │  │       │     0x00007f0b3eda1255:   movzwl 0x10(%rcx,%r11,8),%esi
   0.21%   │  │       │     0x00007f0b3eda125b:   call   0x00007f0b3ed8b500           ; ImmutableOopMap {[8]=Oop [16]=Oop }
           │  │       │                                                               ;*invokestatic isLetterOrDigit {reexecute=0 rethrow=0 return_oop=0}
           │  │       │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
           │  │       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@10 (line 38)
           │  │       │                                                               ;   {static_call}
   0.55%   │  │       │     0x00007f0b3eda1260:   nopl   0x30002d0(%rax,%rax,1)       ;   {other}
   0.00%   │  │       │     0x00007f0b3eda1268:   test   %eax,%eax
           │ ╭│       │     0x00007f0b3eda126a:   jne    0x00007f0b3eda1285           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
           │ ││       │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@13 (line 38)
   0.36%   │ ││       │     0x00007f0b3eda1270:   mov    0x2c(%rsp),%ecx
   0.62%   │ ││       │     0x00007f0b3eda1274:   mov    0x34(%rsp),%r8d
           │ ││       │     0x00007f0b3eda1279:   mov    0x8(%rsp),%rdx
   0.02%   │ ││       │     0x00007f0b3eda127e:   xchg   %ax,%ax
   0.00%   │ │╰       │     0x00007f0b3eda1280:   jmp    0x00007f0b3eda11d0
   0.94%   ↘ ↘        │     0x00007f0b3eda1285:   mov    0x34(%rsp),%r8d
   0.56%              │     0x00007f0b3eda128a:   nopw   0x0(%rax,%rax,1)             ;*iload_3 {reexecute=0 rethrow=0 return_oop=0}
                      │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@22 (line 41)
   0.06%         ↗ ↗  │     0x00007f0b3eda1290:   mov    0x30(%rsp),%ecx
   0.59%         │ │  │     0x00007f0b3eda1294:   mov    0x8(%rsp),%rdx
   0.32%         │ │  │     0x00007f0b3eda1299:   nopl   0x0(%rax)
   0.06%         │ │  │     0x00007f0b3eda12a0:   cmp    %ecx,%r8d
                 │ │  │     0x00007f0b3eda12a3:   jle    0x00007f0b3eda1569           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                 │ │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@24 (line 41)
   0.12%         │ │  │     0x00007f0b3eda12a9:   mov    0x14(%rdx),%r10d             ; ImmutableOopMap {rdx=Oop r10=NarrowOop [8]=Oop [16]=Oop }
                 │ │  │                                                               ;*iload_3 {reexecute=1 rethrow=0 return_oop=0}
                 │ │  │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@22 (line 41)
   3.02%         │ │  │     0x00007f0b3eda12ad:   mov    0xc(,%r10,8),%r11d           ; implicit exception: dispatches to 0x00007f0b3eda17b0
   4.19%         │ │  │     0x00007f0b3eda12b5:   mov    %r8d,%r9d
   0.00%         │ │  │     0x00007f0b3eda12b8:   dec    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                 │ │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@38 (line 42)
                 │ │  │     0x00007f0b3eda12bb:   nopl   0x0(%rax,%rax,1)
   0.02%         │ │  │     0x00007f0b3eda12c0:   cmpb   $0x0,0x10(%rdx)
   0.88%       ╭ │ │  │     0x00007f0b3eda12c4:   jne    0x00007f0b3eda12ff           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
               │ │ │  │                                                               ; - java.lang.String::charAt@4 (line 1554)
               │ │ │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.00%       │ │ │  │     0x00007f0b3eda12ca:   cmp    %r8d,%r11d
               │ │ │  │     0x00007f0b3eda12cd:   jbe    0x00007f0b3eda1707           ;* unwind (locked if synchronized)
               │ │ │  │                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
               │ │ │  │                                                               ; - java.lang.String::checkIndex@5 (line 4828)
               │ │ │  │                                                               ; - java.lang.StringLatin1::charAt@3 (line 46)
               │ │ │  │                                                               ; - java.lang.String::charAt@12 (line 1555)
               │ │ │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.00%       │ │ │  │     0x00007f0b3eda12d3:   mov    %r9d,0x28(%rsp)
   0.01%       │ │ │  │     0x00007f0b3eda12d8:   movzbl 0x10(%r8,%r10,8),%esi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
               │ │ │  │                                                               ; - java.lang.StringLatin1::charAt@12 (line 47)
               │ │ │  │                                                               ; - java.lang.String::charAt@12 (line 1555)
               │ │ │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.81%       │ │ │  │     0x00007f0b3eda12de:   mov    %r8d,0x24(%rsp)
   0.00%       │ │ │  │     0x00007f0b3eda12e3:   call   0x00007f0b3ed8b500           ; ImmutableOopMap {[8]=Oop [16]=Oop }
               │ │ │  │                                                               ;*invokestatic isLetterOrDigit {reexecute=0 rethrow=0 return_oop=0}
               │ │ │  │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
               │ │ │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
               │ │ │  │                                                               ;   {static_call}
   1.41%       │ │ │  │     0x00007f0b3eda12e8:   nopl   0x5000358(%rax,%rax,1)       ;   {other}
   0.04%       │ │ │  │     0x00007f0b3eda12f0:   test   %eax,%eax
               │╭│ │  │     0x00007f0b3eda12f2:   jne    0x00007f0b3eda1346           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
               │││ │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
   0.75%       │││ │  │     0x00007f0b3eda12f8:   mov    0x28(%rsp),%r8d
   1.24%       ││╰ │  │     0x00007f0b3eda12fd:   jmp    0x00007f0b3eda1290           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
               ││  │  │                                                               ; - java.lang.StringLatin1::charAt@2 (line 46)
               ││  │  │                                                               ; - java.lang.String::charAt@12 (line 1555)
               ││  │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
               ↘│  │  │     0x00007f0b3eda12ff:   mov    %r9d,0x28(%rsp)
   0.00%        │  │  │     0x00007f0b3eda1304:   mov    %r8d,0x24(%rsp)
   0.00%        │  │  │     0x00007f0b3eda1309:   shr    %r11d                        ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                │  │  │                                                               ; - java.lang.StringUTF16::length@3 (line 75)
                │  │  │                                                               ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
                │  │  │                                                               ; - java.lang.StringUTF16::charAt@2 (line 1418)
                │  │  │                                                               ; - java.lang.String::charAt@21 (line 1557)
                │  │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.17%        │  │  │     0x00007f0b3eda130c:   cmp    0x24(%rsp),%r11d
                │  │  │     0x00007f0b3eda1311:   jbe    0x00007f0b3eda15fb           ;* unwind (locked if synchronized)
                │  │  │                                                               ; - jdk.internal.util.Preconditions::checkIndex@-3
                │  │  │                                                               ; - java.lang.String::checkIndex@5 (line 4828)
                │  │  │                                                               ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
                │  │  │                                                               ; - java.lang.StringUTF16::charAt@2 (line 1418)
                │  │  │                                                               ; - java.lang.String::charAt@21 (line 1557)
                │  │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.00%        │  │  │     0x00007f0b3eda1317:   mov    0x24(%rsp),%r8d
   0.00%        │  │  │     0x00007f0b3eda131c:   shl    %r8d
   0.01%        │  │  │     0x00007f0b3eda131f:   movzwl 0x10(%r8,%r10,8),%esi        ;* unwind (locked if synchronized)
                │  │  │                                                               ; - java.lang.StringUTF16::getChar@-3
                │  │  │                                                               ; - java.lang.StringUTF16::charAt@7 (line 1419)
                │  │  │                                                               ; - java.lang.String::charAt@21 (line 1557)
                │  │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
   0.38%        │  │  │     0x00007f0b3eda1325:   xchg   %ax,%ax
                │  │  │     0x00007f0b3eda1327:   call   0x00007f0b3ed8b500           ; ImmutableOopMap {[8]=Oop [16]=Oop }
                │  │  │                                                               ;*invokestatic isLetterOrDigit {reexecute=0 rethrow=0 return_oop=0}
                │  │  │                                                               ; - java.lang.Character::isLetterOrDigit@1 (line 10274)
                │  │  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@32 (line 41)
                │  │  │                                                               ;   {static_call}
   0.35%        │  │  │     0x00007f0b3eda132c:   nopl   0x600039c(%rax,%rax,1)       ;   {other}
   0.01%        │  │  │     0x00007f0b3eda1334:   test   %eax,%eax
                │ ╭│  │     0x00007f0b3eda1336:   jne    0x00007f0b3eda143f           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                │ ││  │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@35 (line 41)
   0.38%        │ ││  │     0x00007f0b3eda133c:   mov    0x28(%rsp),%r8d
   0.53%        │ │╰  │     0x00007f0b3eda1341:   jmp    0x00007f0b3eda1290
   0.91%        ↘ │   │     0x00007f0b3eda1346:   mov    0x8(%rsp),%rdx
   1.26%          │   │     0x00007f0b3eda134b:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop }
                  │   │                                                               ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                  │   │                                                               ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@44 (line 44)
   1.62%          │   │     0x00007f0b3eda134e:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f0b3eda17d3
   2.31%          │   │     0x00007f0b3eda1355:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                  │   │                                                               ; - java.lang.String::charAt@17 (line 1557)
                  │   │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
                  │   │     0x00007f0b3eda1359:   nopl   0x0(%rax)
                  │   │     0x00007f0b3eda1360:   cmpb   $0x0,0x10(%rdx)
   0.01%          │ ╭ │     0x00007f0b3eda1364:   jne    0x00007f0b3eda145c           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │                                                               ; - java.lang.String::charAt@4 (line 1554)
                  │ │ │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.48%          │ │ │↗    0x00007f0b3eda136a:   mov    %rsi,%r8
                  │ │ ││    0x00007f0b3eda136d:   mov    %ecx,%esi
                  │ │ ││    0x00007f0b3eda136f:   mov    0x30(%rsp),%ecx
                  │ │ ││    0x00007f0b3eda1373:   cmp    0xc(%r8),%ecx
                  │ │ ││    0x00007f0b3eda1377:   jae    0x00007f0b3eda16ad           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                  │ │ ││                                                              ; - java.lang.StringLatin1::charAt@8 (line 47)
                  │ │ ││                                                              ; - java.lang.String::charAt@12 (line 1555)
                  │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.47%          │ │ ││    0x00007f0b3eda137d:   data16 xchg %ax,%ax
                  │ │ ││    0x00007f0b3eda1380:   cmp    %ecx,%esi
                  │ │ ││    0x00007f0b3eda1382:   jbe    0x00007f0b3eda1711           ;* unwind (locked if synchronized)
                  │ │ ││                                                              ; - jdk.internal.util.Preconditions::checkIndex@-3
                  │ │ ││                                                              ; - java.lang.String::checkIndex@5 (line 4828)
                  │ │ ││                                                              ; - java.lang.StringLatin1::charAt@3 (line 46)
                  │ │ ││                                                              ; - java.lang.String::charAt@12 (line 1555)
                  │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
                  │ │ ││    0x00007f0b3eda1388:   movzbl 0x10(%r8,%rcx,1),%esi        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                  │ │ ││                                                              ; - java.lang.StringLatin1::charAt@12 (line 47)
                  │ │ ││                                                              ; - java.lang.String::charAt@12 (line 1555)
                  │ │ ││                                                              ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.02%          │ │ ││    0x00007f0b3eda138e:   mov    %ecx,%r10d
   0.49%          │ │ ││↗   0x00007f0b3eda1391:   cmp    $0x41,%esi
                  │ │ │││   0x00007f0b3eda1394:   jb     0x00007f0b3eda14df           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
                  │ │ │││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
                  │ │ │││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
                  │ │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.21%          │ │ │││   0x00007f0b3eda139a:   mov    %esi,%r11d
                  │ │ │││   0x00007f0b3eda139d:   or     $0x20,%r11d                  ;*ior {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
                  │ │ │││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
                  │ │ │││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
                  │ │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.01%          │ │ │││   0x00007f0b3eda13a1:   cmp    $0x7b,%r11d
                  │ │ │││   0x00007f0b3eda13a5:   jae    0x00007f0b3eda15c0           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                  │ │ │││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
                  │ │ │││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
                  │ │ │││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
                  │ │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.46%          │ │ │││   0x00007f0b3eda13ab:   mov    0x14(%rdx),%ecx              ; ImmutableOopMap {rcx=NarrowOop rdx=Oop [8]=Oop [16]=Oop }
                  │ │ │││                                                             ;*ireturn {reexecute=1 rethrow=0 return_oop=0}
                  │ │ │││                                                             ; - (reexecute) java.lang.Character::toLowerCase@8 (line 10962)
                  │ │ │││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
                  │ │ │││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.13%          │ │ │││   0x00007f0b3eda13ae:   mov    0xc(,%rcx,8),%r8d            ; implicit exception: dispatches to 0x00007f0b3eda17f6
   0.07%          │ │ │││   0x00007f0b3eda13b6:   cmpb   $0x0,0x10(%rdx)
                  │ │╭│││   0x00007f0b3eda13ba:   jne    0x00007f0b3eda1495           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │ │││││                                                             ; - java.lang.String::charAt@4 (line 1554)
                  │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.47%          │ │││││   0x00007f0b3eda13c0:   cmp    0x24(%rsp),%r8d
                  │ │││││   0x00007f0b3eda13c5:   jbe    0x00007f0b3eda1639           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                  │ │││││                                                             ; - java.lang.StringLatin1::charAt@8 (line 47)
                  │ │││││                                                             ; - java.lang.String::charAt@12 (line 1555)
                  │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.16%          │ │││││   0x00007f0b3eda13cb:   mov    0x24(%rsp),%r8d
                  │ │││││   0x00007f0b3eda13d0:   movzbl 0x10(%r8,%rcx,8),%r9d        ;*iand {reexecute=0 rethrow=0 return_oop=0}
                  │ │││││                                                             ; - java.lang.StringLatin1::charAt@12 (line 47)
                  │ │││││                                                             ; - java.lang.String::charAt@12 (line 1555)
                  │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.08%          │ │││││   0x00007f0b3eda13d6:   cmp    $0x41,%r9d
                  │ │││││   0x00007f0b3eda13da:   jb     0x00007f0b3eda14e7           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                  │ │││││                                                             ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
                  │ │││││                                                             ; - java.lang.Character::toLowerCase@5 (line 10962)
                  │ │││││                                                             ; - java.lang.Character::toLowerCase@1 (line 10933)
                  │ │││││                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.49%          │ │││││   0x00007f0b3eda13e0:   mov    %r8d,0x24(%rsp)
                  │ │││││   0x00007f0b3eda13e5:   mov    %r9d,%r8d
                  │ │││││   0x00007f0b3eda13e8:   mov    0x24(%rsp),%r9d
   1.32%          │ │││││↗  0x00007f0b3eda13ed:   mov    %r8d,%ecx
   0.01%          │ ││││││  0x00007f0b3eda13f0:   or     $0x20,%ecx                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
                  │ ││││││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@11 (line 167)
                  │ ││││││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
                  │ ││││││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                  │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.01%          │ ││││││  0x00007f0b3eda13f3:   cmp    $0x7b,%ecx
                  │ ││││││  0x00007f0b3eda13f6:   jae    0x00007f0b3eda1598           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                  │ ││││││                                                            ; - java.lang.CharacterDataLatin1::toLowerCase@16 (line 168)
                  │ ││││││                                                            ; - java.lang.Character::toLowerCase@5 (line 10962)
                  │ ││││││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                  │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.11%          │ ││││││  0x00007f0b3eda13fc:   nopl   0x0(%rax)
   0.45%          │ ││││││  0x00007f0b3eda1400:   cmp    %r11w,%cx
                  │ ││││││  0x00007f0b3eda1404:   jne    0x00007f0b3eda15df           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                  │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@67 (line 47)
   0.03%          │ ││││││  0x00007f0b3eda140a:   mov    0x10(%rsp),%rsi
   0.00%          │ ││││││  0x00007f0b3eda140f:   mov    0x2c(%rsp),%ecx
   0.11%          │ ││││││  0x00007f0b3eda1413:   mov    0x28(%rsp),%r8d              ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=0}
                  │ ││││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
   0.51%          │ ││││││  0x00007f0b3eda1418:   data16 xchg %ax,%ax
   0.04%          │ ││╰│││  0x00007f0b3eda141b:   call   0x00007f0b3eda11a0           ; ImmutableOopMap {}
                  │ ││ │││                                                            ;*invokevirtual isPalindrome {reexecute=0 rethrow=0 return_oop=0}
                  │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@88 (line 53)
                  │ ││ │││                                                            ;   {optimized virtual_call}
   9.15%          │ ││ │││  0x00007f0b3eda1420:   nopl   0x9000490(%rax,%rax,1)       ;   {other}
   0.48%          │ ││ │││  0x00007f0b3eda1428:   mov    0x40(%rsp),%rbp
   9.48%          │ ││ │││  0x00007f0b3eda142d:   add    $0x48,%rsp
   0.02%          │ ││ │││  0x00007f0b3eda1431:   cmp    0x450(%r15),%rsp             ;   {poll_return}
                  │ ││ │││  0x00007f0b3eda1438:   ja     0x00007f0b3eda1729
   0.27%          │ ││ │││  0x00007f0b3eda143e:   ret                                 ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                  │ ││ │││                                                            ; - java.lang.String::charAt@4 (line 1554)
                  │ ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.18%          ↘ ││ │││  0x00007f0b3eda143f:   mov    0x8(%rsp),%rdx
   0.29%            ││ │││  0x00007f0b3eda1444:   mov    0x14(%rdx),%esi              ; ImmutableOopMap {rdx=Oop rsi=NarrowOop [8]=Oop [16]=Oop }
                    ││ │││                                                            ;*iload_2 {reexecute=1 rethrow=0 return_oop=0}
                    ││ │││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@44 (line 44)
   0.54%            ││ │││  0x00007f0b3eda1447:   mov    0xc(,%rsi,8),%ecx            ; implicit exception: dispatches to 0x00007f0b3eda1819
   0.67%            ││ │││  0x00007f0b3eda144e:   shl    $0x3,%rsi                    ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                    ││ │││                                                            ; - java.lang.String::charAt@17 (line 1557)
                    ││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
                    ││ │││  0x00007f0b3eda1452:   cmpb   $0x0,0x10(%rdx)
   0.00%            ││ ╰││  0x00007f0b3eda1456:   je     0x00007f0b3eda136a           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                    ││  ││                                                            ; - java.lang.String::charAt@4 (line 1554)
                    ││  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
                    ↘│  ││  0x00007f0b3eda145c:   mov    0x30(%rsp),%r10d
   0.15%             │  ││  0x00007f0b3eda1461:   shr    %ecx                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                     │  ││                                                            ; - java.lang.StringUTF16::length@3 (line 75)
                     │  ││                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
                     │  ││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                     │  ││                                                            ; - java.lang.String::charAt@21 (line 1557)
                     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
                     │  ││  0x00007f0b3eda1463:   cmp    %r10d,%ecx
                     │  ││  0x00007f0b3eda1466:   jbe    0x00007f0b3eda167d           ;* unwind (locked if synchronized)
                     │  ││                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
                     │  ││                                                            ; - java.lang.String::checkIndex@5 (line 4828)
                     │  ││                                                            ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
                     │  ││                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                     │  ││                                                            ; - java.lang.String::charAt@21 (line 1557)
                     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.15%             │  ││  0x00007f0b3eda146c:   mov    %r10d,%ecx
                     │  ││  0x00007f0b3eda146f:   shl    %ecx                         ;* unwind (locked if synchronized)
                     │  ││                                                            ; - java.lang.StringUTF16::getChar@-3
                     │  ││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                     │  ││                                                            ; - java.lang.String::charAt@21 (line 1557)
                     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@7 (line 38)
                     │  ││  0x00007f0b3eda1471:   movzwl 0x10(%rsi,%rcx,1),%r11d      ;* unwind (locked if synchronized)
                     │  ││                                                            ; - java.lang.StringUTF16::getChar@-3
                     │  ││                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                     │  ││                                                            ; - java.lang.String::charAt@21 (line 1557)
                     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@53 (line 47)
   0.00%             │  ││  0x00007f0b3eda1477:   nopw   0x0(%rax,%rax,1)
   0.15%             │  ││  0x00007f0b3eda1480:   test   $0xffffff00,%r11d
                     │  ││  0x00007f0b3eda1487:   jne    0x00007f0b3eda14ef           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                     │  ││                                                            ; - java.lang.CharacterData::of@4 (line 78)
                     │  ││                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
                     │  ││                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                     │  ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@56 (line 47)
   0.00%             │  ││  0x00007f0b3eda148d:   mov    %r11d,%esi
   0.00%             │  ╰│  0x00007f0b3eda1490:   jmp    0x00007f0b3eda1391           ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                     │   │                                                            ; - java.lang.StringLatin1::charAt@2 (line 46)
                     │   │                                                            ; - java.lang.String::charAt@12 (line 1555)
                     │   │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
                     ↘   │  0x00007f0b3eda1495:   mov    0x24(%rsp),%r9d
   0.13%                 │  0x00007f0b3eda149a:   shr    %r8d                         ;*ishr {reexecute=0 rethrow=0 return_oop=0}
                         │                                                            ; - java.lang.StringUTF16::length@3 (line 75)
                         │                                                            ; - java.lang.StringUTF16::checkIndex@2 (line 1613)
                         │                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                         │                                                            ; - java.lang.String::charAt@21 (line 1557)
                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.01%                 │  0x00007f0b3eda149d:   data16 xchg %ax,%ax
   0.00%                 │  0x00007f0b3eda14a0:   cmp    %r9d,%r8d
                         │  0x00007f0b3eda14a3:   jbe    0x00007f0b3eda16ce           ;* unwind (locked if synchronized)
                         │                                                            ; - jdk.internal.util.Preconditions::checkIndex@-3
                         │                                                            ; - java.lang.String::checkIndex@5 (line 4828)
                         │                                                            ; - java.lang.StringUTF16::checkIndex@5 (line 1613)
                         │                                                            ; - java.lang.StringUTF16::charAt@2 (line 1418)
                         │                                                            ; - java.lang.String::charAt@21 (line 1557)
                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.01%                 │  0x00007f0b3eda14a9:   mov    %r9d,%r8d
   0.10%                 │  0x00007f0b3eda14ac:   shl    %r8d                         ;* unwind (locked if synchronized)
                         │                                                            ; - java.lang.StringUTF16::getChar@-3
                         │                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                         │                                                            ; - java.lang.String::charAt@21 (line 1557)
                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@29 (line 41)
                         │  0x00007f0b3eda14af:   movzwl 0x10(%r8,%rcx,8),%r8d        ;* unwind (locked if synchronized)
                         │                                                            ; - java.lang.StringUTF16::getChar@-3
                         │                                                            ; - java.lang.StringUTF16::charAt@7 (line 1419)
                         │                                                            ; - java.lang.String::charAt@21 (line 1557)
                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@61 (line 47)
   0.01%                 │  0x00007f0b3eda14b5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%                 │  0x00007f0b3eda14c0:   test   $0xffffff00,%r8d
                         │  0x00007f0b3eda14c7:   jne    0x00007f0b3eda1526           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                         │                                                            ; - java.lang.CharacterData::of@4 (line 78)
                         │                                                            ; - java.lang.Character::toLowerCase@1 (line 10962)
                         │                                                            ; - java.lang.Character::toLowerCase@1 (line 10933)
                         │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
   0.14%                 │  0x00007f0b3eda14cd:   cmp    $0x41,%r8d
                         ╰  0x00007f0b3eda14d1:   jae    0x00007f0b3eda13ed           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                      ; - java.lang.CharacterDataLatin1::toLowerCase@3 (line 163)
                                                                                      ; - java.lang.Character::toLowerCase@5 (line 10962)
                                                                                      ; - java.lang.Character::toLowerCase@1 (line 10933)
                                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome@64 (line 47)
                            0x00007f0b3eda14d7:   mov    %r8d,%ecx
....................................................................................................
  63.69%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.lang.Character::isLetterOrDigit, version 2, compile id 1074 

             speculations   [0x00007f0b3ed8b910,0x00007f0b3ed8b9a0] = 144
             JVMCI data     [0x00007f0b3ed8b9a0,0x00007f0b3ed8b9b8] = 24
            [Disassembly]
            --------------------------------------------------------------------------------
            [Constant Pool (empty)]
            --------------------------------------------------------------------------------
            [Verified Entry Point]
              # {method} {0x00007f0ac3428c20} &apos;isLetterOrDigit&apos; &apos;(I)Z&apos; in &apos;java/lang/Character&apos;
              # parm0:    rsi       = int
              #           [sp+0x20]  (sp of caller)
   0.47%      0x00007f0b3ed8b500:   mov    %eax,-0x14000(%rsp)
   1.47%      0x00007f0b3ed8b507:   sub    $0x18,%rsp
   0.32%      0x00007f0b3ed8b50b:   nop
   0.08%      0x00007f0b3ed8b50c:   cmpl   $0x0,0x20(%r15)
   0.95%      0x00007f0b3ed8b514:   jne    0x00007f0b3ed8b664
   0.48%      0x00007f0b3ed8b51a:   mov    %rbp,0x10(%rsp)
   0.30%      0x00007f0b3ed8b51f:   nop
   0.12%      0x00007f0b3ed8b520:   test   $0xffffff00,%esi
          ╭   0x00007f0b3ed8b526:   jne    0x00007f0b3ed8b573           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.lang.CharacterData::of@4 (line 78)
          │                                                             ; - java.lang.Character::getType@1 (line 11557)
          │                                                             ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.93%  │   0x00007f0b3ed8b52c:   cmp    $0x100,%si
          │╭  0x00007f0b3ed8b531:   jae    0x00007f0b3ed8b60f
   0.54%  ││  0x00007f0b3ed8b537:   movabs $0x7ffc03750,%rcx            ;   {oop([I{0x00000007ffc03750})}
   0.30%  ││  0x00007f0b3ed8b541:   mov    %esi,%eax
   0.08%  ││  0x00007f0b3ed8b543:   mov    $0x1f,%r10d
   0.85%  ││  0x00007f0b3ed8b549:   and    0x10(%rcx,%rax,4),%r10b
   2.71%  ││  0x00007f0b3ed8b54e:   movzbl %r10b,%ecx                   ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          ││                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          ││                                                            ; - java.lang.Character::getType@5 (line 11557)
          ││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.04%  ││  0x00007f0b3ed8b552:   mov    $0x23e,%eax
   0.01%  ││  0x00007f0b3ed8b557:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
   4.31%  ││  0x00007f0b3ed8b559:   and    $0x1,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.Character::isLetterOrDigit@9 (line 10300)
   0.21%  ││  0x00007f0b3ed8b55c:   mov    0x10(%rsp),%rbp
   0.31%  ││  0x00007f0b3ed8b561:   add    $0x18,%rsp
   0.06%  ││  0x00007f0b3ed8b565:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          ││  0x00007f0b3ed8b56c:   ja     0x00007f0b3ed8b674
   1.36%  ││  0x00007f0b3ed8b572:   ret                                 ;*iaload {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
          ││                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
          ││                                                            ; - java.lang.Character::getType@5 (line 11557)
          ││                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.06%  ↘│  0x00007f0b3ed8b573:   mov    %esi,%ecx
   0.01%   │  0x00007f0b3ed8b575:   shr    $0x10,%ecx                   ;*iushr {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData::of@14 (line 81)
           │                                                            ; - java.lang.Character::getType@1 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.03%   │  0x00007f0b3ed8b578:   test   %ecx,%ecx
           │  0x00007f0b3ed8b57a:   jne    0x00007f0b3ed8b646
           │  0x00007f0b3ed8b580:   movabs $0x7fed6e7e8,%rcx            ;   {oop([C{0x00000007fed6e7e8})}
           │  0x00007f0b3ed8b58a:   movzwl %si,%eax                     ;*i2c {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterDataLatin1::getProperties@1 (line 73)
           │                                                            ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │  0x00007f0b3ed8b58d:   mov    %eax,%r10d
   0.01%   │  0x00007f0b3ed8b590:   shr    $0x5,%r10d                   ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@14 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.01%   │  0x00007f0b3ed8b594:   mov    %eax,%r11d
           │  0x00007f0b3ed8b597:   shr    %r11d                        ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@18 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │  0x00007f0b3ed8b59a:   and    $0xf,%r11d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@21 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.00%   │  0x00007f0b3ed8b59e:   movzwl 0x10(%rcx,%r10,2),%ecx       ;*caload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@15 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.03%   │  0x00007f0b3ed8b5a4:   or     %ecx,%r11d                   ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@22 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.00%   │  0x00007f0b3ed8b5a7:   cmp    $0x17a0,%r11d
           │  0x00007f0b3ed8b5ae:   jae    0x00007f0b3ed8b637
   0.01%   │  0x00007f0b3ed8b5b4:   movabs $0x7fed6f7f8,%rcx            ;   {oop([C{0x00000007fed6f7f8})}
           │  0x00007f0b3ed8b5be:   and    $0x1,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@26 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │  0x00007f0b3ed8b5c1:   movzwl 0x10(%rcx,%r11,2),%ecx       ;*caload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@23 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.02%   │  0x00007f0b3ed8b5c7:   or     %ecx,%eax                    ;*ior {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@27 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
   0.01%   │  0x00007f0b3ed8b5c9:   cmp    $0x420,%eax
           │  0x00007f0b3ed8b5cf:   jae    0x00007f0b3ed8b655
   0.01%   │  0x00007f0b3ed8b5d5:   movabs $0x7fed72748,%rcx            ;   {oop([I{0x00000007fed72748})}
           │  0x00007f0b3ed8b5df:   mov    $0x1f,%r10d
           │  0x00007f0b3ed8b5e5:   and    0x10(%rcx,%rax,4),%r10b
   0.03%   │  0x00007f0b3ed8b5ea:   movzbl %r10b,%ecx                   ;*iaload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.CharacterData00::getProperties@28 (line 73)
           │                                                            ; - java.lang.CharacterData00::getType@2 (line 84)
           │                                                            ; - java.lang.Character::getType@5 (line 11557)
           │                                                            ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
           │  0x00007f0b3ed8b5ee:   mov    $0x23e,%eax
           │  0x00007f0b3ed8b5f3:   shr    %cl,%eax                     ;*ishr {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.Character::isLetterOrDigit@7 (line 10300)
   0.01%   │  0x00007f0b3ed8b5f5:   and    $0x1,%eax                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.Character::isLetterOrDigit@9 (line 10300)
           │  0x00007f0b3ed8b5f8:   mov    0x10(%rsp),%rbp
           │  0x00007f0b3ed8b5fd:   add    $0x18,%rsp
           │  0x00007f0b3ed8b601:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │  0x00007f0b3ed8b608:   ja     0x00007f0b3ed8b688
   0.01%   │  0x00007f0b3ed8b60e:   ret                                 ;*ireturn {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.lang.Character::isLetterOrDigit@18 (line 10295)
           ↘  0x00007f0b3ed8b60f:   mov    $0x0,%r11
              0x00007f0b3ed8b616:   mov    $0xffffffe5,%r10d
              0x00007f0b3ed8b61c:   mov    %r10d,0x484(%r15)            ;*iaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.CharacterDataLatin1::getProperties@7 (line 74)
                                                                        ; - java.lang.CharacterDataLatin1::getType@2 (line 110)
                                                                        ; - java.lang.Character::getType@5 (line 11557)
                                                                        ; - java.lang.Character::isLetterOrDigit@4 (line 10300)
              0x00007f0b3ed8b623:   mov    %r11,0x490(%r15)
              0x00007f0b3ed8b62a:   call   0x00007f0b3e76a17a           ; ImmutableOopMap {}
....................................................................................................
  16.12%  <total for region 2>

....[Hottest Regions]...............................................................................
  63.69%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1164 
  16.12%      jvmci, level 4  java.lang.Character::isLetterOrDigit, version 2, compile id 1074 
   2.17%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1466 
   1.61%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1466 
   1.11%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1466 
   1.08%              kernel  [unknown] 
   1.03%              kernel  [unknown] 
   0.83%      jvmci, level 4  java.util.Iterator::forEachRemaining, version 6, compile id 1397 
   0.68%              kernel  [unknown] 
   0.67%              kernel  [unknown] 
   0.57%              kernel  [unknown] 
   0.57%      jvmci, level 4  java.util.Iterator::forEachRemaining, version 6, compile id 1397 
   0.51%      jvmci, level 4  java.util.Iterator::forEachRemaining, version 6, compile id 1397 
   0.25%      jvmci, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 6, compile id 1464 
   0.25%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1466 
   0.22%              kernel  [unknown] 
   0.22%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1466 
   0.18%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1466 
   0.18%      jvmci, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 6, compile id 1464 
   0.14%      jvmci, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 6, compile id 1464 
   7.90%  <...other 1741 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  63.70%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.recursive.RecursivePredicate::isPalindrome, version 4, compile id 1164 
  16.12%      jvmci, level 4  java.lang.Character::isLetterOrDigit, version 2, compile id 1074 
   7.11%              kernel  [unknown] 
   5.98%      jvmci, level 4  java.util.stream.ReduceOps$5::evaluateSequential, version 6, compile id 1466 
   2.29%      jvmci, level 4  java.util.Iterator::forEachRemaining, version 6, compile id 1397 
   2.25%                      <unknown> 
   0.70%      jvmci, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 6, compile id 1464 
   0.11%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.10%        libc-2.31.so  __memset_avx2_erms 
   0.08%           libjvm.so  xmlStream::write_text 
   0.07%        libc-2.31.so  _IO_fwrite 
   0.06%           libjvm.so  defaultStream::write 
   0.06%          ld-2.31.so  __tls_get_addr 
   0.06%  libpthread-2.31.so  __libc_write 
   0.05%           libjvm.so  fileStream::write 
   0.05%        libc-2.31.so  __vfprintf_internal 
   0.04%        libc-2.31.so  syscall 
   0.04%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.04%           libjvm.so  jni_GetObjectField 
   0.04%           libjvm.so  CompilerOracle::has_option_value<bool> 
   1.06%  <...other 204 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  88.88%      jvmci, level 4
   7.11%              kernel
   2.25%                    
   0.82%           libjvm.so
   0.60%        libc-2.31.so
   0.15%  libpthread-2.31.so
   0.06%          ld-2.31.so
   0.04%      hsdis-amd64.so
   0.03%          libjava.so
   0.02%    Unknown, level 0
   0.02%         interpreter
   0.01%    perf-2139133.map
   0.01%              [vdso]
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# JMH version: 1.37
# VM version: JDK 21, Java HotSpot(TM) 64-Bit Server VM, 21+35-jvmci-23.1-b15
# VM invoker: /home/gogu/bench_jdks/graalvm-jdk-21+35.1/bin/java
# VM options: -XX:ThreadPriorityPolicy=1 -XX:+UnlockExperimentalVMOptions -XX:+EnableJVMCIProduct -XX:-UnlockExperimentalVMOptions -Xms4g -Xmx4g -XX:+AlwaysPreTouch -Xss20M
# Blackhole mode: compiler (auto-detected, use -Djmh.blackhole.autoDetect=false to disable)
# Warmup: 5 iterations, 10 s each
# Measurement: 5 iterations, 10 s each
# Timeout: 10 min per iteration
# Threads: 1 thread, will synchronize iterations
# Benchmark mode: Average time, time/op
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline

# Run progress: 75.00% complete, ETA 00:01:57
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 3.300 ms/op
# Warmup Iteration   2: 1.504 ms/op
# Warmup Iteration   3: 1.255 ms/op
# Warmup Iteration   4: 1.240 ms/op
# Warmup Iteration   5: 1.180 ms/op
Iteration   1: 1.178 ms/op
Iteration   2: 1.178 ms/op
Iteration   3: 1.178 ms/op
Iteration   4: 1.177 ms/op
Iteration   5: 1.177 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline":
  1.178 ±(99.9%) 0.002 ms/op [Average]
  (min, avg, max) = (1.177, 1.178, 1.178), stdev = 0.001
  CI (99.9%): [1.176, 1.179] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark.trampoline:asm":
PrintAssembly processed: 479287 total address lines.
Perf output processed (skipped 62.870 seconds):
 Column 1: cycles (51014 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline::invoke, version 3, compile id 1356 

 <region is too big to display, has 1712 lines, but threshold is 1000>
....................................................................................................
  65.95%  <total for region 1>

....[Hottest Regions]...............................................................................
  65.95%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline::invoke, version 3, compile id 1356 
   9.37%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   5.22%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   4.85%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   1.14%              kernel  [unknown] 
   0.96%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   0.94%              kernel  [unknown] 
   0.77%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   0.75%              kernel  [unknown] 
   0.68%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   0.60%              kernel  [unknown] 
   0.52%              kernel  [unknown] 
   0.49%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   0.42%              kernel  [unknown] 
   0.32%                      <unknown> 
   0.32%        libc-2.31.so  __memset_avx2_erms 
   0.25%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.22%                      <unknown> 
   0.13%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   0.12%              kernel  [unknown] 
   5.97%  <...other 949 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  66.04%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.ATrampoline::invoke, version 3, compile id 1356 
  23.28%      jvmci, level 4  java.util.Spliterators$IteratorSpliterator::forEachRemaining, version 6, compile id 1510 
   7.11%              kernel  [unknown] 
   0.84%                      <unknown> 
   0.32%        libc-2.31.so  __memset_avx2_erms 
   0.26%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.08%           libjvm.so  jni_GetObjectField 
   0.08%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.trampoline.TrampolinePredicate::isPalindrome, version 4, compile id 1107 
   0.07%           libjvm.so  ThreadInVMfromNative::ThreadInVMfromNative 
   0.07%           libjvm.so  jni_GetArrayLength 
   0.07%    perf-2139197.map  [unknown] 
   0.06%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.palindrome.PalindromeBenchmark::trampoline, version 2, compile id 1478 
   0.06%  libpthread-2.31.so  __libc_read 
   0.05%    Unknown, level 0  java.io.FileInputStream::readBytes, version 1, compile id 1173 
   0.05%        libc-2.31.so  __fxstat64 
   0.05%           libjvm.so  jni_SetByteArrayRegion 
   0.05%  libpthread-2.31.so  __libc_lseek64 
   0.04%           libjvm.so  G1CardSet::reset_table_scanner 
   0.04%      jvmci, level 4  sun.nio.cs.StreamDecoder::&lt;init&gt;, version 2, compile id 1480 
   0.04%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<401510ul, G1BarrierSet>, (AccessInternal::BarrierType)3, 401510ul>::oop_access_barrier 
   1.33%  <...other 250 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  89.60%      jvmci, level 4
   7.11%              kernel
   1.15%           libjvm.so
   0.84%                    
   0.78%        libc-2.31.so
   0.18%  libpthread-2.31.so
   0.10%    Unknown, level 0
   0.08%          libjava.so
   0.07%    perf-2139197.map
   0.03%         interpreter
   0.03%          ld-2.31.so
   0.01%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%        runtime stub
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:07:50

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
PalindromeBenchmark.functional      avgt    5  1.372 ± 0.004  ms/op
PalindromeBenchmark.functional:asm  avgt         NaN            ---
PalindromeBenchmark.iterative       avgt    5  1.055 ± 0.007  ms/op
PalindromeBenchmark.iterative:asm   avgt         NaN            ---
PalindromeBenchmark.recursive       avgt    5  2.348 ± 0.006  ms/op
PalindromeBenchmark.recursive:asm   avgt         NaN            ---
PalindromeBenchmark.trampoline      avgt    5  1.178 ± 0.002  ms/op
PalindromeBenchmark.trampoline:asm  avgt         NaN            ---
