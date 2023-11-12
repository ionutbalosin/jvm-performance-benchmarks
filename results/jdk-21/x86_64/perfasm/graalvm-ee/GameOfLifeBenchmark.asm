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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.functional

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 309.268 ms/op
# Warmup Iteration   2: 240.338 ms/op
# Warmup Iteration   3: 239.611 ms/op
# Warmup Iteration   4: 239.751 ms/op
# Warmup Iteration   5: 239.733 ms/op
Iteration   1: 239.639 ms/op
Iteration   2: 239.905 ms/op
Iteration   3: 239.600 ms/op
Iteration   4: 239.712 ms/op
Iteration   5: 242.041 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.functional":
  240.179 ±(99.9%) 4.032 ms/op [Average]
  (min, avg, max) = (239.600, 240.179, 242.041), stdev = 1.047
  CI (99.9%): [236.147, 244.211] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.functional:asm":
PrintAssembly processed: 353659 total address lines.
Perf output processed (skipped 65.305 seconds):
 Column 1: cycles (285420 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3, version 2, compile id 1389 

                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.03%      0x00007f01bee42f51:   mov    %r10,%rax
   0.01%      0x00007f01bee42f54:   mov    %rsi,0x90(%rsp)
   0.00%      0x00007f01bee42f5c:   mov    %r11d,0x14(%rsp)
   0.03%      0x00007f01bee42f61:   mov    0x20(,%r11,8),%r10d          ;*invokeinterface evaluateSequential {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.03%      0x00007f01bee42f69:   test   %eax,0x0(,%r10,8)            ; implicit exception: deoptimizes
                                                                        ; ImmutableOopMap {rax=Oop r8=NarrowOop r10=NarrowOop r11=NarrowOop [20]=NarrowOop [40]=Oop [48]=Oop [60]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [116]=NarrowOop [120]=Oop [128]=Oop }
   0.12%      0x00007f01bee42f71:   mov    0x8(,%r11,8),%edx
   0.01%      0x00007f01bee42f79:   nopl   0x0(%rax)
   0.00%      0x00007f01bee42f80:   cmp    $0x35ff58,%edx               ;   {metadata(&apos;java/util/stream/IntPipeline$10&apos;)}
              0x00007f01bee42f86:   jne    0x00007f01bee434d1           ;*invokevirtual opWrapSink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.01%      0x00007f01bee42f8c:   mov    0x1b8(%r15),%rdx
   0.03%      0x00007f01bee42f93:   lea    0x48(%rdx),%rcx
   0.02%      0x00007f01bee42f97:   nopw   0x0(%rax,%rax,1)
   0.00%      0x00007f01bee42fa0:   cmp    0x1c8(%r15),%rcx
              0x00007f01bee42fa7:   ja     0x00007f01bee43c40
   0.01%      0x00007f01bee42fad:   mov    %rcx,0x1b8(%r15)
   0.04%      0x00007f01bee42fb4:   prefetchw 0x108(%rdx)
   0.01%      0x00007f01bee42fbb:   prefetchw 0x148(%rdx)
   0.00%      0x00007f01bee42fc2:   prefetchw 0x188(%rdx)
   0.01%      0x00007f01bee42fc9:   prefetchw 0x1c8(%rdx)
   0.06%      0x00007f01bee42fd0:   test   %rdx,%rdx
              0x00007f01bee42fd3:   je     0x00007f01bee43c40
   0.01%      0x00007f01bee42fd9:   mov    0x3c(%rsp),%r9d
   0.00%      0x00007f01bee42fde:   mov    %rdx,%rcx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ForEachOps::makeInt@5 (line 88)
                                                                        ; - java.util.stream.IntPipeline::forEach@3 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.01%      0x00007f01bee42fe1:   lea    0x18(%rdx),%rbx              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.IntPipeline$4::opWrapSink@0 (line 243)
                                                                        ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.03%      0x00007f01bee42fe5:   lea    0x30(%rdx),%rdi              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.IntPipeline$10::opWrapSink@0 (line 384)
                                                                        ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.02%      0x00007f01bee42fe9:   movq   $0x1,(%rdx)
   0.01%      0x00007f01bee42ff0:   movl   $0x103b8c8,0x8(%rdx)         ;   {metadata(&apos;java/util/stream/ForEachOps$ForEachOp$OfInt&apos;)}
   0.02%      0x00007f01bee42ff7:   mov    %r12b,0xc(%rdx)
   0.04%      0x00007f01bee42ffb:   mov    %r9d,0x10(%rdx)
   0.03%      0x00007f01bee42fff:   movq   $0x1,0x18(%rdx)
   0.02%      0x00007f01bee43007:   movl   $0x103e890,0x20(%rdx)        ;   {metadata(&apos;java/util/stream/IntPipeline$4$1&apos;)}
   0.02%      0x00007f01bee4300e:   mov    %rcx,%rbp
   0.02%      0x00007f01bee43011:   shr    $0x3,%rbp                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.IntPipeline$4::opWrapSink@0 (line 243)
                                                                        ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.02%      0x00007f01bee43015:   mov    %ebp,0x24(%rdx)
   0.02%      0x00007f01bee43018:   mov    %r8d,0x28(%rdx)
   0.04%      0x00007f01bee4301c:   movq   $0x1,0x30(%rdx)
   0.03%      0x00007f01bee43024:   movl   $0x3623a8,0x38(%rdx)         ;   {metadata(&apos;java/util/stream/IntPipeline$10$1&apos;)}
   0.03%      0x00007f01bee4302b:   shr    $0x3,%rbx                    ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.IntPipeline$10::opWrapSink@0 (line 384)
                                                                        ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.01%      0x00007f01bee4302f:   mov    %ebx,0x3c(%rdx)
   0.03%      0x00007f01bee43032:   mov    %r11d,0x40(%rdx)
   0.02%      0x00007f01bee43036:   shl    $0x3,%r10                    ;*getfield previousStage {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.AbstractPipeline::wrapSink@16 (line 547)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
                                                                        ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
                                                                        ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::count@4 (line 488)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.02%      0x00007f01bee4303a:   mov    %rcx,0x20(%rsp)
   0.01%      0x00007f01bee4303f:   nop
   0.01%  ╭   0x00007f01bee43040:   jmp    0x00007f01bee43112
          │   0x00007f01bee43045:   data16 data16 nopw 0x0(%rax,%rax,1)
          │   0x00007f01bee43050:   data16 data16 xchg %ax,%ax
          │   0x00007f01bee43054:   nopl   0x0(%rax,%rax,1)
          │   0x00007f01bee4305c:   data16 data16 xchg %ax,%ax          ;*ifle {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.stream.AbstractPipeline::wrapSink@11 (line 546)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          │                                                             ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::count@4 (line 488)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.02%  │   0x00007f01bee43060:   mov    0x20(%r10),%r11d             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) java.util.stream.AbstractPipeline::wrapSink@7 (line 546)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          │                                                             ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::count@4 (line 488)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.02%  │   0x00007f01bee43064:   test   %eax,0x0(,%r11,8)            ; implicit exception: deoptimizes
          │                                                             ; ImmutableOopMap {rdi=Oop r10=Oop r11=NarrowOop [32]=Oop [40]=Oop [48]=Oop [60]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [116]=NarrowOop [120]=Oop [128]=Oop }
   0.03%  │   0x00007f01bee4306c:   mov    0x8(%r10),%esi
   0.02%  │   0x00007f01bee43070:   movabs $0x7f01432205d8,%r8          ;   {metadata(&apos;java/util/stream/Sink&apos;)}
   0.01%  │   0x00007f01bee4307a:   nopw   0x0(%rax,%rax,1)
   0.01%  │   0x00007f01bee43080:   cmp    $0x35ff58,%esi               ;   {metadata(&apos;java/util/stream/IntPipeline$10&apos;)}
          │   0x00007f01bee43086:   jne    0x00007f01bee43125           ; ImmutableOopMap {rdi=Oop r10=Oop [32]=Oop [40]=Oop [48]=Oop [60]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [116]=NarrowOop [120]=Oop [128]=Oop }
          │                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) java.util.stream.AbstractPipeline::wrapSink@7 (line 546)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          │                                                             ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::count@4 (line 488)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.01%  │   0x00007f01bee4308c:   mov    0x8(%rdi),%esi               ; implicit exception: dispatches to 0x00007f01bee45c70
   0.02%  │   0x00007f01bee4308f:   movabs $0x7f0143000000,%rdx
   0.01%  │   0x00007f01bee43099:   lea    (%rdx,%rsi,1),%r11
   0.01%  │   0x00007f01bee4309d:   data16 xchg %ax,%ax
   0.01%  │   0x00007f01bee430a0:   cmp    0x20(%r11),%r8
          │╭  0x00007f01bee430a4:   je     0x00007f01bee430b6
   8.24%  ││  0x00007f01bee430aa:   cmp    $0x2205d8,%esi               ;   {metadata(&apos;java/util/stream/Sink&apos;)}
          ││  0x00007f01bee430b0:   jne    0x00007f01bee431ac           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.stream.Sink$ChainedInt::&lt;init&gt;@9 (line 283)
          ││                                                            ; - java.util.stream.IntPipeline$10$1::&lt;init&gt;@7 (line 384)
          ││                                                            ; - java.util.stream.IntPipeline$10::opWrapSink@6 (line 384)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          ││                                                            ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          ││                                                            ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          ││                                                            ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          ││                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          ││                                                            ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          ││                                                            ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          ││                                                            ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          ││                                                            ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          ││                                                            ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          ││                                                            ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          ││                                                            ; - java.util.stream.IntPipeline::count@4 (line 488)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          ││                                                            ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          ││                                                            ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   2.60%  │↘  0x00007f01bee430b6:   mov    0x1b8(%r15),%rsi
   0.11%  │   0x00007f01bee430bd:   lea    0x18(%rsi),%rdx
   0.01%  │   0x00007f01bee430c1:   cmp    0x1c8(%r15),%rdx
          │   0x00007f01bee430c8:   ja     0x00007f01bee432b3
   0.06%  │   0x00007f01bee430ce:   mov    %rdx,0x1b8(%r15)
   0.02%  │   0x00007f01bee430d5:   prefetchw 0xd8(%rsi)
   0.02%  │   0x00007f01bee430dc:   movq   $0x1,(%rsi)
   0.07%  │   0x00007f01bee430e3:   movl   $0x3623a8,0x8(%rsi)          ;   {metadata(&apos;java/util/stream/IntPipeline$10$1&apos;)}
   0.03%  │   0x00007f01bee430ea:   shr    $0x3,%rdi
   0.00%  │   0x00007f01bee430ee:   mov    %edi,0xc(%rsi)
   0.00%  │   0x00007f01bee430f1:   mov    %r10,%rdx
   0.01%  │   0x00007f01bee430f4:   shr    $0x3,%rdx
   0.04%  │   0x00007f01bee430f8:   mov    %edx,0x10(%rsi)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.stream.IntPipeline$10::opWrapSink@0 (line 384)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          │                                                             ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::count@4 (line 488)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.00%  │   0x00007f01bee430fb:   mov    0x458(%r15),%rax             ; ImmutableOopMap {rsi=Oop r10=Oop [32]=Oop [40]=Oop [48]=Oop [60]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [116]=NarrowOop [120]=Oop [128]=Oop }
          │                                                             ;*astore_1 {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) java.util.stream.AbstractPipeline::wrapSink@26 (line 547)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          │                                                             ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::count@4 (line 488)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.00%  │   0x00007f01bee43102:   test   %eax,(%rax)                  ;   {poll}
   0.02%  │   0x00007f01bee43104:   mov    0x20(%r10),%eax
   0.04%  │   0x00007f01bee43108:   shl    $0x3,%rax                    ;*getfield previousStage {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.stream.AbstractPipeline::wrapSink@28 (line 546)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          │                                                             ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::count@4 (line 488)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.00%  │   0x00007f01bee4310c:   mov    %rax,%r10
   0.00%  │   0x00007f01bee4310f:   mov    %rsi,%rdi                    ; ImmutableOopMap {rdi=Oop r10=Oop [32]=Oop [40]=Oop [48]=Oop [60]=NarrowOop [64]=Oop [76]=NarrowOop [80]=Oop [88]=Oop [96]=Oop [104]=Oop [116]=NarrowOop [120]=Oop [128]=Oop }
          │                                                             ;*aload_2 {reexecute=1 rethrow=0 return_oop=0}
          │                                                             ; - (reexecute) java.util.stream.AbstractPipeline::wrapSink@7 (line 546)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
          │                                                             ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::forEach@6 (line 463)
          │                                                             ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
          │                                                             ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
          │                                                             ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@13 (line 499)
          │                                                             ; - java.util.stream.ReduceOps$ReduceOp::evaluateSequential@6 (line 921)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@22 (line 434)
          │                                                             ; - java.util.stream.ReduceOps$9::evaluateSequential@3 (line 424)
          │                                                             ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
          │                                                             ; - java.util.stream.IntPipeline::count@4 (line 488)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::evolveCell@44 (line 66)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2@7 (line 46)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda/0x00007f014402b608::accept@13
          │                                                             ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
          │                                                             ; - java.util.stream.IntPipeline$Head::forEach@15 (line 617)
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3@13 (line 46)
   0.04%  ↘   0x00007f01bee43112:   cmpl   $0x1,0x10(%r10)              ; implicit exception: dispatches to 0x00007f01bee45c93
   0.06%      0x00007f01bee43117:   jl     0x00007f01bee43351
   0.01%      0x00007f01bee4311d:   data16 xchg %ax,%ax
   0.01%      0x00007f01bee43120:   jmp    0x00007f01bee43060           ;*invokevirtual opWrapSink {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.AbstractPipeline::wrapSink@23 (line 547)
                                                                        ; - java.util.stream.AbstractPipeline::wrapAndCopyInto@9 (line 499)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp::evaluateSequential@3 (line 151)
                                                                        ; - java.util.stream.ForEachOps$ForEachOp$OfInt::evaluateSequential@3 (line 189)
                                                                        ; - java.util.stream.AbstractPipeline::evaluate@88 (line 234)
                                                                        ; - java.util.stream.IntPipeline::forEach@6 (line 463)
                                                                        ; - java.util.stream.IntPipeline$7$1::accept@38 (line 317)
                                                                        ; - java.util.stream.Streams$RangeIntSpliterator::forEachRemaining@44 (line 104)
                                                                        ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
                                                                        ; - java.util.stream.AbstractPipeline::copyInto@32 (line 509)
....................................................................................................
  12.48%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, java.util.Spliterator$OfInt::forEachRemaining, version 2, compile id 1158 

                  JVMCI data     [0x00007f01bedba260,0x00007f01bedba278] = 24
                 [Disassembly]
                 --------------------------------------------------------------------------------
                 [Constant Pool (empty)]
                 --------------------------------------------------------------------------------
                 [Entry Point]
                   # {method} {0x00007f01430e4948} &apos;forEachRemaining&apos; &apos;(Ljava/util/function/Consumer;)V&apos; in &apos;java/util/Spliterator$OfInt&apos;
                   # this:     rsi:rsi   = &apos;java/util/Spliterator$OfInt&apos;
                   # parm0:    rdx:rdx   = &apos;java/util/function/Consumer&apos;
                   #           [sp+0x20]  (sp of caller)
   0.02%           0x00007f01bedb9f20:   mov    0x8(%rsi),%r10d
   0.06%           0x00007f01bedb9f24:   movabs $0x7f0143000000,%r12
   0.04%           0x00007f01bedb9f2e:   add    %r12,%r10
   0.02%           0x00007f01bedb9f31:   xor    %r12,%r12
   0.00%           0x00007f01bedb9f34:   cmp    %r10,%rax
                   0x00007f01bedb9f37:   jne    0x00007f01be764080           ;   {runtime_call ic_miss_stub}
   0.02%           0x00007f01bedb9f3d:   data16 xchg %ax,%ax
                 [Verified Entry Point]
   0.03%           0x00007f01bedb9f40:   mov    %eax,-0x14000(%rsp)
   0.00%           0x00007f01bedb9f47:   sub    $0x18,%rsp
   0.02%           0x00007f01bedb9f4b:   nop
   0.04%           0x00007f01bedb9f4c:   cmpl   $0x0,0x20(%r15)
   0.00%           0x00007f01bedb9f54:   jne    0x00007f01bedba02e
   0.00%           0x00007f01bedb9f5a:   mov    %rbp,0x10(%rsp)              ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.Spliterator$OfInt::forEachRemaining@0 (line 711)
   0.02%           0x00007f01bedb9f5f:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f01bedba052
   0.04%           0x00007f01bedb9f63:   movabs $0x7f0143000000,%r11         ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@1 (line 711)
   0.00%           0x00007f01bedb9f6d:   lea    (%r11,%r10,1),%r8
                   0x00007f01bedb9f71:   movabs $0x7f01430de678,%r11         ;   {metadata(&apos;java/util/function/IntConsumer&apos;)}
   0.02%           0x00007f01bedb9f7b:   nopl   0x0(%rax,%rax,1)
   0.04%           0x00007f01bedb9f80:   cmp    0x20(%r8),%r11
          ╭        0x00007f01bedb9f84:   je     0x00007f01bedb9f97
   3.80%  │        0x00007f01bedb9f8a:   cmp    $0xde678,%r10d               ;   {metadata(&apos;java/util/function/IntConsumer&apos;)}
          │╭       0x00007f01bedb9f91:   jne    0x00007f01bedb9fce           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                                 ; - java.util.Spliterator$OfInt::forEachRemaining@4 (line 711)
   2.22%  ↘│    ↗  0x00007f01bedb9f97:   xchg   %ax,%ax
           │    │  0x00007f01bedb9f99:   movabs $0xffffffffffffffff,%rax
   0.00%   │    │  0x00007f01bedb9fa3:   call   0x00007f01be764680           ; ImmutableOopMap {}
           │    │                                                            ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
           │    │                                                            ; - java.util.Spliterator$OfInt::forEachRemaining@12 (line 712)
           │    │                                                            ;   {virtual_call}
   0.09%   │    │  0x00007f01bedb9fa8:   nopl   0x1000218(%rax,%rax,1)       ;   {other}
   0.00%   │    │  0x00007f01bedb9fb0:   mov    0x10(%rsp),%rbp
   0.12%   │    │  0x00007f01bedb9fb5:   add    $0x18,%rsp
   0.02%   │    │  0x00007f01bedb9fb9:   nopl   0x0(%rax)
   0.00%   │    │  0x00007f01bedb9fc0:   cmp    0x450(%r15),%rsp             ;   {poll_return}
           │    │  0x00007f01bedb9fc7:   ja     0x00007f01bedba03e
   0.00%   │    │  0x00007f01bedb9fcd:   ret    
   0.01%   ↘    │  0x00007f01bedb9fce:   mov    0x28(%r8),%r10
   3.19%        │  0x00007f01bedb9fd2:   mov    (%r10),%r9d
   0.13%        │  0x00007f01bedb9fd5:   mov    $0x0,%ecx
   0.00%    ╭   │  0x00007f01bedb9fda:   jmp    0x00007f01bedb9ffa
            │   │  0x00007f01bedb9fdf:   nop
   0.13%    │ ↗ │  0x00007f01bedb9fe0:   mov    %ecx,%ebx
            │ │ │  0x00007f01bedb9fe2:   shl    $0x3,%ebx
   0.02%    │ │ │  0x00007f01bedb9fe5:   lea    0x8(%rbx),%ebx
            │ │ │  0x00007f01bedb9fe8:   movslq %ebx,%rbx
   0.13%    │ │ │  0x00007f01bedb9feb:   mov    (%r10,%rbx,1),%rbx
   0.00%    │ │ │  0x00007f01bedb9fef:   cmp    %rbx,%r11
            │╭│ │  0x00007f01bedb9ff2:   je     0x00007f01bedba005
   0.01%    │││ │  0x00007f01bedb9ff8:   inc    %ecx
            ↘││ │  0x00007f01bedb9ffa:   cmp    %ecx,%r9d
             │╰ │  0x00007f01bedb9ffd:   jg     0x00007f01bedb9fe0
             │  │  0x00007f01bedb9fff:   nop
             │ ╭│  0x00007f01bedba000:   jmp    0x00007f01bedba00b
   0.01%     ↘ ││  0x00007f01bedba005:   mov    %r11,0x20(%r8)
   0.00%       │╰  0x00007f01bedba009:   jmp    0x00007f01bedb9f97           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
               │                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@1 (line 711)
               ↘   0x00007f01bedba00b:   movl   $0xffffffed,0x484(%r15)      ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                             ; - java.util.Spliterator$OfInt::forEachRemaining@4 (line 711)
                   0x00007f01bedba016:   movq   $0x14,0x490(%r15)
                   0x00007f01bedba021:   call   0x00007f01be76a17a           ; ImmutableOopMap {rdx=Oop rsi=Oop }
                                                                             ;*aload_1 {reexecute=1 rethrow=0 return_oop=0}
                                                                             ; - (reexecute) java.util.Spliterator$OfInt::forEachRemaining@0 (line 711)
                                                                             ;   {runtime_call DeoptimizationBlob}
                   0x00007f01bedba026:   nopl   0x0(%rax,%rax,1)
                   0x00007f01bedba02e:   mov    %rbp,0x10(%rsp)
....................................................................................................
  10.23%  <total for region 2>

....[Hottest Regions]...............................................................................
  12.48%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3, version 2, compile id 1389 
  10.23%      jvmci, level 4  java.util.Spliterator$OfInt::forEachRemaining, version 2, compile id 1158 
   9.19%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveCell$7, version 2, compile id 1179 
   6.48%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp::evaluateSequential, version 2, compile id 1177 
   6.17%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3, version 2, compile id 1389 
   4.36%      jvmci, level 4  java.util.stream.Sink$ChainedInt::end, version 4, compile id 1352 
   4.11%      jvmci, level 4  java.util.stream.AbstractPipeline::copyInto, version 6, compile id 1409 
   4.02%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f014402b3d8::accept, version 2, compile id 1281 
   2.87%      jvmci, level 4  java.util.stream.IntPipeline$10$1::accept, version 4, compile id 1102 
   2.57%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1380 
   2.29%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 1154 
   2.25%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp::evaluateSequential, version 2, compile id 1177 
   2.04%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp::evaluateSequential, version 2, compile id 1177 
   1.66%              kernel  [unknown] 
   1.65%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3, version 2, compile id 1389 
   1.65%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 1154 
   1.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3, version 2, compile id 1389 
   1.41%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 1154 
   1.29%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 1154 
   1.28%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp$OfInt::accept, version 2, compile id 1132 
  20.57%  <...other 1293 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  25.00%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$3, version 2, compile id 1389 
  11.58%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp::evaluateSequential, version 2, compile id 1177 
  10.23%      jvmci, level 4  java.util.Spliterator$OfInt::forEachRemaining, version 2, compile id 1158 
   9.20%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveCell$7, version 2, compile id 1179 
   7.46%      jvmci, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 1154 
   5.81%              kernel  [unknown] 
   5.40%      jvmci, level 4  java.util.stream.AbstractPipeline::copyInto, version 6, compile id 1409 
   5.28%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f014402b3d8::accept, version 2, compile id 1281 
   4.36%      jvmci, level 4  java.util.stream.Sink$ChainedInt::end, version 4, compile id 1352 
   4.22%      jvmci, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 1380 
   3.46%      jvmci, level 4  java.util.stream.IntPipeline$10$1::accept, version 4, compile id 1102 
   1.91%      jvmci, level 4  java.util.stream.ForEachOps$ForEachOp$OfInt::accept, version 2, compile id 1132 
   1.04%                      <unknown> 
   0.98%      jvmci, level 4  java.util.stream.AbstractPipeline::sourceSpliterator, version 4, compile id 1350 
   0.56%      jvmci, level 4  java.util.stream.IntPipeline$10$1::begin, version 2, compile id 1138 
   0.46%    perf-2129964.map  [unknown] 
   0.35%      jvmci, level 4  java.util.concurrent.ForkJoinTask::awaitDone, version 3, compile id 1381 
   0.18%      jvmci, level 4  java.util.stream.Sink::end, version 2, compile id 1340 
   0.15%  libpthread-2.31.so  pthread_cond_wait@@GLIBC_2.3.2 
   0.11%  libpthread-2.31.so  pthread_cond_signal@@GLIBC_2.3.2 
   2.24%  <...other 307 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.32%      jvmci, level 4
   5.81%              kernel
   1.41%           libjvm.so
   1.04%                    
   0.60%  libpthread-2.31.so
   0.46%    perf-2129964.map
   0.16%        libc-2.31.so
   0.08%          ld-2.31.so
   0.08%    Unknown, level 0
   0.03%              [vdso]
   0.01%      hsdis-amd64.so
   0.00%         interpreter
   0.00%       libdl-2.31.so
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.iterative

# Run progress: 50.00% complete, ETA 00:02:03
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 34.191 ms/op
# Warmup Iteration   2: 31.369 ms/op
# Warmup Iteration   3: 31.342 ms/op
# Warmup Iteration   4: 31.335 ms/op
# Warmup Iteration   5: 31.328 ms/op
Iteration   1: 31.375 ms/op
Iteration   2: 31.344 ms/op
Iteration   3: 31.353 ms/op
Iteration   4: 31.335 ms/op
Iteration   5: 31.693 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.iterative":
  31.420 ±(99.9%) 0.590 ms/op [Average]
  (min, avg, max) = (31.335, 31.420, 31.693), stdev = 0.153
  CI (99.9%): [30.830, 32.010] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.iterative:asm":
PrintAssembly processed: 310204 total address lines.
Perf output processed (skipped 64.782 seconds):
 Column 1: cycles (50397 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 

                                                                                ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade99c4:   test   %eax,(%r9)                   ;   {poll}
                      0x00007f61fade99c7:   mov    %r13d,%ebx
                      0x00007f61fade99ca:   jmp    0x00007f61fade9800           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@17 (line 54)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.06%              0x00007f61fade99cf:   cmp    $0x2,%eax
                      0x00007f61fade99d2:   jb     0x00007f61fadea431           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@107 (line 64)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade99d8:   nopl   0x0(%rax,%rax,1)
                      0x00007f61fade99e0:   cmp    $0x2,%ecx
                      0x00007f61fade99e3:   jb     0x00007f61fadea431           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@47 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade99e9:   cmp    $0x3,%edx
   0.05%              0x00007f61fade99ec:   sete   %r9b
                      0x00007f61fade99f0:   movzbl %r9b,%r9d                    ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@121 (line 65)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade99f4:   nopl   0x0(%rax,%rax,1)
                      0x00007f61fade99fc:   data16 data16 xchg %ax,%ax
   0.05%              0x00007f61fade9a00:   cmpb   $0x1,0x11(,%rsi,8)
                      0x00007f61fade9a08:   je     0x00007f61fade9fa0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@109 (line 64)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade9a0e:   mov    0x40(%rsp),%r13d
   0.05%              0x00007f61fade9a13:   mov    0x1c(%rsp),%ebp
                      0x00007f61fade9a17:   mov    %r9b,0x11(,%rbp,8)           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@47 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade9a1f:   nop
                      0x00007f61fade9a20:   cmp    %r11d,%r13d
                      0x00007f61fade9a23:   jg     0x00007f61fade9e50           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@22 (line 54)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.08%              0x00007f61fade9a29:   cmp    $0x3,%edi
          ╭           0x00007f61fade9a2c:   jb     0x00007f61fade9a49
          │           0x00007f61fade9a32:   cmp    0x44(%rsp),%eax
          │           0x00007f61fade9a36:   jbe    0x00007f61fadea3c2
          │           0x00007f61fade9a3c:   nopl   0x0(%rax)
          │           0x00007f61fade9a40:   cmp    $0x3,%eax
          │           0x00007f61fade9a43:   jb     0x00007f61fadea3c2           ;*baload {reexecute=0 rethrow=0 return_oop=0}
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@107 (line 64)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
          │                                                                     ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.06%  ↘           0x00007f61fade9a49:   cmp    $0x3,%edi
           ╭          0x00007f61fade9a4c:   jb     0x00007f61fade9a69
           │          0x00007f61fade9a52:   cmp    0x44(%rsp),%ecx
           │          0x00007f61fade9a56:   jbe    0x00007f61fadea3c2
           │          0x00007f61fade9a5c:   nopl   0x0(%rax)
           │          0x00007f61fade9a60:   cmp    $0x3,%ecx
           │          0x00007f61fade9a63:   jb     0x00007f61fadea3c2           ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@47 (line 41)
           │                                                                    ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.07%   ↘          0x00007f61fade9a69:   mov    %esi,0xc(%rsp)
                      0x00007f61fade9a6d:   mov    $0x2,%r9d
   0.00%              0x00007f61fade9a73:   nopw   0x0(%rax,%rax,1)
                      0x00007f61fade9a7c:   data16 data16 xchg %ax,%ax
   0.28%              0x00007f61fade9a80:   cmp    %r9d,%edi
                      0x00007f61fade9a83:   jbe    0x00007f61fade9d75           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@30 (line 40)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.55%              0x00007f61fade9a89:   cmp    $0x7ffffffe,%r9d
                      0x00007f61fade9a90:   je     0x00007f61fadea674           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%              0x00007f61fade9a96:   mov    %r9d,%ecx
   0.45%              0x00007f61fade9a99:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@34 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.23%              0x00007f61fade9a9b:   mov    %r9d,%eax
   0.52%              0x00007f61fade9a9e:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@27 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%              0x00007f61fade9aa0:   mov    %eax,0x38(%rsp)
   0.49%              0x00007f61fade9aa4:   mov    %eax,%edx
   0.19%              0x00007f61fade9aa6:   mov    $0x0,%ebx
   0.51%              0x00007f61fade9aab:   nopl   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.63%        ↗↗↗↗  0x00007f61fade9ab0:   cmp    %ecx,%edx
            ╭   ││││  0x00007f61fade9ab2:   jg     0x00007f61fade9b0f           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
            │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@35 (line 55)
            │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.92%    │   ││││  0x00007f61fade9ab8:   mov    %edx,%ebp
   0.75%    │   ││││  0x00007f61fade9aba:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@91 (line 55)
            │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │   ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.22%    │   ││││  0x00007f61fade9abc:   nopl   0x0(%rax)
   0.82%    │   ││││  0x00007f61fade9ac0:   cmp    %r13d,%r8d
            │╭  ││││  0x00007f61fade9ac3:   jbe    0x00007f61fade9b0b           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            ││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@46 (line 56)
            ││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            ││  ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            ││  ││││                                                            ;   {no_reloc}
   1.03%    ││  ││││  0x00007f61fade9ac9:   cmp    %edx,%edi
            ││╭ ││││  0x00007f61fade9acb:   jbe    0x00007f61fade9b07           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@58 (line 56)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.82%    │││ ││││  0x00007f61fade9ad1:   mov    0xc(%r10,%r14,4),%esi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@76 (line 57)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.36%    │││ ││││  0x00007f61fade9ad6:   data16 nopw 0x0(%rax,%rax,1)        ; ImmutableOopMap {rsi=NarrowOop r10=Oop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
            │││ ││││                                                            ;*iload {reexecute=1 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.79%    │││ ││││  0x00007f61fade9ae0:   cmp    0xc(,%rsi,8),%edx            ; implicit exception: dispatches to 0x00007f61fadea98d
            │││ ││││  0x00007f61fade9ae7:   jae    0x00007f61fadea6e4           ;*baload {reexecute=0 rethrow=0 return_oop=0}
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │││ ││││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.83%    │││ ││││  0x00007f61fade9aed:   cmpb   $0x1,0x10(%rdx,%rsi,8)
   2.03%    │││╭││││  0x00007f61fade9af2:   je     0x00007f61fade9afc
   1.06%    ││││││││  0x00007f61fade9af8:   mov    %ebp,%edx
   0.82%    ││││╰│││  0x00007f61fade9afa:   jmp    0x00007f61fade9ab0           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
            ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@81 (line 57)
            ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            ││││ │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.38%    │││↘ │││  0x00007f61fade9afc:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@87 (line 58)
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.23%    │││  │││  0x00007f61fade9afe:   movsbl %bl,%esi                     ;*i2b {reexecute=0 rethrow=0 return_oop=0}
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@88 (line 58)
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │││  │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.12%    │││  │││  0x00007f61fade9b01:   mov    %ebp,%edx
   0.04%    │││  │││  0x00007f61fade9b03:   mov    %esi,%ebx
   0.03%    │││  ╰││  0x00007f61fade9b05:   jmp    0x00007f61fade9ab0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
            │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
            │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
            │││   ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.18%    ││↘   ││  0x00007f61fade9b07:   mov    %ebp,%edx
   0.04%    ││    ╰│  0x00007f61fade9b09:   jmp    0x00007f61fade9ab0
   0.03%    │↘     │  0x00007f61fade9b0b:   mov    %ebp,%edx
   0.00%    │      ╰  0x00007f61fade9b0d:   jmp    0x00007f61fade9ab0
   1.37%    ↘         0x00007f61fade9b0f:   lea    0x2(%r9),%esi                ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@91 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.09%              0x00007f61fade9b13:   mov    %esi,0x34(%rsp)
   0.49%              0x00007f61fade9b17:   mov    %r14d,%edx
                      0x00007f61fade9b1a:   nopw   0x0(%rax,%rax,1)             ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@17 (line 54)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.77%              0x00007f61fade9b20:   cmp    %r11d,%edx
                      0x00007f61fade9b23:   jg     0x00007f61fade9d05           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@22 (line 54)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade9b29:   mov    %edx,%ebp
   0.80%              0x00007f61fade9b2b:   inc    %ebp                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@97 (line 54)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.22%              0x00007f61fade9b2d:   cmp    %ecx,%eax
                      0x00007f61fade9b2f:   jg     0x00007f61fade9ccc           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@35 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.65%              0x00007f61fade9b35:   cmp    %edx,%r8d
                      0x00007f61fade9b38:   ja     0x00007f61fade9c25
   2.43%              0x00007f61fade9b3e:   xchg   %ax,%ax
   0.11%              0x00007f61fade9b40:   cmp    %edx,%r8d
                      0x00007f61fade9b43:   ja     0x00007f61fade9c56
   2.42%              0x00007f61fade9b49:   cmp    %edx,%r8d
                      0x00007f61fade9b4c:   ja     0x00007f61fade9c88           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@46 (line 56)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.14%              0x00007f61fade9b52:   mov    %esi,%r11d
   0.09%              0x00007f61fade9b55:   data16 data16 nopw 0x0(%rax,%rax,1) ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.48%              0x00007f61fade9b60:   cmp    %ecx,%r11d
                      0x00007f61fade9b63:   jg     0x00007f61fade9c05           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@35 (line 55)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                      0x00007f61fade9b69:   mov    %r11d,%r13d
                      0x00007f61fade9b6c:   inc    %r13d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@91 (line 55)
....................................................................................................
  32.94%  <total for region 1>

....[Hottest Region 2]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 

            0x00007f61fade9bec:   mov    %r13d,%r11d
            0x00007f61fade9bef:   jmp    0x00007f61fade9b60           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9bf4:   mov    %r13d,%r11d
            0x00007f61fade9bf7:   jmp    0x00007f61fade9b60
            0x00007f61fade9bfc:   mov    %r13d,%r11d
            0x00007f61fade9bff:   nop
            0x00007f61fade9c00:   jmp    0x00007f61fade9b60
   2.22%    0x00007f61fade9c05:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                      ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@97 (line 54)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.28%    0x00007f61fade9c0c:   test   %eax,(%rsi)                  ;   {poll}
   3.18%    0x00007f61fade9c0e:   mov    %ebp,%edx
   0.21%    0x00007f61fade9c10:   mov    0x34(%rsp),%esi
   0.46%    0x00007f61fade9c14:   mov    0x38(%rsp),%eax
            0x00007f61fade9c18:   mov    0x3c(%rsp),%r11d
   1.87%    0x00007f61fade9c1d:   data16 xchg %ax,%ax
   0.21%    0x00007f61fade9c20:   jmp    0x00007f61fade9b20           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@17 (line 54)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.01%    0x00007f61fade9c25:   cmp    %eax,%edi
            0x00007f61fade9c27:   jbe    0x00007f61fade9b3e           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@58 (line 56)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.47%    0x00007f61fade9c2d:   mov    0x10(%r10,%rdx,4),%r13d      ; ImmutableOopMap {r10=Oop r13=NarrowOop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@17 (line 54)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.53%    0x00007f61fade9c32:   cmp    0xc(,%r13,8),%eax            ; implicit exception: dispatches to 0x00007f61fadea9f6
            0x00007f61fade9c3a:   jae    0x00007f61fadea6c0           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   8.18%    0x00007f61fade9c40:   cmpb   $0x1,0xf(%r9,%r13,8)
   0.07%    0x00007f61fade9c46:   jne    0x00007f61fade9b3e           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@81 (line 57)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.10%    0x00007f61fade9c4c:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@87 (line 58)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9c4e:   movsbl %bl,%ebx                     ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@88 (line 58)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9c51:   jmp    0x00007f61fade9b3e           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@91 (line 55)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   2.49%    0x00007f61fade9c56:   cmp    %r14d,%edx
            0x00007f61fade9c59:   je     0x00007f61fade9b49           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@64 (line 56)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9c5f:   mov    0x10(%r10,%rdx,4),%r13d      ; ImmutableOopMap {r10=Oop r13=NarrowOop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9c64:   cmp    0xc(,%r13,8),%r9d            ; implicit exception: dispatches to 0x00007f61fadeaa19
            0x00007f61fade9c6c:   jae    0x00007f61fadea553           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.32%    0x00007f61fade9c72:   cmpb   $0x1,0x10(%r9,%r13,8)
   0.00%    0x00007f61fade9c78:   jne    0x00007f61fade9b49           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@81 (line 57)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%    0x00007f61fade9c7e:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@87 (line 58)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9c80:   movsbl %bl,%ebx                     ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@88 (line 58)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9c83:   jmp    0x00007f61fade9b49           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@91 (line 55)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   2.54%    0x00007f61fade9c88:   cmp    %ecx,%edi
            0x00007f61fade9c8a:   jbe    0x00007f61fade9b52           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@58 (line 56)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9c90:   mov    0x10(%r10,%rdx,4),%r13d      ; ImmutableOopMap {r10=Oop r13=NarrowOop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%    0x00007f61fade9c95:   mov    0xc(,%r13,8),%r11d           ; implicit exception: dispatches to 0x00007f61fadeaa3c
   0.81%    0x00007f61fade9c9d:   data16 xchg %ax,%ax
   1.79%    0x00007f61fade9ca0:   cmp    %r14d,%edx
            0x00007f61fade9ca3:   je     0x00007f61fade9cde           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@64 (line 56)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9ca9:   cmp    %ecx,%r11d
            0x00007f61fade9cac:   jbe    0x00007f61fadea455           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.01%    0x00007f61fade9cb2:   cmpb   $0x1,0x11(%r9,%r13,8)
   1.16%    0x00007f61fade9cb8:   jne    0x00007f61fade9b52           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@81 (line 57)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.26%    0x00007f61fade9cbe:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@87 (line 58)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.16%    0x00007f61fade9cc0:   movsbl %bl,%r11d                    ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@88 (line 58)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.02%    0x00007f61fade9cc4:   mov    %r11d,%ebx
   0.06%    0x00007f61fade9cc7:   jmp    0x00007f61fade9b52           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@35 (line 55)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9ccc:   mov    0x458(%r15),%r13             ; ImmutableOopMap {r10=Oop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                      ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                      ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@17 (line 54)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
            0x00007f61fade9cd3:   test   %eax,0x0(%r13)               ;   {poll}
            0x00007f61fade9cd7:   mov    %ebp,%edx
....................................................................................................
  29.44%  <total for region 2>

....[Hottest Region 3]..............................................................................
jvmci, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 

             0x00007f61fade9cd9:   jmp    0x00007f61fade9b20           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@97 (line 54)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9cde:   xchg   %ax,%ax
             0x00007f61fade9ce0:   cmp    %ecx,%r11d
             0x00007f61fade9ce3:   jbe    0x00007f61fadea455           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.82%     0x00007f61fade9ce9:   cmpb   $0x1,0x11(%r9,%r13,8)
   0.42%     0x00007f61fade9cef:   jne    0x00007f61fade9b52           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@81 (line 57)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.36%     0x00007f61fade9cf5:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@87 (line 58)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.18%     0x00007f61fade9cf7:   movsbl %bl,%r11d                    ;*i2b {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@88 (line 58)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.06%     0x00007f61fade9cfb:   mov    %r11d,%ebx
             0x00007f61fade9cfe:   xchg   %ax,%ax
   0.02%     0x00007f61fade9d00:   jmp    0x00007f61fade9b52           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@17 (line 54)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.33%     0x00007f61fade9d05:   mov    0xc(%rsp),%esi
   0.00%     0x00007f61fade9d09:   cmp    $0x3,%ebx
             0x00007f61fade9d0c:   sete   %al
             0x00007f61fade9d0f:   movzbl %al,%eax                     ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@121 (line 65)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.47%     0x00007f61fade9d12:   cmpb   $0x1,0x10(%r9,%rsi,8)
   0.15%  ╭  0x00007f61fade9d18:   je     0x00007f61fade9d45           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@109 (line 64)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.70%  │  0x00007f61fade9d1e:   mov    0x1c(%rsp),%r11d
   0.64%  │  0x00007f61fade9d23:   mov    %al,0x10(%r9,%r11,8)         ;*bastore {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@47 (line 41)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.70%  │  0x00007f61fade9d28:   mov    0x458(%r15),%rax             ; ImmutableOopMap {r10=Oop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
          │                                                            ;*iinc {reexecute=1 rethrow=0 return_oop=0}
          │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@48 (line 40)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.01%  │  0x00007f61fade9d2f:   test   %eax,(%rax)                  ;   {poll}
   0.50%  │  0x00007f61fade9d31:   mov    %ecx,%r9d
   0.25%  │  0x00007f61fade9d34:   mov    0x40(%rsp),%r13d
   0.54%  │  0x00007f61fade9d39:   mov    0x3c(%rsp),%r11d
   0.00%  │  0x00007f61fade9d3e:   xchg   %ax,%ax
   0.47%  │  0x00007f61fade9d40:   jmp    0x00007f61fade9a80           ;*iload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@27 (line 40)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%  ↘  0x00007f61fade9d45:   mov    0x1c(%rsp),%r11d
   0.03%     0x00007f61fade9d4a:   cmp    $0x2,%ebx
             0x00007f61fade9d4d:   mov    $0x1,%ebx
             0x00007f61fade9d52:   cmove  %ebx,%eax                    ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@115 (line 65)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%     0x00007f61fade9d55:   mov    %al,0x10(%r9,%r11,8)         ;*bastore {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@47 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.15%     0x00007f61fade9d5a:   mov    0x458(%r15),%rax             ; ImmutableOopMap {r10=Oop [12]=NarrowOop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                       ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@48 (line 40)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9d61:   test   %eax,(%rax)                  ;   {poll}
   0.00%     0x00007f61fade9d63:   mov    %ecx,%r9d
   0.00%     0x00007f61fade9d66:   mov    0x40(%rsp),%r13d
   0.08%     0x00007f61fade9d6b:   mov    0x3c(%rsp),%r11d
             0x00007f61fade9d70:   jmp    0x00007f61fade9a80           ;*iload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@27 (line 40)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.06%     0x00007f61fade9d75:   mov    0x458(%r15),%rsi             ; ImmutableOopMap {r10=Oop [32]=Oop }
                                                                       ;*iinc {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@54 (line 39)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%     0x00007f61fade9d7c:   test   %eax,(%rsi)                  ;   {poll}
   0.02%     0x00007f61fade9d7e:   mov    0x3c(%rsp),%r14d
   0.00%     0x00007f61fade9d83:   mov    0x20(%rsp),%rax
   0.03%     0x00007f61fade9d88:   jmp    0x00007f61fade95b0           ;*iinc {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@54 (line 39)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9d8d:   mov    0xc(%r10,%r14,4),%ebx        ; ImmutableOopMap {rax=Oop rbx=NarrowOop r9=NarrowOop r10=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9d92:   cmpl   $0x2,0xc(,%rbx,8)            ; implicit exception: dispatches to 0x00007f61fadeaa5f
   0.12%     0x00007f61fade9d9a:   jb     0x00007f61fadea72f           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.03%     0x00007f61fade9da0:   cmpb   $0x1,0x11(,%rbx,8)
   0.01%     0x00007f61fade9da8:   jne    0x00007f61fade9649           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@81 (line 57)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9dae:   mov    %edx,%ecx
             0x00007f61fade9db0:   jmp    0x00007f61fade9649           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@46 (line 56)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9db5:   mov    0xc(%r10,%r14,4),%edx        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@76 (line 57)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9dba:   nopw   0x0(%rax,%rax,1)             ; ImmutableOopMap {rdx=NarrowOop rsi=NarrowOop r9=NarrowOop r10=Oop [16]=Oop [28]=NarrowOop [32]=Oop }
                                                                       ;*iload {reexecute=1 rethrow=0 return_oop=0}
                                                                       ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@30 (line 55)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.07%     0x00007f61fade9dc0:   cmpl   $0x2,0xc(,%rdx,8)            ; implicit exception: dispatches to 0x00007f61fadeaa82
             0x00007f61fade9dc8:   jb     0x00007f61fadea708           ;*baload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@79 (line 57)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.02%     0x00007f61fade9dce:   cmpb   $0x1,0x11(,%rdx,8)
   0.05%     0x00007f61fade9dd6:   jne    0x00007f61fade97e9           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@81 (line 57)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             0x00007f61fade9ddc:   mov    %ebp,%r13d
             0x00007f61fade9ddf:   mov    %r9d,%r11d
             0x00007f61fade9de2:   mov    0x48(%rsp),%r9
             0x00007f61fade9de7:   mov    0x70(%rsp),%rbp
             0x00007f61fade9dec:   inc    %ebx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@87 (line 58)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
....................................................................................................
  10.36%  <total for region 3>

....[Hottest Regions]...............................................................................
  32.94%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
  29.44%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
  10.36%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
   4.45%           libjvm.so  TypeArrayKlass::multi_allocate 
   3.19%           libjvm.so  ObjArrayAllocator::initialize 
   2.57%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.69%          ld-2.31.so  __tls_get_addr 
   1.61%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
   1.39%        libc-2.31.so  __memset_avx2_erms 
   1.23%           libjvm.so  ObjArrayKlass::multi_allocate 
   1.16%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
   1.12%           libjvm.so  MemAllocator::allocate 
   1.08%           libjvm.so  MemAllocator::allocate 
   1.06%           libjvm.so  MemAllocator::Allocation::notify_allocation_jvmti_sampler 
   0.78%           libjvm.so  MemAllocator::allocate 
   0.72%           libjvm.so  MemAllocator::Allocation::check_out_of_memory 
   0.72%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.42%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
   0.39%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
   0.34%           libjvm.so  MemAllocator::Allocation::notify_allocation_jfr_sampler 
   3.32%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  76.55%      jvmci, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 1354 
   4.45%           libjvm.so  TypeArrayKlass::multi_allocate 
   3.19%           libjvm.so  ObjArrayAllocator::initialize 
   3.14%           libjvm.so  MemAllocator::allocate 
   2.57%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.69%          ld-2.31.so  __tls_get_addr 
   1.46%           libjvm.so  ObjArrayKlass::multi_allocate 
   1.39%        libc-2.31.so  __memset_avx2_erms 
   1.24%           libjvm.so  MemAllocator::Allocation::notify_allocation_jvmti_sampler 
   1.10%              kernel  [unknown] 
   0.72%           libjvm.so  MemAllocator::Allocation::check_out_of_memory 
   0.72%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.52%           libjvm.so  Klass::check_array_allocation_length 
   0.34%           libjvm.so  MemAllocator::Allocation::notify_allocation_jfr_sampler 
   0.27%           libjvm.so  ObjArrayKlass::allocate 
   0.18%                      <unknown> 
   0.11%           libjvm.so  JVMCIRuntime::new_multi_array_common 
   0.08%           libjvm.so  memset@plt 
   0.02%           libjvm.so  fileStream::write 
   0.01%  libpthread-2.31.so  __libc_write 
   0.24%  <...other 84 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  76.55%      jvmci, level 4
  18.26%           libjvm.so
   2.18%        libc-2.31.so
   1.69%          ld-2.31.so
   1.10%              kernel
   0.18%                    
   0.02%  libpthread-2.31.so
   0.01%         interpreter
   0.00%              [vdso]
   0.00%    perf-2130040.map
   0.00%         c1, level 3
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:04:02

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

Benchmark                           Mode  Cnt    Score   Error  Units
GameOfLifeBenchmark.functional      avgt    5  240.179 ± 4.032  ms/op
GameOfLifeBenchmark.functional:asm  avgt           NaN            ---
GameOfLifeBenchmark.iterative       avgt    5   31.420 ± 0.590  ms/op
GameOfLifeBenchmark.iterative:asm   avgt           NaN            ---
