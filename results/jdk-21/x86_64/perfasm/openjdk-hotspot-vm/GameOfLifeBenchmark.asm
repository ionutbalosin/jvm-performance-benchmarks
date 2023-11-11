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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.functional

# Run progress: 0.00% complete, ETA 00:03:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 655.767 ms/op
# Warmup Iteration   2: 648.114 ms/op
# Warmup Iteration   3: 649.649 ms/op
# Warmup Iteration   4: 648.269 ms/op
# Warmup Iteration   5: 645.932 ms/op
Iteration   1: 645.996 ms/op
Iteration   2: 648.784 ms/op
Iteration   3: 646.293 ms/op
Iteration   4: 647.760 ms/op
Iteration   5: 649.208 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.functional":
  647.608 ±(99.9%) 5.546 ms/op [Average]
  (min, avg, max) = (645.996, 647.608, 649.208), stdev = 1.440
  CI (99.9%): [642.063, 653.154] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.functional:asm":
PrintAssembly processed: 188914 total address lines.
Perf output processed (skipped 62.229 seconds):
 Column 1: cycles (302144 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.stream.IntPipeline$10$1::accept, version 2, compile id 656 

              nul chk table  [0x00007f571063f430,0x00007f571063f440] = 16
             [Disassembly]
             --------------------------------------------------------------------------------
             [Constant Pool (empty)]
             --------------------------------------------------------------------------------
             [Entry Point]
               # {method} {0x00007f5697352908} &apos;accept&apos; &apos;(I)V&apos; in &apos;java/util/stream/IntPipeline$10$1&apos;
               # this:     rsi:rsi   = &apos;java/util/stream/IntPipeline$10$1&apos;
               # parm0:    rdx       = int
               #           [sp+0x30]  (sp of caller)
   0.04%       0x00007f571063f1a0:   mov    0x8(%rsi),%r10d
   0.14%       0x00007f571063f1a4:   movabs $0x7f5697000000,%r11
               0x00007f571063f1ae:   add    %r11,%r10
   0.05%       0x00007f571063f1b1:   cmp    %r10,%rax
               0x00007f571063f1b4:   jne    0x00007f57100c4080           ;   {runtime_call ic_miss_stub}
   0.05%       0x00007f571063f1ba:   xchg   %ax,%ax
   0.00%       0x00007f571063f1bc:   nopl   0x0(%rax)
             [Verified Entry Point]
   4.11%       0x00007f571063f1c0:   mov    %eax,-0x14000(%rsp)
   2.42%       0x00007f571063f1c7:   push   %rbp
   0.08%       0x00007f571063f1c8:   sub    $0x20,%rsp
   0.01%       0x00007f571063f1cc:   cmpl   $0x1,0x20(%r15)
   0.16%       0x00007f571063f1d4:   jne    0x00007f571063f282           ;*synchronization entry
                                                                         ; - java.util.stream.IntPipeline$10$1::accept@-1 (line 392)
   0.02%       0x00007f571063f1da:   mov    %edx,(%rsp)
   0.14%       0x00007f571063f1dd:   mov    %rsi,%rbp
   0.00%       0x00007f571063f1e0:   mov    0x10(%rsi),%r10d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.stream.IntPipeline$10$1::accept@1 (line 392)
   0.10%  ╭    0x00007f571063f1e4:   mov    0x34(%r12,%r10,8),%r11d      ; implicit exception: dispatches to 0x00007f571063f259
   0.12%  │    0x00007f571063f1e9:   mov    %r11,%rsi
   0.07%  │    0x00007f571063f1ec:   shl    $0x3,%rsi                    ;*getfield val$predicate {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.stream.IntPipeline$10$1::accept@4 (line 392)
   0.05%  │    0x00007f571063f1f0:   nop
   0.06%  │    0x00007f571063f1f1:   movabs $0xffffffffffffffff,%rax
   0.00%  │    0x00007f571063f1fb:   call   0x00007f57100c1260           ; ImmutableOopMap {rbp=Oop }
          │                                                              ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │                                                              ;   {virtual_call}
   0.26%  │    0x00007f571063f200:   nopl   0x1f0(%rax,%rax,1)           ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │                                                              ;   {other}
   0.00%  │    0x00007f571063f208:   test   %eax,%eax
          │╭   0x00007f571063f20a:   je     0x00007f571063f234           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.stream.IntPipeline$10$1::accept@13 (line 392)
   0.09%  ││   0x00007f571063f20c:   mov    0xc(%rbp),%r11d
   0.96%  ││   0x00007f571063f210:   mov    %r11,%rsi
          ││   0x00007f571063f213:   shl    $0x3,%rsi                    ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.stream.IntPipeline$10$1::accept@17 (line 393)
   0.16%  ││   0x00007f571063f217:   mov    (%rsp),%edx
   0.16%  ││   0x00007f571063f21a:   data16 xchg %ax,%ax
          ││   0x00007f571063f21d:   movabs $0x7f5697352408,%rax
   0.00%  ││   0x00007f571063f227:   call   0x00007f57100c12a0           ; ImmutableOopMap {}
          ││                                                             ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.stream.IntPipeline$10$1::accept@21 (line 393)
          ││                                                             ;   {virtual_call}
   0.12%  ││   0x00007f571063f22c:   nopl   0x100021c(%rax,%rax,1)       ;*return {reexecute=0 rethrow=0 return_oop=0}
          ││                                                             ; - java.util.stream.IntPipeline$10$1::accept@26 (line 394)
          ││                                                             ;   {other}
   0.11%  │↘   0x00007f571063f234:   add    $0x20,%rsp
   0.30%  │    0x00007f571063f238:   pop    %rbp
   0.51%  │    0x00007f571063f239:   cmp    0x450(%r15),%rsp             ;   {poll_return}
   0.00%  │    0x00007f571063f240:   ja     0x00007f571063f26c
   0.20%  │    0x00007f571063f246:   ret                                 ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
          │                                                              ; - java.util.stream.IntPipeline$10$1::accept@8 (line 392)
          │    0x00007f571063f247:   mov    %rax,%rsi
          │ ╭  0x00007f571063f24a:   jmp    0x00007f571063f24f
          │ │  0x00007f571063f24c:   mov    %rax,%rsi                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.stream.IntPipeline$10$1::accept@21 (line 393)
          │ ↘  0x00007f571063f24f:   add    $0x20,%rsp
          │    0x00007f571063f253:   pop    %rbp
          │    0x00007f571063f254:   jmp    0x00007f571019d580           ;   {runtime_call _rethrow_Java}
          ↘    0x00007f571063f259:   mov    $0xfffffff6,%esi
               0x00007f571063f25e:   nop
....................................................................................................
  10.51%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.stream.IntPipeline$10::opWrapSink, version 2, compile id 760 

                # parm1:    rcx:rcx   = &apos;java/util/stream/Sink&apos;
                #           [sp+0x40]  (sp of caller)
                0x00007f571064df20:   mov    0x8(%rsi),%r10d
                0x00007f571064df24:   movabs $0x7f5697000000,%r11
                0x00007f571064df2e:   add    %r11,%r10
                0x00007f571064df31:   cmp    %r10,%rax
                0x00007f571064df34:   jne    0x00007f57100c4080           ;   {runtime_call ic_miss_stub}
                0x00007f571064df3a:   xchg   %ax,%ax
                0x00007f571064df3c:   nopl   0x0(%rax)
              [Verified Entry Point]
   1.29%        0x00007f571064df40:   mov    %eax,-0x14000(%rsp)
   1.50%        0x00007f571064df47:   push   %rbp
   0.00%        0x00007f571064df48:   sub    $0x30,%rsp
   0.00%        0x00007f571064df4c:   cmpl   $0x1,0x20(%r15)
   0.09%        0x00007f571064df54:   jne    0x00007f571064e0fb           ;*synchronization entry
                                                                          ; - java.util.stream.IntPipeline$10::opWrapSink@-1 (line 384)
   0.00%        0x00007f571064df5a:   mov    %rcx,(%rsp)
   0.06%        0x00007f571064df5e:   mov    %rsi,%rbp
                0x00007f571064df61:   mov    0x1b8(%r15),%rbx
   0.12%        0x00007f571064df68:   mov    %rbx,%r10
   0.00%        0x00007f571064df6b:   add    $0x18,%r10
   0.05%        0x00007f571064df6f:   cmp    0x1c8(%r15),%r10
                0x00007f571064df76:   jae    0x00007f571064e09c           ;*putfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Sink$ChainedInt::&lt;init&gt;@12 (line 283)
                                                                          ; - java.util.stream.IntPipeline$10$1::&lt;init&gt;@7 (line 384)
                                                                          ; - java.util.stream.IntPipeline$10::opWrapSink@6 (line 384)
   0.01%        0x00007f571064df7c:   mov    %r10,0x1b8(%r15)
   0.05%        0x00007f571064df83:   prefetchw 0xc0(%r10)
   0.04%        0x00007f571064df8b:   movq   $0x1,(%rbx)
   0.09%        0x00007f571064df92:   movl   $0x352408,0x8(%rbx)          ;   {metadata(&apos;java/util/stream/IntPipeline$10$1&apos;)}
   0.19%        0x00007f571064df99:   mov    %r12d,0xc(%rbx)
   0.03%        0x00007f571064df9d:   mov    %r12d,0x14(%rbx)
   0.08%        0x00007f571064dfa1:   mov    %rbp,%r11
   0.00%        0x00007f571064dfa4:   shr    $0x3,%r11
   0.05%        0x00007f571064dfa8:   mov    %r11d,0x10(%rbx)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.IntPipeline$10::opWrapSink@0 (line 384)
   0.02%        0x00007f571064dfac:   mov    (%rsp),%r9
   0.03%        0x00007f571064dfb0:   mov    0x8(%r9),%r11d               ; implicit exception: dispatches to 0x00007f571064e0bc
   0.14%        0x00007f571064dfb4:   movabs $0x7f5697340d58,%rax         ;   {metadata(&apos;java/util/stream/Sink&apos;)}
   0.03%        0x00007f571064dfbe:   movabs $0x7f5697000000,%rsi
   0.01%        0x00007f571064dfc8:   add    %r11,%rsi
   0.06%        0x00007f571064dfcb:   mov    0x20(%rsi),%r10
   3.79%        0x00007f571064dfcf:   cmp    %rax,%r10
          ╭     0x00007f571064dfd2:   jne    0x00007f571064e01d           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.stream.Sink$ChainedInt::&lt;init&gt;@9 (line 283)
          │                                                               ; - java.util.stream.IntPipeline$10$1::&lt;init&gt;@7 (line 384)
          │                                                               ; - java.util.stream.IntPipeline$10::opWrapSink@6 (line 384)
   0.23%  │  ↗  0x00007f571064dfd4:   mov    %rbx,%r10
   0.01%  │  │  0x00007f571064dfd7:   mov    %r9,%r8
   0.02%  │  │  0x00007f571064dfda:   shr    $0x3,%r8
   0.08%  │  │  0x00007f571064dfde:   mov    %r8d,0xc(%rbx)
   0.13%  │  │  0x00007f571064dfe2:   mov    %r9,%r11
          │  │  0x00007f571064dfe5:   xor    %r10,%r11
   0.00%  │  │  0x00007f571064dfe8:   shr    $0x15,%r11
          │  │  0x00007f571064dfec:   test   %r11,%r11
          │╭ │  0x00007f571064dfef:   je     0x00007f571064e007
          ││ │  0x00007f571064dff1:   shr    $0x9,%r10
          ││ │  0x00007f571064dff5:   movabs $0x7f5721d46000,%rdi
          ││ │  0x00007f571064dfff:   add    %r10,%rdi
          ││ │  0x00007f571064e002:   cmpb   $0x2,(%rdi)
          ││ │  0x00007f571064e005:   jne    0x00007f571064e050           ;*synchronization entry
          ││ │                                                            ; - java.util.stream.IntPipeline$10$1::&lt;init&gt;@-1 (line 384)
          ││ │                                                            ; - java.util.stream.IntPipeline$10::opWrapSink@6 (line 384)
   0.09%  │↘ │  0x00007f571064e007:   mov    %rbx,%rax
          │  │  0x00007f571064e00a:   add    $0x30,%rsp
   0.00%  │  │  0x00007f571064e00e:   pop    %rbp
   0.13%  │  │  0x00007f571064e00f:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  │  0x00007f571064e016:   ja     0x00007f571064e0e5
   0.10%  │  │  0x00007f571064e01c:   ret    
   0.10%  ↘  │  0x00007f571064e01d:   mov    0x28(%rsi),%rdi
   0.14%     │  0x00007f571064e021:   mov    (%rdi),%ecx
   0.11%     │  0x00007f571064e023:   add    $0x8,%rdi
             │  0x00007f571064e027:   test   %rax,%rax
   0.09%     │  0x00007f571064e02a:   repnz scas %es:(%rdi),%rax
   0.81%    ╭│  0x00007f571064e02d:   jne    0x00007f571064e037
   0.13%    ││  0x00007f571064e033:   mov    %rax,0x20(%rsi)
   0.13%    ↘╰  0x00007f571064e037:   je     0x00007f571064dfd4
                0x00007f571064e039:   mov    $0xffffffde,%esi
                0x00007f571064e03e:   mov    %r9,%rbp
                0x00007f571064e041:   xchg   %ax,%ax
                0x00007f571064e043:   call   0x00007f57100c9f00           ; ImmutableOopMap {rbp=Oop }
                                                                          ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.Sink$ChainedInt::&lt;init&gt;@9 (line 283)
                                                                          ; - java.util.stream.IntPipeline$10$1::&lt;init&gt;@7 (line 384)
                                                                          ; - java.util.stream.IntPipeline$10::opWrapSink@6 (line 384)
                                                                          ;   {runtime_call UncommonTrapBlob}
                0x00007f571064e048:   nopl   0x2b8(%rax,%rax,1)           ;   {other}
....................................................................................................
  10.01%  <total for region 2>

....[Hottest Regions]...............................................................................
  10.51%         c2, level 4  java.util.stream.IntPipeline$10$1::accept, version 2, compile id 656 
  10.01%         c2, level 4  java.util.stream.IntPipeline$10::opWrapSink, version 2, compile id 760 
   8.07%                      <unknown> 
   7.11%         c2, level 4  java.util.stream.IntPipeline$7$1::accept, version 2, compile id 800 
   5.97%         c2, level 4  java.util.stream.IntPipeline$4$1::accept, version 2, compile id 740 
   5.27%         c2, level 4  java.util.stream.Sink$ChainedInt::end, version 2, compile id 679 
   4.43%                      <unknown> 
   3.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f569808eb68::test, version 2, compile id 716 
   3.64%         c2, level 4  java.util.stream.IntPipeline$10$1::begin, version 2, compile id 755 
   3.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f5698087d38::test, version 2, compile id 707 
   3.39%                      <unknown> 
   3.24%    perf-1936319.map  [unknown] 
   3.13%         c2, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 722 
   2.21%         c2, level 4  java.util.stream.IntPipeline$7::opWrapSink, version 2, compile id 834 
   2.06%         c2, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 722 
   1.89%         c2, level 4  java.util.stream.IntPipeline$4::opWrapSink, version 2, compile id 782 
   1.85%         c2, level 4  java.util.stream.Sink::end, version 2, compile id 764 
   1.67%                      <unknown> 
   1.58%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f5698087220::apply, version 2, compile id 799 
   1.52%         c2, level 4  java.util.stream.Sink$ChainedInt::begin, version 3, compile id 944 
  14.99%  <...other 947 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  17.85%                      <unknown> 
  10.51%         c2, level 4  java.util.stream.IntPipeline$10$1::accept, version 2, compile id 656 
  10.01%         c2, level 4  java.util.stream.IntPipeline$10::opWrapSink, version 2, compile id 760 
   7.37%         c2, level 4  java.util.stream.Streams$RangeIntSpliterator::forEachRemaining, version 2, compile id 722 
   7.11%         c2, level 4  java.util.stream.IntPipeline$7$1::accept, version 2, compile id 800 
   5.97%         c2, level 4  java.util.stream.IntPipeline$4$1::accept, version 2, compile id 740 
   5.27%         c2, level 4  java.util.stream.Sink$ChainedInt::end, version 2, compile id 679 
   4.71%    perf-1936319.map  [unknown] 
   3.99%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f569808eb68::test, version 2, compile id 716 
   3.64%         c2, level 4  java.util.stream.IntPipeline$10$1::begin, version 2, compile id 755 
   3.46%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f5698087d38::test, version 2, compile id 707 
   3.34%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife::lambda$evolveGeneration$2, version 2, compile id 841 
   2.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f5698087220::apply, version 2, compile id 799 
   2.72%         c2, level 4  java.util.stream.IntPipeline$7::opWrapSink, version 2, compile id 834 
   1.96%              kernel  [unknown] 
   1.89%         c2, level 4  java.util.stream.IntPipeline$4::opWrapSink, version 2, compile id 782 
   1.85%         c2, level 4  java.util.stream.Sink::end, version 2, compile id 764 
   1.52%         c2, level 4  java.util.stream.Sink$ChainedInt::begin, version 3, compile id 944 
   0.89%         c2, level 4  java.util.concurrent.ForkJoinPool::runWorker, version 3, compile id 943 
   0.69%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.functional.FunctionalGameOfLife$$Lambda.0x00007f5698087660::test, version 2, compile id 756 
   2.29%  <...other 248 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  74.67%         c2, level 4
  17.85%                    
   4.71%    perf-1936319.map
   1.96%              kernel
   0.52%           libjvm.so
   0.17%  libpthread-2.31.so
   0.06%        libc-2.31.so
   0.02%          ld-2.31.so
   0.02%    Unknown, level 0
   0.01%              [vdso]
   0.00%         interpreter
   0.00%      hsdis-amd64.so
   0.00%        runtime stub
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.iterative

# Run progress: 50.00% complete, ETA 00:02:00
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 38.930 ms/op
# Warmup Iteration   2: 39.087 ms/op
# Warmup Iteration   3: 39.088 ms/op
# Warmup Iteration   4: 39.032 ms/op
# Warmup Iteration   5: 39.070 ms/op
Iteration   1: 39.048 ms/op
Iteration   2: 39.075 ms/op
Iteration   3: 39.053 ms/op
Iteration   4: 39.042 ms/op
Iteration   5: 39.048 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.iterative":
  39.053 ±(99.9%) 0.049 ms/op [Average]
  (min, avg, max) = (39.042, 39.053, 39.075), stdev = 0.013
  CI (99.9%): [39.004, 39.103] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.GameOfLifeBenchmark.iterative:asm":
PrintAssembly processed: 180273 total address lines.
Perf output processed (skipped 60.207 seconds):
 Column 1: cycles (50538 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 910 

                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%                               0x00007f744468f4f5:   mov    %r10d,0x4(%rsp)
   0.01%                               0x00007f744468f4fa:   mov    %r11d,0x3c(%rsp)
                                       0x00007f744468f4ff:   mov    %r8,0x10(%rsp)
                                       0x00007f744468f504:   mov    %ecx,(%rsp)
                                       0x00007f744468f507:   movabs $0x7f73cc0773b8,%rsi         ;   {metadata({type array byte}[])}
                                       0x00007f744468f511:   mov    %r11d,%edx
                                       0x00007f744468f514:   mov    %r10d,%ecx
                                       0x00007f744468f517:   nop
                                       0x00007f744468f518:   vzeroupper 
   0.01%                               0x00007f744468f51b:   call   0x00007f744419a680           ; ImmutableOopMap {[8]=Oop [16]=Derived_oop_[8] }
                                                                                                 ;*multianewarray {reexecute=0 rethrow=0 return_oop=1}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@10 (line 37)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                                                                                                 ;   {runtime_call _multianewarray2_Java}
                                       0x00007f744468f520:   nopl   0x1000290(%rax,%rax,1)       ;*multianewarray {reexecute=0 rethrow=0 return_oop=0}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@10 (line 37)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
                                                                                                 ;   {other}
                                       0x00007f744468f528:   mov    0xc(%rax),%ebx               ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@36 (line 41)
                                                                                                 ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.02%                               0x00007f744468f52b:   mov    0x4(%rsp),%r9d
   0.00%                               0x00007f744468f530:   dec    %r9d
   0.00%                               0x00007f744468f533:   xor    %r14d,%r14d
          ╭                            0x00007f744468f536:   jmp    0x00007f744468f57a
   0.01%  │           ↗                0x00007f744468f538:   mov    $0x1,%r10d
          │           │                0x00007f744468f53e:   xchg   %ax,%ax
   0.00%  │╭          │                0x00007f744468f540:   jmp    0x00007f744468f6f6           ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
          ││          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@33 (line 41)
          ││          │                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%  ││          │↗               0x00007f744468f545:   mov    0x18(%rsp),%edi
   0.00%  ││          ││               0x00007f744468f549:   vmovd  %xmm1,%ebp
   0.04%  ││          ││               0x00007f744468f54d:   vmovq  %xmm0,%rax
          ││          ││               0x00007f744468f552:   vmovd  %xmm2,%ebx
   0.00%  ││          ││               0x00007f744468f556:   vmovd  %xmm4,%r9d
   0.00%  ││          ││               0x00007f744468f55b:   mov    0x4c(%rsp),%ecx              ;*goto {reexecute=0 rethrow=0 return_oop=0}
          ││          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@94 (line 55)
          ││          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
          ││          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.03%  ││↗         ││               0x00007f744468f55f:   mov    0x458(%r15),%r10             ; ImmutableOopMap {rax=Oop [8]=Oop [16]=Derived_oop_[8] }
          │││         ││                                                                         ;*goto {reexecute=1 rethrow=0 return_oop=0}
          │││         ││                                                                         ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@57 (line 39)
          │││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%  │││         ││               0x00007f744468f566:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
          │││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@57 (line 39)
          │││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
          │││         ││                                                                         ;   {poll}
          │││         ││               0x00007f744468f569:   cmp    0x3c(%rsp),%ecx
          │││         ││               0x00007f744468f56d:   jge    0x00007f744468f477
          │││         ││               0x00007f744468f573:   mov    %ecx,%r14d
   0.03%  │││         ││               0x00007f744468f576:   mov    %edi,0x4(%rsp)               ;*iconst_0 {reexecute=0 rethrow=0 return_oop=0}
          │││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@24 (line 40)
          │││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%  ↘││         ││               0x00007f744468f57a:   mov    %r14d,%ecx
           ││         ││               0x00007f744468f57d:   inc    %ecx                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
           ││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@21 (line 54)
           ││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           ││         ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%   ││         ││               0x00007f744468f57f:   mov    0x4(%rsp),%edi
   0.05%   ││         ││               0x00007f744468f583:   test   %edi,%edi
           │╰         ││               0x00007f744468f585:   jbe    0x00007f744468f55f           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@30 (line 40)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%   │          ││               0x00007f744468f587:   cmp    %ebx,%r14d
           │          ││               0x00007f744468f58a:   jae    0x00007f744468f950
           │          ││               0x00007f744468f590:   mov    0x10(%rsp),%r13
   0.01%   │          ││               0x00007f744468f595:   mov    0x0(%r13),%r11d              ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@5 (line 51)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%   │          ││               0x00007f744468f599:   nopl   0x0(%rax)
   0.00%   │          ││               0x00007f744468f5a0:   mov    0xc(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007f744468f9d8
           │          ││                                                                         ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@6 (line 51)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.03%   │          ││               0x00007f744468f5a5:   cmp    0x3c(%rsp),%r14d
           │          ││               0x00007f744468f5aa:   jae    0x00007f744468f980
           │          ││               0x00007f744468f5b0:   mov    0x8(%rsp),%r11
   0.04%   │          ││               0x00007f744468f5b5:   mov    0x10(%r11,%r14,4),%esi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@105 (line 64)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
           │          ││               0x00007f744468f5ba:   nopw   0x0(%rax,%rax,1)
   0.01%   │          ││               0x00007f744468f5c0:   mov    0xc(%r12,%rsi,8),%r10d       ; implicit exception: dispatches to 0x00007f744468f955
           │          ││                                                                         ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@107 (line 64)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
           │          ││               0x00007f744468f5c5:   test   %r10d,%r10d
           │          ││               0x00007f744468f5c8:   jbe    0x00007f744468f955
   0.07%   │          ││               0x00007f744468f5ce:   cmp    %r10d,%r9d
           │          ││               0x00007f744468f5d1:   jae    0x00007f744468f955
   0.00%   │          ││               0x00007f744468f5d7:   mov    0x10(%rax,%r14,4),%edx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@36 (line 41)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
           │          ││               0x00007f744468f5dc:   nopl   0x0(%rax)
           │          ││               0x00007f744468f5e0:   mov    0xc(%r12,%rdx,8),%r10d       ; implicit exception: dispatches to 0x00007f744468f955
           │          ││                                                                         ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@47 (line 41)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.03%   │          ││               0x00007f744468f5e5:   test   %r10d,%r10d
           │          ││               0x00007f744468f5e8:   jbe    0x00007f744468f955
   0.02%   │          ││               0x00007f744468f5ee:   cmp    %r10d,%r9d
           │          ││               0x00007f744468f5f1:   jae    0x00007f744468f955
           │          ││               0x00007f744468f5f7:   mov    %rax,-0x8(%rsp)
           │          ││               0x00007f744468f5fc:   mov    0x4(%rsp),%eax
   0.03%   │          ││               0x00007f744468f600:   mov    %eax,0x18(%rsp)
   0.01%   │          ││               0x00007f744468f604:   mov    -0x8(%rsp),%rax
           │          ││               0x00007f744468f609:   shl    $0x3,%rsi
           │          ││               0x00007f744468f60d:   mov    %r14d,%edi
   0.04%   │          ││               0x00007f744468f610:   dec    %edi                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@14 (line 54)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │          ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.01%   │          ││               0x00007f744468f612:   lea    0x2(%r14),%r11d
           │          ││               0x00007f744468f616:   lea    (%r12,%rdx,8),%r13
           │          ││               0x00007f744468f61a:   xor    %r10d,%r10d
   0.05%   │          ││               0x00007f744468f61d:   vmovd  %ebp,%xmm1
   0.02%   │          ││               0x00007f744468f621:   vmovq  %rax,%xmm0
           │          ││               0x00007f744468f626:   vmovd  %ebx,%xmm2
           │          ││               0x00007f744468f62a:   vmovd  %r9d,%xmm4
   0.04%   │          ││               0x00007f744468f62f:   mov    %ecx,0x4c(%rsp)
   0.01%   │          ││               0x00007f744468f633:   vmovd  %edx,%xmm5
           │          ││               0x00007f744468f637:   vmovq  %rsi,%xmm3
           │          ││               0x00007f744468f63c:   vmovd  %edi,%xmm6
   0.04%   │          ││               0x00007f744468f640:   vmovq  %r13,%xmm7
   0.02%   │ ╭        ││               0x00007f744468f645:   jmp    0x00007f744468f717
   1.00%   │ │  ↗     ││               0x00007f744468f64a:   inc    %ebx
   0.43%   │ │  │     ││               0x00007f744468f64c:   movsbl %bl,%ebx                     ;*i2b {reexecute=0 rethrow=0 return_oop=0}
           │ │  │     ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@88 (line 58)
           │ │  │     ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │  │     ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.16%   │ │╭ │     ││               0x00007f744468f64f:   jmp    0x00007f744468f692
           │ ││ │     ││               0x00007f744468f654:   nopl   0x0(%rax,%rax,1)
           │ ││ │     ││               0x00007f744468f65c:   data16 data16 xchg %ax,%ax          ;*aload_0 {reexecute=0 rethrow=0 return_oop=0}
           │ ││ │     ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@73 (line 57)
           │ ││ │     ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ ││ │     ││                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.98%   │ ││ │     ││      ↗ ↗      0x00007f744468f660:   cmp    0x3c(%rsp),%edx
           │ ││╭│     ││      │ │      0x00007f744468f664:   jae    0x00007f744468f7ed           ;   {no_reloc}
   2.41%   │ ││││     ││      │ │      0x00007f744468f66a:   mov    0x8(%rsp),%r9
   1.10%   │ ││││     ││      │ │      0x00007f744468f66f:   mov    0x10(%r9,%rdx,4),%edi        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
           │ ││││     ││      │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@76 (line 57)
           │ ││││     ││      │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ ││││     ││      │ │                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   3.78%   │ ││││     ││      │ │      0x00007f744468f674:   mov    0xc(%r12,%rdi,8),%r9d        ; implicit exception: dispatches to 0x00007f744468f9c0
   3.74%   │ ││││     ││      │ │      0x00007f744468f679:   cmp    %r9d,%ecx
   5.17%   │ ││││     ││      │ │      0x00007f744468f67c:   nopl   0x0(%rax)
   0.35%   │ ││││     ││      │ │      0x00007f744468f680:   jae    0x00007f744468f840
   8.27%   │ ││││     ││      │ │      0x00007f744468f686:   lea    (%r12,%rdi,8),%r9
   0.79%   │ ││││     ││      │ │      0x00007f744468f68a:   cmpb   $0x1,0x10(%r9,%rcx,1)
   2.36%   │ │││╰     ││      │ │      0x00007f744468f690:   je     0x00007f744468f64a
   7.29%   │ │↘│      ││    ↗↗│↗│      0x00007f744468f692:   inc    %ecx                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ │ │      ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@91 (line 55)
           │ │ │      ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │      ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.88%   │ │ │      ││    │││││      0x00007f744468f694:   cmp    %r13d,%ecx
           │ │ │ ╭    ││    │││││      0x00007f744468f697:   jl     0x00007f744468f7a2           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ │    ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@94 (line 55)
           │ │ │ │    ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ │    ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.47%   │ │ │ │    ││    │││││      0x00007f744468f69d:   mov    0x458(%r15),%r9              ; ImmutableOopMap {xmm0=Oop xmm3=Oop xmm5=NarrowOop xmm7=Oop [8]=Oop [16]=Derived_oop_[8] }
           │ │ │ │    ││    │││││                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ │ │ │    ││    │││││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@94 (line 55)
           │ │ │ │    ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ │    ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.37%   │ │ │ │    ││    │││││      0x00007f744468f6a4:   test   %eax,(%r9)                   ;   {poll}
   3.42%   │ │ │ │    ││    │││││      0x00007f744468f6a7:   cmp    %ebp,%ecx
           │ │ │ │╭   ││    │││││      0x00007f744468f6a9:   jl     0x00007f744468f77c           ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││   ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@94 (line 55)
           │ │ │ ││   ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││   ││    │││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.08%   │ │ │ ││   ││ ↗↗↗│││││      0x00007f744468f6af:   mov    0x458(%r15),%r9
   0.43%   │ │ │ ││   ││ ││││││││      0x00007f744468f6b6:   inc    %edx                         ; ImmutableOopMap {xmm0=Oop xmm3=Oop xmm5=NarrowOop xmm7=Oop [8]=Oop [16]=Derived_oop_[8] }
           │ │ │ ││   ││ ││││││││                                                                ;*goto {reexecute=1 rethrow=0 return_oop=0}
           │ │ │ ││   ││ ││││││││                                                                ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@100 (line 54)
           │ │ │ ││   ││ ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││   ││ ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.09%   │ │ │ ││   ││ ││││││││      0x00007f744468f6b8:   test   %eax,(%r9)                   ;*goto {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││   ││ ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@100 (line 54)
           │ │ │ ││   ││ ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││   ││ ││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
           │ │ │ ││   ││ ││││││││                                                                ;   {poll}
   2.91%   │ │ │ ││   ││ ││││││││      0x00007f744468f6bb:   nopl   0x0(%rax,%rax,1)
   0.09%   │ │ │ ││   ││ ││││││││      0x00007f744468f6c0:   cmp    %r11d,%edx
           │ │ │ ││╭  ││ ││││││││      0x00007f744468f6c3:   jge    0x00007f744468f6cc
   0.43%   │ │ │ │││╭ ││ ││││││││      0x00007f744468f6c5:   jmp    0x00007f744468f75c
           │ │ │ ││││ ││↗││││││││      0x00007f744468f6ca:   xor    %ebx,%ebx                    ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││││ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@22 (line 54)
           │ │ │ ││││ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││││ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%   │ │ │ ││↘│ │││││││││││      0x00007f744468f6cc:   movslq %r10d,%r9                    ;*bastore {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││ │ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@47 (line 41)
           │ │ │ ││ │ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.00%   │ │ │ ││ │ │││││││││││      0x00007f744468f6cf:   vmovq  %xmm3,%r10
   1.09%   │ │ │ ││ │ │││││││││││      0x00007f744468f6d4:   movsbl 0x10(%r10,%r9,1),%r10d       ;*baload {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││ │ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@107 (line 64)
           │ │ │ ││ │ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││ │ │││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.03%   │ │ │ ││ │ │││││││││││      0x00007f744468f6da:   nopw   0x0(%rax,%rax,1)
   0.05%   │ │ │ ││ │ │││││││││││      0x00007f744468f6e0:   cmp    $0x1,%r10d
           │ │ │ ││ │╭│││││││││││      0x00007f744468f6e4:   je     0x00007f744468f7ce           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││ │││││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@109 (line 64)
           │ │ │ ││ │││││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││ │││││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.03%   │ │ │ ││ │││││││││││││      0x00007f744468f6ea:   cmp    $0x3,%ebx
           │ │ │ ││ ││╰││││││││││      0x00007f744468f6ed:   je     0x00007f744468f538           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││ ││ ││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@134 (line 67)
           │ │ │ ││ ││ ││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││ ││ ││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.95%   │ │ │ ││ ││ ││││││││││      0x00007f744468f6f3:   xor    %r10d,%r10d                  ;*invokestatic evolveCell {reexecute=0 rethrow=0 return_oop=0}
           │ │ │ ││ ││ ││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
           │ │ │ ││ ││ ││││││││││                                                                ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.06%   ↘ │ │ ││ ││ ││││││││││ ↗ ↗  0x00007f744468f6f6:   vmovq  %xmm7,%rcx
   0.04%     │ │ ││ ││ ││││││││││ │ │  0x00007f744468f6fb:   mov    %r10b,0x10(%rcx,%r9,1)       ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││ ││ ││││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@94 (line 55)
             │ │ ││ ││ ││││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
             │ │ ││ ││ ││││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.07%     │ │ ││ ││ ││││││││││ │ │  0x00007f744468f700:   mov    0x458(%r15),%r10             ; ImmutableOopMap {xmm0=Oop xmm3=Oop xmm5=NarrowOop xmm7=Oop [8]=Oop [16]=Derived_oop_[8] }
             │ │ ││ ││ ││││││││││ │ │                                                            ;*goto {reexecute=1 rethrow=0 return_oop=0}
             │ │ ││ ││ ││││││││││ │ │                                                            ; - (reexecute) com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@51 (line 40)
             │ │ ││ ││ ││││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.91%     │ │ ││ ││ ││││││││││ │ │  0x00007f744468f707:   test   %eax,(%r10)                  ;*goto {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││ ││ ││││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@51 (line 40)
             │ │ ││ ││ ││││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
             │ │ ││ ││ ││││││││││ │ │                                                            ;   {poll}
   0.15%     │ │ ││ ││ ││││││││││ │ │  0x00007f744468f70a:   cmp    0x18(%rsp),%esi
             │ │ ││ ││ ╰│││││││││ │ │  0x00007f744468f70e:   jge    0x00007f744468f545           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││ ││  │││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@30 (line 40)
             │ │ ││ ││  │││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.02%     │ │ ││ ││  │││││││││ │ │  0x00007f744468f714:   mov    %esi,%r10d                   ;*aload_3 {reexecute=0 rethrow=0 return_oop=0}
             │ │ ││ ││  │││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@33 (line 41)
             │ │ ││ ││  │││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.03%     ↘ │ ││ ││  │││││││││ │ │  0x00007f744468f717:   mov    %r10d,%esi
   1.00%       │ ││ ││  │││││││││ │ │  0x00007f744468f71a:   inc    %esi                         ;*iadd {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││  │││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@34 (line 55)
               │ ││ ││  │││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │ ││ ││  │││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.09%       │ ││ ││  │││││││││ │ │  0x00007f744468f71c:   vmovd  %xmm6,%r9d
   0.05%       │ ││ ││  │││││││││ │ │  0x00007f744468f721:   cmp    0x4c(%rsp),%r9d
               │ ││ ││  ╰││││││││ │ │  0x00007f744468f726:   jg     0x00007f744468f6ca           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@22 (line 54)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.02%       │ ││ ││   ││││││││ │ │  0x00007f744468f728:   cmp    $0x7ffffffe,%esi
               │ ││ ││   ││││││││ │ │  0x00007f744468f72e:   jg     0x00007f744468f8b3
   0.99%       │ ││ ││   ││││││││ │ │  0x00007f744468f734:   mov    0x4c(%rsp),%r9d
   0.10%       │ ││ ││   ││││││││ │ │  0x00007f744468f739:   nopl   0x0(%rax)
   0.04%       │ ││ ││   ││││││││ │ │  0x00007f744468f740:   cmp    $0x7ffffffe,%r9d
               │ ││ ││   ││││││││ │ │  0x00007f744468f747:   jg     0x00007f744468f900           ;*goto {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@94 (line 55)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.02%       │ ││ ││   ││││││││ │ │  0x00007f744468f74d:   mov    %r10d,%eax
   1.02%       │ ││ ││   ││││││││ │ │  0x00007f744468f750:   dec    %eax                         ;*isub {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@27 (line 55)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.10%       │ ││ ││   ││││││││ │ │  0x00007f744468f752:   lea    0x2(%r10),%ebp
   0.05%       │ ││ ││   ││││││││ │ │  0x00007f744468f756:   vmovd  %xmm6,%edx
   0.02%       │ ││ ││   ││││││││ │ │  0x00007f744468f75a:   xor    %ebx,%ebx                    ;*iload_2 {reexecute=0 rethrow=0 return_oop=0}
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@25 (line 55)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │ ││ ││   ││││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.06%       │ ││ ↘│   ││││││││ │ │  0x00007f744468f75c:   nopl   0x0(%rax)
   1.86%       │ ││  │   ││││││││ │ │  0x00007f744468f760:   cmp    %esi,%eax
               │ ││  │   ╰│││││││ │ │  0x00007f744468f762:   jg     0x00007f744468f6af           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
               │ ││  │    │││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@35 (line 55)
               │ ││  │    │││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │ ││  │    │││││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.10%       │ ││  │    │││││││ │ │  0x00007f744468f768:   test   %edx,%edx
               │ ││  │    ╰││││││ │ │  0x00007f744468f76a:   jl     0x00007f744468f6af
   0.42%       │ ││  │     ││││││ │ │  0x00007f744468f770:   cmp    0x3c(%rsp),%edx
               │ ││  │     ╰│││││ │ │  0x00007f744468f774:   jge    0x00007f744468f6af
   1.04%       │ ││  │      │││││ │ │  0x00007f744468f77a:   mov    %eax,%ecx
   1.86%       │ │↘  │      │││││ │ │  0x00007f744468f77c:   mov    %r10d,%r13d
   0.08%       │ │   │      │││││ │ │  0x00007f744468f77f:   sub    %ecx,%r13d
   0.39%       │ │   │      │││││ │ │  0x00007f744468f782:   add    $0x2,%r13d
   1.06%       │ │   │      │││││ │ │  0x00007f744468f786:   xor    %edi,%edi
   1.82%       │ │   │      │││││ │ │  0x00007f744468f788:   cmp    %ecx,%ebp
   0.08%       │ │   │      │││││ │ │  0x00007f744468f78a:   cmovl  %edi,%r13d
   0.39%       │ │   │      │││││ │ │  0x00007f744468f78e:   cmp    $0x3e8,%r13d
   0.97%       │ │   │      │││││ │ │  0x00007f744468f795:   mov    $0x3e8,%r9d
   1.81%       │ │   │      │││││ │ │  0x00007f744468f79b:   cmova  %r9d,%r13d
   0.50%       │ │   │      │││││ │ │  0x00007f744468f79f:   add    %ecx,%r13d                   ;*iload {reexecute=0 rethrow=0 return_oop=0}
               │ │   │      │││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@38 (line 56)
               │ │   │      │││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │ │   │      │││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   2.40%       │ ↘   │      │││││ │ │  0x00007f744468f7a2:   test   %ecx,%ecx
               │     │      ╰││││ │ │  0x00007f744468f7a4:   jl     0x00007f744468f692           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
               │     │       ││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@51 (line 56)
               │     │       ││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │     │       ││││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   2.03%       │     │       ││││ │ │  0x00007f744468f7aa:   cmp    %r8d,%ecx
               │     │       ╰│││ │ │  0x00007f744468f7ad:   jge    0x00007f744468f692           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
               │     │        │││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@58 (line 56)
               │     │        │││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │     │        │││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   3.72%       │     │        │││ │ │  0x00007f744468f7b3:   cmp    %r14d,%edx
               │     │        ╰││ │ │  0x00007f744468f7b6:   jne    0x00007f744468f660           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
               │     │         ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@64 (line 56)
               │     │         ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │     │         ││ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.04%       │     │         ││ │ │  0x00007f744468f7bc:   nopl   0x0(%rax)
   0.29%       │     │         ││ │ │  0x00007f744468f7c0:   cmp    %r10d,%ecx
               │     │         ╰│ │ │  0x00007f744468f7c3:   je     0x00007f744468f692           ;*if_icmpeq {reexecute=0 rethrow=0 return_oop=0}
               │     │          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@70 (line 56)
               │     │          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │     │          │ │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   1.08%       │     │          ╰ │ │  0x00007f744468f7c9:   jmp    0x00007f744468f660
   0.00%       │     ↘            │ │  0x00007f744468f7ce:   cmp    $0x2,%ebx
               │                 ╭│ │  0x00007f744468f7d1:   jne    0x00007f744468f7de           ;*iconst_1 {reexecute=0 rethrow=0 return_oop=0}
               │                 ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@124 (line 65)
               │                 ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │                 ││ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
   0.04%       │                 ││↗│  0x00007f744468f7d3:   mov    $0x1,%r10d
   0.00%       │                 │╰││  0x00007f744468f7d9:   jmp    0x00007f744468f6f6
   0.03%       │                 ↘ ││  0x00007f744468f7de:   xchg   %ax,%ax
               │                   ││  0x00007f744468f7e0:   cmp    $0x3,%ebx
               │                   ╰│  0x00007f744468f7e3:   je     0x00007f744468f7d3           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
               │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveCell@121 (line 65)
               │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolveGeneration@44 (line 41)
               │                    │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve@8 (line 29)
               │                    │  0x00007f744468f7e5:   xor    %r10d,%r10d
               │                    ╰  0x00007f744468f7e8:   jmp    0x00007f744468f6f6
               ↘                       0x00007f744468f7ed:   mov    $0xffffffe4,%esi
                                       0x00007f744468f7f2:   mov    (%rsp),%ebp
                                       0x00007f744468f7f5:   vmovss %xmm1,(%rsp)
....................................................................................................
  80.82%  <total for region 1>

....[Hottest Regions]...............................................................................
  80.82%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 910 
   2.88%           libjvm.so  TypeArrayKlass::multi_allocate 
   2.44%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   2.06%           libjvm.so  ObjArrayAllocator::initialize 
   1.29%           libjvm.so  MemAllocator::allocate 
   1.27%          ld-2.31.so  __tls_get_addr 
   1.13%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.92%           libjvm.so  ObjArrayAllocator::initialize 
   0.85%           libjvm.so  MemAllocator::allocate 
   0.84%           libjvm.so  ObjArrayKlass::multi_allocate 
   0.57%           libjvm.so  MemAllocator::Allocation::check_out_of_memory 
   0.53%        libc-2.31.so  __memset_avx2_unaligned_erms 
   0.46%           libjvm.so  MemAllocator::allocate 
   0.43%           libjvm.so  MemAllocator::Allocation::notify_allocation_jvmti_sampler 
   0.36%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.33%           libjvm.so  Klass::check_array_allocation_length 
   0.31%           libjvm.so  Klass::check_array_allocation_length 
   0.17%           libjvm.so  MemAllocator::Allocation::notify_allocation_jfr_sampler 
   0.14%           libjvm.so  ObjArrayAllocator::initialize 
   0.12%           libjvm.so  ObjArrayKlass::allocate 
   2.10%  <...other 260 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  80.85%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.gameoflife.iterative.IterativeGameOfLife::evolve, version 4, compile id 910 
   3.12%           libjvm.so  ObjArrayAllocator::initialize 
   2.88%           libjvm.so  TypeArrayKlass::multi_allocate 
   2.69%           libjvm.so  MemAllocator::allocate 
   2.44%           libjvm.so  AccessInternal::PostRuntimeDispatch<G1BarrierSet::AccessBarrier<2383974ul, G1BarrierSet>, (AccessInternal::BarrierType)1, 2383974ul>::oop_access_barrier 
   1.66%        libc-2.31.so  __memset_avx2_unaligned_erms 
   1.27%          ld-2.31.so  __tls_get_addr 
   0.99%           libjvm.so  ObjArrayKlass::multi_allocate 
   0.98%              kernel  [unknown] 
   0.64%           libjvm.so  Klass::check_array_allocation_length 
   0.57%           libjvm.so  MemAllocator::Allocation::check_out_of_memory 
   0.51%           libjvm.so  MemAllocator::Allocation::notify_allocation_jvmti_sampler 
   0.42%        runtime stub  StubRoutines::oop_disjoint_arraycopy 
   0.24%           libjvm.so  ObjArrayKlass::allocate 
   0.17%           libjvm.so  MemAllocator::Allocation::notify_allocation_jfr_sampler 
   0.12%           libjvm.so  OptoRuntime::multianewarray2_C 
   0.11%                      <unknown> 
   0.06%           libjvm.so  G1BarrierSet::invalidate 
   0.04%           libjvm.so  G1BarrierSetRuntime::write_ref_array_post_entry 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.22%  <...other 73 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  80.85%         c2, level 4
  14.59%           libjvm.so
   1.75%        libc-2.31.so
   1.27%          ld-2.31.so
   0.98%              kernel
   0.42%        runtime stub
   0.11%                    
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%  libpthread-2.31.so
   0.00%              [vdso]
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:03:53

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
GameOfLifeBenchmark.functional      avgt    5  647.608 ± 5.546  ms/op
GameOfLifeBenchmark.functional:asm  avgt           NaN            ---
GameOfLifeBenchmark.iterative       avgt    5   39.053 ± 0.049  ms/op
GameOfLifeBenchmark.iterative:asm   avgt           NaN            ---
