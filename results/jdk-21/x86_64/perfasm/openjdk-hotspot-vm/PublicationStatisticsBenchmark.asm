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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.author_with_the_most_publications

# Run progress: 0.00% complete, ETA 00:23:20
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 54.789 ms/op
# Warmup Iteration   2: 50.114 ms/op
# Warmup Iteration   3: 49.497 ms/op
# Warmup Iteration   4: 49.201 ms/op
# Warmup Iteration   5: 49.241 ms/op
Iteration   1: 49.367 ms/op
Iteration   2: 59.829 ms/op
Iteration   3: 60.151 ms/op
Iteration   4: 60.017 ms/op
Iteration   5: 60.182 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.author_with_the_most_publications":
  57.909 ±(99.9%) 18.396 ms/op [Average]
  (min, avg, max) = (49.367, 57.909, 60.182), stdev = 4.777
  CI (99.9%): [39.513, 76.305] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.author_with_the_most_publications:asm":
PrintAssembly processed: 202945 total address lines.
Perf output processed (skipped 58.299 seconds):
 Column 1: cycles (50753 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap::computeIfAbsent, version 4, compile id 874 

              0x00007f19186734c0:   cmp    $0x1,%r11
              0x00007f19186734c4:   jne    0x00007f1918673906
              0x00007f19186734ca:   shr    $0x8,%r10
              0x00007f19186734ce:   mov    %r10d,%eax
              0x00007f19186734d1:   and    $0x7fffffff,%eax
              0x00007f19186734d6:   test   %eax,%eax
              0x00007f19186734d8:   je     0x00007f1918673906           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f19186734de:   mov    0x10(%rsp),%r10
   0.08%      0x00007f19186734e3:   mov    0x14(%r10),%r10d
   0.57%      0x00007f19186734e7:   mov    0x10(%rsp),%r11
              0x00007f19186734ec:   mov    0x1c(%r11),%r8d
   0.07%      0x00007f19186734f0:   mov    %eax,%r9d
   0.03%      0x00007f19186734f3:   shr    $0x10,%r9d
   0.21%      0x00007f19186734f7:   xor    %eax,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@18 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f19186734fa:   mov    %r9d,0x4(%rsp)
   0.06%      0x00007f19186734ff:   nop
   0.02%      0x00007f1918673500:   cmp    %r8d,%r10d
              0x00007f1918673503:   jg     0x00007f1918673949           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.26%      0x00007f1918673509:   mov    0x24(%r11),%r8d              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.01%      0x00007f191867350d:   test   %r8d,%r8d
              0x00007f1918673510:   je     0x00007f1918673949           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.10%      0x00007f1918673516:   mov    0xc(%r12,%r8,8),%r11d        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.52%      0x00007f191867351b:   nopl   0x0(%rax,%rax,1)
   0.14%      0x00007f1918673520:   test   %r11d,%r11d
              0x00007f1918673523:   jbe    0x00007f1918673ca0           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.19%      0x00007f1918673529:   lea    (%r12,%r8,8),%r10            ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.00%      0x00007f191867352d:   mov    %r10,0x28(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.02%      0x00007f1918673532:   mov    %r11d,%edx
   0.11%      0x00007f1918673535:   dec    %edx
   0.17%      0x00007f1918673537:   and    0x4(%rsp),%edx               ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
              0x00007f191867353b:   nopl   0x0(%rax,%rax,1)
   0.03%      0x00007f1918673540:   test   %r11d,%r11d
              0x00007f1918673543:   jle    0x00007f1918673ba5
   0.10%      0x00007f1918673549:   mov    0x28(%rsp),%r10
   0.17%      0x00007f191867354e:   lea    0x10(%r10,%rdx,4),%r9        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.69%      0x00007f1918673553:   mov    0x10(%rsp),%r10
   0.02%      0x00007f1918673558:   mov    0x8(%r10),%r10d              ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.08%      0x00007f191867355c:   vmovd  %r10d,%xmm1
              0x00007f1918673561:   mov    (%r9),%r10d                  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   2.18%      0x00007f1918673564:   test   %r10d,%r10d
              0x00007f1918673567:   je     0x00007f1918673777           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.23%      0x00007f191867356d:   mov    0x8(%r12,%r10,8),%r11d
   6.78%      0x00007f1918673572:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f191867357c:   data16 data16 xchg %ax,%ax
              0x00007f1918673580:   cmp    $0x1acba8,%r11d              ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
              0x00007f1918673587:   je     0x00007f1918673bd8
   0.35%      0x00007f191867358d:   lea    (%r12,%r10,8),%r11           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.01%      0x00007f1918673591:   mov    %r11,%r8
              0x00007f1918673594:   xor    %r13d,%r13d                  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
           ↗  0x00007f1918673597:   mov    0xc(%r8),%esi
   3.43%   │  0x00007f191867359b:   nopl   0x0(%rax,%rax,1)
   0.01%   │  0x00007f19186735a0:   cmp    0x4(%rsp),%esi
          ╭│  0x00007f19186735a4:   je     0x00007f19186735c5           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   1.48%  ││  0x00007f19186735a6:   mov    0x458(%r15),%rbx
   1.26%  ││  0x00007f19186735ad:   mov    0x18(%r8),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.20%  ││  0x00007f19186735b1:   inc    %r13d                        ; ImmutableOopMap {r10=NarrowOop r11=Oop r8=NarrowOop r14=Oop xmm0=Oop [16]=Oop [40]=Oop r9=Derived_oop_[40] }
          ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@166 (line 1219)
          ││  0x00007f19186735b4:   test   %eax,(%rbx)                  ;   {poll}
   0.67%  ││  0x00007f19186735b6:   test   %r8d,%r8d
          ││  0x00007f19186735b9:   je     0x00007f191867377d           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%  ││  0x00007f19186735bf:   shl    $0x3,%r8                     ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.01%  │╰  0x00007f19186735c3:   jmp    0x00007f1918673597
   0.56%  ↘   0x00007f19186735c5:   mov    0x10(%r8),%ebx               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.59%      0x00007f19186735c9:   mov    %rbx,%r9
   0.01%      0x00007f19186735cc:   shl    $0x3,%r9
   0.27%      0x00007f19186735d0:   vmovq  %xmm0,%r11
   0.03%      0x00007f19186735d5:   cmp    %r11,%r9
              0x00007f19186735d8:   je     0x00007f1918673cd4           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
   0.50%      0x00007f19186735de:   xchg   %ax,%ax
   0.00%      0x00007f19186735e0:   cmp    $0x102a690,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007f19186735e6:   jne    0x00007f1918673c10           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%      0x00007f19186735ec:   cmp    %r9,%r11
              0x00007f19186735ef:   je     0x00007f1918673d10           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.08%      0x00007f19186735f5:   mov    0x8(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007f1918674040
                                                                        ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   5.59%      0x00007f19186735fa:   nopw   0x0(%rax,%rax,1)
              0x00007f1918673600:   cmp    $0x102a690,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007f1918673606:   jne    0x00007f1918673d50           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.33%      0x00007f191867360c:   mov    0xc(%r11),%r9d               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007f1918673610:   lea    (%r12,%rbx,8),%rcx           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007f1918673614:   mov    0xc(%rcx),%ecx               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.59%      0x00007f1918673617:   cmp    %ecx,%r9d
   0.33%      0x00007f191867361a:   nopw   0x0(%rax,%rax,1)
   0.00%      0x00007f1918673620:   je     0x00007f191867373a           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Objects::equals@2 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.32%      0x00007f1918673626:   movsbl 0x10(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007f191867407c
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@26 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.03%      0x00007f191867362c:   cmp    %ecx,%r9d
              0x00007f191867362f:   je     0x00007f191867373a           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@2 (line 1858)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007f1918673635:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007f1918673640:   movsbl 0x10(%r12,%rcx,8),%ebp       ; implicit exception: dispatches to 0x00007f1918673fbc
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   2.60%      0x00007f1918673646:   cmp    %ebp,%ebx
              0x00007f1918673648:   jne    0x00007f1918673dec           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.30%      0x00007f191867364e:   mov    0x14(%r12,%rcx,8),%edi       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.50%      0x00007f1918673653:   mov    0x14(%r12,%r9,8),%r9d        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007f1918673658:   mov    0xc(%r12,%rdi,8),%esi
   2.28%      0x00007f191867365d:   mov    0xc(%r12,%r9,8),%ecx
   0.05%      0x00007f1918673662:   cmp    %esi,%ecx
              0x00007f1918673664:   jne    0x00007f1918673c68           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.36%      0x00007f191867366a:   lea    (%r12,%rdi,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007f191867366e:   lea    0x10(%r12,%rdi,8),%rsi
              0x00007f1918673673:   lea    (%r12,%r9,8),%rbx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%      0x00007f1918673677:   lea    0x10(%r12,%r9,8),%rdi
   0.35%      0x00007f191867367c:   test   %ecx,%ecx
              0x00007f191867367e:   je     0x00007f1918673721
   0.00%      0x00007f1918673684:   mov    %ecx,%eax
              0x00007f1918673686:   and    $0x1f,%eax
   0.01%      0x00007f1918673689:   and    $0xffffffe0,%ecx
              0x00007f191867368c:   je     0x00007f19186736dd
              0x00007f1918673692:   lea    (%rdi,%rcx,1),%rdi
              0x00007f1918673696:   lea    (%rsi,%rcx,1),%rsi
              0x00007f191867369a:   neg    %rcx
              0x00007f191867369d:   vmovdqu (%rdi,%rcx,1),%ymm3
              0x00007f19186736a2:   vmovdqu (%rsi,%rcx,1),%ymm2
              0x00007f19186736a7:   vpxor  %ymm2,%ymm3,%ymm3
              0x00007f19186736ab:   vptest %ymm3,%ymm3
              0x00007f19186736b0:   jne    0x00007f1918673728
              0x00007f19186736b6:   add    $0x20,%rcx
....................................................................................................
  35.98%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 877 

            0x00007f1918677bfd:   data16 xchg %ax,%ax
            0x00007f1918677c00:   test   %r9d,%r9d
            0x00007f1918677c03:   je     0x00007f1918678105           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@49 (line 1703)
            0x00007f1918677c09:   mov    0xc(%r12,%r9,8),%r10d        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
            0x00007f1918677c0e:   mov    %r10d,0x10(%rsi)             ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
            0x00007f1918677c12:   jmp    0x00007f1918677b4a           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.15%    0x00007f1918677c17:   mov    %r8d,0x4c(%rsp)
            0x00007f1918677c1c:   xor    %r10d,%r10d
            0x00007f1918677c1f:   mov    %r10,0x20(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.05%    0x00007f1918677c24:   mov    0x20(%rsp),%r10
   0.37%    0x00007f1918677c29:   test   %r10,%r10
            0x00007f1918677c2c:   je     0x00007f1918677f6f           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.10%    0x00007f1918677c32:   mov    0x10(%r10),%r10d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   5.59%    0x00007f1918677c36:   mov    0x58(%rsp),%r11d
            0x00007f1918677c3b:   nopl   0x0(%rax,%rax,1)
            0x00007f1918677c40:   cmp    $0x35af58,%r11d              ;   {metadata(&apos;java/util/stream/ReferencePipeline$7$1&apos;)}
            0x00007f1918677c47:   jne    0x00007f1918678138
            0x00007f1918677c4d:   mov    0x50(%rsp),%r11              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.07%    0x00007f1918677c52:   mov    %r11,0x28(%rsp)
   0.00%    0x00007f1918677c57:   mov    0x14(%r11),%r11d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@1 (line 273)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007f1918677c5b:   nopl   0x0(%rax,%rax,1)
            0x00007f1918677c60:   mov    0x34(%r12,%r11,8),%r8d       ; implicit exception: dispatches to 0x00007f19186785b0
                                                                      ;*getfield val$mapper {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@4 (line 273)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%    0x00007f1918677c65:   mov    0x8(%r12,%r8,8),%r9d         ; implicit exception: dispatches to 0x00007f19186785e8
   0.14%    0x00007f1918677c6a:   cmp    $0x102b0f8,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f18a002b0f8&apos;)}
            0x00007f1918677c71:   jne    0x00007f191867816c           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%    0x00007f1918677c77:   nopw   0x0(%rax,%rax,1)
            0x00007f1918677c80:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f1918678620
   1.29%    0x00007f1918677c85:   cmp    $0x102aad8,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007f1918677c8c:   jne    0x00007f1918678577
   0.05%    0x00007f1918677c92:   shl    $0x3,%r10                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f18a002b0f8::apply@1
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    0x00007f1918677c96:   mov    0x18(%r10),%r11d             ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorWithTheMostPublications$5@1 (line 108)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f18a002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.83%    0x00007f1918677c9a:   nopw   0x0(%rax,%rax,1)
            0x00007f1918677ca0:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f1918678654
   4.27%    0x00007f1918677ca5:   cmp    $0xbb7c0,%r10d               ;   {metadata(&apos;java/util/ArrayList&apos;)}
            0x00007f1918677cac:   jne    0x00007f19186781ac
   0.06%    0x00007f1918677cb2:   mov    0x1b8(%r15),%rax
            0x00007f1918677cb9:   mov    %rax,%r10
            0x00007f1918677cbc:   add    $0x20,%r10
   0.00%    0x00007f1918677cc0:   lea    (%r12,%r11,8),%rbp
   0.08%    0x00007f1918677cc4:   cmp    0x1c8(%r15),%r10
            0x00007f1918677ccb:   jae    0x00007f19186780bc           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
            0x00007f1918677cd1:   mov    %r10,0x1b8(%r15)
            0x00007f1918677cd8:   prefetchw 0xc0(%r10)
            0x00007f1918677ce0:   movq   $0x1,(%rax)
   0.07%    0x00007f1918677ce7:   movl   $0x189e60,0x8(%rax)          ;   {metadata(&apos;java/util/ArrayList$ArrayListSpliterator&apos;)}
            0x00007f1918677cee:   mov    %r12d,0xc(%rax)
            0x00007f1918677cf2:   mov    %r12,0x18(%rax)
   0.00%    0x00007f1918677cf6:   mov    $0xffffffff,%r10d
   0.06%    0x00007f1918677cfc:   mov    %r10,0x10(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  13.16%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.HashMap::computeIfAbsent, version 4, compile id 874 

            # parm1:    rcx:rcx   = &apos;java/util/function/Function&apos;
            #           [sp+0x80]  (sp of caller)
            0x00007f1918673440:   mov    0x8(%rsi),%r10d
            0x00007f1918673444:   movabs $0x7f189f000000,%r11
            0x00007f191867344e:   add    %r11,%r10
            0x00007f1918673451:   cmp    %r10,%rax
            0x00007f1918673454:   jne    0x00007f19180c4080           ;   {runtime_call ic_miss_stub}
            0x00007f191867345a:   xchg   %ax,%ax
            0x00007f191867345c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.23%    0x00007f1918673460:   mov    %eax,-0x14000(%rsp)
   0.12%    0x00007f1918673467:   push   %rbp
   0.08%    0x00007f1918673468:   sub    $0x70,%rsp
   0.23%    0x00007f191867346c:   cmpl   $0x1,0x20(%r15)
   0.05%    0x00007f1918673474:   jne    0x00007f191867411d           ;*synchronization entry
                                                                      ; - java.util.HashMap::computeIfAbsent@-1 (line 1197)
   0.06%    0x00007f191867347a:   mov    %rsi,0x10(%rsp)
   0.20%    0x00007f191867347f:   vmovq  %rdx,%xmm0
   0.03%    0x00007f1918673484:   mov    %rcx,%r14
   0.04%    0x00007f1918673487:   mov    0x8(%rcx),%edi               ; implicit exception: dispatches to 0x00007f1918673ff8
                                                                      ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
   0.10%    0x00007f191867348a:   mov    0x8(%rdx),%ecx               ; implicit exception: dispatches to 0x00007f1918674014
   8.25%    0x00007f191867348d:   movabs $0x7f189f001188,%r10         ;   {metadata({method} {0x00007f189f001188} &apos;hashCode&apos; &apos;()I&apos; in &apos;java/lang/Object&apos;)}
   0.01%    0x00007f1918673497:   movabs $0x7f189f000000,%r11
   0.04%    0x00007f19186734a1:   add    %rcx,%r11
   0.21%    0x00007f19186734a4:   mov    0x1e0(%r11),%r11
   1.11%    0x00007f19186734ab:   cmp    %r10,%r11
            0x00007f19186734ae:   jne    0x00007f1918673906
            0x00007f19186734b4:   mov    (%rdx),%r10
            0x00007f19186734b7:   mov    %r10,%r11
            0x00007f19186734ba:   and    $0x3,%r11
            0x00007f19186734be:   xchg   %ax,%ax
            0x00007f19186734c0:   cmp    $0x1,%r11
            0x00007f19186734c4:   jne    0x00007f1918673906
            0x00007f19186734ca:   shr    $0x8,%r10
            0x00007f19186734ce:   mov    %r10d,%eax
            0x00007f19186734d1:   and    $0x7fffffff,%eax
....................................................................................................
  10.77%  <total for region 3>

....[Hottest Region 4]..............................................................................
c2, level 4, java.util.stream.Collectors$$Lambda.0x00007f18a0034f18::accept, version 2, compile id 942 

           [Disassembly]
           --------------------------------------------------------------------------------
           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Entry Point]
             # {method} {0x00007f1894271a88} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007f18a0034f18&apos;
             # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007f18a0034f18&apos;
             # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
             # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
             #           [sp+0x50]  (sp of caller)
   0.04%     0x00007f191868e060:   mov    0x8(%rsi),%r10d
   0.00%     0x00007f191868e064:   movabs $0x7f189f000000,%r11
   0.03%     0x00007f191868e06e:   add    %r11,%r10
   0.04%     0x00007f191868e071:   cmp    %r10,%rax
             0x00007f191868e074:   jne    0x00007f19180c4080           ;   {runtime_call ic_miss_stub}
   0.00%     0x00007f191868e07a:   xchg   %ax,%ax
   0.00%     0x00007f191868e07c:   nopl   0x0(%rax)
           [Verified Entry Point]
   2.43%     0x00007f191868e080:   mov    %eax,-0x14000(%rsp)
   3.03%     0x00007f191868e087:   push   %rbp
   0.04%     0x00007f191868e088:   sub    $0x40,%rsp
   0.11%     0x00007f191868e08c:   cmpl   $0x1,0x20(%r15)
   0.19%     0x00007f191868e094:   jne    0x00007f191868e380           ;*synchronization entry
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@-1
   0.05%     0x00007f191868e09a:   mov    %rcx,0x8(%rsp)
   0.08%     0x00007f191868e09f:   mov    0xc(%rsi),%r8d               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@1
   0.04%     0x00007f191868e0a3:   mov    0x10(%rsi),%r11d             ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@5
   0.23%     0x00007f191868e0a7:   mov    0x14(%rsi),%ebp              ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@9
   0.04%     0x00007f191868e0aa:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f191868e2dc
   0.08%     0x00007f191868e0ae:   cmp    $0x8d850,%r10d               ;   {metadata(&apos;java/util/HashMap&apos;)}
             0x00007f191868e0b5:   jne    0x00007f191868e294
   0.03%     0x00007f191868e0bb:   nopl   0x0(%rax,%rax,1)
   0.18%     0x00007f191868e0c0:   mov    0x8(%r12,%r8,8),%r9d         ; implicit exception: dispatches to 0x00007f191868e2fc
                                                                       ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@13
   0.03%     0x00007f191868e0c5:   cmp    $0x1033ff0,%r9d              ;   {metadata(&apos;java/util/function/Function$$Lambda+0x00007f18a0033ff0&apos;)}
             0x00007f191868e0cc:   jne    0x00007f191868e1ef           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.08%     0x00007f191868e0d2:   test   %rcx,%rcx
             0x00007f191868e0d5:   je     0x00007f191868e278           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.Objects::requireNonNull@1 (line 258)
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@11 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.04%     0x00007f191868e0db:   mov    0x1b8(%r15),%rcx
   0.18%     0x00007f191868e0e2:   mov    %rcx,%r10
   0.04%     0x00007f191868e0e5:   add    $0x10,%r10
   0.07%     0x00007f191868e0e9:   cmp    0x1c8(%r15),%r10
          ╭  0x00007f191868e0f0:   jae    0x00007f191868e1a8
   0.03%  │  0x00007f191868e0f6:   mov    %r10,0x1b8(%r15)
   0.20%  │  0x00007f191868e0fd:   prefetchw 0xc0(%r10)
   0.11%  │  0x00007f191868e105:   movq   $0x1,(%rcx)
   0.34%  │  0x00007f191868e10c:   movl   $0x1035aa0,0x8(%rcx)         ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
          │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f18a0035aa0&apos;)}
   0.32%  │  0x00007f191868e113:   mov    %r11d,0xc(%rcx)              ;*synchronization entry
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0035aa0::&lt;init&gt;@-1
          │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@16
          │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.17%  │  0x00007f191868e117:   mov    %rdx,%rsi
   0.04%  │  0x00007f191868e11a:   mov    0x8(%rsp),%rdx
   0.07%  │  0x00007f191868e11f:   call   0x00007f1918673460           ; ImmutableOopMap {rbp=NarrowOop [8]=Oop }
          │                                                            ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
          │                                                            ;   {optimized virtual_call}
   0.05%  │  0x00007f191868e124:   nopl   0x294(%rax,%rax,1)           ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
          │                                                            ;   {other}
   0.31%  │  0x00007f191868e12c:   mov    0x8(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007f191868e314
   0.04%  │  0x00007f191868e131:   cmp    $0x1034658,%r10d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f18a0034658&apos;)}
          │  0x00007f191868e138:   jne    0x00007f191868e210
   0.01%  │  0x00007f191868e13e:   lea    (%r12,%rbp,8),%r10           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.04%  │  0x00007f191868e142:   mov    0xc(%r10),%r10d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034658::accept@1
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.26%  │  0x00007f191868e146:   mov    0x8(%rax),%r11d              ; implicit exception: dispatches to 0x00007f191868e32c
   0.11%  │  0x00007f191868e14a:   cmp    $0x2a80,%r11d                ;   {metadata({type array long})}
          │  0x00007f191868e151:   jne    0x00007f191868e2bc           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034658::accept@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.01%  │  0x00007f191868e157:   mov    0xc(%rax),%r11d
   0.07%  │  0x00007f191868e15b:   nopl   0x0(%rax,%rax,1)
   0.26%  │  0x00007f191868e160:   test   %r11d,%r11d
          │  0x00007f191868e163:   jbe    0x00007f191868e230
   0.02%  │  0x00007f191868e169:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f191868e344
   0.06%  │  0x00007f191868e16e:   mov    0x10(%rax),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@3 (line 662)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034658::accept@9
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.04%  │  0x00007f191868e172:   data16 nopw 0x0(%rax,%rax,1)
   0.24%  │  0x00007f191868e17c:   data16 data16 xchg %ax,%ax
   0.00%  │  0x00007f191868e180:   cmp    $0x1034228,%r11d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f18a0034228&apos;)}
          │  0x00007f191868e187:   jne    0x00007f191868e250           ;*invokeinterface applyAsLong {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@6 (line 662)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034658::accept@9
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@17
   0.02%  │  0x00007f191868e18d:   add    $0x1,%rbp
   0.04%  │  0x00007f191868e191:   mov    %rbp,0x10(%rax)              ;*synchronization entry
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f18a0034f18::accept@-1
   0.22%  │  0x00007f191868e195:   add    $0x40,%rsp
   0.01%  │  0x00007f191868e199:   pop    %rbp
   0.02%  │  0x00007f191868e19a:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007f191868e1a1:   ja     0x00007f191868e36a
   0.31%  │  0x00007f191868e1a7:   ret    
          ↘  0x00007f191868e1a8:   mov    %rdx,0x18(%rsp)
             0x00007f191868e1ad:   mov    %r11d,0x10(%rsp)
             0x00007f191868e1b2:   rex.W push 0x8(%rsp)
             0x00007f191868e1b7:   rex.W pop (%rsp)
             0x00007f191868e1bb:   movabs $0x7f18a0035aa0,%rsi         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f18a0035aa0&apos;)}
             0x00007f191868e1c5:   xchg   %ax,%ax
             0x00007f191868e1c7:   call   0x00007f1918196780           ; ImmutableOopMap {rbp=NarrowOop [0]=Oop [16]=NarrowOop [24]=Oop }
                                                                       ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=1}
                                                                       ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                       ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
....................................................................................................
  10.52%  <total for region 4>

....[Hottest Regions]...............................................................................
  35.98%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 874 
  13.16%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 877 
  10.77%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 874 
  10.52%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007f18a0034f18::accept, version 2, compile id 942 
   8.65%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 877 
   5.03%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 874 
   2.51%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 2, compile id 844 
   2.30%         c2, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 5, compile id 941 
   2.08%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 2, compile id 844 
   2.08%         c2, level 4  java.lang.String::hashCode, version 2, compile id 242 
   1.98%                      <unknown> 
   1.80%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 874 
   0.88%    perf-1953513.map  [unknown] 
   0.39%         c2, level 4  java.lang.String::hashCode, version 2, compile id 242 
   0.25%              kernel  [unknown] 
   0.14%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   1.27%  <...other 308 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  53.58%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 874 
  21.81%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 877 
  10.52%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007f18a0034f18::accept, version 2, compile id 942 
   4.59%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 2, compile id 844 
   2.46%         c2, level 4  java.lang.String::hashCode, version 2, compile id 242 
   2.30%         c2, level 4  java.util.stream.ReduceOps$3ReducingSink::accept, version 5, compile id 941 
   2.01%                      <unknown> 
   1.37%              kernel  [unknown] 
   0.88%    perf-1953513.map  [unknown] 
   0.06%         c2, level 4  java.util.HashMap::resize, version 4, compile id 890 
   0.03%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 4, compile id 903 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%         c2, level 4  java.util.HashMap::replaceAll, version 5, compile id 904 
   0.01%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  G1CardSet::occupied 
   0.01%        libc-2.31.so  __memset_avx2_erms 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.24%  <...other 103 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.39%         c2, level 4
   2.01%                    
   1.37%              kernel
   0.88%    perf-1953513.map
   0.22%           libjvm.so
   0.05%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%         interpreter
   0.01%              [vdso]
   0.01%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%          ld-2.31.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations

# Run progress: 7.14% complete, ETA 00:24:18
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 91.137 ms/op
# Warmup Iteration   2: 72.889 ms/op
# Warmup Iteration   3: 73.277 ms/op
# Warmup Iteration   4: 72.769 ms/op
# Warmup Iteration   5: 72.613 ms/op
Iteration   1: 72.645 ms/op
Iteration   2: 72.550 ms/op
Iteration   3: 72.475 ms/op
Iteration   4: 72.489 ms/op
Iteration   5: 73.207 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations":
  72.673 ±(99.9%) 1.177 ms/op [Average]
  (min, avg, max) = (72.475, 72.673, 73.207), stdev = 0.306
  CI (99.9%): [71.497, 73.850] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations:asm":
PrintAssembly processed: 201012 total address lines.
Perf output processed (skipped 58.059 seconds):
 Column 1: cycles (50788 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap::computeIfAbsent, version 4, compile id 892 

                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f71d468f878:   mov    0x8(%rsp),%r10
              0x00007f71d468f87d:   mov    %eax,0xc(%r10)               ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::hashCode@55 (line 2370)
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f71d468f881:   mov    %ebp,%r11d
              0x00007f71d468f884:   mov    (%rsp),%ebx                  ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.03%      0x00007f71d468f887:   mov    0x18(%rsp),%r10
   0.10%      0x00007f71d468f88c:   mov    0x14(%r10),%r10d
   0.20%      0x00007f71d468f890:   mov    0x18(%rsp),%r8
   0.02%      0x00007f71d468f895:   mov    0x1c(%r8),%ecx
   0.06%      0x00007f71d468f899:   mov    %eax,%r9d
   0.10%      0x00007f71d468f89c:   shr    $0x10,%r9d
   0.11%      0x00007f71d468f8a0:   xor    %eax,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@18 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.03%      0x00007f71d468f8a3:   cmp    %ecx,%r10d
              0x00007f71d468f8a6:   jg     0x00007f71d468fccd           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.06%      0x00007f71d468f8ac:   mov    0x24(%r8),%ecx               ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.11%      0x00007f71d468f8b0:   test   %ecx,%ecx
              0x00007f71d468f8b2:   je     0x00007f71d468fccd           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.13%      0x00007f71d468f8b8:   mov    0xc(%r12,%rcx,8),%r10d       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.20%      0x00007f71d468f8bd:   data16 xchg %ax,%ax
   0.02%      0x00007f71d468f8c0:   test   %r10d,%r10d
              0x00007f71d468f8c3:   jbe    0x00007f71d468fed4           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.17%      0x00007f71d468f8c9:   lea    (%r12,%rcx,8),%r8            ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.08%      0x00007f71d468f8cd:   vmovq  %r8,%xmm0                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.01%      0x00007f71d468f8d2:   mov    %r10d,%edx
   0.03%      0x00007f71d468f8d5:   dec    %edx
   0.15%      0x00007f71d468f8d7:   and    %r9d,%edx                    ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.06%      0x00007f71d468f8da:   nopw   0x0(%rax,%rax,1)
   0.03%      0x00007f71d468f8e0:   test   %r10d,%r10d
              0x00007f71d468f8e3:   jle    0x00007f71d468fdf8
   0.02%      0x00007f71d468f8e9:   vmovq  %xmm0,%r10
   0.12%      0x00007f71d468f8ee:   lea    0x10(%r10,%rdx,4),%rcx       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.27%      0x00007f71d468f8f3:   mov    0x18(%rsp),%r10
   0.02%      0x00007f71d468f8f8:   mov    0x8(%r10),%r8d               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.01%      0x00007f71d468f8fc:   vmovd  %r8d,%xmm2
   0.09%      0x00007f71d468f901:   mov    (%rcx),%r13d                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.86%      0x00007f71d468f904:   test   %r13d,%r13d
              0x00007f71d468f907:   je     0x00007f71d468fb43           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.20%      0x00007f71d468f90d:   mov    0x8(%r12,%r13,8),%r8d
   7.14%      0x00007f71d468f912:   data16 nopw 0x0(%rax,%rax,1)
   0.01%      0x00007f71d468f91c:   data16 data16 xchg %ax,%ax
              0x00007f71d468f920:   cmp    $0x1acba8,%r8d               ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
              0x00007f71d468f927:   je     0x00007f71d468fdb7
   0.24%      0x00007f71d468f92d:   lea    (%r12,%r13,8),%rax           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
              0x00007f71d468f931:   mov    %rax,%r8
   0.00%      0x00007f71d468f934:   xor    %edi,%edi
              0x00007f71d468f936:   xor    %r10d,%r10d                  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.45%   ↗  0x00007f71d468f939:   mov    0xc(%r8),%esi
   3.23%   │  0x00007f71d468f93d:   data16 xchg %ax,%ax
   0.00%   │  0x00007f71d468f940:   cmp    %r9d,%esi
          ╭│  0x00007f71d468f943:   je     0x00007f71d468f964           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   1.24%  ││  0x00007f71d468f945:   mov    0x458(%r15),%rsi
   0.99%  ││  0x00007f71d468f94c:   mov    0x18(%r8),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.17%  ││  0x00007f71d468f950:   inc    %r10d                        ; ImmutableOopMap {r8=NarrowOop rax=Oop r13=NarrowOop xmm0=Oop rcx=Derived_oop_xmm0 [16]=Oop [24]=Oop [32]=Oop }
          ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@166 (line 1219)
          ││  0x00007f71d468f953:   test   %eax,(%rsi)                  ;   {poll}
   0.51%  ││  0x00007f71d468f955:   test   %r8d,%r8d
          ││  0x00007f71d468f958:   je     0x00007f71d468fb3e           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.01%  ││  0x00007f71d468f95e:   shl    $0x3,%r8                     ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.01%  │╰  0x00007f71d468f962:   jmp    0x00007f71d468f939
   0.49%  ↘   0x00007f71d468f964:   mov    0x10(%r8),%r11d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.87%      0x00007f71d468f968:   mov    %r11,%rcx
              0x00007f71d468f96b:   shl    $0x3,%rcx
   0.18%      0x00007f71d468f96f:   mov    0x10(%rsp),%rsi
   0.10%      0x00007f71d468f974:   cmp    %rsi,%rcx
              0x00007f71d468f977:   je     0x00007f71d468ff00           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
   0.14%      0x00007f71d468f97d:   data16 xchg %ax,%ax
              0x00007f71d468f980:   cmp    $0xe8d8,%ebx                 ;   {metadata(&apos;java/lang/String&apos;)}
              0x00007f71d468f986:   jne    0x00007f71d468fe38
              0x00007f71d468f98c:   mov    0x10(%rsp),%r14              ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.08%      0x00007f71d468f991:   cmp    %rcx,%r14
              0x00007f71d468f994:   je     0x00007f71d468fab6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@2 (line 1858)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.22%      0x00007f71d468f99a:   nopw   0x0(%rax,%rax,1)
              0x00007f71d468f9a0:   mov    0x8(%r12,%r11,8),%ecx        ; implicit exception: dispatches to 0x00007f71d4690194
   6.08%      0x00007f71d468f9a5:   cmp    $0xe8d8,%ecx                 ;   {metadata(&apos;java/lang/String&apos;)}
              0x00007f71d468f9ab:   jne    0x00007f71d4690150           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@8 (line 1863)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.25%      0x00007f71d468f9b1:   movsbl 0x10(%r14),%ecx              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@26 (line 1861)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.02%      0x00007f71d468f9b6:   shl    $0x3,%r11                    ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@8 (line 1863)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007f71d468f9ba:   movsbl 0x10(%r11),%ebp              ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.75%      0x00007f71d468f9bf:   nop
   0.02%      0x00007f71d468f9c0:   cmp    %ebp,%ecx
              0x00007f71d468f9c2:   jne    0x00007f71d468ff6c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.28%      0x00007f71d468f9c8:   mov    0x14(%r11),%r11d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.18%      0x00007f71d468f9cc:   mov    0x14(%r14),%eax              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007f71d468f9d0:   mov    0xc(%r12,%r11,8),%ebx
   1.99%      0x00007f71d468f9d5:   mov    0xc(%r12,%rax,8),%ecx
   0.04%      0x00007f71d468f9da:   cmp    %ebx,%ecx
   0.23%      0x00007f71d468f9dc:   nopl   0x0(%rax)
              0x00007f71d468f9e0:   jne    0x00007f71d468fe8e           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.28%      0x00007f71d468f9e6:   lea    (%r12,%r11,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007f71d468f9ea:   lea    0x10(%r12,%r11,8),%rsi
              0x00007f71d468f9ef:   lea    (%r12,%rax,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007f71d468f9f3:   lea    0x10(%r12,%rax,8),%rdi
   0.25%      0x00007f71d468f9f8:   test   %ecx,%ecx
              0x00007f71d468f9fa:   je     0x00007f71d468fa9d
              0x00007f71d468fa00:   mov    %ecx,%eax
              0x00007f71d468fa02:   and    $0x1f,%eax
              0x00007f71d468fa05:   and    $0xffffffe0,%ecx
              0x00007f71d468fa08:   je     0x00007f71d468fa59
              0x00007f71d468fa0e:   lea    (%rdi,%rcx,1),%rdi
              0x00007f71d468fa12:   lea    (%rsi,%rcx,1),%rsi
              0x00007f71d468fa16:   neg    %rcx
              0x00007f71d468fa19:   vmovdqu (%rdi,%rcx,1),%ymm1
              0x00007f71d468fa1e:   vmovdqu (%rsi,%rcx,1),%ymm3
....................................................................................................
  30.73%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 810 

          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Verified Entry Point]
            # {method} {0x00007f71570dffd8} &apos;lambda$groupingBy$53&apos; &apos;(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors&apos;
            # parm0:    rsi:rsi   = &apos;java/util/function/Function&apos;
            # parm1:    rdx:rdx   = &apos;java/util/function/Supplier&apos;
            # parm2:    rcx:rcx   = &apos;java/util/function/BiConsumer&apos;
            # parm3:    r8:r8     = &apos;java/util/Map&apos;
            # parm4:    r9:r9     = &apos;java/lang/Object&apos;
            #           [sp+0x50]  (sp of caller)
   0.13%    0x00007f71d4672300:   mov    %eax,-0x14000(%rsp)
   0.13%    0x00007f71d4672307:   push   %rbp
   0.00%    0x00007f71d4672308:   sub    $0x40,%rsp
   0.22%    0x00007f71d467230c:   cmpl   $0x1,0x20(%r15)
   0.03%    0x00007f71d4672314:   jne    0x00007f71d46726ba           ;*synchronization entry
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@-1 (line 1105)
   0.00%    0x00007f71d467231a:   mov    %rsi,%rbx
   0.13%    0x00007f71d467231d:   mov    %r8,0x10(%rsp)
   0.09%    0x00007f71d4672322:   mov    %rcx,0x8(%rsp)
   0.02%    0x00007f71d4672327:   mov    %rdx,(%rsp)
   0.01%    0x00007f71d467232b:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007f71d4672604
   0.14%    0x00007f71d467232f:   cmp    $0x102b330,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f715802b330&apos;)}
            0x00007f71d4672336:   jne    0x00007f71d4672528           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.11%    0x00007f71d467233c:   nopl   0x0(%rax)
   0.03%    0x00007f71d4672340:   mov    0x8(%r9),%r11d               ; implicit exception: dispatches to 0x00007f71d467261c
   6.45%    0x00007f71d4672344:   cmp    $0x102a690,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
            0x00007f71d467234b:   jne    0x00007f71d46725c4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f715802b330::apply@1
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.18%    0x00007f71d4672351:   mov    %r9,0x18(%rsp)
   0.08%    0x00007f71d4672356:   mov    0xc(%r9),%ebp                ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::getName@1 (line 40)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorsWithNoDuplicateCollaborations$7@1 (line 118)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f715802b330::apply@4
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.25%    0x00007f71d467235a:   test   %ebp,%ebp
   0.09%    0x00007f71d467235c:   nopl   0x0(%rax)
   0.09%    0x00007f71d4672360:   je     0x00007f71d467259c           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Objects::requireNonNull@1 (line 258)
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@11 (line 1105)
   0.13%    0x00007f71d4672366:   mov    0x1b8(%r15),%rcx
   0.01%    0x00007f71d467236d:   mov    %rcx,%r10
   0.01%    0x00007f71d4672370:   add    $0x10,%r10
   0.10%    0x00007f71d4672374:   nopl   0x0(%rax,%rax,1)
   0.14%    0x00007f71d467237c:   data16 data16 xchg %ax,%ax
   0.01%    0x00007f71d4672380:   cmp    0x1c8(%r15),%r10
            0x00007f71d4672387:   jae    0x00007f71d46724ee
   0.00%    0x00007f71d467238d:   mov    %r10,0x1b8(%r15)
   0.10%    0x00007f71d4672394:   prefetchw 0xc0(%r10)
   0.18%    0x00007f71d467239c:   movq   $0x1,(%rcx)
   0.01%    0x00007f71d46723a3:   movl   $0x1034680,0x8(%rcx)         ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                      ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
                                                                      ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
                                                                      ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f7158034680&apos;)}
   0.01%    0x00007f71d46723aa:   mov    (%rsp),%r10
   0.11%    0x00007f71d46723ae:   shr    $0x3,%r10
   0.16%    0x00007f71d46723b2:   mov    %r10d,0xc(%rcx)              ;*synchronization entry
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007f7158034680::&lt;init&gt;@-1
                                                                      ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@16
                                                                      ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
   0.04%    0x00007f71d46723b6:   mov    0x10(%rsp),%r11
   0.01%    0x00007f71d46723bb:   nopl   0x0(%rax,%rax,1)
   0.12%    0x00007f71d46723c0:   mov    0x8(%r11),%r10d              ; implicit exception: dispatches to 0x00007f71d4672640
   0.15%    0x00007f71d46723c4:   cmp    $0x8d850,%r10d               ;   {metadata(&apos;java/util/HashMap&apos;)}
            0x00007f71d46723cb:   jne    0x00007f71d4672550
   0.03%    0x00007f71d46723d1:   mov    %r11,%rsi                    ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.01%    0x00007f71d46723d4:   lea    (%r12,%rbp,8),%rdx           ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::getName@1 (line 40)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$authorsWithNoDuplicateCollaborations$7@1 (line 118)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f715802b330::apply@4
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.10%    0x00007f71d46723d8:   data16 xchg %ax,%ax
   0.15%    0x00007f71d46723db:   call   0x00007f71d466eae0           ; ImmutableOopMap {[8]=Oop [24]=Oop }
                                                                      ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                      ;   {optimized virtual_call}
   0.04%    0x00007f71d46723e0:   nopl   0x2d0(%rax,%rax,1)           ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                      ;   {other}
   0.22%    0x00007f71d46723e8:   mov    0x8(%rsp),%r10
   0.02%    0x00007f71d46723ed:   mov    0x8(%r10),%r11d              ; implicit exception: dispatches to 0x00007f71d4672658
   0.08%    0x00007f71d46723f1:   cmp    $0x3aa7f8,%r11d              ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x80000003a&apos;)}
            0x00007f71d46723f8:   jne    0x00007f71d4672580           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.23%    0x00007f71d46723fe:   xchg   %ax,%ax
            0x00007f71d4672400:   mov    0x8(%rax),%r11d              ; implicit exception: dispatches to 0x00007f71d4672670
   0.31%    0x00007f71d4672404:   cmp    $0xdd600,%r11d               ;   {metadata(&apos;java/util/HashSet&apos;)}
            0x00007f71d467240b:   jne    0x00007f71d46725e8           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x80000003a::accept@1
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.06%    0x00007f71d4672411:   mov    0xc(%rax),%r11d              ;*getfield map {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashSet::add@1 (line 229)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x80000003a::accept@8
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.23%    0x00007f71d4672415:   mov    %r11d,0x8(%rsp)
   0.06%    0x00007f71d467241a:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007f71d4672420:   test   %r11d,%r11d
            0x00007f71d4672423:   je     0x00007f71d4672510           ;*invokevirtual put {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashSet::add@8 (line 229)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x80000003a::accept@8
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.04%    0x00007f71d4672429:   mov    0x18(%rsp),%r10
   0.19%    0x00007f71d467242e:   mov    0xc(%r10),%ebp               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode@7 (line 53)
                                                                      ; - java.util.HashMap::hash@9 (line 338)
                                                                      ; - java.util.HashMap::put@2 (line 618)
                                                                      ; - java.util.HashSet::add@8 (line 229)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x80000003a::accept@8
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.04%    0x00007f71d4672432:   test   %ebp,%ebp
            0x00007f71d4672434:   je     0x00007f71d46725b0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::hashCode@34 (line 4599)
                                                                      ; - java.util.Objects::hash@1 (line 133)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode@11 (line 53)
                                                                      ; - java.util.HashMap::hash@9 (line 338)
                                                                      ; - java.util.HashMap::put@2 (line 618)
                                                                      ; - java.util.HashSet::add@8 (line 229)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x80000003a::accept@8
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.01%    0x00007f71d467243a:   lea    (%r12,%rbp,8),%rsi           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Arrays::hashCode@25 (line 4598)
                                                                      ; - java.util.Objects::hash@1 (line 133)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode@11 (line 53)
                                                                      ; - java.util.HashMap::hash@9 (line 338)
                                                                      ; - java.util.HashMap::put@2 (line 618)
                                                                      ; - java.util.HashSet::add@8 (line 229)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x80000003a::accept@8
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.03%    0x00007f71d467243e:   movabs $0x7f715700e8d8,%r10         ;   {metadata(&apos;java/lang/String&apos;)}
   0.24%    0x00007f71d4672448:   mov    0x1e0(%r10),%r10
   0.05%    0x00007f71d467244f:   movabs $0x7f7157001188,%r11         ;   {metadata({method} {0x00007f7157001188} &apos;hashCode&apos; &apos;()I&apos; in &apos;java/lang/Object&apos;)}
   0.00%    0x00007f71d4672459:   cmp    %r11,%r10
   0.05%    0x00007f71d467245c:   nopl   0x0(%rax)
   0.19%    0x00007f71d4672460:   jne    0x00007f71d46724d3
            0x00007f71d4672466:   mov    (%rsi),%r10
            0x00007f71d4672469:   mov    %r10,%r11
            0x00007f71d467246c:   and    $0x3,%r11
            0x00007f71d4672470:   cmp    $0x1,%r11
            0x00007f71d4672474:   jne    0x00007f71d46724d3
            0x00007f71d4672476:   shr    $0x8,%r10
            0x00007f71d467247a:   mov    %r10d,%eax
            0x00007f71d467247d:   and    $0x7fffffff,%eax
            0x00007f71d4672482:   test   %eax,%eax
            0x00007f71d4672484:   je     0x00007f71d46724d3           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  11.84%  <total for region 2>

....[Hottest Regions]...............................................................................
  30.73%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 892 
  11.84%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 810 
   7.54%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 6, compile id 882 
   7.31%         c2, level 4  java.util.HashMap::putVal, version 3, compile id 764 
   6.35%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 809 
   5.79%         c2, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 3, compile id 839 
   4.21%         c2, level 4  java.util.HashMap::putVal, version 3, compile id 764 
   3.71%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 892 
   2.84%         c2, level 4  java.util.HashMap::putVal, version 3, compile id 764 
   2.74%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals, version 2, compile id 808 
   2.45%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals, version 2, compile id 808 
   2.19%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 810 
   1.81%         c2, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 3, compile id 839 
   1.67%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 892 
   1.35%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 809 
   1.30%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 809 
   1.26%         c2, level 4  java.lang.String::hashCode, version 2, compile id 237 
   1.24%         c2, level 4  java.util.HashMap::putVal, version 3, compile id 764 
   0.44%              kernel  [unknown] 
   0.35%         c2, level 4  java.lang.String::hashCode, version 2, compile id 237 
   2.88%  <...other 433 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  36.15%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 892 
  15.90%         c2, level 4  java.util.HashMap::putVal, version 3, compile id 764 
  14.02%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 810 
   9.00%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 809 
   7.68%         c2, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 3, compile id 839 
   7.57%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 6, compile id 882 
   5.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals, version 2, compile id 808 
   1.62%         c2, level 4  java.lang.String::hashCode, version 2, compile id 237 
   1.61%              kernel  [unknown] 
   0.14%                      <unknown> 
   0.12%         c2, level 4  java.util.HashMap::resize, version 2, compile id 758 
   0.09%         c2, level 4  java.util.stream.AbstractPipeline::wrapAndCopyInto, version 2, compile id 894 
   0.08%         c2, level 4  java.util.stream.ReferencePipeline$2$1::accept, version 2, compile id 930 
   0.05%         c2, level 4  java.util.HashMap$ValueSpliterator::forEachRemaining, version 4, compile id 939 
   0.05%           libjvm.so  G1CardSet::occupied 
   0.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda.0x00007f715802b9e8::apply, version 2, compile id 981 
   0.03%         c2, level 4  java.util.stream.Sink$ChainedReference::begin, version 3, compile id 834 
   0.03%         c2, level 4  java.util.HashMap$HashMapSpliterator::estimateSize, version 2, compile id 931 
   0.03%         c2, level 4  java.util.HashMap$KeySpliterator::characteristics, version 2, compile id 918 
   0.03%         c2, level 4  java.util.HashSet::spliterator, version 2, compile id 920 
   0.58%  <...other 123 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.83%         c2, level 4
   1.61%              kernel
   0.25%           libjvm.so
   0.14%                    
   0.07%        libc-2.31.so
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%         c1, level 3
   0.01%         interpreter
   0.01%    perf-1953583.map
   0.01%              [vdso]
   0.00%         c1, level 1
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.first_publication_year

# Run progress: 14.29% complete, ETA 00:22:22
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.433 ms/op
# Warmup Iteration   2: 5.599 ms/op
# Warmup Iteration   3: 5.452 ms/op
# Warmup Iteration   4: 5.560 ms/op
# Warmup Iteration   5: 5.471 ms/op
Iteration   1: 5.445 ms/op
Iteration   2: 5.509 ms/op
Iteration   3: 5.532 ms/op
Iteration   4: 5.502 ms/op
Iteration   5: 5.524 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.first_publication_year":
  5.502 ±(99.9%) 0.132 ms/op [Average]
  (min, avg, max) = (5.445, 5.502, 5.532), stdev = 0.034
  CI (99.9%): [5.371, 5.634] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.first_publication_year:asm":
PrintAssembly processed: 180748 total address lines.
Perf output processed (skipped 58.072 seconds):
 Column 1: cycles (50519 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 811 

                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007fbdc0672648:   mov    0xc(%r12,%rbx,8),%r10d       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
            0x00007fbdc067264d:   mov    %r10d,0x10(%rsi)             ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
            0x00007fbdc0672651:   jmp    0x00007fbdc067258a
            0x00007fbdc0672656:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.92%    0x00007fbdc0672660:   mov    %r10d,0x3c(%rsp)
            0x00007fbdc0672665:   xor    %r10d,%r10d
   0.30%    0x00007fbdc0672668:   mov    %r10,0x18(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.70%    0x00007fbdc067266d:   mov    0x18(%rsp),%r10
   1.97%    0x00007fbdc0672672:   test   %r10,%r10
            0x00007fbdc0672675:   je     0x00007fbdc0672a82           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.63%    0x00007fbdc067267b:   mov    0x10(%r10),%r8d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  37.88%    0x00007fbdc067267f:   mov    0x58(%rsp),%r11d
   0.02%    0x00007fbdc0672684:   cmp    $0x35bb40,%r11d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
            0x00007fbdc067268b:   jne    0x00007fbdc0672e00
   0.04%    0x00007fbdc0672691:   mov    0x50(%rsp),%r10              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%    0x00007fbdc0672696:   mov    %r10,0x20(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.61%    0x00007fbdc067269b:   mov    0x10(%r10),%r11d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007fbdc067269f:   nop
   0.02%    0x00007fbdc06726a0:   mov    0x34(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007fbdc06731c8
   0.08%    0x00007fbdc06726a5:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007fbdc06731dc
   0.62%    0x00007fbdc06726aa:   cmp    $0x102b0f8,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fbd4802b0f8&apos;)}
            0x00007fbdc06726b1:   jne    0x00007fbdc0672e24
   0.02%    0x00007fbdc06726b7:   nopw   0x0(%rax,%rax,1)
   0.04%    0x00007fbdc06726c0:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007fbdc06731f4
  21.34%    0x00007fbdc06726c5:   cmp    $0x102aad8,%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007fbdc06726cc:   jne    0x00007fbdc0673177
   0.61%    0x00007fbdc06726d2:   lea    (%r12,%r8,8),%r10            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b0f8::test@1
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007fbdc06726d6:   mov    0xc(%r10),%r9d               ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$yearOfTheFirstPublication$9@1 (line 133)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b0f8::test@4
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.74%    0x00007fbdc06726da:   mov    %r9d,0x28(%rsp)
   1.18%    0x00007fbdc06726df:   nop
   0.01%    0x00007fbdc06726e0:   cmp    $0x76c,%r9d
            0x00007fbdc06726e7:   jl     0x00007fbdc0672f4c
   0.01%    0x00007fbdc06726ed:   mov    0x20(%rsp),%r11              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    0x00007fbdc06726f2:   mov    0xc(%r11),%r8d               ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.64%    0x00007fbdc06726f6:   data16 nopw 0x0(%rax,%rax,1)
   0.02%    0x00007fbdc0672700:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007fbdc067321c
   0.01%    0x00007fbdc0672705:   cmp    $0x35b658,%r11d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReferencePipeline$3$1&apos;)}
            0x00007fbdc067270c:   jne    0x00007fbdc0672e50
   0.02%    0x00007fbdc0672712:   lea    (%r12,%r8,8),%r9             ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.66%    0x00007fbdc0672716:   mov    0x10(%r9),%r11d              ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@5 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007fbdc067271a:   nopw   0x0(%rax,%rax,1)
   0.01%    0x00007fbdc0672720:   mov    0x34(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007fbdc0673234
   0.05%    0x00007fbdc0672725:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007fbdc0673248
   0.62%    0x00007fbdc067272a:   cmp    $0x102a8a0,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationGenerator$$Lambda+0x00007fbd4802a8a0&apos;)}
            0x00007fbdc0672731:   je     0x00007fbdc0672dea           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%    0x00007fbdc0672737:   mov    0xc(%r9),%ecx                ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007fbdc067273b:   mov    %ecx,0x2c(%rsp)
   0.04%    0x00007fbdc067273f:   nop
   0.70%    0x00007fbdc0672740:   cmp    $0x102b340,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fbd4802b340&apos;)}
            0x00007fbdc0672747:   jne    0x00007fbdc0672e7c
   0.03%    0x00007fbdc067274d:   mov    0x28(%rsp),%r11d
   0.01%    0x00007fbdc0672752:   cmp    $0xffffff80,%r11d
            0x00007fbdc0672756:   jl     0x00007fbdc0672f78
   0.02%    0x00007fbdc067275c:   nopl   0x0(%rax)
   0.61%    0x00007fbdc0672760:   cmp    $0x7f,%r11d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007fbdc0672764:   jle    0x00007fbdc0672c6d
   0.03%    0x00007fbdc067276a:   mov    0x1b8(%r15),%rax
   0.01%    0x00007fbdc0672771:   mov    %rax,%r10
   0.03%    0x00007fbdc0672774:   add    $0x10,%r10
   0.65%    0x00007fbdc0672778:   nopl   0x0(%rax,%rax,1)
   0.02%    0x00007fbdc0672780:   cmp    0x1c8(%r15),%r10
            0x00007fbdc0672787:   jae    0x00007fbdc0672cf0           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.01%    0x00007fbdc067278d:   mov    %r10,0x1b8(%r15)
   0.03%    0x00007fbdc0672794:   prefetchw 0xc0(%r10)
   0.64%    0x00007fbdc067279c:   movq   $0x1,(%rax)
   0.02%    0x00007fbdc06727a3:   movl   $0x25c88,0x8(%rax)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.01%    0x00007fbdc06727aa:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Integer::valueOf@23 (line 1070)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    0x00007fbdc06727ae:   mov    0x28(%rsp),%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.67%    0x00007fbdc06727b3:   mov    %r10d,0xc(%rax)              ;*synchronization entry
                                                                      ; - java.lang.Integer::&lt;init&gt;@-1 (line 1093)
                                                                      ; - java.lang.Integer::valueOf@28 (line 1070)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%    0x00007fbdc06727b7:   mov    %rax,0x40(%rsp)
   0.01%    0x00007fbdc06727bc:   mov    0x2c(%rsp),%r10d
   0.03%    0x00007fbdc06727c1:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fbdc0673260
   0.59%    0x00007fbdc06727c6:   cmp    $0x358d50,%r11d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
            0x00007fbdc06727cd:   jne    0x00007fbdc0672ea8
   0.03%    0x00007fbdc06727d3:   shl    $0x3,%r10                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007fbdc06727d7:   mov    0xc(%r10),%r11d              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    0x00007fbdc06727db:   mov    0x14(%r10),%r9d              ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.64%    0x00007fbdc06727df:   nop
   0.02%    0x00007fbdc06727e0:   mov    0x8(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007fbdc0673274
   0.02%    0x00007fbdc06727e5:   cmp    $0x1060a30,%r10d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fbd48060a30&apos;)}
            0x00007fbdc06727ec:   jne    0x00007fbdc0672b04
            0x00007fbdc06727f2:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fbdc067328c
            0x00007fbdc06727f7:   nopw   0x0(%rax,%rax,1)
            0x00007fbdc0672800:   cmp    $0xbb7c0,%r10d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/ArrayList&apos;)}
            0x00007fbdc0672807:   jne    0x00007fbdc06731a0
....................................................................................................
  74.86%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 811 

              0x00007fbdc0672a69:   mov    0x30(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              0x00007fbdc0672a6e:   mov    %ebx,0x10(%r10)              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.69%      0x00007fbdc0672a72:   mov    0x18(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              0x00007fbdc0672a77:   mov    0x18(%r10),%r8d              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.04%      0x00007fbdc0672a7b:   mov    0x3c(%rsp),%r10d
   0.68%  ╭   0x00007fbdc0672a80:   jmp    0x00007fbdc0672aa3
   0.03%  │   0x00007fbdc0672a82:   mov    0x3c(%rsp),%r10d
   0.35%  │   0x00007fbdc0672a87:   inc    %r10d
   0.62%  │   0x00007fbdc0672a8a:   mov    0x3c(%rsp),%r8d
   0.86%  │   0x00007fbdc0672a8f:   cmp    0x68(%rsp),%r8d
          │   0x00007fbdc0672a94:   jae    0x00007fbdc0672d45
   0.00%  │   0x00007fbdc0672a9a:   mov    (%rsp),%r11                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
          │                                                             ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │                                                             ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.37%  │   0x00007fbdc0672a9e:   mov    0x10(%r11,%r8,4),%r8d        ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   1.45%  ↘   0x00007fbdc0672aa3:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r8=NarrowOop [0]=Oop [8]=Oop [80]=Oop [92]=NarrowOop [96]=NarrowOop }
                                                                        ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.80%      0x00007fbdc0672aaa:   test   %eax,(%r11)                  ;   {poll}
   0.07%      0x00007fbdc0672aad:   test   %r8d,%r8d                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           ╭  0x00007fbdc0672ab0:   je     0x00007fbdc0672ac5           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   1.26%   │  0x00007fbdc0672ab2:   lea    (%r12,%r8,8),%r11
   1.34%   │  0x00007fbdc0672ab6:   mov    %r11,0x18(%rsp)
   2.09%   │  0x00007fbdc0672abb:   mov    %r10d,0x3c(%rsp)
   0.00%   │  0x00007fbdc0672ac0:   jmp    0x00007fbdc067266d           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.99%   ↘  0x00007fbdc0672ac5:   mov    0x458(%r15),%r11             ; ImmutableOopMap {[0]=Oop [8]=Oop [80]=Oop [92]=NarrowOop [96]=NarrowOop }
                                                                        ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.56%      0x00007fbdc0672acc:   test   %eax,(%r11)                  ;   {poll}
   0.76%      0x00007fbdc0672acf:   cmp    0x64(%rsp),%r10d
              0x00007fbdc0672ad4:   jl     0x00007fbdc0672660
              0x00007fbdc0672ada:   mov    0x5c(%rsp),%r11d
              0x00007fbdc0672adf:   mov    0x18(%r12,%r11,8),%r10d
              0x00007fbdc0672ae4:   cmp    0x38(%rsp),%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fbd4802b340::apply@7
                                                                        ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                        ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              0x00007fbdc0672ae9:   je     0x00007fbdc067261d           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
....................................................................................................
  12.97%  <total for region 2>

....[Hottest Regions]...............................................................................
  74.86%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 811 
  12.97%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 811 
   7.73%         c2, level 4  java.util.stream.Collectors$1OptionalBox::accept, version 4, compile id 807 
   2.05%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 811 
   0.67%         c2, level 4  java.util.stream.Collectors$1OptionalBox::accept, version 4, compile id 807 
   0.15%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   1.04%  <...other 315 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  89.88%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 811 
   8.41%         c2, level 4  java.util.stream.Collectors$1OptionalBox::accept, version 4, compile id 807 
   1.24%              kernel  [unknown] 
   0.05%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  OptoRuntime::new_instance_C 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%         interpreter  areturn  176 areturn  
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __memmove_avx_unaligned_erms 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%    perf-1953651.map  [unknown] 
   0.01%           libjvm.so  clock_gettime@plt 
   0.27%  <...other 100 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.31%         c2, level 4
   1.24%              kernel
   0.25%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.02%         interpreter
   0.02%  libpthread-2.31.so
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%    perf-1953651.map
   0.00%              [vdso]
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.last_publication_year

# Run progress: 21.43% complete, ETA 00:20:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6.805 ms/op
# Warmup Iteration   2: 6.019 ms/op
# Warmup Iteration   3: 5.895 ms/op
# Warmup Iteration   4: 5.919 ms/op
# Warmup Iteration   5: 5.879 ms/op
Iteration   1: 5.901 ms/op
Iteration   2: 5.832 ms/op
Iteration   3: 5.884 ms/op
Iteration   4: 5.848 ms/op
Iteration   5: 5.828 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.last_publication_year":
  5.859 ±(99.9%) 0.125 ms/op [Average]
  (min, avg, max) = (5.828, 5.859, 5.901), stdev = 0.032
  CI (99.9%): [5.734, 5.983] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.last_publication_year:asm":
PrintAssembly processed: 179797 total address lines.
Perf output processed (skipped 57.988 seconds):
 Column 1: cycles (50520 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 800 

                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007ff1f46722c9:   mov    0xc(%r12,%r9,8),%r10d        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
            0x00007ff1f46722ce:   mov    %r10d,0x10(%rsi)             ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
            0x00007ff1f46722d2:   jmp    0x00007ff1f467220a
            0x00007ff1f46722d7:   nopw   0x0(%rax,%rax,1)             ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   1.04%    0x00007ff1f46722e0:   mov    %r11d,0x3c(%rsp)
            0x00007ff1f46722e5:   xor    %r10d,%r10d
   0.54%    0x00007ff1f46722e8:   mov    %r10,0x18(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.26%    0x00007ff1f46722ed:   mov    0x18(%rsp),%r10
   1.98%    0x00007ff1f46722f2:   test   %r10,%r10
            0x00007ff1f46722f5:   je     0x00007ff1f46726ff           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.58%    0x00007ff1f46722fb:   mov    0x10(%r10),%r10d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  37.47%    0x00007ff1f46722ff:   mov    0x58(%rsp),%r8d
   0.00%    0x00007ff1f4672304:   cmp    $0x35bb40,%r8d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
            0x00007ff1f467230b:   jne    0x00007ff1f4672a8c
   0.06%    0x00007ff1f4672311:   mov    0x50(%rsp),%r11              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007ff1f4672316:   mov    %r11,0x20(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.66%    0x00007ff1f467231b:   mov    0x10(%r11),%r8d              ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007ff1f467231f:   nop
   0.05%    0x00007ff1f4672320:   mov    0x34(%r12,%r8,8),%r11d       ; implicit exception: dispatches to 0x00007ff1f4672e64
   0.01%    0x00007ff1f4672325:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007ff1f4672e78
   0.69%    0x00007ff1f467232a:   cmp    $0x102b0f8,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007ff17c02b0f8&apos;)}
            0x00007ff1f4672331:   jne    0x00007ff1f4672ab0
   0.00%    0x00007ff1f4672337:   nopw   0x0(%rax,%rax,1)
   0.05%    0x00007ff1f4672340:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007ff1f4672e90
  19.73%    0x00007ff1f4672345:   cmp    $0x102aad8,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007ff1f467234c:   jne    0x00007ff1f4672e13
   0.63%    0x00007ff1f4672352:   lea    (%r12,%r10,8),%r8            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b0f8::test@1
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007ff1f4672356:   mov    0xc(%r8),%r11d               ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$yearOfTheLastPublication$10@1 (line 145)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b0f8::test@4
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.43%    0x00007ff1f467235a:   mov    %r11d,0x28(%rsp)
   1.04%    0x00007ff1f467235f:   nop
   0.03%    0x00007ff1f4672360:   cmp    $0x76c,%r11d
            0x00007ff1f4672367:   jl     0x00007ff1f4672bd8
   0.01%    0x00007ff1f467236d:   mov    0x20(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%    0x00007ff1f4672372:   mov    0xc(%r10),%r11d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.60%    0x00007ff1f4672376:   data16 nopw 0x0(%rax,%rax,1)
   0.03%    0x00007ff1f4672380:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007ff1f4672eb8
   0.01%    0x00007ff1f4672385:   cmp    $0x35b658,%r10d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReferencePipeline$3$1&apos;)}
            0x00007ff1f467238c:   jne    0x00007ff1f4672adc
   0.04%    0x00007ff1f4672392:   shl    $0x3,%r11                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.56%    0x00007ff1f4672396:   mov    0x10(%r11),%r10d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@5 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%    0x00007ff1f467239a:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007ff1f46723a0:   mov    0x34(%r12,%r10,8),%r10d      ; implicit exception: dispatches to 0x00007ff1f4672ed0
   0.04%    0x00007ff1f46723a5:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007ff1f4672ee4
   0.58%    0x00007ff1f46723aa:   cmp    $0x102a8a0,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationGenerator$$Lambda+0x00007ff17c02a8a0&apos;)}
            0x00007ff1f46723b1:   je     0x00007ff1f4672a77           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%    0x00007ff1f46723b7:   mov    0xc(%r11),%r11d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@1 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007ff1f46723bb:   mov    %r11d,0x2c(%rsp)
   0.04%    0x00007ff1f46723c0:   cmp    $0x102b340,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007ff17c02b340&apos;)}
            0x00007ff1f46723c7:   jne    0x00007ff1f4672b08
   0.53%    0x00007ff1f46723cd:   mov    0x28(%rsp),%r11d
   0.04%    0x00007ff1f46723d2:   cmp    $0xffffff80,%r11d
            0x00007ff1f46723d6:   jl     0x00007ff1f4672c08
   0.00%    0x00007ff1f46723dc:   nopl   0x0(%rax)
   0.04%    0x00007ff1f46723e0:   cmp    $0x7f,%r11d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007ff1f46723e4:   jle    0x00007ff1f4672905
   0.57%    0x00007ff1f46723ea:   mov    0x1b8(%r15),%rax
   0.05%    0x00007ff1f46723f1:   mov    %rax,%r10
            0x00007ff1f46723f4:   add    $0x10,%r10
   0.05%    0x00007ff1f46723f8:   nopl   0x0(%rax,%rax,1)
   0.56%    0x00007ff1f4672400:   cmp    0x1c8(%r15),%r10
            0x00007ff1f4672407:   jae    0x00007ff1f467297c           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.04%    0x00007ff1f467240d:   mov    %r10,0x1b8(%r15)
   0.00%    0x00007ff1f4672414:   prefetchw 0xc0(%r10)
   0.07%    0x00007ff1f467241c:   movq   $0x1,(%rax)
   0.65%    0x00007ff1f4672423:   movl   $0x25c88,0x8(%rax)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.04%    0x00007ff1f467242a:   mov    %r12d,0xc(%rax)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Integer::valueOf@23 (line 1070)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007ff1f467242e:   mov    0x28(%rsp),%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%    0x00007ff1f4672433:   mov    %r10d,0xc(%rax)              ;*synchronization entry
                                                                      ; - java.lang.Integer::&lt;init&gt;@-1 (line 1093)
                                                                      ; - java.lang.Integer::valueOf@28 (line 1070)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.56%    0x00007ff1f4672437:   mov    %rax,0x40(%rsp)
   0.04%    0x00007ff1f467243c:   mov    0x2c(%rsp),%r10d
   0.00%    0x00007ff1f4672441:   mov    0x8(%r12,%r10,8),%r10d       ; implicit exception: dispatches to 0x00007ff1f4672efc
   0.04%    0x00007ff1f4672446:   cmp    $0x358d50,%r10d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
            0x00007ff1f467244d:   jne    0x00007ff1f4672b34
   0.55%    0x00007ff1f4672453:   mov    0x2c(%rsp),%r11d
   0.05%    0x00007ff1f4672458:   shl    $0x3,%r11                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007ff1f467245c:   mov    0xc(%r11),%r10d              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%    0x00007ff1f4672460:   mov    0x14(%r11),%r11d             ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.56%    0x00007ff1f4672464:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007ff1f4672f10
   0.05%    0x00007ff1f4672469:   cmp    $0x1060a30,%r8d              ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff17c060a30&apos;)}
            0x00007ff1f4672470:   jne    0x00007ff1f4672784
            0x00007ff1f4672476:   data16 nopw 0x0(%rax,%rax,1)
            0x00007ff1f4672480:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007ff1f4672f28
            0x00007ff1f4672485:   cmp    $0xbb7c0,%r8d                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                      ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/ArrayList&apos;)}
            0x00007ff1f467248c:   jne    0x00007ff1f4672e3c
....................................................................................................
  71.84%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 800 

               0x00007ff1f46726e6:   mov    0x30(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
                                                                         ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                         ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
               0x00007ff1f46726eb:   mov    %ebx,0x10(%r10)              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                         ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                         ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.09%    ↗  0x00007ff1f46726ef:   mov    0x18(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │  0x00007ff1f46726f4:   mov    0x18(%r10),%r10d             ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.56%    │  0x00007ff1f46726f8:   mov    0x3c(%rsp),%r11d
   0.08%  ╭ │  0x00007ff1f46726fd:   jmp    0x00007ff1f4672725
   0.13%  │ │  0x00007ff1f46726ff:   mov    0x3c(%rsp),%r11d
   0.50%  │ │  0x00007ff1f4672704:   inc    %r11d
   0.20%  │ │  0x00007ff1f4672707:   mov    0x3c(%rsp),%r8d
   0.96%  │ │  0x00007ff1f467270c:   cmp    0x68(%rsp),%r8d
          │ │  0x00007ff1f4672711:   jae    0x00007ff1f46729ce
   0.01%  │ │  0x00007ff1f4672717:   mov    (%rsp),%r8
   0.52%  │ │  0x00007ff1f467271b:   mov    0x3c(%rsp),%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
          │ │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
          │ │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.28%  │ │  0x00007ff1f4672720:   mov    0x10(%r8,%r10,4),%r10d       ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   1.81%  ↘ │  0x00007ff1f4672725:   mov    0x458(%r15),%r8              ; ImmutableOopMap {r10=NarrowOop [0]=Oop [8]=Oop [80]=Oop [92]=NarrowOop [96]=NarrowOop }
            │                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
            │  0x00007ff1f467272c:   test   %eax,(%r8)                   ;   {poll}
   1.29%    │  0x00007ff1f467272f:   test   %r10d,%r10d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           ╭│  0x00007ff1f4672732:   je     0x00007ff1f4672747           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   1.62%   ││  0x00007ff1f4672734:   shl    $0x3,%r10
   1.64%   ││  0x00007ff1f4672738:   mov    %r10,0x18(%rsp)
   2.05%   ││  0x00007ff1f467273d:   mov    %r11d,0x3c(%rsp)
   0.15%   ││  0x00007ff1f4672742:   jmp    0x00007ff1f46722ed           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.59%   ↘│  0x00007ff1f4672747:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [8]=Oop [80]=Oop [92]=NarrowOop [96]=NarrowOop }
            │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   1.32%    │  0x00007ff1f467274e:   test   %eax,(%r10)                  ;   {poll}
   0.91%    │  0x00007ff1f4672751:   cmp    0x64(%rsp),%r11d
            │  0x00007ff1f4672756:   jl     0x00007ff1f46722e0
            │  0x00007ff1f467275c:   mov    0x5c(%rsp),%r11d
            │  0x00007ff1f4672761:   mov    0x18(%r12,%r11,8),%r11d
   0.00%    │  0x00007ff1f4672766:   cmp    0x38(%rsp),%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │  0x00007ff1f467276b:   je     0x00007ff1f467229d           ;*aload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
            │  0x00007ff1f4672771:   mov    $0x40,%esi                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │  0x00007ff1f4672776:   nop
            │  0x00007ff1f4672777:   call   0x00007ff1f40c9f00           ; ImmutableOopMap {}
            │                                                            ;*new {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@177 (line 1720)
            │                                                            ;   {runtime_call UncommonTrapBlob}
            │  0x00007ff1f467277c:   nopl   0x200086c(%rax,%rax,1)       ;   {other}
   0.00%    │  0x00007ff1f4672784:   cmp    $0x1034b00,%r8d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff17c034b00&apos;)}
            │  0x00007ff1f467278b:   jne    0x00007ff1f4672cc0
   0.06%    │  0x00007ff1f4672791:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007ff1f4672f60
   0.61%    │  0x00007ff1f4672796:   data16 nopw 0x0(%rax,%rax,1)
   0.04%    │  0x00007ff1f46727a0:   cmp    $0xdce88,%r11d               ;   {metadata(&apos;java/util/stream/Collectors$1OptionalBox&apos;)}
            │  0x00007ff1f46727a7:   jne    0x00007ff1f4672cec
   0.01%    │  0x00007ff1f46727ad:   lea    (%r12,%r10,8),%rsi           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff17c034b00::accept@1
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%    │  0x00007ff1f46727b1:   mov    0x40(%rsp),%rdx
   0.61%    │  0x00007ff1f46727b6:   rex.W push 0x20(%rsp)
   0.04%    │  0x00007ff1f46727bb:   rex.W pop 0x10(%rsp)                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff17c02b340::apply@7
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@12 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   1.31%    │  0x00007ff1f46727c0:   data16 xchg %ax,%ax
   0.56%    │  0x00007ff1f46727c3:   call   0x00007ff1f466e560           ; ImmutableOopMap {[0]=Oop [8]=Oop [16]=Oop [24]=Oop [80]=Oop [92]=NarrowOop [96]=NarrowOop }
            │                                                            ;*invokevirtual accept {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff17c034b00::accept@5
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
            │                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {optimized virtual_call}
   0.04%    │  0x00007ff1f46727c8:   nopl   0x30008b8(%rax,%rax,1)       ;   {other}
   0.58%    ╰  0x00007ff1f46727d0:   jmp    0x00007ff1f46726ef
               0x00007ff1f46727d5:   mov    %ebx,0x6c(%rsp)              ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::grow@7 (line 233)
                                                                         ; - java.util.ArrayList::grow@7 (line 244)
                                                                         ; - java.util.ArrayList::add@7 (line 483)
                                                                         ; - java.util.ArrayList::add@20 (line 496)
                                                                         ; - java.util.stream.Collectors$$Lambda/0x00007ff17c060a30::accept@8
                                                                         ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                         ; - java.util.stream.ReferencePipeline$3$1::accept@17 (line 197)
                                                                         ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                         ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
....................................................................................................
  18.62%  <total for region 2>

....[Hottest Regions]...............................................................................
  71.84%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 800 
  18.62%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 800 
   7.12%         c2, level 4  java.util.stream.Collectors$1OptionalBox::accept, version 4, compile id 798 
   0.71%         c2, level 4  java.util.stream.Collectors$1OptionalBox::accept, version 4, compile id 798 
   0.43%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.82%  <...other 278 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  90.47%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 800 
   7.83%         c2, level 4  java.util.stream.Collectors$1OptionalBox::accept, version 4, compile id 798 
   1.31%              kernel  [unknown] 
   0.02%                      <unknown> 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%        libc-2.31.so  _IO_default_xsputn 
   0.01%        libc-2.31.so  _IO_fflush 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%           libjvm.so  HeapRegion::clear_cardtable 
   0.01%         interpreter  return entry points  
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%           libjvm.so  Mutex::lock_without_safepoint_check 
   0.01%        libc-2.31.so  memcpy@GLIBC_2.2.5 
   0.01%         c2, level 4  org.openjdk.jmh.infra.Blackhole::consume, version 2, compile id 917 
   0.01%           libjvm.so  G1CardSet::reset_table_scanner 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  G1ScanCollectionSetRegionClosure::do_heap_region 
   0.23%  <...other 104 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.31%         c2, level 4
   1.31%              kernel
   0.21%           libjvm.so
   0.08%        libc-2.31.so
   0.04%         interpreter
   0.02%                    
   0.01%          ld-2.31.so
   0.01%  libpthread-2.31.so
   0.00%      hsdis-amd64.so
   0.00%    perf-1953715.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors

# Run progress: 28.57% complete, ETA 00:18:34
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 6364.626 ms/op
# Warmup Iteration   2: 4671.796 ms/op
# Warmup Iteration   3: 5263.100 ms/op
# Warmup Iteration   4: 5020.113 ms/op
# Warmup Iteration   5: 5481.147 ms/op
Iteration   1: 5402.406 ms/op
Iteration   2: 5354.318 ms/op
Iteration   3: 5394.653 ms/op
Iteration   4: 5497.969 ms/op
Iteration   5: 5817.237 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors":
  5493.316 ±(99.9%) 726.195 ms/op [Average]
  (min, avg, max) = (5354.318, 5493.316, 5817.237), stdev = 188.591
  CI (99.9%): [4767.121, 6219.512] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors:asm":
PrintAssembly processed: 232494 total address lines.
Perf output processed (skipped 71.638 seconds):
 Column 1: cycles (57259 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$TreeNode::find, version 4, compile id 950 

                         0x00007fc3e8694538:   add    $0x20,%rcx
                         0x00007fc3e869453c:   jne    0x00007fc3e869451f
                         0x00007fc3e869453e:   test   %eax,%eax
          ╭              0x00007fc3e8694540:   je     0x00007fc3e86945a3
          │              0x00007fc3e8694546:   vmovdqu -0x20(%rdi,%rax,1),%ymm4
          │              0x00007fc3e869454c:   vmovdqu -0x20(%rsi,%rax,1),%ymm5
          │              0x00007fc3e8694552:   vpxor  %ymm5,%ymm4,%ymm4
          │              0x00007fc3e8694556:   vptest %ymm4,%ymm4
          │╭             0x00007fc3e869455b:   jne    0x00007fc3e86945aa
          ││╭            0x00007fc3e869455d:   jmp    0x00007fc3e86945a3
   0.01%  │││            0x00007fc3e869455f:   mov    %eax,%ecx
   0.03%  │││            0x00007fc3e8694561:   and    $0xfffffffc,%ecx
          │││╭           0x00007fc3e8694564:   je     0x00007fc3e869457f
   0.01%  ││││           0x00007fc3e8694566:   lea    (%rdi,%rcx,1),%rdi
   0.18%  ││││           0x00007fc3e869456a:   lea    (%rsi,%rcx,1),%rsi
   0.01%  ││││           0x00007fc3e869456e:   neg    %rcx
   0.06%  ││││ ↗         0x00007fc3e8694571:   mov    (%rdi,%rcx,1),%ebx
   0.07%  ││││ │         0x00007fc3e8694574:   cmp    (%rsi,%rcx,1),%ebx
          ││││╭│         0x00007fc3e8694577:   jne    0x00007fc3e86945aa
   1.70%  ││││││         0x00007fc3e8694579:   add    $0x4,%rcx
          │││││╰         0x00007fc3e869457d:   jne    0x00007fc3e8694571
   0.21%  │││↘│          0x00007fc3e869457f:   test   $0x2,%al
          │││ │ ╭        0x00007fc3e8694581:   je     0x00007fc3e8694595
   0.06%  │││ │ │        0x00007fc3e8694583:   movzwl (%rdi),%ebx
   0.20%  │││ │ │        0x00007fc3e8694586:   movzwl (%rsi),%ecx
   0.43%  │││ │ │        0x00007fc3e8694589:   cmp    %ecx,%ebx
          │││ │ │╭       0x00007fc3e869458b:   jne    0x00007fc3e86945aa
   0.03%  │││ │ ││       0x00007fc3e869458d:   lea    0x2(%rdi),%rdi
   0.02%  │││ │ ││       0x00007fc3e8694591:   lea    0x2(%rsi),%rsi
   0.01%  │││ │ ↘│       0x00007fc3e8694595:   test   $0x1,%al
          │││ │  │╭      0x00007fc3e8694597:   je     0x00007fc3e86945a3
   0.00%  │││ │  ││      0x00007fc3e8694599:   movzbl (%rdi),%ebx
   0.00%  │││ │  ││      0x00007fc3e869459c:   movzbl (%rsi),%ecx
   0.00%  │││ │  ││      0x00007fc3e869459f:   cmp    %ecx,%ebx
          │││ │  ││╭     0x00007fc3e86945a1:   jne    0x00007fc3e86945aa
   0.00%  ↘│↘ │  │↘│     0x00007fc3e86945a3:   mov    $0x1,%eax
   0.01%   │  │  │ │╭    0x00007fc3e86945a8:   jmp    0x00007fc3e86945ac           ;   {no_reloc}
   0.47%   ↘  ↘  ↘ ↘│    0x00007fc3e86945aa:   xor    %eax,%eax
   0.02%            ↘    0x00007fc3e86945ac:   vpxor  %ymm4,%ymm4,%ymm4
   0.01%                 0x00007fc3e86945b0:   vpxor  %ymm5,%ymm5,%ymm5            ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@44 (line 1863)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.07%                 0x00007fc3e86945b4:   test   %eax,%eax
                         0x00007fc3e86945b6:   jne    0x00007fc3e869431b           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.Objects::equals@14 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.32%                 0x00007fc3e86945bc:   vmovd  %xmm2,%r10d
   0.06%                 0x00007fc3e86945c1:   test   %r10d,%r10d
                         0x00007fc3e86945c4:   je     0x00007fc3e86949f2           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@79 (line 2028)
   0.09%                 0x00007fc3e86945ca:   shl    $0x3,%r10                    ;*getfield left {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@5 (line 2021)
   0.12%                 0x00007fc3e86945ce:   vmovq  %r10,%xmm0
   0.09%                 0x00007fc3e86945d3:   vmovd  %xmm3,%r11d
   0.00%                 0x00007fc3e86945d8:   test   %r11d,%r11d
   0.01%                 0x00007fc3e86945db:   nopl   0x0(%rax,%rax,1)
   0.04%                 0x00007fc3e86945e0:   je     0x00007fc3e86949f2           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@91 (line 2030)
   0.06%                 0x00007fc3e86945e6:   test   %r8,%r8
                         0x00007fc3e86945e9:   jne    0x00007fc3e8694d88           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@102 (line 2032)
   0.01%                 0x00007fc3e86945ef:   shl    $0x3,%r11                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@3 (line 2021)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.10%                 0x00007fc3e86945f3:   mov    0x2c(%r11),%r14d             ;*getfield left {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@5 (line 2021)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   3.18%                 0x00007fc3e86945f7:   mov    0xc(%r11),%ecx               ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@19 (line 2022)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.49%                 0x00007fc3e86945fb:   nopl   0x0(%rax,%rax,1)
   0.02%                 0x00007fc3e8694600:   cmp    0x8(%rsp),%ecx
                         0x00007fc3e8694604:   jg     0x00007fc3e8694a1d           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@26 (line 2022)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.13%                 0x00007fc3e869460a:   mov    0x30(%r11),%r10d
   0.14%                 0x00007fc3e869460e:   mov    %r10,%r9
   0.03%                 0x00007fc3e8694611:   shl    $0x3,%r9                     ;*getfield right {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@12 (line 2021)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.04%                 0x00007fc3e8694615:   cmp    0x8(%rsp),%ecx
                         0x00007fc3e8694619:   jl     0x00007fc3e86949d1           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@39 (line 2024)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.09%                 0x00007fc3e869461f:   mov    0x10(%r11),%r8d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@51 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.05%                 0x00007fc3e8694623:   mov    %r8,%rcx
   0.02%                 0x00007fc3e8694626:   shl    $0x3,%rcx
   0.08%                 0x00007fc3e869462a:   vmovq  %xmm1,%rbx
   0.09%                 0x00007fc3e869462f:   cmp    %rbx,%rcx
                         0x00007fc3e8694632:   je     0x00007fc3e8694cc4           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.HashMap$TreeNode::find@58 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.08%                 0x00007fc3e8694638:   nopl   0x0(%rax,%rax,1)
   0.02%                 0x00007fc3e8694640:   mov    0x8(%r12,%r8,8),%ebx         ; implicit exception: dispatches to 0x00007fc3e869506c
   6.48%                 0x00007fc3e8694645:   cmp    $0x17f0d0,%ebx               ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
                         0x00007fc3e869464b:   jne    0x00007fc3e8694ec8           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.17%                 0x00007fc3e8694651:   vmovq  %xmm1,%rcx
   0.02%                 0x00007fc3e8694656:   mov    0xc(%rcx),%ecx               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@13 (line 849)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.01%                 0x00007fc3e8694659:   lea    (%r12,%r8,8),%rdx            ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.01%                 0x00007fc3e869465d:   mov    0xc(%rdx),%ebx               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::getKey@1 (line 798)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@17 (line 850)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.19%                 0x00007fc3e8694660:   mov    0x8(%r12,%rcx,8),%esi        ; implicit exception: dispatches to 0x00007fc3e86951f8
   0.08%                 0x00007fc3e8694665:   cmp    $0x102a690,%esi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
                         0x00007fc3e869466b:   jne    0x00007fc3e8694ba4
   0.05%                 0x00007fc3e8694671:   mov    %rbx,%rdi
   0.01%                 0x00007fc3e8694674:   shl    $0x3,%rdi
   0.14%                 0x00007fc3e8694678:   lea    (%r12,%rcx,8),%rsi           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.02%                 0x00007fc3e869467c:   nopl   0x0(%rax)
   0.10%                 0x00007fc3e8694680:   cmp    %rdi,%rsi
                     ╭   0x00007fc3e8694683:   je     0x00007fc3e86946b6           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
                     │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
                     │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     │                                                             ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.08%             │   0x00007fc3e8694689:   mov    0x8(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007fc3e8695244
                     │                                                             ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
                     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
                     │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
                     │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     │                                                             ; - java.util.HashMap$TreeNode::find@149 (line 2036)
  12.65%             │   0x00007fc3e869468e:   cmp    $0x102a690,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
                     │   0x00007fc3e8694694:   jne    0x00007fc3e8694cf8           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                     │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
                     │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     │                                                             ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.17%             │   0x00007fc3e869469a:   mov    0xc(%rsi),%ecx               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
                     │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
                     │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     │                                                             ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.02%             │   0x00007fc3e869469d:   shl    $0x3,%rbx                    ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                     │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
                     │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     │                                                             ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.02%             │   0x00007fc3e86946a1:   mov    0xc(%rbx),%esi               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                     │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
                     │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
                     │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     │                                                             ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.27%             │   0x00007fc3e86946a4:   cmp    %esi,%ecx
                     │╭  0x00007fc3e86946a6:   je     0x00007fc3e86946b6           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                     ││                                                            ; - java.util.Objects::equals@2 (line 64)
                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                     ││                                                            ; - java.util.AbstractMap::eq@18 (line 584)
                     ││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     ││                                                            ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     ││                                                            ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.20%             ││  0x00007fc3e86946a8:   movsbl 0x10(%r12,%rcx,8),%ebx       ; implicit exception: dispatches to 0x00007fc3e869528c
                     ││                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                     ││                                                            ; - java.lang.String::equals@26 (line 1861)
                     ││                                                            ; - java.util.Objects::equals@11 (line 64)
                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                     ││                                                            ; - java.util.AbstractMap::eq@18 (line 584)
                     ││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     ││                                                            ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     ││                                                            ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.03%             ││  0x00007fc3e86946ae:   cmp    %esi,%ecx
                     ││  0x00007fc3e86946b0:   jne    0x00007fc3e8694854           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                     ││                                                            ; - java.lang.String::equals@2 (line 1858)
                     ││                                                            ; - java.util.Objects::equals@11 (line 64)
                     ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                     ││                                                            ; - java.util.AbstractMap::eq@18 (line 584)
                     ││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                     ││                                                            ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                     ││                                                            ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.00%             ↘↘  0x00007fc3e86946b6:   mov    0x10(%rdx),%ecx              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::getValue@1 (line 807)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@33 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.04%                 0x00007fc3e86946b9:   vmovq  %xmm1,%r9
   0.00%                 0x00007fc3e86946be:   mov    0x10(%r9),%ebp               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@29 (line 850)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.00%                 0x00007fc3e86946c2:   mov    0x8(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007fc3e8695314
   0.01%                 0x00007fc3e86946c7:   cmp    $0x102a690,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
                         0x00007fc3e86946ce:   jne    0x00007fc3e8694d4c
                         0x00007fc3e86946d4:   mov    %rcx,%r9
                         0x00007fc3e86946d7:   shl    $0x3,%r9
                         0x00007fc3e86946db:   lea    (%r12,%rbp,8),%rbx           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e86946df:   nop
   0.01%                 0x00007fc3e86946e0:   cmp    %r9,%rbx
                         0x00007fc3e86946e3:   je     0x00007fc3e869449e           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e86946e9:   mov    0x8(%r12,%rcx,8),%edi        ; implicit exception: dispatches to 0x00007fc3e8695350
                                                                                   ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.28%                 0x00007fc3e86946ee:   cmp    $0x102a690,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
                         0x00007fc3e86946f4:   jne    0x00007fc3e8694e00           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e86946fa:   mov    0xc(%rbx),%r9d               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e86946fe:   shl    $0x3,%rcx                    ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e8694702:   mov    0xc(%rcx),%ecx               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.01%                 0x00007fc3e8694705:   cmp    %ecx,%r9d
                         0x00007fc3e8694708:   je     0x00007fc3e869449e           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.util.Objects::equals@2 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.00%                 0x00007fc3e869470e:   movsbl 0x10(%r12,%r9,8),%edi        ; implicit exception: dispatches to 0x00007fc3e869538c
                                                                                   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@26 (line 1861)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.00%                 0x00007fc3e8694714:   cmp    %ecx,%r9d
                         0x00007fc3e8694717:   je     0x00007fc3e869449e           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@2 (line 1858)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e869471d:   data16 xchg %ax,%ax
                         0x00007fc3e8694720:   movsbl 0x10(%r12,%rcx,8),%ebp       ; implicit exception: dispatches to 0x00007fc3e86952d4
                                                                                   ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@30 (line 1861)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.06%                 0x00007fc3e8694726:   cmp    %ebp,%edi
                         0x00007fc3e8694728:   jne    0x00007fc3e8694e4c           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@33 (line 1861)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.00%                 0x00007fc3e869472e:   mov    0x14(%r12,%rcx,8),%ebx       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@41 (line 1861)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e8694733:   mov    0x14(%r12,%r9,8),%edx        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@37 (line 1861)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
                         0x00007fc3e8694738:   mov    0xc(%r12,%rbx,8),%r9d
   0.04%                 0x00007fc3e869473d:   mov    0xc(%r12,%rdx,8),%ecx
                         0x00007fc3e8694742:   cmp    %r9d,%ecx
                         0x00007fc3e8694745:   jne    0x00007fc3e869481b           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@44 (line 1863)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                                   ; - java.util.AbstractMap::eq@18 (line 584)
                                                                                   ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                                   ; - java.util.HashMap$TreeNode::find@68 (line 2026)
                                                                                   ; - java.util.HashMap$TreeNode::find@149 (line 2036)
   0.01%                 0x00007fc3e869474b:   lea    (%r12,%rbx,8),%r9            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                                   ; - java.lang.String::equals@41 (line 1861)
                                                                                   ; - java.util.Objects::equals@11 (line 64)
                                                                                   ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
....................................................................................................
  30.15%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.HashMap$TreeNode::find, version 4, compile id 950 

              # parm2:    r8:r8     = &apos;java/lang/Class&apos;
              #           [sp+0x70]  (sp of caller)
              0x00007fc3e86941e0:   mov    0x8(%rsi),%r10d
              0x00007fc3e86941e4:   movabs $0x7fc36b000000,%r11
              0x00007fc3e86941ee:   add    %r11,%r10
              0x00007fc3e86941f1:   cmp    %r10,%rax
              0x00007fc3e86941f4:   jne    0x00007fc3e80c4080           ;   {runtime_call ic_miss_stub}
              0x00007fc3e86941fa:   xchg   %ax,%ax
              0x00007fc3e86941fc:   nopl   0x0(%rax)
            [Verified Entry Point]
   0.07%      0x00007fc3e8694200:   mov    %eax,-0x14000(%rsp)
   0.13%      0x00007fc3e8694207:   push   %rbp
   0.02%      0x00007fc3e8694208:   sub    $0x60,%rsp
   0.04%      0x00007fc3e869420c:   cmpl   $0x1,0x20(%r15)
   0.03%      0x00007fc3e8694214:   jne    0x00007fc3e86953e2           ;*synchronization entry
                                                                        ; - java.util.HashMap$TreeNode::find@-1 (line 2018)
   0.02%      0x00007fc3e869421a:   mov    %edx,0x8(%rsp)
   0.04%      0x00007fc3e869421e:   vmovq  %rsi,%xmm0
              0x00007fc3e8694223:   mov    %rcx,%r13
   0.03%      0x00007fc3e8694226:   mov    0x8(%rcx),%r11d              ; implicit exception: dispatches to 0x00007fc3e8694a70
   0.01%      0x00007fc3e869422a:   cmp    $0x17f0d0,%r11d              ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
              0x00007fc3e8694231:   jne    0x00007fc3e8694a70
   0.03%      0x00007fc3e8694237:   mov    %rcx,%r10                    ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%      0x00007fc3e869423a:   vmovq  %r10,%xmm1                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@3 (line 2021)
   0.09%      0x00007fc3e869423f:   vmovq  %xmm0,%rdx
   0.06%      0x00007fc3e8694244:   mov    0x2c(%rdx),%r10d             ;*getfield left {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@5 (line 2021)
   3.22%      0x00007fc3e8694248:   vmovd  %r10d,%xmm2
   0.14%      0x00007fc3e869424d:   mov    0xc(%rdx),%r11d              ;*getfield hash {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@19 (line 2022)
   0.51%      0x00007fc3e8694251:   cmp    0x8(%rsp),%r11d
              0x00007fc3e8694256:   jg     0x00007fc3e8694a12           ;*if_icmple {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@26 (line 2022)
   0.08%      0x00007fc3e869425c:   mov    0x30(%rdx),%r9d
   0.17%      0x00007fc3e8694260:   vmovd  %r9d,%xmm3
   0.08%      0x00007fc3e8694265:   mov    %r9,%r10
   0.05%      0x00007fc3e8694268:   shl    $0x3,%r10                    ;*getfield right {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@12 (line 2021)
   0.07%      0x00007fc3e869426c:   vmovq  %r10,%xmm0
   0.08%      0x00007fc3e8694271:   cmp    0x8(%rsp),%r11d
              0x00007fc3e8694276:   jl     0x00007fc3e86949f2           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@39 (line 2024)
   0.02%      0x00007fc3e869427c:   mov    0x10(%rdx),%r11d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@51 (line 2026)
   0.06%      0x00007fc3e8694280:   mov    %r11,%r10
   0.06%      0x00007fc3e8694283:   shl    $0x3,%r10
   0.08%      0x00007fc3e8694287:   cmp    %r13,%r10
              0x00007fc3e869428a:   je     0x00007fc3e8694a98           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$TreeNode::find@58 (line 2026)
   0.03%      0x00007fc3e8694290:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007fc3e8694f0c
   7.20%      0x00007fc3e8694295:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.02%      0x00007fc3e86942a0:   cmp    $0x17f0d0,%r9d               ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
              0x00007fc3e86942a7:   jne    0x00007fc3e8694e88           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.16%      0x00007fc3e86942ad:   vmovq  %xmm1,%r10
   0.01%      0x00007fc3e86942b2:   mov    0xc(%r10),%ecx               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@13 (line 849)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.03%      0x00007fc3e86942b6:   lea    (%r12,%r11,8),%r14           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%      0x00007fc3e86942ba:   mov    0xc(%r14),%r10d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::getKey@1 (line 798)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@17 (line 850)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.20%      0x00007fc3e86942be:   xchg   %ax,%ax
   0.01%      0x00007fc3e86942c0:   mov    0x8(%r12,%rcx,8),%r9d        ; implicit exception: dispatches to 0x00007fc3e8694f9c
   0.06%      0x00007fc3e86942c5:   cmp    $0x102a690,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007fc3e86942cc:   jne    0x00007fc3e8694a26
   0.05%      0x00007fc3e86942d2:   mov    %r10,%r9
   0.11%      0x00007fc3e86942d5:   shl    $0x3,%r9
   0.02%      0x00007fc3e86942d9:   shl    $0x3,%rcx                    ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.05%      0x00007fc3e86942dd:   data16 xchg %ax,%ax
   0.07%      0x00007fc3e86942e0:   cmp    %r9,%rcx
          ╭   0x00007fc3e86942e3:   je     0x00007fc3e869431b           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
          │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.09%  │   0x00007fc3e86942e9:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007fc3e8694fe4
          │                                                             ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
          │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
  13.50%  │   0x00007fc3e86942ee:   cmp    $0x102a690,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
          │   0x00007fc3e86942f5:   jne    0x00007fc3e8694abc           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
          │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.16%  │   0x00007fc3e86942fb:   mov    0xc(%rcx),%r9d               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
          │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.00%  │   0x00007fc3e86942ff:   shl    $0x3,%r10                    ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
          │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.02%  │   0x00007fc3e8694303:   mov    0xc(%r10),%ebx               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
          │                                                             ; - java.util.AbstractMap::eq@18 (line 584)
          │                                                             ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          │                                                             ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.27%  │   0x00007fc3e8694307:   cmp    %ebx,%r9d
          │╭  0x00007fc3e869430a:   je     0x00007fc3e869431b           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.Objects::equals@2 (line 64)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││                                                            ; - java.util.AbstractMap::eq@18 (line 584)
          ││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          ││                                                            ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.17%  ││  0x00007fc3e869430c:   movsbl 0x10(%r12,%r9,8),%r10d       ; implicit exception: dispatches to 0x00007fc3e8695028
          ││                                                            ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.String::equals@26 (line 1861)
          ││                                                            ; - java.util.Objects::equals@11 (line 64)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││                                                            ; - java.util.AbstractMap::eq@18 (line 584)
          ││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          ││                                                            ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%  ││  0x00007fc3e8694312:   cmp    %ebx,%r9d
          ││  0x00007fc3e8694315:   jne    0x00007fc3e86944b7           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.lang.String::equals@2 (line 1858)
          ││                                                            ; - java.util.Objects::equals@11 (line 64)
          ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
          ││                                                            ; - java.util.AbstractMap::eq@18 (line 584)
          ││                                                            ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
          ││                                                            ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%  ↘↘  0x00007fc3e869431b:   mov    0x10(%r14),%ecx              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::getValue@1 (line 807)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@33 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.04%      0x00007fc3e869431f:   vmovq  %xmm1,%r10
              0x00007fc3e8694324:   mov    0x10(%r10),%ebp              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@29 (line 850)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%      0x00007fc3e8694328:   mov    0x8(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007fc3e86950ec
   0.01%      0x00007fc3e869432d:   cmp    $0x102a690,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007fc3e8694334:   jne    0x00007fc3e8694b14
   0.00%      0x00007fc3e869433a:   mov    %rcx,%r10
              0x00007fc3e869433d:   shl    $0x3,%r10
   0.00%      0x00007fc3e8694341:   lea    (%r12,%rbp,8),%rbx           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e8694345:   cmp    %r10,%rbx
              0x00007fc3e8694348:   je     0x00007fc3e869449b           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.00%      0x00007fc3e869434e:   mov    0x8(%r12,%rcx,8),%r9d        ; implicit exception: dispatches to 0x00007fc3e8695130
                                                                        ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.32%      0x00007fc3e8694353:   nopw   0x0(%rax,%rax,1)
              0x00007fc3e869435c:   data16 data16 xchg %ax,%ax
              0x00007fc3e8694360:   cmp    $0x102a690,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007fc3e8694367:   jne    0x00007fc3e8694c2c           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.00%      0x00007fc3e869436d:   mov    0xc(%rbx),%r9d               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e8694371:   lea    (%r12,%rcx,8),%r10           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e8694375:   mov    0xc(%r10),%r10d              ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.00%      0x00007fc3e8694379:   cmp    %r10d,%r9d
   0.01%      0x00007fc3e869437c:   nopl   0x0(%rax)
              0x00007fc3e8694380:   je     0x00007fc3e869449b           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Objects::equals@2 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%      0x00007fc3e8694386:   movsbl 0x10(%r12,%r9,8),%ecx        ; implicit exception: dispatches to 0x00007fc3e8695170
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@26 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e869438c:   cmp    %r10d,%r9d
              0x00007fc3e869438f:   je     0x00007fc3e869449b           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@2 (line 1858)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e8694395:   data16 data16 nopw 0x0(%rax,%rax,1)
              0x00007fc3e86943a0:   movsbl 0x10(%r12,%r10,8),%ebp       ; implicit exception: dispatches to 0x00007fc3e86950ac
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.07%      0x00007fc3e86943a6:   cmp    %ebp,%ecx
              0x00007fc3e86943a8:   jne    0x00007fc3e8694c80           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.00%      0x00007fc3e86943ae:   mov    0x14(%r12,%r10,8),%r10d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e86943b3:   mov    0x14(%r12,%r9,8),%ebx        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e86943b8:   mov    0xc(%r12,%r10,8),%r9d
   0.05%      0x00007fc3e86943bd:   mov    0xc(%r12,%rbx,8),%ecx
              0x00007fc3e86943c2:   cmp    %r9d,%ecx
              0x00007fc3e86943c5:   jne    0x00007fc3e8694bf0           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
   0.01%      0x00007fc3e86943cb:   lea    (%r12,%r10,8),%r9            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e86943cf:   lea    0x10(%r12,%r10,8),%rsi
              0x00007fc3e86943d4:   lea    (%r12,%rbx,8),%r10           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.AbstractMap::eq@18 (line 584)
                                                                        ; - java.util.AbstractMap$SimpleImmutableEntry::equals@38 (line 851)
                                                                        ; - java.util.HashMap$TreeNode::find@68 (line 2026)
              0x00007fc3e86943d8:   lea    0x10(%r12,%rbx,8),%rdi
   0.00%      0x00007fc3e86943dd:   test   %ecx,%ecx
              0x00007fc3e86943df:   je     0x00007fc3e8694482
              0x00007fc3e86943e5:   mov    %ecx,%eax
              0x00007fc3e86943e7:   and    $0x1f,%eax
              0x00007fc3e86943ea:   and    $0xffffffe0,%ecx
              0x00007fc3e86943ed:   je     0x00007fc3e869443e
              0x00007fc3e86943f3:   lea    (%rdi,%rcx,1),%rdi
              0x00007fc3e86943f7:   lea    (%rsi,%rcx,1),%rsi
              0x00007fc3e86943fb:   neg    %rcx
              0x00007fc3e86943fe:   vmovdqu (%rdi,%rcx,1),%ymm4
              0x00007fc3e8694403:   vmovdqu (%rsi,%rcx,1),%ymm0
....................................................................................................
  27.98%  <total for region 2>

....[Hottest Regions]...............................................................................
  30.15%         c2, level 4  java.util.HashMap$TreeNode::find, version 4, compile id 950 
  27.98%         c2, level 4  java.util.HashMap$TreeNode::find, version 4, compile id 950 
   7.71%         c2, level 4  java.util.HashMap$TreeNode::find, version 4, compile id 950 
   6.80%         c2, level 4  java.util.HashMap$TreeNode::find, version 4, compile id 950 
   6.58%         c2, level 4  java.util.HashMap$TreeNode::find, version 4, compile id 950 
   2.99%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 1025 
   0.92%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 1025 
   0.75%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.69%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.67%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007fc36c084d40::accept, version 2, compile id 871 
   0.66%         c2, level 4  java.util.HashMap$TreeNode::split, version 4, compile id 977 
   0.64%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.60%         c2, level 4  java.util.HashMap::replaceAll, version 5, compile id 1086 
   0.57%              kernel  [unknown] 
   0.56%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.53%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 1032 
   0.41%         c2, level 4  java.util.HashMap$TreeNode::putTreeVal, version 4, compile id 963 
   0.34%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   0.29%         c2, level 4  java.util.Spliterator::getExactSizeIfKnown, version 4, compile id 859 
   0.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007fc36c084d40::accept, version 2, compile id 871 
   9.87%  <...other 477 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  79.29%         c2, level 4  java.util.HashMap$TreeNode::find, version 4, compile id 950 
   4.48%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 1025 
   2.47%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   1.65%         c2, level 4  java.util.HashMap$TreeNode::putTreeVal, version 4, compile id 963 
   1.31%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007fc36c084d40::accept, version 2, compile id 871 
   1.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 2, compile id 888 
   1.22%              kernel  [unknown] 
   0.99%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   0.70%         c2, level 4  java.util.HashMap$TreeNode::split, version 4, compile id 977 
   0.61%         c2, level 4  java.util.HashMap::replaceAll, version 5, compile id 1086 
   0.60%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 1032 
   0.57%                      <unknown> 
   0.45%         c2, level 4  java.util.stream.AbstractPipeline::evaluate, version 4, compile id 1067 
   0.38%         c2, level 4  java.util.stream.SpinedBuffer$1Splitr::forEachRemaining, version 2, compile id 906 
   0.29%         c2, level 4  java.util.Spliterator::getExactSizeIfKnown, version 4, compile id 859 
   0.27%         c2, level 4  java.util.stream.Collectors::lambda$flatMapping$15, version 2, compile id 969 
   0.26%         c2, level 4  java.util.HashMap$TreeNode::treeify, version 2, compile id 959 
   0.23%         c2, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 2, compile id 901 
   0.22%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   0.20%         c2, level 4  java.util.stream.ReduceOps$3ReducingSink::begin, version 3, compile id 1069 
   2.58%  <...other 108 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  93.36%         c2, level 4
   4.39%           libjvm.so
   1.22%              kernel
   0.57%                    
   0.21%         c1, level 1
   0.13%    Unknown, level 0
   0.06%    perf-1953784.map
   0.04%        libc-2.31.so
   0.01%         interpreter
   0.01%  libpthread-2.31.so
   0.00%          ld-2.31.so
   0.00%      hsdis-amd64.so
   0.00%         c1, level 3
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year

# Run progress: 35.71% complete, ETA 00:17:15
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 1560.732 ms/op
# Warmup Iteration   2: 997.723 ms/op
# Warmup Iteration   3: 993.458 ms/op
# Warmup Iteration   4: 993.217 ms/op
# Warmup Iteration   5: 994.889 ms/op
Iteration   1: 998.363 ms/op
Iteration   2: 1000.062 ms/op
Iteration   3: 998.152 ms/op
Iteration   4: 1000.416 ms/op
Iteration   5: 997.513 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year":
  998.901 ±(99.9%) 4.879 ms/op [Average]
  (min, avg, max) = (997.513, 998.901, 1000.416), stdev = 1.267
  CI (99.9%): [994.022, 1003.779] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year:asm":
PrintAssembly processed: 241813 total address lines.
Perf output processed (skipped 62.643 seconds):
 Column 1: cycles (57387 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap::computeIfAbsent, version 4, compile id 940 

              0x00007fa134695569:   jne    0x00007fa134695b28
              0x00007fa13469556f:   shr    $0x8,%r10
              0x00007fa134695573:   mov    %r10d,%eax
              0x00007fa134695576:   and    $0x7fffffff,%eax
              0x00007fa13469557b:   test   %eax,%eax
              0x00007fa13469557d:   data16 xchg %ax,%ax
              0x00007fa134695580:   je     0x00007fa134695b28           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007fa134695586:   mov    0x28(%rsp),%r10
   0.05%      0x00007fa13469558b:   mov    0x14(%r10),%r10d
   0.24%      0x00007fa13469558f:   mov    0x28(%rsp),%r11
              0x00007fa134695594:   mov    0x1c(%r11),%r8d
   0.04%      0x00007fa134695598:   mov    %eax,%r11d
              0x00007fa13469559b:   shr    $0x10,%r11d
   0.00%      0x00007fa13469559f:   xor    %eax,%r11d                   ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@18 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007fa1346955a2:   mov    %r11d,0x30(%rsp)
   0.05%      0x00007fa1346955a7:   cmp    %r8d,%r10d
              0x00007fa1346955aa:   jg     0x00007fa1346958d9           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
              0x00007fa1346955b0:   mov    0x28(%rsp),%r10
   0.00%      0x00007fa1346955b5:   mov    0x24(%r10),%r10d             ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.00%      0x00007fa1346955b9:   test   %r10d,%r10d
   0.05%      0x00007fa1346955bc:   nopl   0x0(%rax)
              0x00007fa1346955c0:   je     0x00007fa1346958d9           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.05%      0x00007fa1346955c6:   mov    0xc(%r12,%r10,8),%r11d       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.47%      0x00007fa1346955cb:   test   %r11d,%r11d
              0x00007fa1346955ce:   jbe    0x00007fa134696018           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.07%      0x00007fa1346955d4:   lea    (%r12,%r10,8),%r9            ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@66 (line 1207)
              0x00007fa1346955d8:   mov    %r11d,%r8d
              0x00007fa1346955db:   dec    %r8d
              0x00007fa1346955de:   and    0x30(%rsp),%r8d              ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.09%      0x00007fa1346955e3:   mov    %r8d,0x34(%rsp)
   0.04%      0x00007fa1346955e8:   test   %r11d,%r11d
              0x00007fa1346955eb:   jle    0x00007fa134695f0f
   0.00%      0x00007fa1346955f1:   lea    0x10(%r9,%r8,4),%r10         ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.06%      0x00007fa1346955f6:   mov    %r10,0x8(%rsp)
   0.10%      0x00007fa1346955fb:   mov    0x28(%rsp),%r10
              0x00007fa134695600:   mov    0x8(%r10),%r8d               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.00%      0x00007fa134695604:   mov    0x8(%rsp),%r10
   0.16%      0x00007fa134695609:   mov    (%r10),%r13d                 ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   6.17%      0x00007fa13469560c:   test   %r13d,%r13d
          ╭   0x00007fa13469560f:   jne    0x00007fa1346957f9           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.17%  │   0x00007fa134695615:   xor    %r13d,%r13d
   0.01%  │   0x00007fa134695618:   xor    %ebx,%ebx
          │   0x00007fa13469561a:   xor    %r11d,%r11d                  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
   0.03%  │   0x00007fa13469561d:   mov    0x28(%rsp),%r10
   0.15%  │   0x00007fa134695622:   mov    0x18(%r10),%ecx              ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@195 (line 1227)
   0.10%  │   0x00007fa134695626:   mov    %ecx,0x24(%rsp)
   0.04%  │   0x00007fa13469562a:   cmp    $0x1035cd8,%esi              ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fa0bc035cd8&apos;)}
          │   0x00007fa134695630:   jne    0x00007fa134695f30
   0.02%  │   0x00007fa134695636:   mov    0x38(%rsp),%r10              ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
   0.01%  │   0x00007fa13469563b:   mov    0xc(%r10),%ecx               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.stream.Collectors$$Lambda/0x00007fa0bc035cd8::apply@1
          │                                                             ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
   0.00%  │   0x00007fa13469563f:   nop
   0.01%  │   0x00007fa134695640:   mov    0x8(%r12,%rcx,8),%edi        ; implicit exception: dispatches to 0x00007fa1346961d4
   0.10%  │   0x00007fa134695645:   cmp    $0x10346d8,%edi              ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fa0bc0346d8&apos;)}
          │   0x00007fa13469564b:   jne    0x00007fa134695aa5
   0.04%  │   0x00007fa134695651:   mov    0x1b8(%r15),%r10
          │   0x00007fa134695658:   mov    %r10,%rcx
          │   0x00007fa13469565b:   add    $0x18,%rcx
   0.02%  │   0x00007fa13469565f:   nop
   0.03%  │   0x00007fa134695660:   cmp    0x1c8(%r15),%rcx
          │   0x00007fa134695667:   jae    0x00007fa134695d2d           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
          │   0x00007fa13469566d:   mov    %rcx,0x1b8(%r15)
   0.00%  │   0x00007fa134695674:   prefetchw 0xc0(%rcx)
   0.02%  │   0x00007fa13469567b:   movq   $0x1,(%r10)
   0.04%  │   0x00007fa134695682:   prefetchw 0x100(%rcx)
          │   0x00007fa134695689:   movl   $0x2a80,0x8(%r10)            ;   {metadata({type array long})}
   0.01%  │   0x00007fa134695691:   prefetchw 0x140(%rcx)
   0.03%  │   0x00007fa134695698:   movl   $0x1,0xc(%r10)
   0.04%  │   0x00007fa1346956a0:   prefetchw 0x180(%rcx)
   0.01%  │   0x00007fa1346956a7:   mov    %r12,0x10(%r10)              ;*invokeinterface get {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.stream.Collectors::lambda$groupingBy$52@1 (line 1106)
          │                                                             ; - java.util.stream.Collectors$$Lambda/0x00007fa0bc035cd8::apply@5
          │                                                             ; - java.util.HashMap::computeIfAbsent@202 (line 1228)
   0.01%  │   0x00007fa1346956ab:   test   %rbx,%rbx
          │   0x00007fa1346956ae:   jne    0x00007fa134695c25           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@256 (line 1237)
   0.02%  │   0x00007fa1346956b4:   nopl   0x0(%rax,%rax,1)
   0.02%  │   0x00007fa1346956bc:   data16 data16 xchg %ax,%ax
          │   0x00007fa1346956c0:   cmp    $0x8d850,%r8d                ;   {metadata(&apos;java/util/HashMap&apos;)}
          │   0x00007fa1346956c7:   jne    0x00007fa134695fa0
   0.01%  │   0x00007fa1346956cd:   mov    0x28(%rsp),%rbp
   0.02%  │   0x00007fa1346956d2:   mov    0x1b8(%r15),%rbx
   0.03%  │   0x00007fa1346956d9:   mov    %rbx,%r8
          │   0x00007fa1346956dc:   add    $0x20,%r8
   0.01%  │   0x00007fa1346956e0:   cmp    0x1c8(%r15),%r8
          │   0x00007fa1346956e7:   jae    0x00007fa134695c55           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%  │   0x00007fa1346956ed:   mov    %r8,0x1b8(%r15)
   0.02%  │   0x00007fa1346956f4:   prefetchw 0xc0(%r8)
   0.05%  │   0x00007fa1346956fc:   movq   $0x1,(%rbx)
   0.01%  │   0x00007fa134695703:   movl   $0x1ac6e8,0x8(%rbx)          ;   {metadata(&apos;java/util/HashMap$Node&apos;)}
   0.03%  │   0x00007fa13469570a:   mov    %r12d,0x14(%rbx)
   0.02%  │   0x00007fa13469570e:   mov    %r12,0x18(%rbx)
   0.05%  │   0x00007fa134695712:   mov    %r10,0x18(%rsp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::newNode@0 (line 1909)
          │                                                             ; - java.util.HashMap::computeIfAbsent@286 (line 1240)
          │   0x00007fa134695717:   mov    0x30(%rsp),%r10d
   0.02%  │   0x00007fa13469571c:   mov    %r10d,0xc(%rbx)              ;*putfield hash {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$Node::&lt;init&gt;@6 (line 288)
          │                                                             ; - java.util.HashMap::newNode@9 (line 1909)
          │                                                             ; - java.util.HashMap::computeIfAbsent@286 (line 1240)
   0.03%  │   0x00007fa134695720:   mov    0x8(%r9),%r8d
   0.01%  │   0x00007fa134695724:   mov    %r9,%r14
   0.00%  │   0x00007fa134695727:   mov    0x18(%rsp),%r10
   0.02%  │   0x00007fa13469572c:   shr    $0x3,%r10
   0.03%  │   0x00007fa134695730:   shr    $0x3,%r11
   0.01%  │   0x00007fa134695734:   mov    0x40(%rsp),%r9
          │   0x00007fa134695739:   shr    $0x3,%r9
   0.02%  │   0x00007fa13469573d:   mov    %r9d,0x10(%rbx)              ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::newNode@0 (line 1909)
          │                                                             ; - java.util.HashMap::computeIfAbsent@286 (line 1240)
   0.02%  │   0x00007fa134695741:   mov    %r11d,0x18(%rbx)             ;*putfield next {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$Node::&lt;init&gt;@22 (line 291)
          │                                                             ; - java.util.HashMap::newNode@9 (line 1909)
          │                                                             ; - java.util.HashMap::computeIfAbsent@286 (line 1240)
   0.02%  │   0x00007fa134695745:   mov    %r10d,0x14(%rbx)             ;*synchronization entry
          │                                                             ; - java.util.HashMap$Node::&lt;init&gt;@-1 (line 287)
          │                                                             ; - java.util.HashMap::newNode@9 (line 1909)
          │                                                             ; - java.util.HashMap::computeIfAbsent@286 (line 1240)
   0.00%  │   0x00007fa134695749:   cmp    $0x1ac4f0,%r8d               ;   {metadata(&apos;java/util/HashMap$Node&apos;[])}
          │   0x00007fa134695750:   jne    0x00007fa134695fe4           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%  │   0x00007fa134695756:   data16 nopw 0x0(%rax,%rax,1)
   0.01%  │   0x00007fa134695760:   cmpb   $0x0,0x40(%r15)
   0.01%  │   0x00007fa134695765:   jne    0x00007fa134695b65
   0.01%  │   0x00007fa13469576b:   mov    0x8(%rsp),%r10
   0.03%  │   0x00007fa134695770:   mov    %rbx,%r8
   0.01%  │   0x00007fa134695773:   shr    $0x3,%r8
   0.02%  │   0x00007fa134695777:   mov    0x8(%rsp),%r11
   0.01%  │   0x00007fa13469577c:   mov    %r8d,(%r11)
   0.02%  │   0x00007fa13469577f:   mov    %rbx,%r11
   0.01%  │   0x00007fa134695782:   xor    %r10,%r11
   0.02%  │   0x00007fa134695785:   shr    $0x15,%r11
   0.01%  │   0x00007fa134695789:   test   %r11,%r11
          │╭  0x00007fa13469578c:   je     0x00007fa1346957a9
   0.02%  ││  0x00007fa13469578e:   shr    $0x9,%r10
   0.02%  ││  0x00007fa134695792:   movabs $0x7fa1463cc000,%rdi
   0.01%  ││  0x00007fa13469579c:   add    %r10,%rdi
   0.01%  ││  0x00007fa13469579f:   nop
   0.02%  ││  0x00007fa1346957a0:   cmpb   $0x2,(%rdi)
   0.07%  ││  0x00007fa1346957a3:   jne    0x00007fa134695ba5           ;*aastore {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@289 (line 1240)
   0.02%  │↘  0x00007fa1346957a9:   cmp    $0x7,%r13d
          │   0x00007fa1346957ad:   jge    0x00007fa134695c08           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@294 (line 1241)
   0.01%  │   0x00007fa1346957b3:   mov    0x28(%rsp),%r10
   0.03%  │   0x00007fa1346957b8:   incl   0x14(%r10)                   ;*putfield size {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@319 (line 1245)
   0.06%  │   0x00007fa1346957bc:   mov    0x8(%r10),%r11d
   0.02%  │   0x00007fa1346957c0:   mov    0x24(%rsp),%r10d
   0.01%  │   0x00007fa1346957c5:   inc    %r10d
   0.02%  │   0x00007fa1346957c8:   mov    0x28(%rsp),%r8
   0.01%  │   0x00007fa1346957cd:   mov    %r10d,0x18(%r8)              ;*putfield modCount {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@309 (line 1244)
   0.02%  │   0x00007fa1346957d1:   cmp    $0x8d850,%r11d               ;   {metadata(&apos;java/util/HashMap&apos;)}
          │   0x00007fa1346957d8:   jne    0x00007fa134695f8c           ;*invokevirtual afterNodeInsertion {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::computeIfAbsent@324 (line 1246)
   0.01%  │   0x00007fa1346957de:   mov    0x18(%rsp),%rax              ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap::hash@1 (line 338)
          │                                                             ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.03%  │   0x00007fa1346957e3:   add    $0x90,%rsp
   0.01%  │   0x00007fa1346957ea:   pop    %rbp
   0.01%  │   0x00007fa1346957eb:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │   0x00007fa1346957f2:   ja     0x00007fa1346962ae
   0.02%  │   0x00007fa1346957f8:   ret    
   0.12%  ↘   0x00007fa1346957f9:   mov    0x8(%r12,%r13,8),%r10d
   7.19%      0x00007fa1346957fe:   lea    (%r12,%r13,8),%r11           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
              0x00007fa134695802:   cmp    $0x1acba8,%r10d              ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
              0x00007fa134695809:   jne    0x00007fa13469589c
   0.01%      0x00007fa13469580f:   mov    %r13d,0x10(%rsp)
   0.01%      0x00007fa134695814:   mov    %r8d,0x4(%rsp)
   0.00%      0x00007fa134695819:   mov    %r9,0x20(%rsp)
              0x00007fa13469581e:   mov    %esi,(%rsp)
              0x00007fa134695821:   mov    %r11,%rbp
              0x00007fa134695824:   mov    %r11,0x18(%rsp)              ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@94 (line 1209)
              0x00007fa134695829:   mov    %rbp,%rsi
              0x00007fa13469582c:   mov    0x30(%rsp),%edx
              0x00007fa134695830:   mov    0x40(%rsp),%rcx
              0x00007fa134695835:   xchg   %ax,%ax
              0x00007fa134695837:   call   0x00007fa13469630c           ; ImmutableOopMap {rbp=Oop [16]=NarrowOop [24]=Oop [32]=Oop [8]=Derived_oop_[32] [40]=Oop [56]=Oop [64]=Oop }
                                                                        ;*invokevirtual getTreeNode {reexecute=0 rethrow=0 return_oop=1}
....................................................................................................
  16.96%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.AbstractMap$SimpleImmutableEntry::equals, version 2, compile id 949 

            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x40]  (sp of caller)
            0x00007fa13469ad60:   mov    0x8(%rsi),%r10d
            0x00007fa13469ad64:   movabs $0x7fa0bb000000,%r11
            0x00007fa13469ad6e:   add    %r11,%r10
            0x00007fa13469ad71:   cmp    %r10,%rax
            0x00007fa13469ad74:   jne    0x00007fa1340c4080           ;   {runtime_call ic_miss_stub}
            0x00007fa13469ad7a:   xchg   %ax,%ax
            0x00007fa13469ad7c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.05%    0x00007fa13469ad80:   mov    %eax,-0x14000(%rsp)
   0.01%    0x00007fa13469ad87:   push   %rbp
   0.02%    0x00007fa13469ad88:   sub    $0x30,%rsp
   0.02%    0x00007fa13469ad8c:   cmpl   $0x0,0x20(%r15)
   0.01%    0x00007fa13469ad94:   jne    0x00007fa13469b2ea           ;*synchronization entry
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@-1 (line 851)
   0.02%    0x00007fa13469ad9a:   mov    %rsi,%r10
   0.02%    0x00007fa13469ad9d:   data16 xchg %ax,%ax
            0x00007fa13469ada0:   mov    0x8(%rdx),%r8d               ; implicit exception: dispatches to 0x00007fa13469b1bc
   5.03%    0x00007fa13469ada4:   cmp    $0x17f0d0,%r8d               ;   {metadata(&apos;java/util/AbstractMap$SimpleImmutableEntry&apos;)}
            0x00007fa13469adab:   jne    0x00007fa13469b19c           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@1 (line 851)
   0.07%    0x00007fa13469adb1:   mov    %rsi,%r13
   0.00%    0x00007fa13469adb4:   mov    0xc(%rsi),%r10d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@13 (line 849)
   0.00%    0x00007fa13469adb8:   mov    0xc(%rdx),%r8d               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::getKey@1 (line 798)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@17 (line 850)
   0.07%    0x00007fa13469adbc:   nopl   0x0(%rax)
   0.01%    0x00007fa13469adc0:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007fa13469b1f8
   0.00%    0x00007fa13469adc5:   cmp    $0x102a690,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
            0x00007fa13469adcc:   jne    0x00007fa13469b0a1
   0.01%    0x00007fa13469add2:   shl    $0x3,%r10                    ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.03%    0x00007fa13469add6:   mov    %r8,%r11
   0.01%    0x00007fa13469add9:   shl    $0x3,%r11
            0x00007fa13469addd:   data16 xchg %ax,%ax
   0.01%    0x00007fa13469ade0:   cmp    %r11,%r10
            0x00007fa13469ade3:   je     0x00007fa13469af1f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.03%    0x00007fa13469ade9:   mov    0x8(%r12,%r8,8),%r9d         ; implicit exception: dispatches to 0x00007fa13469b220
                                                                      ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   8.35%    0x00007fa13469adee:   cmp    $0x102a690,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
            0x00007fa13469adf5:   jne    0x00007fa13469b0e4           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.05%    0x00007fa13469adfb:   mov    0xc(%r10),%r9d               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            0x00007fa13469adff:   lea    (%r12,%r8,8),%r10            ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            0x00007fa13469ae03:   mov    0xc(%r10),%r10d              ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.07%    0x00007fa13469ae07:   cmp    %r10d,%r9d
            0x00007fa13469ae0a:   je     0x00007fa13469af1f           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Objects::equals@2 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.04%    0x00007fa13469ae10:   movsbl 0x10(%r12,%r9,8),%r11d       ; implicit exception: dispatches to 0x00007fa13469b244
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@26 (line 1861)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.01%    0x00007fa13469ae16:   cmp    %r10d,%r9d
            0x00007fa13469ae19:   je     0x00007fa13469af1f           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@2 (line 1858)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.04%    0x00007fa13469ae1f:   nop
   0.00%    0x00007fa13469ae20:   movsbl 0x10(%r12,%r10,8),%ebp       ; implicit exception: dispatches to 0x00007fa13469b1d4
                                                                      ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@30 (line 1861)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   1.57%    0x00007fa13469ae26:   cmp    %ebp,%r11d
            0x00007fa13469ae29:   jne    0x00007fa13469b118           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@33 (line 1861)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.03%    0x00007fa13469ae2f:   mov    0x14(%r12,%r10,8),%r10d      ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.04%    0x00007fa13469ae34:   mov    0x14(%r12,%r9,8),%r8d        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            0x00007fa13469ae39:   mov    0xc(%r12,%r10,8),%r11d
   1.19%    0x00007fa13469ae3e:   mov    0xc(%r12,%r8,8),%ecx
   0.00%    0x00007fa13469ae43:   cmp    %r11d,%ecx
            0x00007fa13469ae46:   jne    0x00007fa13469af18           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@44 (line 1863)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.02%    0x00007fa13469ae4c:   lea    (%r12,%r10,8),%r11           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@41 (line 1861)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
   0.00%    0x00007fa13469ae50:   lea    0x10(%r12,%r10,8),%rsi
            0x00007fa13469ae55:   lea    (%r12,%r8,8),%r10            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.String::equals@37 (line 1861)
                                                                      ; - java.util.Objects::equals@11 (line 64)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                      ; - java.util.AbstractMap::eq@18 (line 584)
                                                                      ; - java.util.AbstractMap$SimpleImmutableEntry::equals@22 (line 850)
            0x00007fa13469ae59:   lea    0x10(%r12,%r8,8),%rdi
   0.04%    0x00007fa13469ae5e:   test   %ecx,%ecx
            0x00007fa13469ae60:   je     0x00007fa13469af03
   0.00%    0x00007fa13469ae66:   mov    %ecx,%eax
   0.00%    0x00007fa13469ae68:   and    $0x1f,%eax
            0x00007fa13469ae6b:   and    $0xffffffe0,%ecx
            0x00007fa13469ae6e:   je     0x00007fa13469aebf
            0x00007fa13469ae74:   lea    (%rdi,%rcx,1),%rdi
            0x00007fa13469ae78:   lea    (%rsi,%rcx,1),%rsi
            0x00007fa13469ae7c:   neg    %rcx
            0x00007fa13469ae7f:   vmovdqu (%rdi,%rcx,1),%ymm0
            0x00007fa13469ae84:   vmovdqu (%rsi,%rcx,1),%ymm1
            0x00007fa13469ae89:   vpxor  %ymm1,%ymm0,%ymm0
            0x00007fa13469ae8d:   vptest %ymm0,%ymm0
            0x00007fa13469ae92:   jne    0x00007fa13469af0a
....................................................................................................
  16.88%  <total for region 2>

....[Hottest Regions]...............................................................................
  16.96%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 940 
  16.88%         c2, level 4  java.util.AbstractMap$SimpleImmutableEntry::equals, version 2, compile id 949 
   5.96%         c2, level 4  java.util.function.Function::lambda$andThen$1, version 3, compile id 1177 
   4.67%         c2, level 4  java.util.HashMap::resize, version 4, compile id 928 
   3.66%         c2, level 4  java.util.HashMap::resize, version 4, compile id 928 
   3.28%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007fa0bc085210::accept, version 2, compile id 873 
   2.90%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 5, compile id 1093 
   2.24%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 940 
   2.24%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 940 
   1.96%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 2, compile id 891 
   1.57%         c2, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 2, compile id 907 
   1.51%         c2, level 4  java.util.AbstractMap$SimpleImmutableEntry::equals, version 2, compile id 949 
   1.47%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007fa0bc085210::accept, version 2, compile id 873 
   1.33%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 2, compile id 891 
   1.15%         c2, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 2, compile id 907 
   1.11%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 5, compile id 1093 
   1.02%         c2, level 4  java.util.stream.Sink::end, version 2, compile id 707 
   1.01%         c2, level 4  java.util.stream.ReduceOps$3ReducingSink::begin, version 3, compile id 1070 
   0.98%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 2, compile id 891 
   0.90%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 2, compile id 891 
  27.20%  <...other 809 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  22.04%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 940 
  18.72%         c2, level 4  java.util.AbstractMap$SimpleImmutableEntry::equals, version 2, compile id 949 
   8.92%         c2, level 4  java.util.HashMap::resize, version 4, compile id 928 
   6.50%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator$$Lambda.0x00007fa0bc085210::accept, version 2, compile id 873 
   6.03%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.OrderedSpliterator::tryAdvance, version 2, compile id 891 
   5.97%         c2, level 4  java.util.function.Function::lambda$andThen$1, version 3, compile id 1177 
   4.01%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 5, compile id 1093 
   3.15%         c2, level 4  java.util.AbstractMap$SimpleImmutableEntry::hashCode, version 2, compile id 907 
   2.13%                      <unknown> 
   1.98%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   1.86%              kernel  [unknown] 
   1.81%         c2, level 4  java.util.stream.AbstractPipeline::evaluate, version 6, compile id 1059 
   1.68%         c2, level 4  java.util.stream.SpinedBuffer$1Splitr::forEachRemaining, version 2, compile id 923 
   1.37%         c2, level 4  java.util.Spliterator::getExactSizeIfKnown, version 3, compile id 805 
   1.09%         c2, level 4  java.util.stream.ReduceOps$3ReducingSink::begin, version 3, compile id 1070 
   1.07%         c2, level 4  java.util.HashMap$TreeNode::find, version 2, compile id 984 
   1.03%         c2, level 4  java.lang.String::hashCode, version 2, compile id 241 
   1.02%         c2, level 4  java.util.stream.Sink::end, version 2, compile id 707 
   0.95%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 1062 
   0.87%         c2, level 4  java.util.HashMap$TreeNode::treeify, version 2, compile id 985 
   7.80%  <...other 294 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  90.65%         c2, level 4
   3.55%           libjvm.so
   2.13%                    
   1.86%              kernel
   0.88%         c1, level 1
   0.52%    perf-1953851.map
   0.18%        libc-2.31.so
   0.14%    Unknown, level 0
   0.03%  libpthread-2.31.so
   0.02%          ld-2.31.so
   0.02%      hsdis-amd64.so
   0.01%              [vdso]
   0.01%         interpreter
   0.01%          libjava.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_author

# Run progress: 42.86% complete, ETA 00:15:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 55.090 ms/op
# Warmup Iteration   2: 49.047 ms/op
# Warmup Iteration   3: 48.511 ms/op
# Warmup Iteration   4: 48.300 ms/op
# Warmup Iteration   5: 48.206 ms/op
Iteration   1: 48.100 ms/op
Iteration   2: 48.262 ms/op
Iteration   3: 47.378 ms/op
Iteration   4: 46.897 ms/op
Iteration   5: 48.412 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_author":
  47.810 ±(99.9%) 2.489 ms/op [Average]
  (min, avg, max) = (46.897, 47.810, 48.412), stdev = 0.646
  CI (99.9%): [45.321, 50.299] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_author:asm":
PrintAssembly processed: 182465 total address lines.
Perf output processed (skipped 57.916 seconds):
 Column 1: cycles (51030 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap::computeIfAbsent, version 4, compile id 836 

              0x00007f62c86774c0:   cmp    $0x1,%r11
              0x00007f62c86774c4:   jne    0x00007f62c8677906
              0x00007f62c86774ca:   shr    $0x8,%r10
              0x00007f62c86774ce:   mov    %r10d,%eax
              0x00007f62c86774d1:   and    $0x7fffffff,%eax
              0x00007f62c86774d6:   test   %eax,%eax
              0x00007f62c86774d8:   je     0x00007f62c8677906           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f62c86774de:   mov    0x10(%rsp),%r10
   0.04%      0x00007f62c86774e3:   mov    0x14(%r10),%r10d
   0.50%      0x00007f62c86774e7:   mov    0x10(%rsp),%r11
              0x00007f62c86774ec:   mov    0x1c(%r11),%r8d
   0.05%      0x00007f62c86774f0:   mov    %eax,%r9d
   0.03%      0x00007f62c86774f3:   shr    $0x10,%r9d
   0.31%      0x00007f62c86774f7:   xor    %eax,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@18 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007f62c86774fa:   mov    %r9d,0x4(%rsp)
   0.03%      0x00007f62c86774ff:   nop
   0.04%      0x00007f62c8677500:   cmp    %r8d,%r10d
              0x00007f62c8677503:   jg     0x00007f62c8677949           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.28%      0x00007f62c8677509:   mov    0x24(%r11),%r8d              ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
              0x00007f62c867750d:   test   %r8d,%r8d
              0x00007f62c8677510:   je     0x00007f62c8677949           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.05%      0x00007f62c8677516:   mov    0xc(%r12,%r8,8),%r11d        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.26%      0x00007f62c867751b:   nopl   0x0(%rax,%rax,1)
   0.31%      0x00007f62c8677520:   test   %r11d,%r11d
              0x00007f62c8677523:   jbe    0x00007f62c8677c68           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.09%      0x00007f62c8677529:   lea    (%r12,%r8,8),%r10            ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
              0x00007f62c867752d:   mov    %r10,0x28(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.03%      0x00007f62c8677532:   mov    %r11d,%edx
   0.29%      0x00007f62c8677535:   dec    %edx
   0.08%      0x00007f62c8677537:   and    0x4(%rsp),%edx               ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.00%      0x00007f62c867753b:   nopl   0x0(%rax,%rax,1)
   0.02%      0x00007f62c8677540:   test   %r11d,%r11d
              0x00007f62c8677543:   jle    0x00007f62c8677ba5
   0.28%      0x00007f62c8677549:   mov    0x28(%rsp),%r10
   0.10%      0x00007f62c867754e:   lea    0x10(%r10,%rdx,4),%r9        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.33%      0x00007f62c8677553:   mov    0x10(%rsp),%r10
   0.01%      0x00007f62c8677558:   mov    0x8(%r10),%r10d              ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.25%      0x00007f62c867755c:   vmovd  %r10d,%xmm1
              0x00007f62c8677561:   mov    (%r9),%r10d                  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.53%      0x00007f62c8677564:   test   %r10d,%r10d
              0x00007f62c8677567:   je     0x00007f62c8677777           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.22%      0x00007f62c867756d:   mov    0x8(%r12,%r10,8),%r11d
   6.85%      0x00007f62c8677572:   data16 nopw 0x0(%rax,%rax,1)
              0x00007f62c867757c:   data16 data16 xchg %ax,%ax
              0x00007f62c8677580:   cmp    $0x1acba8,%r11d              ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
              0x00007f62c8677587:   je     0x00007f62c8677bd8
   0.36%      0x00007f62c867758d:   lea    (%r12,%r10,8),%r11           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.05%      0x00007f62c8677591:   mov    %r11,%r8
              0x00007f62c8677594:   xor    %r13d,%r13d                  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.00%   ↗  0x00007f62c8677597:   mov    0xc(%r8),%esi
   3.98%   │  0x00007f62c867759b:   nopl   0x0(%rax,%rax,1)
   0.05%   │  0x00007f62c86775a0:   cmp    0x4(%rsp),%esi
          ╭│  0x00007f62c86775a4:   je     0x00007f62c86775c5           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   1.62%  ││  0x00007f62c86775a6:   mov    0x458(%r15),%rbx
   1.56%  ││  0x00007f62c86775ad:   mov    0x18(%r8),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.22%  ││  0x00007f62c86775b1:   inc    %r13d                        ; ImmutableOopMap {r10=NarrowOop r11=Oop r8=NarrowOop r14=Oop xmm0=Oop [16]=Oop [40]=Oop r9=Derived_oop_[40] }
          ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@166 (line 1219)
          ││  0x00007f62c86775b4:   test   %eax,(%rbx)                  ;   {poll}
   0.70%  ││  0x00007f62c86775b6:   test   %r8d,%r8d
          ││  0x00007f62c86775b9:   je     0x00007f62c867777d           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.01%  ││  0x00007f62c86775bf:   shl    $0x3,%r8                     ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.01%  │╰  0x00007f62c86775c3:   jmp    0x00007f62c8677597
   0.63%  ↘   0x00007f62c86775c5:   mov    0x10(%r8),%ebx               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.62%      0x00007f62c86775c9:   mov    %rbx,%r9
   0.01%      0x00007f62c86775cc:   shl    $0x3,%r9
   0.35%      0x00007f62c86775d0:   vmovq  %xmm0,%r11
   0.02%      0x00007f62c86775d5:   cmp    %r11,%r9
              0x00007f62c86775d8:   je     0x00007f62c8677cd4           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
   0.63%      0x00007f62c86775de:   xchg   %ax,%ax
   0.01%      0x00007f62c86775e0:   cmp    $0x102a690,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007f62c86775e6:   jne    0x00007f62c8677c10           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.02%      0x00007f62c86775ec:   cmp    %r9,%r11
              0x00007f62c86775ef:   je     0x00007f62c8677d10           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.08%      0x00007f62c86775f5:   mov    0x8(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007f62c8678040
                                                                        ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   6.09%      0x00007f62c86775fa:   nopw   0x0(%rax,%rax,1)
   0.00%      0x00007f62c8677600:   cmp    $0x102a690,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007f62c8677606:   jne    0x00007f62c8677d50           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.43%      0x00007f62c867760c:   mov    0xc(%r11),%r9d               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%      0x00007f62c8677610:   lea    (%r12,%rbx,8),%rcx           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007f62c8677614:   mov    0xc(%rcx),%ecx               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.77%      0x00007f62c8677617:   cmp    %ecx,%r9d
   0.38%      0x00007f62c867761a:   nopw   0x0(%rax,%rax,1)
   0.00%      0x00007f62c8677620:   je     0x00007f62c867773a           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Objects::equals@2 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.32%      0x00007f62c8677626:   movsbl 0x10(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007f62c867807c
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@26 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.03%      0x00007f62c867762c:   cmp    %ecx,%r9d
              0x00007f62c867762f:   je     0x00007f62c867773a           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@2 (line 1858)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%      0x00007f62c8677635:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.01%      0x00007f62c8677640:   movsbl 0x10(%r12,%rcx,8),%ebp       ; implicit exception: dispatches to 0x00007f62c8678004
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   2.70%      0x00007f62c8677646:   cmp    %ebp,%ebx
              0x00007f62c8677648:   jne    0x00007f62c8677dec           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.44%      0x00007f62c867764e:   mov    0x14(%r12,%rcx,8),%edi       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.60%      0x00007f62c8677653:   mov    0x14(%r12,%r9,8),%r9d        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007f62c8677658:   mov    0xc(%r12,%rdi,8),%esi
   2.52%      0x00007f62c867765d:   mov    0xc(%r12,%r9,8),%ecx
   0.03%      0x00007f62c8677662:   cmp    %esi,%ecx
              0x00007f62c8677664:   jne    0x00007f62c8677c9c           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.38%      0x00007f62c867766a:   lea    (%r12,%rdi,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007f62c867766e:   lea    0x10(%r12,%rdi,8),%rsi
              0x00007f62c8677673:   lea    (%r12,%r9,8),%rbx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007f62c8677677:   lea    0x10(%r12,%r9,8),%rdi
   0.43%      0x00007f62c867767c:   test   %ecx,%ecx
              0x00007f62c867767e:   je     0x00007f62c8677721
   0.00%      0x00007f62c8677684:   mov    %ecx,%eax
              0x00007f62c8677686:   and    $0x1f,%eax
              0x00007f62c8677689:   and    $0xffffffe0,%ecx
              0x00007f62c867768c:   je     0x00007f62c86776dd
              0x00007f62c8677692:   lea    (%rdi,%rcx,1),%rdi
              0x00007f62c8677696:   lea    (%rsi,%rcx,1),%rsi
              0x00007f62c867769a:   neg    %rcx
              0x00007f62c867769d:   vmovdqu (%rdi,%rcx,1),%ymm3
              0x00007f62c86776a2:   vmovdqu (%rsi,%rcx,1),%ymm2
              0x00007f62c86776a7:   vpxor  %ymm2,%ymm3,%ymm3
              0x00007f62c86776ab:   vptest %ymm3,%ymm3
....................................................................................................
  38.09%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.stream.ReferencePipeline$7$1::accept, version 2, compile id 814 

            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            #           [sp+0x80]  (sp of caller)
            0x00007f62c866fda0:   mov    0x8(%rsi),%r10d
            0x00007f62c866fda4:   movabs $0x7f624f000000,%r11
            0x00007f62c866fdae:   add    %r11,%r10
            0x00007f62c866fdb1:   cmp    %r10,%rax
            0x00007f62c866fdb4:   jne    0x00007f62c80c4080           ;   {runtime_call ic_miss_stub}
            0x00007f62c866fdba:   xchg   %ax,%ax
            0x00007f62c866fdbc:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.05%    0x00007f62c866fdc0:   mov    %eax,-0x14000(%rsp)
   0.06%    0x00007f62c866fdc7:   push   %rbp
   0.08%    0x00007f62c866fdc8:   sub    $0x70,%rsp
            0x00007f62c866fdcc:   cmpl   $0x0,0x20(%r15)
   0.00%    0x00007f62c866fdd4:   jne    0x00007f62c8670c77           ;*synchronization entry
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@-1 (line 273)
   0.07%    0x00007f62c866fdda:   mov    %rsi,0x8(%rsp)
            0x00007f62c866fddf:   mov    0x14(%rsi),%r11d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@1 (line 273)
   0.00%    0x00007f62c866fde3:   mov    0x34(%r12,%r11,8),%ebp       ; implicit exception: dispatches to 0x00007f62c8670ae4
                                                                      ;*getfield val$mapper {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@4 (line 273)
   0.00%    0x00007f62c866fde8:   mov    0x8(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007f62c8670b00
   0.09%    0x00007f62c866fded:   cmp    $0x102b0f8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f625002b0f8&apos;)}
            0x00007f62c866fdf4:   jne    0x00007f62c86707b1           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.03%    0x00007f62c866fdfa:   nopw   0x0(%rax,%rax,1)
            0x00007f62c866fe00:   mov    0x8(%rdx),%r10d              ; implicit exception: dispatches to 0x00007f62c8670b1c
   1.37%    0x00007f62c866fe04:   cmp    $0x102aad8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007f62c866fe0b:   jne    0x00007f62c8670a38           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@1
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.07%    0x00007f62c866fe11:   mov    0x18(%rdx),%ebp              ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@1 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.93%    0x00007f62c866fe14:   mov    0x8(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007f62c8670b34
   4.91%    0x00007f62c866fe19:   nopl   0x0(%rax)
   0.00%    0x00007f62c866fe20:   cmp    $0xbb7c0,%r10d               ;   {metadata(&apos;java/util/ArrayList&apos;)}
            0x00007f62c866fe27:   jne    0x00007f62c86707d4
   0.10%    0x00007f62c866fe2d:   lea    (%r12,%rbp,8),%r11
   0.00%    0x00007f62c866fe31:   mov    0x1b8(%r15),%rbp
            0x00007f62c866fe38:   mov    %rbp,%r10
            0x00007f62c866fe3b:   add    $0x20,%r10
   0.08%    0x00007f62c866fe3f:   nop
            0x00007f62c866fe40:   cmp    0x1c8(%r15),%r10
            0x00007f62c866fe47:   jae    0x00007f62c8670685           ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@61 (line 285)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866fe4d:   mov    %r10,0x1b8(%r15)
            0x00007f62c866fe54:   prefetchw 0xc0(%r10)
   0.09%    0x00007f62c866fe5c:   movq   $0x1,0x0(%rbp)
            0x00007f62c866fe64:   movl   $0x189e60,0x8(%rbp)          ;   {metadata(&apos;java/util/ArrayList$ArrayListSpliterator&apos;)}
            0x00007f62c866fe6b:   mov    %r12d,0xc(%rbp)
            0x00007f62c866fe6f:   mov    %r12d,0x1c(%rbp)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::spliterator@0 (line 1616)
                                                                      ; - java.util.Collection::stream@1 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.07%    0x00007f62c866fe73:   shr    $0x3,%r11                    ;*putfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::&lt;init&gt;@2 (line 1657)
                                                                      ; - java.util.ArrayList::spliterator@8 (line 1616)
                                                                      ; - java.util.Collection::stream@1 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.00%    0x00007f62c866fe77:   mov    $0xffffffff,%r10d
            0x00007f62c866fe7d:   mov    %r10,0x10(%rbp)              ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::&lt;init&gt;@16 (line 1659)
                                                                      ; - java.util.ArrayList::spliterator@8 (line 1616)
                                                                      ; - java.util.Collection::stream@1 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
            0x00007f62c866fe81:   mov    %r11d,0x18(%rbp)
   0.07%    0x00007f62c866fe85:   mov    0x1b8(%r15),%rbx
   0.00%    0x00007f62c866fe8c:   mov    %rbx,%r10
            0x00007f62c866fe8f:   add    $0x38,%r10
            0x00007f62c866fe93:   nopw   0x0(%rax,%rax,1)
   0.07%    0x00007f62c866fe9c:   data16 data16 xchg %ax,%ax
            0x00007f62c866fea0:   cmp    0x1c8(%r15),%r10
            0x00007f62c866fea7:   jae    0x00007f62c86706b4           ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@61 (line 285)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.00%    0x00007f62c866fead:   mov    %r10,0x1b8(%r15)
            0x00007f62c866feb4:   prefetchw 0xc0(%r10)
   0.10%    0x00007f62c866febc:   movq   $0x1,(%rbx)
            0x00007f62c866fec3:   movl   $0xe44c0,0x8(%rbx)           ;   {metadata(&apos;java/util/stream/ReferencePipeline$Head&apos;)}
   0.00%    0x00007f62c866feca:   mov    %r12,0x18(%rbx)
   0.00%    0x00007f62c866fece:   mov    %r12,0x20(%rbx)
   0.06%    0x00007f62c866fed2:   mov    %r12d,0x2c(%rbx)
            0x00007f62c866fed6:   mov    %r12,0x30(%rbx)              ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.StreamSupport::stream@5 (line 69)
                                                                      ; - java.util.Collection::stream@7 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
            0x00007f62c866feda:   movl   $0x50,0xc(%rbx)              ;*putfield sourceOrOpFlags {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::&lt;init&gt;@25 (line 185)
                                                                      ; - java.util.stream.ReferencePipeline::&lt;init&gt;@4 (line 86)
                                                                      ; - java.util.stream.ReferencePipeline$Head::&lt;init&gt;@4 (line 744)
                                                                      ; - java.util.stream.StreamSupport::stream@15 (line 70)
                                                                      ; - java.util.Collection::stream@7 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.00%    0x00007f62c866fee1:   mov    %rbp,%r11
   0.09%    0x00007f62c866fee4:   shr    $0x3,%r11
   0.00%    0x00007f62c866fee8:   movabs $0x5f00000000,%r10
            0x00007f62c866fef2:   mov    %r10,0x10(%rbx)              ;*putfield combinedFlags {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::&lt;init&gt;@41 (line 188)
                                                                      ; - java.util.stream.ReferencePipeline::&lt;init&gt;@4 (line 86)
                                                                      ; - java.util.stream.ReferencePipeline$Head::&lt;init&gt;@4 (line 744)
                                                                      ; - java.util.stream.StreamSupport::stream@15 (line 70)
                                                                      ; - java.util.Collection::stream@7 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.02%    0x00007f62c866fef6:   mov    %r11d,0x28(%rbx)             ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.StreamSupport::stream@5 (line 69)
                                                                      ; - java.util.Collection::stream@7 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.06%    0x00007f62c866fefa:   mov    %rbx,%r11
            0x00007f62c866fefd:   shr    $0x3,%r11
            0x00007f62c866ff01:   mov    %r11d,0x1c(%rbx)             ;*synchronization entry
                                                                      ; - java.util.stream.AbstractPipeline::&lt;init&gt;@-1 (line 181)
                                                                      ; - java.util.stream.ReferencePipeline::&lt;init&gt;@4 (line 86)
                                                                      ; - java.util.stream.ReferencePipeline$Head::&lt;init&gt;@4 (line 744)
                                                                      ; - java.util.stream.StreamSupport::stream@15 (line 70)
                                                                      ; - java.util.Collection::stream@7 (line 750)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$numberOfPublicationsPerAuthor$4@4 (line 97)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f625002b0f8::apply@4
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@8 (line 273)
   0.01%    0x00007f62c866ff05:   mov    0x8(%rsp),%r10
   0.09%    0x00007f62c866ff0a:   movzbl 0x10(%r10),%ebp              ;*getfield cancellationRequestedCalled {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@22 (line 275)
   0.01%    0x00007f62c866ff0f:   test   %ebp,%ebp
            0x00007f62c866ff11:   jne    0x00007f62c8670858           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@25 (line 275)
   0.00%    0x00007f62c866ff17:   mov    0x1c(%rbx),%r13d             ;*getfield sourceStage {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sequential@1 (line 304)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@29 (line 276)
   0.03%    0x00007f62c866ff1b:   nopl   0x0(%rax,%rax,1)
   0.08%    0x00007f62c866ff20:   mov    0x28(%r12,%r13,8),%r14d      ; implicit exception: dispatches to 0x00007f62c8670b4c
                                                                      ;*getfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@42 (line 282)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.04%    0x00007f62c866ff25:   mov    %r12b,0x1a(%r12,%r13,8)      ;*putfield parallel {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sequential@5 (line 304)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@29 (line 276)
   0.06%    0x00007f62c866ff2a:   mov    0xc(%r10),%r10d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@38 (line 276)
   0.00%    0x00007f62c866ff2e:   mov    %r10d,0x20(%rsp)
   0.06%    0x00007f62c866ff33:   mov    %r13,%r10
            0x00007f62c866ff36:   shl    $0x3,%r10
   0.01%    0x00007f62c866ff3a:   nopw   0x0(%rax,%rax,1)
            0x00007f62c866ff40:   cmp    %r10,%rbx
            0x00007f62c866ff43:   jne    0x00007f62c8670905           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@5 (line 275)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.06%    0x00007f62c866ff49:   movb   $0x1,0x18(%rbx)              ;*putfield linkedOrConsumed {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@35 (line 280)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ff4d:   mov    0x8(%r12,%r14,8),%ebp        ; implicit exception: dispatches to 0x00007f62c8670b94
   0.03%    0x00007f62c866ff52:   cmpb   $0x0,0x40(%r15)
            0x00007f62c866ff57:   jne    0x00007f62c867053c
   0.08%    0x00007f62c866ff5d:   mov    %r12d,0x28(%r12,%r13,8)      ;*putfield sourceSpliterator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.AbstractPipeline::sourceStageSpliterator@61 (line 285)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@8 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ff62:   cmp    $0x189e60,%ebp               ;   {metadata(&apos;java/util/ArrayList$ArrayListSpliterator&apos;)}
            0x00007f62c866ff68:   jne    0x00007f62c86707e8           ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.02%    0x00007f62c866ff6e:   mov    0x20(%rsp),%r10d
   0.01%    0x00007f62c866ff73:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f62c8670bb0
                                                                      ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@95 (line 1708)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.05%    0x00007f62c866ff78:   shl    $0x3,%r14                    ;*invokeinterface forEachRemaining {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ff7c:   mov    0x18(%r14),%r11d             ;*getfield this$0 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@13 (line 1698)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.01%    0x00007f62c866ff80:   mov    0x14(%r12,%r11,8),%r10d      ; implicit exception: dispatches to 0x00007f62c8670b68
                                                                      ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@16 (line 1698)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.39%    0x00007f62c866ff85:   mov    %r10d,0x18(%rsp)
   0.13%    0x00007f62c866ff8a:   mov    0xc(%r12,%r10,8),%ecx        ; implicit exception: dispatches to 0x00007f62c8670bcc
                                                                      ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@77 (line 1705)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.87%    0x00007f62c866ff8f:   mov    0x10(%r14),%ebp              ;*getfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@26 (line 1699)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ff93:   test   %ebp,%ebp
            0x00007f62c866ff95:   jge    0x00007f62c8670928           ;*ifge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@31 (line 1699)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ff9b:   mov    0xc(%r14),%r10d              ;*getfield index {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@61 (line 1705)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.05%    0x00007f62c866ff9f:   nop
   0.04%    0x00007f62c866ffa0:   test   %r10d,%r10d
            0x00007f62c866ffa3:   jl     0x00007f62c8670874           ;*iflt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@66 (line 1705)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ffa9:   mov    0x10(%r12,%r11,8),%r9d       ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@47 (line 1701)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ffae:   mov    %r9d,0xc(%r14)               ;*putfield index {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@72 (line 1705)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.05%    0x00007f62c866ffb2:   cmp    %ecx,%r9d
            0x00007f62c866ffb5:   jg     0x00007f62c8670944           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@78 (line 1705)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.05%    0x00007f62c866ffbb:   mov    0xc(%r12,%r11,8),%edx        ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@38 (line 1700)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c866ffc0:   mov    %edx,0x1c(%rsp)
            0x00007f62c866ffc4:   cmp    %r9d,%r10d
            0x00007f62c866ffc7:   jge    0x00007f62c86702fe           ;*if_icmpge {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@83 (line 1706)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.04%    0x00007f62c866ffcd:   cmp    %ecx,%r10d
            0x00007f62c866ffd0:   jae    0x00007f62c867080c
   0.05%    0x00007f62c866ffd6:   movslq %ecx,%r11
            0x00007f62c866ffd9:   movslq %r9d,%rcx
            0x00007f62c866ffdc:   dec    %rcx
   0.05%    0x00007f62c866ffdf:   nop
   0.04%    0x00007f62c866ffe0:   cmp    %r11,%rcx
            0x00007f62c866ffe3:   jae    0x00007f62c867080c
            0x00007f62c866ffe9:   cmp    $0x358d50,%r8d               ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
            0x00007f62c866fff0:   jne    0x00007f62c867080c
            0x00007f62c866fff6:   mov    0x18(%rsp),%r11d
   0.04%    0x00007f62c866fffb:   lea    (%r12,%r11,8),%rax           ;*getfield elementData {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@16 (line 1698)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
   0.05%    0x00007f62c866ffff:   mov    0x20(%rsp),%r8d
            0x00007f62c8670004:   shl    $0x3,%r8                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList$ArrayListSpliterator::forEachRemaining@95 (line 1708)
                                                                      ; - java.util.stream.ReferencePipeline$Head::forEach@12 (line 762)
                                                                      ; - java.util.stream.ReferencePipeline$7$1::accept@41 (line 276)
            0x00007f62c8670008:   jmp    0x00007f62c867008b
            0x00007f62c867000d:   data16 xchg %ax,%ax
            0x00007f62c8670010:   lea    (%r12,%rdi,8),%r13
....................................................................................................
  11.01%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 837 

                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@41 (line 1702)
                 0x00007f62c86769a0:   test   %r9d,%r9d
                 0x00007f62c86769a3:   je     0x00007f62c8676ad0           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@49 (line 1703)
                 0x00007f62c86769a9:   mov    0xc(%r12,%r9,8),%r8d         ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
                 0x00007f62c86769ae:   mov    %r8d,0x10(%rsi)              ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
                 0x00007f62c86769b2:   jmp    0x00007f62c867692c
                 0x00007f62c86769b7:   nopw   0x0(%rax,%rax,1)
   0.03%      ↗  0x00007f62c86769c0:   xor    %edi,%edi
   0.13%      │  0x00007f62c86769c2:   mov    %eax,%ecx
          ╭   │  0x00007f62c86769c4:   jmp    0x00007f62c86769cc
   0.35%  │  ↗│  0x00007f62c86769c6:   lea    (%r12,%rbp,8),%rdi           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.35%  │  ││  0x00007f62c86769ca:   mov    %eax,%ecx                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.08%  ↘  ││  0x00007f62c86769cc:   test   %rdi,%rdi
           ╭ ││  0x00007f62c86769cf:   je     0x00007f62c8676a79           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.12%   │ ││  0x00007f62c86769d5:   mov    0x10(%rdi),%ebp              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   6.32%   │ ││  0x00007f62c86769d8:   nopl   0x0(%rax,%rax,1)
           │ ││  0x00007f62c86769e0:   cmp    $0x35af58,%r10d              ;   {metadata(&apos;java/util/stream/ReferencePipeline$7$1&apos;)}
           │ ││  0x00007f62c86769e7:   jne    0x00007f62c8676b08
           │ ││  0x00007f62c86769ed:   mov    %r13,0x38(%rsp)
   0.01%   │ ││  0x00007f62c86769f2:   mov    %rdx,0x30(%rsp)
   0.12%   │ ││  0x00007f62c86769f7:   mov    %rdi,0x28(%rsp)
   0.01%   │ ││  0x00007f62c86769fc:   mov    %ecx,0x20(%rsp)
   0.00%   │ ││  0x00007f62c8676a00:   mov    %esi,0x1c(%rsp)
   0.01%   │ ││  0x00007f62c8676a04:   mov    %ebx,0x18(%rsp)
   0.07%   │ ││  0x00007f62c8676a08:   mov    %r8d,0x14(%rsp)
   0.01%   │ ││  0x00007f62c8676a0d:   mov    %r9d,0x10(%rsp)
   0.03%   │ ││  0x00007f62c8676a12:   mov    %r14d,0xc(%rsp)
           │ ││  0x00007f62c8676a17:   mov    %r10d,0x8(%rsp)
   0.08%   │ ││  0x00007f62c8676a1c:   mov    %r11,%r10
   0.01%   │ ││  0x00007f62c8676a1f:   mov    %r11,(%rsp)                  ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ ││  0x00007f62c8676a23:   mov    %r10,0x40(%rsp)              ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.02%   │ ││  0x00007f62c8676a28:   mov    %rbp,%rdx
   0.04%   │ ││  0x00007f62c8676a2b:   shl    $0x3,%rdx                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
           │ ││  0x00007f62c8676a2f:   mov    %r10,%rsi
   0.01%   │ ││  0x00007f62c8676a32:   nop
   0.02%   │ ││  0x00007f62c8676a33:   call   0x00007f62c80c4380           ; ImmutableOopMap {[0]=Oop [12]=NarrowOop [16]=NarrowOop [40]=Oop [48]=Oop [56]=Oop [64]=Oop }
           │ ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││                                                            ;   {optimized virtual_call}
   0.01%   │ ││  0x00007f62c8676a38:   nopl   0x328(%rax,%rax,1)           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││                                                            ;   {other}
   0.00%   │ ││  0x00007f62c8676a40:   mov    0x28(%rsp),%r10
   0.24%   │ ││  0x00007f62c8676a45:   mov    0x18(%r10),%ebp              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.22%   │ ││  0x00007f62c8676a49:   mov    0x20(%rsp),%eax
   0.00%   │ ││  0x00007f62c8676a4d:   mov    (%rsp),%r11
   0.03%   │ ││  0x00007f62c8676a51:   mov    0x8(%rsp),%r10d
   0.00%   │ ││  0x00007f62c8676a56:   mov    0xc(%rsp),%r14d
   0.07%   │ ││  0x00007f62c8676a5b:   mov    0x10(%rsp),%r9d
   0.02%   │ ││  0x00007f62c8676a60:   mov    0x14(%rsp),%r8d
   0.02%   │ ││  0x00007f62c8676a65:   mov    0x18(%rsp),%ebx
           │ ││  0x00007f62c8676a69:   mov    0x1c(%rsp),%esi
   0.06%   │ ││  0x00007f62c8676a6d:   mov    0x30(%rsp),%rdx
   0.00%   │ ││  0x00007f62c8676a72:   mov    0x38(%rsp),%r13
   0.02%   │╭││  0x00007f62c8676a77:   jmp    0x00007f62c8676a8c
   0.20%   ↘│││  0x00007f62c8676a79:   mov    %ecx,%eax
            │││  0x00007f62c8676a7b:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
            │││  0x00007f62c8676a7d:   data16 xchg %ax,%ax
            │││  0x00007f62c8676a80:   cmp    %esi,%ecx
            │││  0x00007f62c8676a82:   jae    0x00007f62c8676ad9
   0.20%    │││  0x00007f62c8676a88:   mov    0x10(%rdx,%rcx,4),%ebp       ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.31%    ↘││  0x00007f62c8676a8c:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r11=Oop r9=NarrowOop rdx=Oop rbp=NarrowOop r13=Oop r14=NarrowOop }
             ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.04%     ││  0x00007f62c8676a93:   test   %eax,(%rcx)                  ;   {poll}
   0.24%     ││  0x00007f62c8676a95:   test   %ebp,%ebp
             ╰│  0x00007f62c8676a97:   jne    0x00007f62c86769c6           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.25%      │  0x00007f62c8676a9d:   mov    0x458(%r15),%rcx             ; ImmutableOopMap {r11=Oop r9=NarrowOop rdx=Oop r13=Oop r14=NarrowOop }
              │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.18%      │  0x00007f62c8676aa4:   test   %eax,(%rcx)                  ;   {poll}
   0.12%      │  0x00007f62c8676aa6:   cmp    %r8d,%eax
              ╰  0x00007f62c8676aa9:   jl     0x00007f62c86769c0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
                 0x00007f62c8676aaf:   mov    0x18(%r12,%r14,8),%r11d
                 0x00007f62c8676ab4:   cmp    %ebx,%r11d
                 0x00007f62c8676ab7:   je     0x00007f62c8676985           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007f62c8676abd:   mov    $0x40,%esi
                 0x00007f62c8676ac2:   nop
                 0x00007f62c8676ac3:   call   0x00007f62c80c9f00           ; ImmutableOopMap {}
                                                                           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  10.06%  <total for region 3>

....[Hottest Regions]...............................................................................
  38.09%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 836 
  11.01%         c2, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 2, compile id 814 
  10.06%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 837 
   9.20%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 836 
   6.45%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 806 
   5.60%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 836 
   5.43%         c2, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 2, compile id 814 
   2.35%         c2, level 4  java.lang.String::hashCode, version 2, compile id 246 
   2.32%         c2, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 2, compile id 814 
   2.24%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 2, compile id 809 
   2.04%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 836 
   1.95%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 2, compile id 809 
   0.85%              kernel  [unknown] 
   0.48%         c2, level 4  java.lang.String::hashCode, version 2, compile id 246 
   0.10%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   1.59%  <...other 380 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  54.96%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 836 
  18.76%         c2, level 4  java.util.stream.ReferencePipeline$7$1::accept, version 2, compile id 814 
  10.06%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 837 
   6.45%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 806 
   4.19%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 2, compile id 809 
   2.84%         c2, level 4  java.lang.String::hashCode, version 2, compile id 246 
   2.20%              kernel  [unknown] 
   0.06%         c2, level 4  java.util.HashMap::resize, version 2, compile id 791 
   0.04%           libjvm.so  ElfSymbolTable::lookup 
   0.04%         c2, level 4  java.util.HashMap::replaceAll, version 5, compile id 854 
   0.03%           libjvm.so  G1CardSet::occupied 
   0.03%                      <unknown> 
   0.01%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.01%        libc-2.31.so  _IO_fwrite 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  G1FromCardCache::clear 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  defaultStream::write 
   0.01%           libjvm.so  MemAllocator::allocate 
   0.27%  <...other 109 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.35%         c2, level 4
   2.20%              kernel
   0.28%           libjvm.so
   0.08%        libc-2.31.so
   0.03%                    
   0.02%  libpthread-2.31.so
   0.02%         interpreter
   0.01%          ld-2.31.so
   0.01%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%              [vdso]
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_year

# Run progress: 50.00% complete, ETA 00:13:27
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 8.737 ms/op
# Warmup Iteration   2: 7.611 ms/op
# Warmup Iteration   3: 7.454 ms/op
# Warmup Iteration   4: 7.387 ms/op
# Warmup Iteration   5: 7.555 ms/op
Iteration   1: 7.502 ms/op
Iteration   2: 7.442 ms/op
Iteration   3: 7.432 ms/op
Iteration   4: 7.406 ms/op
Iteration   5: 7.345 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_year":
  7.425 ±(99.9%) 0.220 ms/op [Average]
  (min, avg, max) = (7.345, 7.425, 7.502), stdev = 0.057
  CI (99.9%): [7.206, 7.645] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.number_of_publications_per_year:asm":
PrintAssembly processed: 181062 total address lines.
Perf output processed (skipped 57.861 seconds):
 Column 1: cycles (50818 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 812 

                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007f31846701ec:   mov    0xc(%r12,%r11,8),%ecx        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
            0x00007f31846701f1:   mov    %ecx,0x10(%rsi)              ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
            0x00007f31846701f4:   jmp    0x00007f318467016c
            0x00007f31846701f9:   nopl   0x0(%rax)                    ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   1.21%    0x00007f3184670200:   xor    %r13d,%r13d
            0x00007f3184670203:   mov    0x18(%rsp),%rdx
   0.01%    0x00007f3184670208:   mov    (%rsp),%r8d
   0.14%    0x00007f318467020c:   mov    0x3c(%rsp),%r9d
   1.18%    0x00007f3184670211:   mov    0x40(%rsp),%r11d
   0.00%    0x00007f3184670216:   mov    0xc(%rsp),%ecx
   0.01%    0x00007f318467021a:   mov    0x10(%rsp),%ebx
   0.17%    0x00007f318467021e:   mov    0x4(%rsp),%esi
   1.16%    0x00007f3184670222:   mov    %edi,%r10d
            0x00007f3184670225:   mov    0x28(%rsp),%rax
   0.01%    0x00007f318467022a:   mov    0x30(%rsp),%rbp
   0.21%    0x00007f318467022f:   test   %r13,%r13
            0x00007f3184670232:   je     0x00007f3184670564
   0.23%    0x00007f3184670238:   mov    %rbp,0x30(%rsp)
   0.43%    0x00007f318467023d:   mov    %rax,0x28(%rsp)
   0.13%    0x00007f3184670242:   mov    %r13,0x20(%rsp)
   0.37%    0x00007f3184670247:   mov    %r10d,0x8(%rsp)
   0.91%    0x00007f318467024c:   mov    %esi,0x4(%rsp)
   0.04%    0x00007f3184670250:   mov    %ebx,0x10(%rsp)
   0.33%    0x00007f3184670254:   mov    %ecx,0xc(%rsp)
   0.52%    0x00007f3184670258:   mov    %r11d,0x40(%rsp)
   0.13%    0x00007f318467025d:   mov    %r9d,0x3c(%rsp)
   0.21%    0x00007f3184670262:   mov    %r8d,(%rsp)
   0.11%    0x00007f3184670266:   mov    %rdx,0x18(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.39%    0x00007f318467026b:   mov    0x10(%r13),%r10d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  31.08%    0x00007f318467026f:   mov    %r10d,0x38(%rsp)
   0.98%    0x00007f3184670274:   nopl   0x0(%rax,%rax,1)
   0.01%    0x00007f318467027c:   data16 data16 xchg %ax,%ax
   0.00%    0x00007f3184670280:   cmp    $0x358d50,%r8d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
            0x00007f3184670287:   jne    0x00007f3184670a8d
   0.01%    0x00007f318467028d:   mov    %rdx,%r10                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.50%    0x00007f3184670290:   mov    %r10,0x48(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007f3184670295:   mov    0x14(%r10),%r8d              ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007f3184670299:   mov    0xc(%r10),%r10d              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007f318467029d:   data16 xchg %ax,%ax
   0.46%    0x00007f31846702a0:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007f3184670efc
   0.00%    0x00007f31846702a5:   mov    0x38(%rsp),%ecx
   0.14%    0x00007f31846702a9:   mov    %rcx,%r9
   0.00%    0x00007f31846702ac:   shl    $0x3,%r9
   0.49%    0x00007f31846702b0:   mov    %r9,0x50(%rsp)
   0.60%    0x00007f31846702b5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%    0x00007f31846702c0:   cmp    $0x1060a30,%r11d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f310c060a30&apos;)}
            0x00007f31846702c7:   jne    0x00007f3184670620
            0x00007f31846702cd:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f3184670f14
            0x00007f31846702d2:   data16 nopw 0x0(%rax,%rax,1)
            0x00007f31846702dc:   data16 data16 xchg %ax,%ax
            0x00007f31846702e0:   cmp    $0xbb7c0,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
....................................................................................................
  42.18%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 812 

                                                                         ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
               0x00007f318467054c:   mov    0x58(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
                                                                         ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                         ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
                                                                         ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                         ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
               0x00007f3184670551:   mov    %ebx,0x10(%r10)              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                         ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.20%    ↗  0x00007f3184670555:   mov    0x20(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.12%    │  0x00007f318467055a:   mov    0x18(%r10),%r10d             ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.19%    │  0x00007f318467055e:   mov    0x8(%rsp),%edi
   0.01%  ╭ │  0x00007f3184670562:   jmp    0x00007f31846705a0
   1.16%  │ │  0x00007f3184670564:   mov    %r10d,%edi
          │ │  0x00007f3184670567:   inc    %edi
   0.01%  │ │  0x00007f3184670569:   cmp    %esi,%r10d
          │ │  0x00007f318467056c:   jae    0x00007f31846709ce           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
          │ │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │ │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
          │ │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
          │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.16%  │ │  0x00007f3184670572:   mov    0x10(%rax,%r10,4),%r10d      ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@133 (line 1713)
   1.40%  │ │  0x00007f3184670577:   mov    %rdx,0x18(%rsp)
   0.01%  │ │  0x00007f318467057c:   mov    %r8d,(%rsp)
   0.01%  │ │  0x00007f3184670580:   mov    %r9d,0x3c(%rsp)
   0.15%  │ │  0x00007f3184670585:   mov    %r11d,0x40(%rsp)
   1.19%  │ │  0x00007f318467058a:   mov    %ecx,0xc(%rsp)
   0.04%  │ │  0x00007f318467058e:   mov    %ebx,0x10(%rsp)
   0.03%  │ │  0x00007f3184670592:   mov    %esi,0x4(%rsp)
   0.17%  │ │  0x00007f3184670596:   mov    %rax,0x28(%rsp)
   1.12%  │ │  0x00007f318467059b:   mov    %rbp,0x30(%rsp)              ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
          │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.25%  ↘ │  0x00007f31846705a0:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r10=NarrowOop [24]=Oop [40]=Oop [48]=Oop [60]=NarrowOop [64]=NarrowOop }
            │                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.15%    │  0x00007f31846705a7:   test   %eax,(%r11)                  ;   {poll}
   0.37%    │  0x00007f31846705aa:   test   %r10d,%r10d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           ╭│  0x00007f31846705ad:   je     0x00007f31846705e5           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.90%   ││  0x00007f31846705af:   lea    (%r12,%r10,8),%r13
   1.07%   ││  0x00007f31846705b3:   mov    0x18(%rsp),%rdx
   1.06%   ││  0x00007f31846705b8:   mov    (%rsp),%r8d
   0.05%   ││  0x00007f31846705bc:   mov    0x3c(%rsp),%r9d
   0.32%   ││  0x00007f31846705c1:   mov    0x40(%rsp),%r11d
   0.14%   ││  0x00007f31846705c6:   mov    0xc(%rsp),%ecx
   0.36%   ││  0x00007f31846705ca:   mov    0x10(%rsp),%ebx
   0.07%   ││  0x00007f31846705ce:   mov    0x4(%rsp),%esi
   0.22%   ││  0x00007f31846705d2:   mov    %edi,%r10d
   0.04%   ││  0x00007f31846705d5:   mov    0x28(%rsp),%rax
   0.17%   ││  0x00007f31846705da:   mov    0x30(%rsp),%rbp
   0.17%   ││  0x00007f31846705df:   nop
   0.12%   ││  0x00007f31846705e0:   jmp    0x00007f318467022f           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.99%   ↘│  0x00007f31846705e5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[24]=Oop [40]=Oop [48]=Oop [60]=NarrowOop [64]=NarrowOop }
            │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
            │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.15%    │  0x00007f31846705ec:   test   %eax,(%r10)                  ;   {poll}
   0.33%    │  0x00007f31846705ef:   cmp    0xc(%rsp),%edi
            │  0x00007f31846705f3:   jl     0x00007f3184670200
            │  0x00007f31846705f9:   mov    0x3c(%rsp),%r11d
            │  0x00007f31846705fe:   mov    0x18(%r12,%r11,8),%r11d
   0.00%    │  0x00007f3184670603:   cmp    0x10(%rsp),%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │  0x00007f3184670608:   je     0x00007f31846701c5           ;*aload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
            │  0x00007f318467060e:   mov    $0x40,%esi
            │  0x00007f3184670613:   call   0x00007f31840c9f00           ; ImmutableOopMap {}
            │                                                            ;*new {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@177 (line 1720)
            │                                                            ;   {runtime_call UncommonTrapBlob}
            │  0x00007f3184670618:   nopl   0x2000788(%rax,%rax,1)       ;   {other}
   0.00%    │  0x00007f3184670620:   cmp    $0x1034ce0,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f310c034ce0&apos;)}
            │  0x00007f3184670627:   jne    0x00007f3184670b2d
            │  0x00007f318467062d:   shl    $0x3,%r8                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.52%    │  0x00007f3184670631:   mov    0x10(%r8),%r11d              ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@5
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f3184670635:   mov    %r11d,0x44(%rsp)             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    │  0x00007f318467063a:   mov    0xc(%r8),%r11d               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@1
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f318467063e:   mov    0x14(%r8),%r9d               ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@9
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.52%    │  0x00007f3184670642:   mov    %r9d,0x58(%rsp)
   0.01%    │  0x00007f3184670647:   mov    0x8(%r12,%r10,8),%r9d        ; implicit exception: dispatches to 0x00007f3184670f58
   0.00%    │  0x00007f318467064c:   cmp    $0x8d850,%r9d                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {metadata(&apos;java/util/HashMap&apos;)}
            │  0x00007f3184670653:   jne    0x00007f3184670e38
            │  0x00007f3184670659:   nopl   0x0(%rax)
   0.57%    │  0x00007f3184670660:   mov    0x8(%r12,%r11,8),%r9d        ; implicit exception: dispatches to 0x00007f3184670f90
   0.01%    │  0x00007f3184670665:   shl    $0x3,%r10                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@13
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f3184670669:   mov    %r10,0x60(%rsp)
            │  0x00007f318467066e:   cmp    $0x102b0f8,%r9d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f310c02b0f8&apos;)}
            │  0x00007f3184670675:   jne    0x00007f3184670b6c
   0.49%    │  0x00007f318467067b:   nopl   0x0(%rax,%rax,1)
   0.01%    │  0x00007f3184670680:   mov    0x8(%r12,%rcx,8),%r10d       ; implicit exception: dispatches to 0x00007f3184670fa4
  15.49%    │  0x00007f3184670685:   cmp    $0x102aad8,%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            │  0x00007f318467068c:   jne    0x00007f3184670e78
   0.31%    │  0x00007f3184670692:   mov    %ecx,%r10d
   0.29%    │  0x00007f3184670695:   shl    $0x3,%r10                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@1
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f3184670699:   mov    %r10,0x68(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f318467069e:   mov    0xc(%r10),%r10d              ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@4
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.78%    │  0x00007f31846706a2:   mov    %r10d,0x5c(%rsp)
   0.74%    │  0x00007f31846706a7:   cmp    $0xffffff80,%r10d
            │  0x00007f31846706ab:   jl     0x00007f3184670c90
   0.01%    │  0x00007f31846706b1:   cmp    $0x7f,%r10d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │  0x00007f31846706b5:   jle    0x00007f3184670925
   0.02%    │  0x00007f31846706bb:   mov    0x1b8(%r15),%rbp
   0.05%    │  0x00007f31846706c2:   mov    %rbp,%r10
   0.46%    │  0x00007f31846706c5:   add    $0x10,%r10
            │  0x00007f31846706c9:   cmp    0x1c8(%r15),%r10
            │  0x00007f31846706d0:   jae    0x00007f3184670978           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.02%    │  0x00007f31846706d6:   mov    %r10,0x1b8(%r15)
   0.05%    │  0x00007f31846706dd:   prefetchw 0xc0(%r10)
   0.48%    │  0x00007f31846706e5:   movq   $0x1,0x0(%rbp)
   0.01%    │  0x00007f31846706ed:   movl   $0x25c88,0x8(%rbp)           ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.01%    │  0x00007f31846706f4:   mov    %r12d,0xc(%rbp)              ;*new {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.Integer::valueOf@23 (line 1070)
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%    │  0x00007f31846706f8:   mov    0x5c(%rsp),%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.47%    │  0x00007f31846706fd:   mov    %r11d,0xc(%rbp)
   0.34%    │  0x00007f3184670701:   mov    0x1b8(%r15),%rcx
   0.03%    │  0x00007f3184670708:   mov    %rcx,%r10
   0.03%    │  0x00007f318467070b:   add    $0x10,%r10
   0.17%    │  0x00007f318467070f:   cmp    0x1c8(%r15),%r10
            │  0x00007f3184670716:   jae    0x00007f3184670956           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.28%    │  0x00007f318467071c:   mov    %r10,0x1b8(%r15)
   0.01%    │  0x00007f3184670723:   prefetchw 0xc0(%r10)
   0.07%    │  0x00007f318467072b:   movq   $0x1,(%rcx)
   0.20%    │  0x00007f3184670732:   movl   $0x1035398,0x8(%rcx)         ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
            │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
            │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f310c035398&apos;)}
   0.30%    │  0x00007f3184670739:   mov    0x44(%rsp),%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f318467073e:   mov    %r10d,0xc(%rcx)              ;*synchronization entry
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c035398::&lt;init&gt;@-1
            │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@16
            │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%    │  0x00007f3184670742:   mov    0x60(%rsp),%rsi
   0.21%    │  0x00007f3184670747:   mov    %rbp,%rdx                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.29%    │  0x00007f318467074a:   nop
   0.01%    │  0x00007f318467074b:   call   0x00007f31840c4380           ; ImmutableOopMap {[24]=Oop [32]=Oop [40]=Oop [48]=Oop [60]=NarrowOop [64]=NarrowOop [72]=Oop [88]=NarrowOop [104]=Oop }
            │                                                            ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {optimized virtual_call}
   0.14%    │  0x00007f3184670750:   nopl   0x30008c0(%rax,%rax,1)       ;   {other}
   0.01%    │  0x00007f3184670758:   mov    0x58(%rsp),%r11d
   0.34%    │  0x00007f318467075d:   data16 xchg %ax,%ax
   0.18%    │  0x00007f3184670760:   mov    0x8(%r12,%r11,8),%r11d       ; implicit exception: dispatches to 0x00007f3184670fd8
   0.01%    │  0x00007f3184670765:   cmp    $0x1034420,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f310c034420&apos;)}
            │  0x00007f318467076c:   jne    0x00007f3184670bac
   0.19%    │  0x00007f3184670772:   mov    0x58(%rsp),%r10d
   0.14%    │  0x00007f3184670777:   shl    $0x3,%r10                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.13%    │  0x00007f318467077b:   mov    0xc(%r10),%r10d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034420::accept@1
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f318467077f:   nop
   0.23%    │  0x00007f3184670780:   mov    0x8(%rax),%r11d              ; implicit exception: dispatches to 0x00007f3184670ff0
   0.14%    │  0x00007f3184670784:   cmp    $0x2a80,%r11d                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            │                                                            ;   {metadata({type array long})}
            │  0x00007f318467078b:   jne    0x00007f3184670eb4           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034420::accept@5
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.16%    │  0x00007f3184670791:   mov    0xc(%rax),%r11d
   0.02%    │  0x00007f3184670795:   test   %r11d,%r11d
            │  0x00007f3184670798:   jbe    0x00007f3184670bf0
   0.22%    │  0x00007f318467079e:   xchg   %ax,%ax
   0.10%    │  0x00007f31846707a0:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f3184671034
            │                                                            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.19%    │  0x00007f31846707a5:   mov    0x10(%rax),%r9               ;*laload {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@3 (line 662)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034420::accept@9
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    │  0x00007f31846707a9:   cmp    $0x1033ff0,%r11d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f310c033ff0&apos;)}
            │  0x00007f31846707b0:   jne    0x00007f3184670c38
   0.20%    │  0x00007f31846707b6:   add    $0x1,%r9                     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f310c02b0f8::apply@7
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.12%    │  0x00007f31846707ba:   mov    %r9,0x10(%rax)               ;*lastore {reexecute=0 rethrow=0 return_oop=0}
            │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@12 (line 662)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034420::accept@9
            │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
            │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f310c034ce0::accept@17
            │                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
            │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.17%    │  0x00007f31846707be:   xchg   %ax,%ax
   0.01%    ╰  0x00007f31846707c0:   jmp    0x00007f3184670555
               0x00007f31846707c5:   mov    %ebx,0x14(%rsp)              ;*ifgt {reexecute=0 rethrow=0 return_oop=0}
                                                                         ; - java.util.ArrayList::grow@7 (line 233)
                                                                         ; - java.util.ArrayList::grow@7 (line 244)
                                                                         ; - java.util.ArrayList::add@7 (line 483)
                                                                         ; - java.util.ArrayList::add@20 (line 496)
                                                                         ; - java.util.stream.Collectors$$Lambda/0x00007f310c060a30::accept@8
                                                                         ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                         ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
               0x00007f31846707c9:   mov    %ebp,%edx
               0x00007f31846707cb:   sub    %esi,%edx
....................................................................................................
  39.05%  <total for region 2>

....[Hottest Regions]...............................................................................
  42.18%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 812 
  39.05%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 812 
   9.60%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 808 
   2.58%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 808 
   2.16%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 788 
   2.10%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 808 
   0.53%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::is_empty 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              kernel  [unknown] 
   1.28%  <...other 350 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  81.23%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 812 
  14.30%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 808 
   2.16%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 788 
   1.65%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::is_empty 
   0.05%                      <unknown> 
   0.03%         c2, level 4  java.util.HashMap::resize, version 2, compile id 820 
   0.03%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%           libjvm.so  StatSamplerTask::task 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$55, version 2, compile id 922 
   0.01%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%         c2, level 4  java.util.HashMap::newNode, version 2, compile id 767 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%           libjvm.so  fileStream::write 
   0.34%  <...other 125 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.74%         c2, level 4
   1.65%              kernel
   0.40%           libjvm.so
   0.07%        libc-2.31.so
   0.05%                    
   0.03%  libpthread-2.31.so
   0.02%              [vdso]
   0.02%         interpreter
   0.01%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.00%         c1, level 3
   0.00%    perf-1953989.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publication_with_the_most_authors

# Run progress: 57.14% complete, ETA 00:11:28
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 13.069 ms/op
# Warmup Iteration   2: 12.166 ms/op
# Warmup Iteration   3: 12.168 ms/op
# Warmup Iteration   4: 12.190 ms/op
# Warmup Iteration   5: 12.175 ms/op
Iteration   1: 12.153 ms/op
Iteration   2: 12.182 ms/op
Iteration   3: 12.147 ms/op
Iteration   4: 11.974 ms/op
Iteration   5: 12.045 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publication_with_the_most_authors":
  12.100 ±(99.9%) 0.337 ms/op [Average]
  (min, avg, max) = (11.974, 12.100, 12.182), stdev = 0.088
  CI (99.9%): [11.763, 12.437] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publication_with_the_most_authors:asm":
PrintAssembly processed: 176850 total address lines.
Perf output processed (skipped 58.045 seconds):
 Column 1: cycles (50710 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 786 

                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007fe24066eafe:   mov    0xc(%r12,%rbx,8),%r10d       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
            0x00007fe24066eb03:   mov    %r10d,0x10(%rsi)             ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
            0x00007fe24066eb07:   jmp    0x00007fe24066ea2a
   0.02%    0x00007fe24066eb0c:   mov    0x44(%rsp),%r10d
   0.02%    0x00007fe24066eb11:   mov    %r10d,0x24(%rsp)             ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.20%    0x00007fe24066eb16:   lea    (%r12,%r9,8),%r10
   0.31%    0x00007fe24066eb1a:   mov    %r10,0x18(%rsp)
   0.30%    0x00007fe24066eb1f:   mov    0x24(%rsp),%r11d
   0.18%    0x00007fe24066eb24:   mov    %r11d,0x44(%rsp)
   0.09%    0x00007fe24066eb29:   mov    0x44(%rsp),%r10d
   0.29%    0x00007fe24066eb2e:   inc    %r10d
   0.09%    0x00007fe24066eb31:   data16 xchg %ax,%ax                 ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.03%    0x00007fe24066eb34:   mov    0x44(%rsp),%r8d
   0.03%    0x00007fe24066eb39:   inc    %r8d
   0.41%    0x00007fe24066eb3c:   mov    %r8d,0x24(%rsp)
   0.15%    0x00007fe24066eb41:   mov    0x18(%rsp),%r11
   0.02%    0x00007fe24066eb46:   test   %r11,%r11
            0x00007fe24066eb49:   je     0x00007fe24066eddd           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    0x00007fe24066eb4f:   mov    0x10(%r11),%r9d              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  23.55%    0x00007fe24066eb53:   mov    0x68(%rsp),%r11d
   0.02%    0x00007fe24066eb58:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007fe24066eb60:   cmp    $0x35bb40,%r11d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
            0x00007fe24066eb67:   jne    0x00007fe24066f15c
   0.00%    0x00007fe24066eb6d:   mov    0x60(%rsp),%r10              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.30%    0x00007fe24066eb72:   mov    %r10,0x28(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    0x00007fe24066eb77:   mov    0x10(%r10),%r11d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066eb7b:   nopl   0x0(%rax,%rax,1)
   0.00%    0x00007fe24066eb80:   mov    0x34(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007fe24066f574
   0.33%    0x00007fe24066eb85:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007fe24066f588
   0.03%    0x00007fe24066eb8a:   cmp    $0x102b0f8,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fe1c802b0f8&apos;)}
            0x00007fe24066eb91:   jne    0x00007fe24066f180
            0x00007fe24066eb97:   nopw   0x0(%rax,%rax,1)
   0.00%    0x00007fe24066eba0:   mov    0x8(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007fe24066f5a0
  24.55%    0x00007fe24066eba5:   cmp    $0x102aad8,%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007fe24066ebac:   jne    0x00007fe24066f505
   0.25%    0x00007fe24066ebb2:   lea    (%r12,%r9,8),%r10            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b0f8::test@1
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066ebb6:   mov    %r10,0x38(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066ebbb:   mov    0xc(%r10),%r10d              ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$12@1 (line 167)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b0f8::test@4
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.56%    0x00007fe24066ebbf:   nop
   0.02%    0x00007fe24066ebc0:   cmp    $0x76c,%r10d
            0x00007fe24066ebc7:   jl     0x00007fe24066f318
   0.21%    0x00007fe24066ebcd:   mov    0x28(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066ebd2:   mov    0xc(%r10),%r11d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%    0x00007fe24066ebd6:   data16 nopw 0x0(%rax,%rax,1)
   0.02%    0x00007fe24066ebe0:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007fe24066f5c8
   0.23%    0x00007fe24066ebe5:   cmp    $0x105fa70,%r8d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/stream/ReduceOps$2ReducingSink&apos;)}
            0x00007fe24066ebec:   jne    0x00007fe24066f1ac
   0.00%    0x00007fe24066ebf2:   lea    (%r12,%r11,8),%r10           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%    0x00007fe24066ebf6:   mov    %r10,0x30(%rsp)
   0.01%    0x00007fe24066ebfb:   movzbl 0xc(%r10),%r11d
   0.25%    0x00007fe24066ec00:   test   %r11d,%r11d
            0x00007fe24066ec03:   jne    0x00007fe24066f055           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066ec09:   mov    0x14(%r10),%r11d             ;*getfield val$operator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@22 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%    0x00007fe24066ec0d:   mov    0x10(%r10),%r10d             ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@26 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007fe24066ec11:   mov    %r10d,0x40(%rsp)
   0.23%    0x00007fe24066ec16:   data16 nopw 0x0(%rax,%rax,1)
   0.01%    0x00007fe24066ec20:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007fe24066f5e0
   0.04%    0x00007fe24066ec25:   cmp    $0x1034288,%r8d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/function/BinaryOperator$$Lambda+0x00007fe1c8034288&apos;)}
            0x00007fe24066ec2c:   jne    0x00007fe24066f1d0
   0.01%    0x00007fe24066ec32:   lea    (%r12,%r11,8),%r10           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.21%    0x00007fe24066ec36:   mov    0xc(%r10),%r11d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@1
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066ec3a:   nopw   0x0(%rax,%rax,1)
   0.05%    0x00007fe24066ec40:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fe24066f5f8
   0.01%    0x00007fe24066ec45:   cmp    $0x1033ff0,%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/Comparator$$Lambda+0x00007fe1c8033ff0&apos;)}
            0x00007fe24066ec4c:   jne    0x00007fe24066f200
   0.21%    0x00007fe24066ec52:   lea    (%r12,%r11,8),%r10           ;*invokeinterface compare {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066ec56:   mov    0xc(%r10),%r11d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@1
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.07%    0x00007fe24066ec5a:   nopw   0x0(%rax,%rax,1)
   0.01%    0x00007fe24066ec60:   mov    0x8(%r12,%r11,8),%r8d        ; implicit exception: dispatches to 0x00007fe24066f610
   0.24%    0x00007fe24066ec65:   cmp    $0x102b340,%r8d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fe1c802b340&apos;)}
            0x00007fe24066ec6c:   jne    0x00007fe24066f248
   0.00%    0x00007fe24066ec72:   lea    (%r12,%r11,8),%r8            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.07%    0x00007fe24066ec76:   mov    0x40(%rsp),%r10d
   0.02%    0x00007fe24066ec7b:   nopl   0x0(%rax,%rax,1)
   0.22%    0x00007fe24066ec80:   mov    0x8(%r12,%r10,8),%r10d       ; implicit exception: dispatches to 0x00007fe24066f628
   0.00%    0x00007fe24066ec85:   cmp    $0x102aad8,%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007fe24066ec8c:   jne    0x00007fe24066f52c
   0.05%    0x00007fe24066ec92:   mov    0x40(%rsp),%r11d
   0.01%    0x00007fe24066ec97:   lea    (%r12,%r11,8),%r10           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@1
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.21%    0x00007fe24066ec9b:   mov    %r10,0x48(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fe24066eca0:   mov    0x18(%r10),%r10d             ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@1 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.05%    0x00007fe24066eca4:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fe24066f664
   0.01%    0x00007fe24066eca9:   cmp    $0xbb7c0,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {metadata(&apos;java/util/ArrayList&apos;)}
            0x00007fe24066ecb0:   jne    0x00007fe24066f28c
   0.23%    0x00007fe24066ecb6:   shl    $0x3,%r10                    ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@4 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%    0x00007fe24066ecba:   mov    0x10(%r10),%ebp              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::size@1 (line 253)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@4 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.06%    0x00007fe24066ecbe:   xchg   %ax,%ax
   0.02%    0x00007fe24066ecc0:   cmp    $0xffffff80,%ebp
            0x00007fe24066ecc3:   jl     0x00007fe24066f344
   0.24%    0x00007fe24066ecc9:   cmp    $0x7f,%ebp                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                      ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                      ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007fe24066eccc:   jle    0x00007fe24066ef5f
....................................................................................................
  55.06%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 786 

                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                0x00007fe24066ed0e:   mov    %ebp,0xc(%rax)
   0.24%        0x00007fe24066ed11:   mov    0x38(%rsp),%r10              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%        0x00007fe24066ed16:   mov    0x18(%r10),%r10d             ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@1 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   1.46%        0x00007fe24066ed1a:   nopw   0x0(%rax,%rax,1)
   0.02%        0x00007fe24066ed20:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fe24066f678
  32.49%        0x00007fe24066ed25:   cmp    $0xbb7c0,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                          ;   {metadata(&apos;java/util/ArrayList&apos;)}
                0x00007fe24066ed2c:   jne    0x00007fe24066f2d8
   0.31%        0x00007fe24066ed32:   shl    $0x3,%r10                    ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@4 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%        0x00007fe24066ed36:   mov    0x10(%r10),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.ArrayList::size@1 (line 253)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@4 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   1.83%        0x00007fe24066ed3a:   nopw   0x0(%rax,%rax,1)
   0.01%        0x00007fe24066ed40:   cmp    %r11d,%ebp                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                0x00007fe24066ed43:   jl     0x00007fe24066f025           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.24%        0x00007fe24066ed49:   cmpb   $0x0,0x40(%r15)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%        0x00007fe24066ed4e:   jne    0x00007fe24066ef91           ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@35 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                0x00007fe24066ed54:   mov    0x48(%rsp),%r10
   0.02%        0x00007fe24066ed59:   mov    0x48(%rsp),%r11
   0.31%        0x00007fe24066ed5e:   mov    %r11,%r8
   0.01%        0x00007fe24066ed61:   shr    $0x3,%r8
                0x00007fe24066ed65:   mov    0x30(%rsp),%r11              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%        0x00007fe24066ed6a:   mov    %r8d,0x10(%r11)              ;*putfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@35 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.26%        0x00007fe24066ed6e:   xor    %r11,%r10
   0.01%        0x00007fe24066ed71:   shr    $0x15,%r10
   0.00%        0x00007fe24066ed75:   test   %r10,%r10
          ╭     0x00007fe24066ed78:   je     0x00007fe24066ed94
   0.01%  │     0x00007fe24066ed7a:   shr    $0x9,%r11
   0.27%  │     0x00007fe24066ed7e:   movabs $0x7fe250bb6000,%rdi
   0.02%  │     0x00007fe24066ed88:   add    %r11,%rdi
          │     0x00007fe24066ed8b:   cmpb   $0x2,(%rdi)                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
          │                                                               ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
          │                                                               ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
          │                                                               ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
          │                                                               ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
          │                                                               ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
          │                                                               ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
          │                                                               ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
          │                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%  │     0x00007fe24066ed8e:   jne    0x00007fe24066efd3           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
          │                                                               ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.26%  ↘     0x00007fe24066ed94:   mov    0x458(%r15),%r10
   0.02%        0x00007fe24066ed9b:   mov    0x18(%rsp),%r11              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                0x00007fe24066eda0:   mov    0x18(%r11),%r9d              ; ImmutableOopMap {r9=NarrowOop [8]=Oop [16]=Oop [96]=Oop [108]=NarrowOop [112]=NarrowOop }
                                                                          ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.25%        0x00007fe24066eda4:   test   %eax,(%r10)                  ;   {poll}
   0.28%        0x00007fe24066eda7:   test   %r9d,%r9d                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                0x00007fe24066edaa:   jne    0x00007fe24066eb0c           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.01%        0x00007fe24066edb0:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[8]=Oop [16]=Oop [96]=Oop [108]=NarrowOop [112]=NarrowOop }
                                                                          ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.00%        0x00007fe24066edb7:   test   %eax,(%r10)                  ;   {poll}
   0.01%        0x00007fe24066edba:   mov    0x44(%rsp),%r11d
   0.22%        0x00007fe24066edbf:   nop
   0.01%        0x00007fe24066edc0:   cmp    0x50(%rsp),%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                0x00007fe24066edc5:   jge    0x00007fe24066f10e           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.00%        0x00007fe24066edcb:   mov    0x24(%rsp),%r10d
   0.01%        0x00007fe24066edd0:   xor    %r11d,%r11d
   0.21%        0x00007fe24066edd3:   mov    %r11,0x18(%rsp)
   0.02%        0x00007fe24066edd8:   jmp    0x00007fe24066eb34
   0.00%        0x00007fe24066eddd:   mov    0x44(%rsp),%r8d
   0.22%        0x00007fe24066ede2:   cmp    0x74(%rsp),%r8d
                0x00007fe24066ede7:   jae    0x00007fe24066f14a           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.02%        0x00007fe24066eded:   mov    0x8(%rsp),%r8
                0x00007fe24066edf2:   mov    0x44(%rsp),%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%        0x00007fe24066edf7:   mov    0x10(%r8,%r11,4),%r9d        ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.31%        0x00007fe24066edfc:   mov    0x458(%r15),%r11             ; ImmutableOopMap {r9=NarrowOop [8]=Oop [16]=Oop [96]=Oop [108]=NarrowOop [112]=NarrowOop }
                                                                          ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                                          ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.02%        0x00007fe24066ee03:   test   %eax,(%r11)                  ;   {poll}
   0.00%        0x00007fe24066ee06:   test   %r9d,%r9d                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
                                                                          ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
                                                                          ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                          ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
                                                                          ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                          ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
                                                                          ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
                                                                          ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
                                                                          ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                0x00007fe24066ee09:   jne    0x00007fe24066eb16
   0.01%        0x00007fe24066ee0f:   movslq %r10d,%r11
   0.17%        0x00007fe24066ee12:   xor    %r8d,%r8d
   0.01%        0x00007fe24066ee15:   test   %r10d,%r10d
                0x00007fe24066ee18:   cmovl  %r8,%r11
   0.01%        0x00007fe24066ee1c:   mov    %r11d,%r8d
   0.13%        0x00007fe24066ee1f:   cmp    0x50(%rsp),%r8d
   0.01%        0x00007fe24066ee24:   mov    0x50(%rsp),%r9d
                0x00007fe24066ee29:   cmovg  %r9d,%r8d
                0x00007fe24066ee2d:   mov    0x24(%rsp),%r9d
   0.17%        0x00007fe24066ee32:   cmp    %r8d,%r9d
                0x00007fe24066ee35:   jl     0x00007fe24066ef4a
   0.02%        0x00007fe24066ee3b:   nopl   0x0(%rax,%rax,1)
                0x00007fe24066ee40:   cmp    0x20(%rsp),%r9d
           ╭    0x00007fe24066ee45:   jge    0x00007fe24066eeda
   0.01%   │    0x00007fe24066ee4b:   mov    %r9d,%r10d
   0.18%   │    0x00007fe24066ee4e:   mov    %r10d,0x24(%rsp)
   0.00%   │ ↗  0x00007fe24066ee53:   mov    0x20(%rsp),%r10d
           │ │  0x00007fe24066ee58:   sub    0x24(%rsp),%r10d
   0.01%   │ │  0x00007fe24066ee5d:   mov    0x20(%rsp),%r9d
   0.15%   │ │  0x00007fe24066ee62:   xor    %r11d,%r11d
   0.01%   │ │  0x00007fe24066ee65:   cmp    0x24(%rsp),%r9d
           │ │  0x00007fe24066ee6a:   cmovl  %r11d,%r10d
   0.01%   │ │  0x00007fe24066ee6e:   cmp    $0x3e8,%r10d
   0.13%   │ │  0x00007fe24066ee75:   mov    $0x3e8,%r11d
   0.01%   │ │  0x00007fe24066ee7b:   cmova  %r11d,%r10d
   0.01%   │ │  0x00007fe24066ee7f:   add    0x24(%rsp),%r10d
   0.14%   │ │  0x00007fe24066ee84:   nopl   0x0(%rax,%rax,1)
   0.01%   │ │  0x00007fe24066ee8c:   data16 data16 xchg %ax,%ax          ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.15%   │↗│  0x00007fe24066ee90:   mov    0x8(%rsp),%r11
   0.10%   │││  0x00007fe24066ee95:   mov    0x24(%rsp),%r8d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
           │││                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
           │││                                                            ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
           │││                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
           │││                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
           │││                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
           │││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.23%   │││  0x00007fe24066ee9a:   mov    0x10(%r11,%r8,4),%r9d        ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.54%   │││  0x00007fe24066ee9f:   mov    0x458(%r15),%r8
   0.07%   │││  0x00007fe24066eea6:   mov    0x24(%rsp),%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
           │││                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
           │││                                                            ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
           │││                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
           │││                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
           │││                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
           │││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.07%   │││  0x00007fe24066eeab:   inc    %r11d
   0.21%   │││  0x00007fe24066eeae:   mov    %r11d,0x24(%rsp)             ; ImmutableOopMap {r9=NarrowOop [8]=Oop [16]=Oop [96]=Oop [108]=NarrowOop [112]=NarrowOop }
           │││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
           │││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.18%   │││  0x00007fe24066eeb3:   test   %eax,(%r8)                   ;   {poll}
   0.11%   │││  0x00007fe24066eeb6:   test   %r9d,%r9d                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationWithTheMostAuthors$13@9 (line 168)
           │││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fe1c802b340::apply@4
           │││                                                            ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
           │││                                                            ; - java.util.Comparator$$Lambda/0x00007fe1c8033ff0::compare@6
           │││                                                            ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
           │││                                                            ; - java.util.function.BinaryOperator$$Lambda/0x00007fe1c8034288::apply@6
           │││                                                            ; - java.util.stream.ReduceOps$2ReducingSink::accept@30 (line 123)
           │││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │││  0x00007fe24066eeb9:   jne    0x00007fe24066eb16
   0.08%   │││  0x00007fe24066eebf:   nop
   0.14%   │││  0x00007fe24066eec0:   cmp    %r10d,%r11d
           │╰│  0x00007fe24066eec3:   jl     0x00007fe24066ee90           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
           │ │  0x00007fe24066eec5:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[8]=Oop [16]=Oop [96]=Oop [108]=NarrowOop [112]=NarrowOop }
           │ │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
           │ │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
           │ │  0x00007fe24066eecc:   test   %eax,(%r10)                  ;   {poll}
           │ │  0x00007fe24066eecf:   cmp    0x20(%rsp),%r11d
           │ ╰  0x00007fe24066eed4:   jl     0x00007fe24066ee53
           ↘    0x00007fe24066eeda:   mov    0x24(%rsp),%r10d
                0x00007fe24066eedf:   nop
....................................................................................................
  42.57%  <total for region 2>

....[Hottest Regions]...............................................................................
  55.06%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 786 
  42.57%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 786 
   0.44%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 786 
   0.16%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.06%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%              kernel  [unknown] 
   1.11%  <...other 342 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.07%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 786 
   1.39%              kernel  [unknown] 
   0.03%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%           libjvm.so  xmlStream::write_text 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  __strchr_avx2 
   0.01%           libjvm.so  Monitor::wait_without_safepoint_check 
   0.01%           libjvm.so  defaultStream::write 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%      hsdis-amd64.so  print_insn 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%  libpthread-2.31.so  __pthread_enable_asynccancel 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%         interpreter  method entry point (kind = zerolocals)  
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.28%  <...other 106 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%         c2, level 4
   1.39%              kernel
   0.28%           libjvm.so
   0.11%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.03%                    
   0.03%         interpreter
   0.02%      hsdis-amd64.so
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.00%         c1, level 3
   0.00%    perf-1954054.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_per_author

# Run progress: 64.29% complete, ETA 00:09:31
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 146.570 ms/op
# Warmup Iteration   2: 122.361 ms/op
# Warmup Iteration   3: 121.617 ms/op
# Warmup Iteration   4: 121.496 ms/op
# Warmup Iteration   5: 123.175 ms/op
Iteration   1: 121.399 ms/op
Iteration   2: 122.405 ms/op
Iteration   3: 121.750 ms/op
Iteration   4: 120.899 ms/op
Iteration   5: 122.080 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_per_author":
  121.706 ±(99.9%) 2.259 ms/op [Average]
  (min, avg, max) = (120.899, 121.706, 122.405), stdev = 0.587
  CI (99.9%): [119.448, 123.965] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_per_author:asm":
PrintAssembly processed: 199354 total address lines.
Perf output processed (skipped 58.578 seconds):
 Column 1: cycles (61637 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap::computeIfAbsent, version 4, compile id 900 

              0x00007ff8f868ce44:   jne    0x00007ff8f868d266
              0x00007ff8f868ce4a:   shr    $0x8,%r10
              0x00007ff8f868ce4e:   mov    %r10d,%eax
              0x00007ff8f868ce51:   and    $0x7fffffff,%eax
              0x00007ff8f868ce56:   test   %eax,%eax
              0x00007ff8f868ce58:   je     0x00007ff8f868d266           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@9 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
              0x00007ff8f868ce5e:   mov    0x10(%rsp),%r10
              0x00007ff8f868ce63:   mov    0x14(%r10),%r11d
   0.16%      0x00007ff8f868ce67:   mov    0x1c(%r10),%r10d
   0.00%      0x00007ff8f868ce6b:   mov    %eax,%r9d
              0x00007ff8f868ce6e:   shr    $0x10,%r9d
              0x00007ff8f868ce72:   xor    %eax,%r9d                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::hash@18 (line 338)
                                                                        ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.13%      0x00007ff8f868ce75:   mov    %r9d,0x4(%rsp)
              0x00007ff8f868ce7a:   nopw   0x0(%rax,%rax,1)
              0x00007ff8f868ce80:   cmp    %r10d,%r11d
              0x00007ff8f868ce83:   jg     0x00007ff8f868d2a9           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.00%      0x00007ff8f868ce89:   mov    0x10(%rsp),%r10
   0.15%      0x00007ff8f868ce8e:   mov    0x24(%r10),%r10d             ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.01%      0x00007ff8f868ce92:   test   %r10d,%r10d
              0x00007ff8f868ce95:   je     0x00007ff8f868d2a9           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.01%      0x00007ff8f868ce9b:   mov    0xc(%r12,%r10,8),%r11d       ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.11%      0x00007ff8f868cea0:   test   %r11d,%r11d
              0x00007ff8f868cea3:   jbe    0x00007ff8f868d5f8           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.14%      0x00007ff8f868cea9:   shl    $0x3,%r10                    ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.00%      0x00007ff8f868cead:   mov    %r10,0x28(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@66 (line 1207)
              0x00007ff8f868ceb2:   mov    %r11d,%edx
              0x00007ff8f868ceb5:   dec    %edx
   0.12%      0x00007ff8f868ceb7:   and    0x4(%rsp),%edx               ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
              0x00007ff8f868cebb:   nopl   0x0(%rax,%rax,1)
              0x00007ff8f868cec0:   test   %r11d,%r11d
              0x00007ff8f868cec3:   jle    0x00007ff8f868d4fd
              0x00007ff8f868cec9:   mov    0x28(%rsp),%r10
   0.15%      0x00007ff8f868cece:   lea    0x10(%r10,%rdx,4),%r9        ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.06%      0x00007ff8f868ced3:   mov    0x10(%rsp),%r10
              0x00007ff8f868ced8:   mov    0x8(%r10),%r10d              ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.00%      0x00007ff8f868cedc:   vmovd  %r10d,%xmm2
   0.11%      0x00007ff8f868cee1:   mov    (%r9),%r10d                  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.97%      0x00007ff8f868cee4:   test   %r10d,%r10d
              0x00007ff8f868cee7:   je     0x00007ff8f868d0f7           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.08%      0x00007ff8f868ceed:   mov    0x8(%r12,%r10,8),%r11d
   4.57%      0x00007ff8f868cef2:   data16 nopw 0x0(%rax,%rax,1)
   0.00%      0x00007ff8f868cefc:   data16 data16 xchg %ax,%ax
              0x00007ff8f868cf00:   cmp    $0x1acba8,%r11d              ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
              0x00007ff8f868cf07:   je     0x00007ff8f868d530
   0.12%      0x00007ff8f868cf0d:   lea    (%r12,%r10,8),%r11           ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
              0x00007ff8f868cf11:   mov    %r11,%r8
   0.01%      0x00007ff8f868cf14:   xor    %r13d,%r13d                  ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
           ↗  0x00007ff8f868cf17:   mov    0xc(%r8),%esi
   2.37%   │  0x00007ff8f868cf1b:   nopl   0x0(%rax,%rax,1)
           │  0x00007ff8f868cf20:   cmp    0x4(%rsp),%esi
          ╭│  0x00007ff8f868cf24:   je     0x00007ff8f868cf45           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.59%  ││  0x00007ff8f868cf26:   mov    0x458(%r15),%rbx
   0.47%  ││  0x00007ff8f868cf2d:   mov    0x18(%r8),%r8d               ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.16%  ││  0x00007ff8f868cf31:   inc    %r13d                        ; ImmutableOopMap {r10=NarrowOop r11=Oop r8=NarrowOop r14=Oop xmm0=Oop [16]=Oop [40]=Oop r9=Derived_oop_[40] }
          ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
          ││                                                            ; - (reexecute) java.util.HashMap::computeIfAbsent@166 (line 1219)
          ││  0x00007ff8f868cf34:   test   %eax,(%rbx)                  ;   {poll}
   0.19%  ││  0x00007ff8f868cf36:   test   %r8d,%r8d
          ││  0x00007ff8f868cf39:   je     0x00007ff8f868d0fd           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@166 (line 1219)
   0.02%  ││  0x00007ff8f868cf3f:   shl    $0x3,%r8                     ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          ││                                                            ; - java.util.HashMap::computeIfAbsent@160 (line 1219)
   0.01%  │╰  0x00007ff8f868cf43:   jmp    0x00007ff8f868cf17
   0.23%  ↘   0x00007ff8f868cf45:   mov    0x10(%r8),%ebx               ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.23%      0x00007ff8f868cf49:   mov    %rbx,%r9
   0.01%      0x00007ff8f868cf4c:   shl    $0x3,%r9
   0.12%      0x00007ff8f868cf50:   vmovq  %xmm0,%r11
   0.00%      0x00007ff8f868cf55:   cmp    %r11,%r9
              0x00007ff8f868cf58:   je     0x00007ff8f868d62c           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
   0.20%      0x00007ff8f868cf5e:   xchg   %ax,%ax
   0.00%      0x00007ff8f868cf60:   cmp    $0x102a690,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007ff8f868cf66:   jne    0x00007ff8f868d568           ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007ff8f868cf6c:   cmp    %r9,%r11
              0x00007ff8f868cf6f:   je     0x00007ff8f868d668           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@2 (line 45)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.05%      0x00007ff8f868cf75:   mov    0x8(%r12,%rbx,8),%ecx        ; implicit exception: dispatches to 0x00007ff8f868d9a0
                                                                        ;*invokevirtual getClass {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@16 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   4.87%      0x00007ff8f868cf7a:   nopw   0x0(%rax,%rax,1)
              0x00007ff8f868cf80:   cmp    $0x102a690,%ecx              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Author&apos;)}
              0x00007ff8f868cf86:   jne    0x00007ff8f868d6a8           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.12%      0x00007ff8f868cf8c:   mov    0xc(%r11),%r9d               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@30 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007ff8f868cf90:   lea    (%r12,%rbx,8),%rcx           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@19 (line 46)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007ff8f868cf94:   mov    0xc(%rcx),%ecx               ;*getfield name {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@34 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.22%      0x00007ff8f868cf97:   cmp    %ecx,%r9d
   0.13%      0x00007ff8f868cf9a:   nopw   0x0(%rax,%rax,1)
              0x00007ff8f868cfa0:   je     0x00007ff8f868d0ba           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.Objects::equals@2 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.12%      0x00007ff8f868cfa6:   movsbl 0x10(%r12,%r9,8),%ebx        ; implicit exception: dispatches to 0x00007ff8f868d9dc
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@26 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.02%      0x00007ff8f868cfac:   cmp    %ecx,%r9d
              0x00007ff8f868cfaf:   je     0x00007ff8f868d0ba           ;*if_acmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@2 (line 1858)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.02%      0x00007ff8f868cfb5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.00%      0x00007ff8f868cfc0:   movsbl 0x10(%r12,%rcx,8),%ebp       ; implicit exception: dispatches to 0x00007ff8f868d91c
                                                                        ;*getfield coder {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@30 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   1.43%      0x00007ff8f868cfc6:   cmp    %ebp,%ebx
              0x00007ff8f868cfc8:   jne    0x00007ff8f868d744           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@33 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.12%      0x00007ff8f868cfce:   mov    0x14(%r12,%rcx,8),%edi       ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.13%      0x00007ff8f868cfd3:   mov    0x14(%r12,%r9,8),%r9d        ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007ff8f868cfd8:   mov    0xc(%r12,%rdi,8),%esi
   1.05%      0x00007ff8f868cfdd:   mov    0xc(%r12,%r9,8),%ecx
   0.05%      0x00007ff8f868cfe2:   cmp    %esi,%ecx
              0x00007ff8f868cfe4:   jne    0x00007ff8f868d5c0           ;*invokestatic equals {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@44 (line 1863)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.12%      0x00007ff8f868cfea:   lea    (%r12,%rdi,8),%rbx           ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@41 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
              0x00007ff8f868cfee:   lea    0x10(%r12,%rdi,8),%rsi
              0x00007ff8f868cff3:   lea    (%r12,%r9,8),%rbx            ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.lang.String::equals@37 (line 1861)
                                                                        ; - java.util.Objects::equals@11 (line 64)
                                                                        ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::equals@37 (line 48)
                                                                        ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%      0x00007ff8f868cff7:   lea    0x10(%r12,%r9,8),%rdi
   0.13%      0x00007ff8f868cffc:   test   %ecx,%ecx
              0x00007ff8f868cffe:   je     0x00007ff8f868d0a1
              0x00007ff8f868d004:   mov    %ecx,%eax
              0x00007ff8f868d006:   and    $0x1f,%eax
   0.00%      0x00007ff8f868d009:   and    $0xffffffe0,%ecx
              0x00007ff8f868d00c:   je     0x00007ff8f868d05d
              0x00007ff8f868d012:   lea    (%rdi,%rcx,1),%rdi
              0x00007ff8f868d016:   lea    (%rsi,%rcx,1),%rsi
              0x00007ff8f868d01a:   neg    %rcx
              0x00007ff8f868d01d:   vmovdqu (%rdi,%rcx,1),%ymm1
              0x00007ff8f868d022:   vmovdqu (%rsi,%rcx,1),%ymm3
              0x00007ff8f868d027:   vpxor  %ymm3,%ymm1,%ymm1
              0x00007ff8f868d02b:   vptest %ymm1,%ymm1
              0x00007ff8f868d030:   jne    0x00007ff8f868d0a8
              0x00007ff8f868d036:   add    $0x20,%rcx
....................................................................................................
  20.10%  <total for region 1>

....[Hottest Regions]...............................................................................
  20.10%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 900 
   9.68%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 900 
   7.07%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff87c0351a8::accept, version 2, compile id 882 
   5.78%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff87c034208::accept, version 2, compile id 903 
   4.16%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   3.65%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 893 
   3.55%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff87c0353d8::accept, version 2, compile id 863 
   3.02%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   2.80%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   2.37%         c2, level 4  java.lang.String::hashCode, version 2, compile id 248 
   2.18%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 900 
   2.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors::lambda$invertMultiMap$6, version 2, compile id 852 
   1.98%         c2, level 4  java.util.HashMap::resize, version 4, compile id 766 
   1.83%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 877 
   1.74%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 877 
   1.68%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   1.50%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 6, compile id 906 
   1.42%         c2, level 4  java.util.HashMap::putVal, version 2, compile id 715 
   1.37%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::estimateSize, version 2, compile id 888 
   1.31%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
  20.71%  <...other 604 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  32.74%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 900 
   8.32%           libjvm.so  G1ParScanThreadState::trim_queue_to_threshold 
   7.87%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff87c0351a8::accept, version 2, compile id 882 
   6.62%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff87c034208::accept, version 2, compile id 903 
   4.63%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff87c0353d8::accept, version 2, compile id 863 
   4.48%           libjvm.so  OopOopIterateBackwardsDispatch<G1ScanEvacuatedObjClosure>::Table::oop_oop_iterate_backwards<InstanceKlass, narrowOop> 
   3.73%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 877 
   3.69%           libjvm.so  G1ScanCardClosure::do_oop_work<narrowOop> 
   3.65%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 893 
   2.68%         c2, level 4  java.util.HashMap::resize, version 4, compile id 766 
   2.67%         c2, level 4  java.lang.String::hashCode, version 2, compile id 248 
   2.09%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.util.CustomCollectors::lambda$invertMultiMap$6, version 2, compile id 852 
   1.89%         c2, level 4  java.util.stream.AbstractPipeline::evaluate, version 5, compile id 953 
   1.68%         c2, level 4  java.util.HashMap::putVal, version 2, compile id 715 
   1.50%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 6, compile id 906 
   1.37%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::estimateSize, version 2, compile id 888 
   1.32%              kernel  [unknown] 
   1.22%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Author::hashCode, version 2, compile id 873 
   1.00%           libjvm.so  OopOopIterateBoundedDispatch<G1ConcurrentRefineOopClosure>::Table::oop_oop_iterate_bounded<ObjArrayKlass, narrowOop> 
   0.92%         c1, level 1  java.util.ArrayList$ArrayListSpliterator::characteristics, version 1, compile id 803 
   5.94%  <...other 209 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  75.97%         c2, level 4
  20.13%           libjvm.so
   1.32%              kernel
   0.92%         c1, level 1
   0.75%                    
   0.49%        runtime stub
   0.16%    perf-1954120.map
   0.15%        libc-2.31.so
   0.04%          ld-2.31.so
   0.02%              [vdso]
   0.02%  libpthread-2.31.so
   0.01%         c1, level 3
   0.01%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year

# Run progress: 71.43% complete, ETA 00:07:36
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 12.866 ms/op
# Warmup Iteration   2: 9.595 ms/op
# Warmup Iteration   3: 9.866 ms/op
# Warmup Iteration   4: 9.858 ms/op
# Warmup Iteration   5: 9.849 ms/op
Iteration   1: 9.901 ms/op
Iteration   2: 9.800 ms/op
Iteration   3: 9.749 ms/op
Iteration   4: 9.801 ms/op
Iteration   5: 9.861 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year":
  9.823 ±(99.9%) 0.228 ms/op [Average]
  (min, avg, max) = (9.749, 9.823, 9.901), stdev = 0.059
  CI (99.9%): [9.594, 10.051] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year:asm":
PrintAssembly processed: 213966 total address lines.
Perf output processed (skipped 58.220 seconds):
 Column 1: cycles (51102 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 899 

                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@41 (line 1702)
                 0x00007fb678687ae7:   test   %ecx,%ecx
                 0x00007fb678687ae9:   je     0x00007fb678687c3c           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@49 (line 1703)
                 0x00007fb678687aef:   mov    0xc(%r12,%rcx,8),%ebx        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
                 0x00007fb678687af4:   mov    %ebx,0x10(%rsi)              ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
                 0x00007fb678687af7:   jmp    0x00007fb678687a89
                 0x00007fb678687af9:   nopl   0x0(%rax)
   0.94%      ↗  0x00007fb678687b00:   xor    %edi,%edi
              │  0x00007fb678687b02:   mov    %r10d,%eax                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.04%     ↗│  0x00007fb678687b05:   test   %rdi,%rdi
          ╭  ││  0x00007fb678687b08:   je     0x00007fb678687bd1           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.06%  │  ││  0x00007fb678687b0e:   mov    0x10(%rdi),%r10d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  21.93%  │  ││  0x00007fb678687b12:   data16 nopw 0x0(%rax,%rax,1)
   0.10%  │  ││  0x00007fb678687b1c:   data16 data16 xchg %ax,%ax
   0.02%  │  ││  0x00007fb678687b20:   cmp    $0x358d50,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
          │  ││  0x00007fb678687b27:   jne    0x00007fb678687c74
   0.00%  │  ││  0x00007fb678687b2d:   mov    %r13,0x38(%rsp)
   0.29%  │  ││  0x00007fb678687b32:   mov    %rsi,0x30(%rsp)
   0.10%  │  ││  0x00007fb678687b37:   mov    %rdi,0x28(%rsp)
   0.02%  │  ││  0x00007fb678687b3c:   mov    %eax,0x20(%rsp)
          │  ││  0x00007fb678687b40:   mov    %r8d,0x1c(%rsp)
   0.26%  │  ││  0x00007fb678687b45:   mov    %edx,0x18(%rsp)
   0.11%  │  ││  0x00007fb678687b49:   mov    %ebx,0x14(%rsp)
   0.03%  │  ││  0x00007fb678687b4d:   mov    %ecx,0x10(%rsp)
   0.01%  │  ││  0x00007fb678687b51:   mov    %r14d,0xc(%rsp)
   0.24%  │  ││  0x00007fb678687b56:   mov    %r11d,0x8(%rsp)
   0.08%  │  ││  0x00007fb678687b5b:   mov    %r9,%rbp
   0.02%  │  ││  0x00007fb678687b5e:   mov    %r9,(%rsp)                   ;*synchronization entry
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@-1 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%  │  ││  0x00007fb678687b62:   mov    0xc(%rbp),%r9d
   0.21%  │  ││  0x00007fb678687b66:   mov    0x14(%rbp),%r11d
   0.09%  │  ││  0x00007fb678687b6a:   mov    %r9,%rdx
   0.03%  │  ││  0x00007fb678687b6d:   shl    $0x3,%rdx                    ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%  │  ││  0x00007fb678687b71:   mov    %r11,%rsi
   0.25%  │  ││  0x00007fb678687b74:   shl    $0x3,%rsi                    ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.09%  │  ││  0x00007fb678687b78:   mov    %r10,%rcx
   0.03%  │  ││  0x00007fb678687b7b:   shl    $0x3,%rcx                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.01%  │  ││  0x00007fb678687b7f:   xchg   %ax,%ax
   0.24%  │  ││  0x00007fb678687b81:   movabs $0xffffffffffffffff,%rax
   0.14%  │  ││  0x00007fb678687b8b:   call   0x00007fb6780c4680           ; ImmutableOopMap {rbp=Oop [0]=Oop [12]=NarrowOop [16]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
          │  ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
          │  ││                                                            ;   {virtual_call}
   0.03%  │  ││  0x00007fb678687b90:   nopl   0x300(%rax,%rax,1)           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
          │  ││                                                            ;   {other}
   0.13%  │  ││  0x00007fb678687b98:   mov    0x28(%rsp),%r10
   0.27%  │  ││  0x00007fb678687b9d:   mov    0x18(%r10),%ebp              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.07%  │  ││  0x00007fb678687ba1:   mov    0x20(%rsp),%r10d
   0.12%  │  ││  0x00007fb678687ba6:   mov    (%rsp),%r9
   0.21%  │  ││  0x00007fb678687baa:   mov    0x8(%rsp),%r11d
   0.01%  │  ││  0x00007fb678687baf:   mov    0xc(%rsp),%r14d
   0.02%  │  ││  0x00007fb678687bb4:   mov    0x10(%rsp),%ecx
   0.14%  │  ││  0x00007fb678687bb8:   mov    0x14(%rsp),%ebx
   0.23%  │  ││  0x00007fb678687bbc:   mov    0x18(%rsp),%edx
   0.02%  │  ││  0x00007fb678687bc0:   mov    0x1c(%rsp),%r8d
   0.02%  │  ││  0x00007fb678687bc5:   mov    0x30(%rsp),%rsi
   0.11%  │  ││  0x00007fb678687bca:   mov    0x38(%rsp),%r13
   0.20%  │╭ ││  0x00007fb678687bcf:   jmp    0x00007fb678687bea
   1.09%  ↘│ ││  0x00007fb678687bd1:   mov    %eax,%r10d
           │ ││  0x00007fb678687bd4:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
           │ ││  0x00007fb678687bd7:   cmp    %r8d,%eax
           │ ││  0x00007fb678687bda:   nopw   0x0(%rax,%rax,1)
   0.99%   │ ││  0x00007fb678687be0:   jae    0x00007fb678687c45
           │ ││  0x00007fb678687be6:   mov    0x10(%rsi,%rax,4),%ebp       ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.15%   ↘ ││  0x00007fb678687bea:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r9=Oop rcx=NarrowOop rsi=Oop rbp=NarrowOop r13=Oop r14=NarrowOop }
             ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.03%     ││  0x00007fb678687bf1:   test   %eax,(%rdi)                  ;   {poll}
   1.13%     ││  0x00007fb678687bf3:   test   %ebp,%ebp
            ╭││  0x00007fb678687bf5:   je     0x00007fb678687c05           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.15%    │││  0x00007fb678687bf7:   lea    (%r12,%rbp,8),%rdi           ;*aload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.21%    │││  0x00007fb678687bfb:   mov    %r10d,%eax
   0.00%    │││  0x00007fb678687bfe:   xchg   %ax,%ax
   0.26%    │╰│  0x00007fb678687c00:   jmp    0x00007fb678687b05           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.20%    ↘ │  0x00007fb678687c05:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r9=Oop rcx=NarrowOop rsi=Oop r13=Oop r14=NarrowOop }
              │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.09%      │  0x00007fb678687c0c:   test   %eax,(%rdi)                  ;   {poll}
   0.14%      │  0x00007fb678687c0e:   cmp    %ebx,%r10d
              ╰  0x00007fb678687c11:   jl     0x00007fb678687b00           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
                 0x00007fb678687c17:   mov    0x18(%r12,%r14,8),%r8d
                 0x00007fb678687c1c:   nopl   0x0(%rax)
                 0x00007fb678687c20:   cmp    %edx,%r8d
                 0x00007fb678687c23:   je     0x00007fb678687acc           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007fb678687c29:   mov    $0x40,%esi
                 0x00007fb678687c2e:   nop
                 0x00007fb678687c2f:   call   0x00007fb6780c9f00           ; ImmutableOopMap {}
....................................................................................................
  31.36%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.stream.Collectors$$Lambda.0x00007fb5fc035418::accept, version 2, compile id 898 

                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                       ;   {metadata(&apos;java/lang/Integer&apos;)}
             0x00007fb678685e4a:   mov    %r11d,0xc(%rcx)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.01%     0x00007fb678685e4e:   mov    0x18(%r14),%ebp              ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@1 (line 182)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b340::apply@4
                                                                       ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
                                                                       ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                       ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   3.42%     0x00007fb678685e52:   mov    0x8(%r12,%rbp,8),%r8d        ; implicit exception: dispatches to 0x00007fb678686560
  19.28%     0x00007fb678685e57:   nopw   0x0(%rax,%rax,1)
   0.00%     0x00007fb678685e60:   cmp    $0xbb7c0,%r8d                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                       ;   {metadata(&apos;java/util/ArrayList&apos;)}
             0x00007fb678685e67:   jne    0x00007fb67868628c
   0.22%     0x00007fb678685e6d:   lea    (%r12,%rbp,8),%r10           ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@4 (line 182)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b340::apply@4
                                                                       ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
                                                                       ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                       ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.02%     0x00007fb678685e71:   mov    0x10(%r10),%r8d              ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.ArrayList::size@1 (line 253)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@4 (line 182)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b340::apply@4
                                                                       ; - java.util.Comparator::lambda$comparing$77a9974f$1@12 (line 473)
                                                                       ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                       ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                       ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   2.34%     0x00007fb678685e75:   cmp    %r8d,%r11d                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
             0x00007fb678685e78:   jl     0x00007fb678685f30           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.23%     0x00007fb678685e7e:   xchg   %ax,%ax
   0.03%     0x00007fb678685e80:   cmpb   $0x0,0x40(%r15)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.04%     0x00007fb678685e85:   jne    0x00007fb678685f38
   0.09%     0x00007fb678685e8b:   mov    %rbx,%r10                    ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.17%     0x00007fb678685e8e:   mov    %r13,%r8
   0.01%     0x00007fb678685e91:   shr    $0x3,%r8                     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.02%     0x00007fb678685e95:   mov    %r8d,0x10(%rbx)              ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.11%     0x00007fb678685e99:   mov    %r13,%r11
   0.24%     0x00007fb678685e9c:   xor    %r10,%r11
   0.03%     0x00007fb678685e9f:   shr    $0x15,%r11
   0.03%     0x00007fb678685ea3:   test   %r11,%r11
          ╭  0x00007fb678685ea6:   je     0x00007fb678685eca
   0.12%  │  0x00007fb678685ea8:   shr    $0x9,%r10
   0.27%  │  0x00007fb678685eac:   movabs $0x7fb66c03c000,%r8
   0.03%  │  0x00007fb678685eb6:   add    %r10,%r8
   0.03%  │  0x00007fb678685eb9:   nopl   0x0(%rax)
   0.12%  │  0x00007fb678685ec0:   cmpb   $0x2,(%r8)                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.17%  │  0x00007fb678685ec4:   jne    0x00007fb678685f73           ;*synchronization entry
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@-1
   0.01%  ↘  0x00007fb678685eca:   add    $0x40,%rsp
   0.03%     0x00007fb678685ece:   pop    %rbp
   0.14%     0x00007fb678685ecf:   cmp    0x450(%r15),%rsp             ;   {poll_return}
             0x00007fb678685ed6:   ja     0x00007fb678686590
   0.24%     0x00007fb678685edc:   ret                                 ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
             0x00007fb678685edd:   data16 xchg %ax,%ax
             0x00007fb678685ee0:   cmpb   $0x0,0x40(%r15)
             0x00007fb678685ee5:   jne    0x00007fb67868610a
             0x00007fb678685eeb:   mov    %rbx,%r10
             0x00007fb678685eee:   mov    %r14,%r8
             0x00007fb678685ef1:   shr    $0x3,%r8                     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
             0x00007fb678685ef5:   mov    %r8d,0x10(%rbx)              ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.stream.Collectors$1OptionalBox::accept@30 (line 899)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                       ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                       ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.00%     0x00007fb678685ef9:   mov    %r14,%r11
             0x00007fb678685efc:   xor    %r10,%r11
             0x00007fb678685eff:   shr    $0x15,%r11
             0x00007fb678685f03:   test   %r11,%r11
             0x00007fb678685f06:   je     0x00007fb678685f2a
....................................................................................................
  27.45%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.stream.Collectors$$Lambda.0x00007fb5fc035418::accept, version 2, compile id 898 

          [Disassembly]
          --------------------------------------------------------------------------------
          [Constant Pool (empty)]
          --------------------------------------------------------------------------------
          [Entry Point]
            # {method} {0x00007fb5f72763a0} &apos;accept&apos; &apos;(Ljava/lang/Object;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors$$Lambda+0x00007fb5fc035418&apos;
            # this:     rsi:rsi   = &apos;java/util/stream/Collectors$$Lambda+0x00007fb5fc035418&apos;
            # parm0:    rdx:rdx   = &apos;java/lang/Object&apos;
            # parm1:    rcx:rcx   = &apos;java/lang/Object&apos;
            #           [sp+0x50]  (sp of caller)
   0.02%    0x00007fb678685b80:   mov    0x8(%rsi),%r10d
   0.28%    0x00007fb678685b84:   movabs $0x7fb5fb000000,%r11
   0.11%    0x00007fb678685b8e:   add    %r11,%r10
   0.02%    0x00007fb678685b91:   cmp    %r10,%rax
            0x00007fb678685b94:   jne    0x00007fb6780c4080           ;   {runtime_call ic_miss_stub}
   0.00%    0x00007fb678685b9a:   xchg   %ax,%ax
   0.24%    0x00007fb678685b9c:   nopl   0x0(%rax)
          [Verified Entry Point]
   0.10%    0x00007fb678685ba0:   mov    %eax,-0x14000(%rsp)
   0.03%    0x00007fb678685ba7:   push   %rbp
   0.26%    0x00007fb678685ba8:   sub    $0x40,%rsp
   0.11%    0x00007fb678685bac:   cmpl   $0x1,0x20(%r15)
   0.01%    0x00007fb678685bb4:   jne    0x00007fb6786865a6           ;*synchronization entry
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@-1
   0.30%    0x00007fb678685bba:   mov    0xc(%rsi),%r11d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@1
   0.10%    0x00007fb678685bbe:   mov    0x10(%rsi),%r8d              ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@5
   0.02%    0x00007fb678685bc2:   mov    0x14(%rsi),%r10d             ;*getfield arg$3 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@9
   0.01%    0x00007fb678685bc6:   mov    0x8(%rdx),%ebx               ; implicit exception: dispatches to 0x00007fb678686428
   0.24%    0x00007fb678685bc9:   cmp    $0x8d850,%ebx                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;java/util/HashMap&apos;)}
            0x00007fb678685bcf:   jne    0x00007fb6786863a0
   0.10%    0x00007fb678685bd5:   mov    0x8(%r12,%r11,8),%edi        ; implicit exception: dispatches to 0x00007fb67868644c
   0.03%    0x00007fb678685bda:   mov    %rdx,%r9                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@13
   0.00%    0x00007fb678685bdd:   data16 xchg %ax,%ax
   0.24%    0x00007fb678685be0:   cmp    $0x102bc28,%edi              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fb5fc02bc28&apos;)}
            0x00007fb678685be6:   jne    0x00007fb678686197
   0.09%    0x00007fb678685bec:   mov    0x8(%rcx),%ebx               ; implicit exception: dispatches to 0x00007fb678686464
   7.67%    0x00007fb678685bef:   cmp    $0x102aad8,%ebx              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007fb678685bf5:   jne    0x00007fb6786863c8
   0.13%    0x00007fb678685bfb:   mov    %rcx,%rbx                    ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@1
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.14%    0x00007fb678685bfe:   mov    0xc(%rbx),%edx               ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@4
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.36%    0x00007fb678685c01:   cmp    $0xffffff80,%edx
            0x00007fb678685c04:   jl     0x00007fb6786862b4
   0.16%    0x00007fb678685c0a:   cmp    $0x7f,%edx                   ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
            0x00007fb678685c0d:   jle    0x00007fb678685fc5
   0.09%    0x00007fb678685c13:   mov    0x1b8(%r15),%rdi
   0.19%    0x00007fb678685c1a:   mov    %rdi,%r11
   0.09%    0x00007fb678685c1d:   add    $0x10,%r11
   0.05%    0x00007fb678685c21:   cmp    0x1c8(%r15),%r11
            0x00007fb678685c28:   jae    0x00007fb678686067           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.08%    0x00007fb678685c2e:   mov    %r11,0x1b8(%r15)
   0.13%    0x00007fb678685c35:   prefetchw 0xc0(%r11)
   0.11%    0x00007fb678685c3d:   movq   $0x1,(%rdi)
   0.05%    0x00007fb678685c44:   movl   $0x25c88,0x8(%rdi)           ;*new {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.Integer::valueOf@23 (line 1070)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.08%    0x00007fb678685c4b:   mov    %edx,0xc(%rdi)
   0.15%    0x00007fb678685c4e:   mov    0x1b8(%r15),%rcx
   0.09%    0x00007fb678685c55:   mov    %rcx,%r11
   0.04%    0x00007fb678685c58:   add    $0x10,%r11
   0.10%    0x00007fb678685c5c:   nopl   0x0(%rax)
   0.14%    0x00007fb678685c60:   cmp    0x1c8(%r15),%r11
            0x00007fb678685c67:   jae    0x00007fb67868602d           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@22 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.09%    0x00007fb678685c6d:   mov    %r11,0x1b8(%r15)
   0.06%    0x00007fb678685c74:   prefetchw 0xc0(%r11)
   0.13%    0x00007fb678685c7c:   movq   $0x1,(%rcx)
   0.13%    0x00007fb678685c83:   movl   $0x1035ad0,0x8(%rcx)         ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fb5fc035ad0&apos;)}
   0.11%    0x00007fb678685c8a:   mov    %r10d,(%rsp)
   0.05%    0x00007fb678685c8e:   mov    %r9,0x8(%rsp)
   0.07%    0x00007fb678685c93:   mov    %rbx,0x10(%rsp)
   0.16%    0x00007fb678685c98:   mov    %rdi,0x18(%rsp)              ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
                                                                      ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
                                                                      ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.09%    0x00007fb678685c9d:   mov    %r8d,0xc(%rcx)               ;*synchronization entry
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035ad0::&lt;init&gt;@-1
                                                                      ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@16
                                                                      ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.04%    0x00007fb678685ca1:   mov    0x8(%rsp),%rsi
   0.18%    0x00007fb678685ca6:   mov    0x18(%rsp),%rdx
   0.18%    0x00007fb678685cab:   call   0x00007fb67867e2c0           ; ImmutableOopMap {[0]=NarrowOop [16]=Oop }
                                                                      ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {optimized virtual_call}
   0.05%    0x00007fb678685cb0:   nopl   0x3a0(%rax,%rax,1)           ;   {other}
   0.08%    0x00007fb678685cb8:   mov    (%rsp),%r8d
   0.28%    0x00007fb678685cbc:   nopl   0x0(%rax)
   0.04%    0x00007fb678685cc0:   mov    0x8(%r12,%r8,8),%r10d        ; implicit exception: dispatches to 0x00007fb678686488
   0.09%    0x00007fb678685cc5:   cmp    $0x1034fd0,%r10d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fb5fc034fd0&apos;)}
            0x00007fb678685ccc:   jne    0x00007fb6786861c0
   0.23%    0x00007fb678685cd2:   lea    (%r12,%r8,8),%r10            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.05%    0x00007fb678685cd6:   mov    0xc(%r10),%r8d               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@1
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.04%    0x00007fb678685cda:   nopw   0x0(%rax,%rax,1)
   0.08%    0x00007fb678685ce0:   mov    0x8(%r12,%r8,8),%r11d        ; implicit exception: dispatches to 0x00007fb6786864a0
                                                                      ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.24%    0x00007fb678685ce5:   mov    0x10(%r10),%r10d             ;*getfield arg$2 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.04%    0x00007fb678685ce9:   cmp    $0x102b0f8,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fb5fc02b0f8&apos;)}
            0x00007fb678685cf0:   jne    0x00007fb6786861dc
   0.04%    0x00007fb678685cf6:   mov    0x10(%rsp),%r14              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.08%    0x00007fb678685cfb:   mov    0xc(%r14),%ebp               ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$14@1 (line 179)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b0f8::test@4
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@2 (line 528)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.26%    0x00007fb678685cff:   nop
   0.05%    0x00007fb678685d00:   cmp    $0x76c,%ebp
            0x00007fb678685d06:   jl     0x00007fb6786862dc
   0.03%    0x00007fb678685d0c:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fb6786864b4
   0.07%    0x00007fb678685d11:   cmp    $0x10346f0,%r11d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fb5fc0346f0&apos;)}
            0x00007fb678685d18:   jne    0x00007fb6786861fc
   0.23%    0x00007fb678685d1e:   mov    %rax,%rbx
   0.02%    0x00007fb678685d21:   mov    0x8(%rax),%r11d              ; implicit exception: dispatches to 0x00007fb6786864cc
   0.06%    0x00007fb678685d25:   cmp    $0xdce88,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;java/util/stream/Collectors$1OptionalBox&apos;)}
            0x00007fb678685d2c:   jne    0x00007fb6786863ec           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@1
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.11%    0x00007fb678685d32:   movzbl 0xc(%rbx),%r11d
   0.22%    0x00007fb678685d37:   test   %r11d,%r11d
   0.04%    0x00007fb678685d3a:   nopw   0x0(%rax,%rax,1)
   0.05%    0x00007fb678685d40:   je     0x00007fb678685edd           ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.10%    0x00007fb678685d46:   mov    0x10(%rbx),%r10d             ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@13 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.21%    0x00007fb678685d4a:   mov    0x14(%rbx),%ebp              ;*getfield val$op {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@9 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.03%    0x00007fb678685d4d:   mov    0x8(%r12,%rbp,8),%r8d        ; implicit exception: dispatches to 0x00007fb6786864e0
   0.04%    0x00007fb678685d52:   data16 nopw 0x0(%rax,%rax,1)
   0.09%    0x00007fb678685d5c:   data16 data16 xchg %ax,%ax
   0.19%    0x00007fb678685d60:   cmp    $0x1034288,%r8d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;java/util/function/BinaryOperator$$Lambda+0x00007fb5fc034288&apos;)}
            0x00007fb678685d67:   jne    0x00007fb678686218
   0.04%    0x00007fb678685d6d:   lea    (%r12,%rbp,8),%r11           ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.04%    0x00007fb678685d71:   mov    0xc(%r11),%ebp               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@1
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.11%    0x00007fb678685d75:   mov    0x8(%r12,%rbp,8),%r11d       ; implicit exception: dispatches to 0x00007fb6786864f8
   0.32%    0x00007fb678685d7a:   nopw   0x0(%rax,%rax,1)
   0.03%    0x00007fb678685d80:   cmp    $0x1033ff0,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;java/util/Comparator$$Lambda+0x00007fb5fc033ff0&apos;)}
            0x00007fb678685d87:   jne    0x00007fb678686234
   0.11%    0x00007fb678685d8d:   lea    (%r12,%rbp,8),%r11           ;*invokeinterface compare {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.08%    0x00007fb678685d91:   mov    0xc(%r11),%ebp               ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@1
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.14%    0x00007fb678685d95:   mov    0x8(%r12,%rbp,8),%r8d        ; implicit exception: dispatches to 0x00007fb678686510
   0.77%    0x00007fb678685d9a:   nopw   0x0(%rax,%rax,1)
   0.01%    0x00007fb678685da0:   cmp    $0x102b340,%r8d              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fb5fc02b340&apos;)}
            0x00007fb678685da7:   jne    0x00007fb678686250
   0.25%    0x00007fb678685dad:   lea    (%r12,%rbp,8),%r8            ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.12%    0x00007fb678685db1:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007fb678686528
   0.67%    0x00007fb678685db6:   data16 nopw 0x0(%rax,%rax,1)
   0.02%    0x00007fb678685dc0:   cmp    $0x102aad8,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
            0x00007fb678685dc7:   jne    0x00007fb678686404
   0.23%    0x00007fb678685dcd:   lea    (%r12,%r10,8),%r13           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b340::apply@1
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.09%    0x00007fb678685dd1:   mov    0x18(%r13),%ebp              ;*getfield authors {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getAuthors@1 (line 51)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@1 (line 182)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.34%    0x00007fb678685dd5:   mov    0x8(%r12,%rbp,8),%r9d        ; implicit exception: dispatches to 0x00007fb67868654c
   2.24%    0x00007fb678685dda:   nopw   0x0(%rax,%rax,1)
   0.09%    0x00007fb678685de0:   cmp    $0xbb7c0,%r9d                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
                                                                      ;   {metadata(&apos;java/util/ArrayList&apos;)}
            0x00007fb678685de7:   jne    0x00007fb67868626c
   0.25%    0x00007fb678685ded:   lea    (%r12,%rbp,8),%r11           ;*invokeinterface size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@4 (line 182)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.02%    0x00007fb678685df1:   mov    0x10(%r11),%r11d             ;*getfield size {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.ArrayList::size@1 (line 253)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsWithTheMostAuthorsPerYear$15@4 (line 182)
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02b340::apply@4
                                                                      ; - java.util.Comparator::lambda$comparing$77a9974f$1@2 (line 473)
                                                                      ; - java.util.Comparator$$Lambda/0x00007fb5fc033ff0::compare@6
                                                                      ; - java.util.function.BinaryOperator::lambda$maxBy$1@3 (line 74)
                                                                      ; - java.util.function.BinaryOperator$$Lambda/0x00007fb5fc034288::apply@6
                                                                      ; - java.util.stream.Collectors$1OptionalBox::accept@17 (line 896)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc0346f0::accept@5
                                                                      ; - java.util.stream.Collectors::lambda$filtering$16@13 (line 529)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc034fd0::accept@10
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
   0.48%    0x00007fb678685df5:   cmp    $0xffffff80,%r11d
            0x00007fb678685df9:   jl     0x00007fb6786862f8
   0.35%    0x00007fb678685dff:   nop
   0.05%    0x00007fb678685e00:   cmp    $0x7f,%r11d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fb5fc02bc28::apply@7
                                                                      ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fb5fc035418::accept@17
            0x00007fb678685e04:   jle    0x00007fb678685ff8
            0x00007fb678685e0a:   mov    0x1b8(%r15),%rcx
            0x00007fb678685e11:   mov    %rcx,%r9
            0x00007fb678685e14:   add    $0x10,%r9
            0x00007fb678685e18:   nopl   0x0(%rax,%rax,1)
            0x00007fb678685e20:   cmp    0x1c8(%r15),%r9
            0x00007fb678685e27:   jae    0x00007fb6786860b7           ;*putfield value {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  23.42%  <total for region 3>

....[Hottest Regions]...............................................................................
  31.36%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 899 
  27.45%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007fb5fc035418::accept, version 2, compile id 898 
  23.42%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007fb5fc035418::accept, version 2, compile id 898 
   7.59%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 886 
   1.83%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 886 
   1.75%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 846 
   1.69%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007fb5fc035418::accept, version 2, compile id 898 
   1.47%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 886 
   0.39%              kernel  [unknown] 
   0.11%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%           libjvm.so  G1CardSet::occupied 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   2.38%  <...other 633 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  52.57%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007fb5fc035418::accept, version 2, compile id 898 
  31.36%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 899 
  10.91%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 886 
   2.23%              kernel  [unknown] 
   1.75%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 846 
   0.07%                      <unknown> 
   0.04%         c2, level 4  java.util.stream.ForEachOps$ForEachOp::evaluateSequential, version 2, compile id 970 
   0.04%           libjvm.so  G1CardSet::occupied 
   0.04%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007fb5fc036838::accept, version 2, compile id 967 
   0.03%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$55, version 2, compile id 1075 
   0.02%           libjvm.so  Node::dominates 
   0.02%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.02%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.02%        libc-2.31.so  __vfprintf_internal 
   0.02%           libjvm.so  xmlStream::write_text 
   0.02%    perf-1954186.map  [unknown] 
   0.02%        libc-2.31.so  _IO_default_xsputn 
   0.02%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 996 
   0.02%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.76%  <...other 235 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  96.84%         c2, level 4
   2.23%              kernel
   0.58%           libjvm.so
   0.14%        libc-2.31.so
   0.07%                    
   0.04%  libpthread-2.31.so
   0.02%         interpreter
   0.02%          ld-2.31.so
   0.02%    perf-1954186.map
   0.01%              [vdso]
   0.01%         c1, level 1
   0.01%         c1, level 3
   0.00%      hsdis-amd64.so
   0.00%    Unknown, level 0
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_years_statistics

# Run progress: 78.57% complete, ETA 00:05:41
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 7.036 ms/op
# Warmup Iteration   2: 6.767 ms/op
# Warmup Iteration   3: 6.672 ms/op
# Warmup Iteration   4: 6.705 ms/op
# Warmup Iteration   5: 6.685 ms/op
Iteration   1: 6.627 ms/op
Iteration   2: 6.764 ms/op
Iteration   3: 6.663 ms/op
Iteration   4: 6.749 ms/op
Iteration   5: 6.794 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_years_statistics":
  6.720 ±(99.9%) 0.274 ms/op [Average]
  (min, avg, max) = (6.627, 6.720, 6.794), stdev = 0.071
  CI (99.9%): [6.446, 6.993] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.publications_years_statistics:asm":
PrintAssembly processed: 173558 total address lines.
Perf output processed (skipped 58.090 seconds):
 Column 1: cycles (50695 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 777 

                 0x00007f076866cbc0:   test   %ecx,%ecx
                 0x00007f076866cbc2:   je     0x00007f076866d1e5           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@49 (line 1703)
                 0x00007f076866cbc8:   mov    0xc(%r12,%rcx,8),%r9d        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
                 0x00007f076866cbcd:   mov    %r9d,0x10(%rsi)              ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
                 0x00007f076866cbd1:   jmp    0x00007f076866cb49
                 0x00007f076866cbd6:   data16 nopw 0x0(%rax,%rax,1)        ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.00%      ↗  0x00007f076866cbe0:   xor    %edi,%edi
   1.03%      │  0x00007f076866cbe2:   mov    %eax,%edx
   0.52%  ╭   │  0x00007f076866cbe4:   jmp    0x00007f076866cbec           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │   │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.17%  │  ↗│  0x00007f076866cbe6:   lea    (%r12,%rbp,8),%rdi           ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   0.65%  │  ││  0x00007f076866cbea:   mov    %eax,%edx                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.11%  ↘  ││  0x00007f076866cbec:   test   %rdi,%rdi
           ╭ ││  0x00007f076866cbef:   je     0x00007f076866cd8f           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.05%   │ ││  0x00007f076866cbf5:   mov    0x10(%rdi),%ebp              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  38.74%   │ ││  0x00007f076866cbf8:   nopl   0x0(%rax,%rax,1)
   0.23%   │ ││  0x00007f076866cc00:   cmp    $0x35bb40,%r10d              ;   {metadata(&apos;java/util/stream/ReferencePipeline$2$1&apos;)}
           │ ││  0x00007f076866cc07:   jne    0x00007f076866d248
   0.03%   │ ││  0x00007f076866cc0d:   mov    %r13,0x30(%rsp)
   0.00%   │ ││  0x00007f076866cc12:   mov    %rsi,0x28(%rsp)
   0.35%   │ ││  0x00007f076866cc17:   mov    %rdi,0x20(%rsp)
   0.18%   │ ││  0x00007f076866cc1c:   mov    %edx,0x18(%rsp)
   0.02%   │ ││  0x00007f076866cc20:   mov    %r11d,0x14(%rsp)
           │ ││  0x00007f076866cc25:   mov    %ebx,0x10(%rsp)
   0.37%   │ ││  0x00007f076866cc29:   mov    %r9d,0xc(%rsp)
   0.20%   │ ││  0x00007f076866cc2e:   mov    %ecx,0x44(%rsp)
   0.01%   │ ││  0x00007f076866cc32:   mov    %r14d,0x40(%rsp)
   0.00%   │ ││  0x00007f076866cc37:   mov    %r10d,0x8(%rsp)
   0.38%   │ ││  0x00007f076866cc3c:   mov    %r8,(%rsp)
   0.21%   │ ││  0x00007f076866cc40:   mov    %r8,%r10                     ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%   │ ││  0x00007f076866cc43:   mov    %r10,0x38(%rsp)
   0.00%   │ ││  0x00007f076866cc48:   mov    0x10(%r10),%r11d             ;*getfield this$1 {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@1 (line 178)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.36%   │ ││  0x00007f076866cc4c:   mov    0x34(%r12,%r11,8),%r11d      ; implicit exception: dispatches to 0x00007f076866d63c
           │ ││                                                            ;*getfield val$predicate {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@4 (line 178)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.25%   │ ││  0x00007f076866cc51:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f076866d650
   0.03%   │ ││  0x00007f076866cc56:   data16 nopw 0x0(%rax,%rax,1)
           │ ││  0x00007f076866cc60:   cmp    $0x102b0f8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f06ec02b0f8&apos;)}
           │ ││  0x00007f076866cc67:   jne    0x00007f076866d27c           ;*invokeinterface test {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.31%   │ ││  0x00007f076866cc6d:   mov    0x8(%r12,%rbp,8),%r10d       ; implicit exception: dispatches to 0x00007f076866d664
  38.40%   │ ││  0x00007f076866cc72:   data16 nopw 0x0(%rax,%rax,1)
   0.01%   │ ││  0x00007f076866cc7c:   data16 data16 xchg %ax,%ax
           │ ││  0x00007f076866cc80:   cmp    $0x102aad8,%r10d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
           │ ││  0x00007f076866cc87:   jne    0x00007f076866d5ac
   0.49%   │ ││  0x00007f076866cc8d:   lea    (%r12,%rbp,8),%r10           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f06ec02b0f8::test@1
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.15%   │ ││  0x00007f076866cc91:   mov    %r10,0x48(%rsp)
   0.01%   │ ││  0x00007f076866cc96:   mov    0xc(%r10),%ecx               ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsYearsStatistics$11@1 (line 157)
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f06ec02b0f8::test@4
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.83%   │ ││  0x00007f076866cc9a:   nopw   0x0(%rax,%rax,1)
   0.02%   │ ││  0x00007f076866cca0:   cmp    $0x76c,%ecx
           │ ││  0x00007f076866cca6:   jl     0x00007f076866d310           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics::lambda$publicationsYearsStatistics$11@7 (line 157)
           │ ││                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007f06ec02b0f8::test@4
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@8 (line 178)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.45%   │ ││  0x00007f076866ccac:   mov    0x38(%rsp),%r10
   0.02%   │ ││  0x00007f076866ccb1:   mov    0xc(%r10),%r10d              ;*getfield downstream {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@17 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ ││  0x00007f076866ccb5:   mov    0x8(%r12,%r10,8),%r11d       ; implicit exception: dispatches to 0x00007f076866d688
   0.05%   │ ││  0x00007f076866ccba:   nopw   0x0(%rax,%rax,1)
   0.54%   │ ││  0x00007f076866ccc0:   cmp    $0x358d50,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
           │ ││  0x00007f076866ccc7:   jne    0x00007f076866d2a8
   0.01%   │ ││  0x00007f076866cccd:   shl    $0x3,%r10                    ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││  0x00007f076866ccd1:   mov    0xc(%r10),%r9d               ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%   │ ││  0x00007f076866ccd5:   mov    0x14(%r10),%r11d             ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.56%   │ ││  0x00007f076866ccd9:   nopl   0x0(%rax)
   0.01%   │ ││  0x00007f076866cce0:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007f076866d6a0
   0.00%   │ ││  0x00007f076866cce5:   cmp    $0x1034208,%r10d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007f06ec034208&apos;)}
           │ ││  0x00007f076866ccec:   jne    0x00007f076866cdec
   0.02%   │ ││  0x00007f076866ccf2:   lea    (%r12,%r11,8),%r10           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.51%   │ ││  0x00007f076866ccf6:   mov    0xc(%r10),%r10d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f06ec034208::accept@1
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ ││  0x00007f076866ccfa:   nopw   0x0(%rax,%rax,1)
           │ ││  0x00007f076866cd00:   mov    0x8(%r12,%r9,8),%r8d         ; implicit exception: dispatches to 0x00007f076866d6b8
   0.04%   │ ││  0x00007f076866cd05:   cmp    $0xdcb30,%r8d                ;   {metadata(&apos;java/util/IntSummaryStatistics&apos;)}
           │ ││  0x00007f076866cd0c:   jne    0x00007f076866d604
   0.48%   │ ││  0x00007f076866cd12:   mov    0x8(%r12,%r10,8),%r8d        ; implicit exception: dispatches to 0x00007f076866d6ec
   0.01%   │ ││  0x00007f076866cd17:   lea    (%r12,%r9,8),%r11            ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f06ec034208::accept@5
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
           │ ││  0x00007f076866cd1b:   nopl   0x0(%rax,%rax,1)
   0.03%   │ ││  0x00007f076866cd20:   cmp    $0x102b340,%r8d              ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007f06ec02b340&apos;)}
           │ ││  0x00007f076866cd27:   jne    0x00007f076866d2d8           ;*invokeinterface applyAsInt {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.Collectors::lambda$summarizingInt$70@3 (line 1821)
           │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f06ec034208::accept@9
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.48%   │ ││  0x00007f076866cd2d:   incq   0x10(%r11)                   ;*putfield count {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.IntSummaryStatistics::accept@7 (line 130)
           │ ││                                                            ; - java.util.stream.Collectors::lambda$summarizingInt$70@8 (line 1821)
           │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f06ec034208::accept@9
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.04%   │ ││  0x00007f076866cd31:   mov    0x20(%r11),%r8d
   0.52%   │ ││  0x00007f076866cd35:   mov    0xc(%r11),%r10d
   0.01%   │ ││  0x00007f076866cd39:   cmp    %ecx,%r8d
           │ ││  0x00007f076866cd3c:   cmovl  %ecx,%r8d
   0.03%   │ ││  0x00007f076866cd40:   mov    %r8d,0x20(%r11)              ;*putfield max {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.IntSummaryStatistics::accept@42 (line 133)
           │ ││                                                            ; - java.util.stream.Collectors::lambda$summarizingInt$70@8 (line 1821)
           │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f06ec034208::accept@9
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.54%   │ ││  0x00007f076866cd44:   cmp    %ecx,%r10d
   0.01%   │ ││  0x00007f076866cd47:   cmovg  %ecx,%r10d
           │ ││  0x00007f076866cd4b:   mov    %r10d,0xc(%r11)              ;*putfield min {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.IntSummaryStatistics::accept@30 (line 132)
           │ ││                                                            ; - java.util.stream.Collectors::lambda$summarizingInt$70@8 (line 1821)
           │ ││                                                            ; - java.util.stream.Collectors$$Lambda/0x00007f06ec034208::accept@9
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.03%   │ ││  0x00007f076866cd4f:   movslq %ecx,%r10
   0.55%   │ ││  0x00007f076866cd52:   add    %r10,0x18(%r11)              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
           │ ││                                                            ; - java.util.stream.ReferencePipeline$2$1::accept@21 (line 179)
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%   │ ││  0x00007f076866cd56:   mov    0x20(%rsp),%r10
   0.03%   │ ││  0x00007f076866cd5b:   mov    0x18(%r10),%ebp              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   1.72%   │ ││  0x00007f076866cd5f:   mov    0x18(%rsp),%eax
   0.01%   │ ││  0x00007f076866cd63:   mov    (%rsp),%r8
   0.00%   │ ││  0x00007f076866cd67:   mov    0x8(%rsp),%r10d
   0.02%   │ ││  0x00007f076866cd6c:   mov    0x40(%rsp),%r14d
   0.57%   │ ││  0x00007f076866cd71:   mov    0x44(%rsp),%ecx
   0.01%   │ ││  0x00007f076866cd75:   mov    0xc(%rsp),%r9d
           │ ││  0x00007f076866cd7a:   mov    0x10(%rsp),%ebx
   0.03%   │ ││  0x00007f076866cd7e:   mov    0x14(%rsp),%r11d
   0.51%   │ ││  0x00007f076866cd83:   mov    0x28(%rsp),%rsi
   0.00%   │ ││  0x00007f076866cd88:   mov    0x30(%rsp),%r13
           │╭││  0x00007f076866cd8d:   jmp    0x00007f076866cda0
   1.53%   ↘│││  0x00007f076866cd8f:   mov    %edx,%eax
            │││  0x00007f076866cd91:   inc    %eax                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
            │││  0x00007f076866cd93:   cmp    %r11d,%edx
            │││  0x00007f076866cd96:   jae    0x00007f076866d218
            │││  0x00007f076866cd9c:   mov    0x10(%rsi,%rdx,4),%ebp       ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   1.94%    ↘││  0x00007f076866cda0:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r8=Oop rcx=NarrowOop rsi=Oop rbp=NarrowOop r13=Oop r14=NarrowOop }
             ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.55%     ││  0x00007f076866cda7:   test   %eax,(%rdi)                  ;   {poll}
   0.18%     ││  0x00007f076866cda9:   test   %ebp,%ebp
             ╰│  0x00007f076866cdab:   jne    0x00007f076866cbe6           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.09%      │  0x00007f076866cdb1:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r8=Oop rcx=NarrowOop rsi=Oop r13=Oop r14=NarrowOop }
              │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   1.15%      │  0x00007f076866cdb8:   test   %eax,(%rdi)                  ;   {poll}
   0.59%      │  0x00007f076866cdba:   nopw   0x0(%rax,%rax,1)
   0.01%      │  0x00007f076866cdc0:   cmp    %r9d,%eax
              ╰  0x00007f076866cdc3:   jl     0x00007f076866cbe0           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
                 0x00007f076866cdc9:   mov    0x18(%r12,%r14,8),%r8d
                 0x00007f076866cdce:   cmp    %ebx,%r8d
                 0x00007f076866cdd1:   je     0x00007f076866cba5           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007f076866cdd7:   mov    $0x40,%esi
                 0x00007f076866cddc:   data16 xchg %ax,%ax
                 0x00007f076866cddf:   call   0x00007f07680c9f00           ; ImmutableOopMap {}
                                                                           ;*new {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  98.06%  <total for region 1>

....[Hottest Regions]...............................................................................
  98.06%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 777 
   0.41%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.07%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.02%              kernel  [unknown] 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%              kernel  [unknown] 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.01%              kernel  [unknown] 
   0.97%  <...other 304 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  98.06%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 5, compile id 777 
   1.59%              kernel  [unknown] 
   0.03%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.03%                      <unknown> 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%           libjvm.so  ElfSymbolTable::lookup 
   0.01%           libjvm.so  StatSamplerTask::task 
   0.01%        libc-2.31.so  __vfprintf_internal 
   0.01%           libjvm.so  xmlStream::write_text 
   0.01%          ld-2.31.so  __tls_get_addr 
   0.01%  libpthread-2.31.so  __libc_write 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  WatcherThread::sleep 
   0.01%           libjvm.so  CompilerOracle::has_option_value<bool> 
   0.01%           libjvm.so  fileStream::write 
   0.01%           libjvm.so  VMError::is_error_reported 
   0.01%           libjvm.so  PerfLongVariant::sample 
   0.01%         interpreter  invokevirtual  182 invokevirtual  
   0.01%    perf-1954250.map  [unknown] 
   0.00%         c2, level 4  com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark::publications_years_statistics, version 2, compile id 866 
   0.13%  <...other 57 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  98.07%         c2, level 4
   1.59%              kernel
   0.14%           libjvm.so
   0.07%        libc-2.31.so
   0.05%  libpthread-2.31.so
   0.03%         interpreter
   0.03%                    
   0.01%          ld-2.31.so
   0.01%              [vdso]
   0.01%    perf-1954250.map
   0.00%      hsdis-amd64.so
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.year_with_the_most_publications

# Run progress: 85.71% complete, ETA 00:03:47
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 9.206 ms/op
# Warmup Iteration   2: 7.695 ms/op
# Warmup Iteration   3: 7.659 ms/op
# Warmup Iteration   4: 7.588 ms/op
# Warmup Iteration   5: 7.750 ms/op
Iteration   1: 7.551 ms/op
Iteration   2: 7.602 ms/op
Iteration   3: 7.642 ms/op
Iteration   4: 7.562 ms/op
Iteration   5: 7.604 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.year_with_the_most_publications":
  7.592 ±(99.9%) 0.141 ms/op [Average]
  (min, avg, max) = (7.551, 7.592, 7.642), stdev = 0.037
  CI (99.9%): [7.451, 7.734] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.year_with_the_most_publications:asm":
PrintAssembly processed: 188490 total address lines.
Perf output processed (skipped 57.878 seconds):
 Column 1: cycles (50926 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 822 

                                                                      ; - java.util.ArrayList::add@20 (line 496)
                                                                      ; - java.util.stream.Collectors$$Lambda/0x00007fc51c060a30::accept@8
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
                                                                      ;   {other}
            0x00007fc5946695f8:   mov    %rax,%rbx
            0x00007fc5946695fb:   nopl   0x0(%rax,%rax,1)
            0x00007fc594669600:   jmp    0x00007fc594669839
            0x00007fc594669605:   data16 data16 nopw 0x0(%rax,%rax,1) ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.84%    0x00007fc594669610:   mov    %r9d,0x58(%rsp)
            0x00007fc594669615:   xor    %r10d,%r10d
   0.39%    0x00007fc594669618:   mov    %r10,0x18(%rsp)              ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.24%    0x00007fc59466961d:   mov    0x18(%rsp),%r10
   2.40%    0x00007fc594669622:   test   %r10,%r10
            0x00007fc594669625:   je     0x00007fc594669949           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.82%    0x00007fc59466962b:   mov    0x10(%r10),%r10d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  34.58%    0x00007fc59466962f:   mov    %r10d,0x2c(%rsp)
   0.95%    0x00007fc594669634:   mov    0x64(%rsp),%r11d
   0.02%    0x00007fc594669639:   nopl   0x0(%rax)
            0x00007fc594669640:   cmp    $0x358d50,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
            0x00007fc594669647:   jne    0x00007fc594669ee8
   0.00%    0x00007fc59466964d:   mov    0x70(%rsp),%r10              ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.54%    0x00007fc594669652:   mov    %r10,0x10(%rsp)
   0.02%    0x00007fc594669657:   mov    0xc(%r10),%r11d              ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.00%    0x00007fc59466965b:   mov    0x14(%r10),%r9d              ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007fc59466965f:   nop
   0.44%    0x00007fc594669660:   mov    0x8(%r12,%r9,8),%r10d        ; implicit exception: dispatches to 0x00007fc59466a238
                                                                      ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.02%    0x00007fc594669665:   mov    0x2c(%rsp),%r8d
   0.00%    0x00007fc59466966a:   shl    $0x3,%r8                     ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.01%    0x00007fc59466966e:   mov    %r8,0x20(%rsp)
   0.93%    0x00007fc594669673:   nopw   0x0(%rax,%rax,1)
   0.02%    0x00007fc59466967c:   data16 data16 xchg %ax,%ax
            0x00007fc594669680:   cmp    $0x1060a30,%r10d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fc51c060a30&apos;)}
            0x00007fc594669687:   jne    0x00007fc5946699e0           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                      ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                      ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
            0x00007fc59466968d:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fc59466a250
            0x00007fc594669692:   data16 nopw 0x0(%rax,%rax,1)
            0x00007fc59466969c:   data16 data16 xchg %ax,%ax
            0x00007fc5946696a0:   cmp    $0xbb7c0,%r10d               ;   {metadata(&apos;java/util/ArrayList&apos;)}
            0x00007fc5946696a7:   jne    0x00007fc59466a20f
            0x00007fc5946696ad:   lea    (%r12,%r11,8),%r10           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
....................................................................................................
  42.22%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 804 

           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007fc51b0dffd8} &apos;lambda$groupingBy$53&apos; &apos;(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors&apos;
             # parm0:    rsi:rsi   = &apos;java/util/function/Function&apos;
             # parm1:    rdx:rdx   = &apos;java/util/function/Supplier&apos;
             # parm2:    rcx:rcx   = &apos;java/util/function/BiConsumer&apos;
             # parm3:    r8:r8     = &apos;java/util/Map&apos;
             # parm4:    r9:r9     = &apos;java/lang/Object&apos;
             #           [sp+0x50]  (sp of caller)
   0.01%     0x00007fc594663c00:   mov    %eax,-0x14000(%rsp)
   0.55%     0x00007fc594663c07:   push   %rbp
   0.01%     0x00007fc594663c08:   sub    $0x40,%rsp
             0x00007fc594663c0c:   cmpl   $0x1,0x20(%r15)
   0.47%     0x00007fc594663c14:   jne    0x00007fc594664019           ;*synchronization entry
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@-1 (line 1105)
   0.02%     0x00007fc594663c1a:   mov    %rsi,%rbx
             0x00007fc594663c1d:   mov    %r8,0x10(%rsp)
             0x00007fc594663c22:   mov    %rcx,0x8(%rsp)
   0.49%     0x00007fc594663c27:   mov    %rdx,(%rsp)
   0.02%     0x00007fc594663c2b:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007fc594663f4c
             0x00007fc594663c2f:   cmp    $0x102b0f8,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007fc51c02b0f8&apos;)}
             0x00007fc594663c36:   jne    0x00007fc594663e19
             0x00007fc594663c3c:   nopl   0x0(%rax)
   0.49%     0x00007fc594663c40:   mov    0x8(%r9),%r11d               ; implicit exception: dispatches to 0x00007fc594663f64
  14.24%     0x00007fc594663c44:   cmp    $0x102aad8,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
             0x00007fc594663c4b:   jne    0x00007fc594663f08
   0.24%     0x00007fc594663c51:   mov    %r9,%r10                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@1
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
             0x00007fc594663c54:   mov    %r10,0x18(%rsp)              ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.26%     0x00007fc594663c59:   mov    0xc(%r10),%r10d              ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@4
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.46%     0x00007fc594663c5d:   data16 xchg %ax,%ax
   0.05%     0x00007fc594663c60:   cmp    $0xffffff80,%r10d
             0x00007fc594663c64:   jl     0x00007fc594663ec8
   0.21%     0x00007fc594663c6a:   cmp    $0x7f,%r10d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          ╭  0x00007fc594663c6e:   jle    0x00007fc594663d91
   0.43%  │  0x00007fc594663c74:   mov    0x1b8(%r15),%rbp
   0.01%  │  0x00007fc594663c7b:   mov    %rbp,%r11
   0.01%  │  0x00007fc594663c7e:   add    $0x10,%r11
   0.05%  │  0x00007fc594663c82:   cmp    0x1c8(%r15),%r11
          │  0x00007fc594663c89:   jae    0x00007fc594663dec
   0.38%  │  0x00007fc594663c8f:   mov    %r11,0x1b8(%r15)
   0.01%  │  0x00007fc594663c96:   prefetchw 0xc0(%r11)
   0.03%  │  0x00007fc594663c9e:   movq   $0x1,0x0(%rbp)
   0.06%  │  0x00007fc594663ca6:   movl   $0x25c88,0x8(%rbp)           ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::valueOf@23 (line 1070)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.42%  │  0x00007fc594663cad:   mov    %r10d,0xc(%rbp)
   0.01%  │  0x00007fc594663cb1:   mov    0x1b8(%r15),%rcx
   0.02%  │  0x00007fc594663cb8:   mov    %rcx,%r10
   0.05%  │  0x00007fc594663cbb:   add    $0x10,%r10
   0.45%  │  0x00007fc594663cbf:   nop
   0.01%  │  0x00007fc594663cc0:   cmp    0x1c8(%r15),%r10
          │  0x00007fc594663cc7:   jae    0x00007fc594663dcd
   0.01%  │  0x00007fc594663ccd:   mov    %r10,0x1b8(%r15)
   0.07%  │  0x00007fc594663cd4:   prefetchw 0xc0(%r10)
   0.45%  │  0x00007fc594663cdc:   movq   $0x1,(%rcx)
   0.01%  │  0x00007fc594663ce3:   movl   $0x1035868,0x8(%rcx)         ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fc51c035868&apos;)}
   0.01%  │  0x00007fc594663cea:   mov    (%rsp),%r10
   0.07%  │  0x00007fc594663cee:   mov    %r10,%r11
   0.41%  │  0x00007fc594663cf1:   shr    $0x3,%r11                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.01%  │  0x00007fc594663cf5:   mov    %r11d,0xc(%rcx)              ;*synchronization entry
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007fc51c035868::&lt;init&gt;@-1
          │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@16
          │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
   0.01%  │  0x00007fc594663cf9:   mov    0x10(%rsp),%r10
   0.08%  │  0x00007fc594663cfe:   xchg   %ax,%ax
   0.44%  │  0x00007fc594663d00:   mov    0x8(%r10),%r11d              ; implicit exception: dispatches to 0x00007fc594663f88
   0.02%  │  0x00007fc594663d04:   cmp    $0x8d850,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata(&apos;java/util/HashMap&apos;)}
          │  0x00007fc594663d0b:   jne    0x00007fc594663e44
   0.01%  │  0x00007fc594663d11:   mov    %r10,%rsi                    ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.06%  │  0x00007fc594663d14:   mov    %rbp,%rdx
   0.42%  │  0x00007fc594663d17:   call   0x00007fc594662d80           ; ImmutableOopMap {[8]=Oop [24]=Oop }
          │                                                            ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                            ;   {optimized virtual_call}
   0.04%  │  0x00007fc594663d1c:   nopl   0x30c(%rax,%rax,1)           ;   {other}
   0.31%  │  0x00007fc594663d24:   mov    0x8(%rsp),%r10
   0.17%  │  0x00007fc594663d29:   mov    0x8(%r10),%r11d              ; implicit exception: dispatches to 0x00007fc594663fa0
   0.03%  │  0x00007fc594663d2d:   cmp    $0x1034420,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fc51c034420&apos;)}
          │  0x00007fc594663d34:   jne    0x00007fc594663e74           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.32%  │  0x00007fc594663d3a:   mov    0xc(%r10),%r11d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007fc51c034420::accept@1
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.11%  │  0x00007fc594663d3e:   xchg   %ax,%ax
   0.01%  │  0x00007fc594663d40:   mov    0x8(%rax),%r10d              ; implicit exception: dispatches to 0x00007fc594663fb8
   0.06%  │  0x00007fc594663d44:   cmp    $0x2a80,%r10d                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata({type array long})}
          │  0x00007fc594663d4b:   jne    0x00007fc594663f2c           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007fc51c034420::accept@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.37%  │  0x00007fc594663d51:   mov    0xc(%rax),%r10d
   0.14%  │  0x00007fc594663d55:   test   %r10d,%r10d
          │  0x00007fc594663d58:   jbe    0x00007fc594663e90
   0.01%  │  0x00007fc594663d5e:   xchg   %ax,%ax
   0.04%  │  0x00007fc594663d60:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007fc594663fd4
          │                                                            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.33%  │  0x00007fc594663d65:   mov    0x10(%rax),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@3 (line 662)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007fc51c034420::accept@9
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.13%  │  0x00007fc594663d69:   cmp    $0x1033ff0,%r10d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007fc51c033ff0&apos;)}
          │  0x00007fc594663d70:   jne    0x00007fc594663eac
   0.01%  │  0x00007fc594663d76:   add    $0x1,%rbp                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.05%  │  0x00007fc594663d7a:   mov    %rbp,0x10(%rax)              ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.29%  │  0x00007fc594663d7e:   add    $0x40,%rsp
   0.13%  │  0x00007fc594663d82:   pop    %rbp
   0.01%  │  0x00007fc594663d83:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007fc594663d8a:   ja     0x00007fc594664003
   0.39%  │  0x00007fc594663d90:   ret    
          ↘  0x00007fc594663d91:   lea    0x80(%r10),%ebp
             0x00007fc594663d98:   nopl   0x0(%rax,%rax,1)
             0x00007fc594663da0:   cmp    $0x100,%ebp
             0x00007fc594663da6:   jae    0x00007fc594663ef0
             0x00007fc594663dac:   movslq %r10d,%r10
             0x00007fc594663daf:   movabs $0x7ffec4a80,%r11            ;   {oop(a &apos;java/lang/Integer&apos;[256] {0x00000007ffec4a80})}
             0x00007fc594663db9:   mov    0x210(%r11,%r10,4),%r11d     ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007fc51c02b0f8::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
             0x00007fc594663dc1:   lea    (%r12,%r11,8),%r10
....................................................................................................
  24.48%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 822 

                                                                        ; - java.util.ArrayList::add@14 (line 484)
                                                                        ; - java.util.ArrayList::add@20 (line 496)
                                                                        ; - java.util.stream.Collectors$$Lambda/0x00007fc51c060a30::accept@8
                                                                        ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
              0x00007fc59466992b:   mov    0x30(%rsp),%r10
              0x00007fc594669930:   mov    0x48(%rsp),%r11d
              0x00007fc594669935:   mov    %r11d,0x10(%r10)             ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.48%      0x00007fc594669939:   mov    0x18(%rsp),%r10
   0.02%      0x00007fc59466993e:   mov    0x18(%r10),%r11d             ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   0.05%      0x00007fc594669942:   mov    0x58(%rsp),%r9d
   0.49%  ╭   0x00007fc594669947:   jmp    0x00007fc594669977
   0.07%  │   0x00007fc594669949:   mov    0x58(%rsp),%r9d
   0.40%  │   0x00007fc59466994e:   inc    %r9d                         ;*iinc {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.15%  │   0x00007fc594669951:   mov    0x58(%rsp),%r10d
   0.80%  │   0x00007fc594669956:   data16 nopw 0x0(%rax,%rax,1)
   0.03%  │   0x00007fc594669960:   cmp    0x80(%rsp),%r10d
          │   0x00007fc594669968:   jae    0x00007fc594669ed0
   0.36%  │   0x00007fc59466996e:   mov    (%rsp),%r11
   0.12%  │   0x00007fc594669972:   mov    0x10(%r11,%r10,4),%r11d      ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
          │                                                             ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   1.56%  ↘   0x00007fc594669977:   mov    0x458(%r15),%r10             ; ImmutableOopMap {r11=NarrowOop [0]=Oop [8]=Oop [112]=Oop [120]=NarrowOop [124]=NarrowOop }
                                                                        ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.01%      0x00007fc59466997e:   test   %eax,(%r10)                  ;   {poll}
   0.55%      0x00007fc594669981:   test   %r11d,%r11d
           ╭  0x00007fc594669984:   je     0x00007fc594669999           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   1.98%   │  0x00007fc594669986:   lea    (%r12,%r11,8),%r10           ;*aload {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   1.71%   │  0x00007fc59466998a:   mov    %r10,0x18(%rsp)
   2.03%   │  0x00007fc59466998f:   mov    %r9d,0x58(%rsp)
   0.03%   │  0x00007fc594669994:   jmp    0x00007fc59466961d           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.80%   ↘  0x00007fc594669999:   mov    0x458(%r15),%r10             ; ImmutableOopMap {[0]=Oop [8]=Oop [112]=Oop [120]=NarrowOop [124]=NarrowOop }
                                                                        ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
                                                                        ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.66%      0x00007fc5946699a0:   test   %eax,(%r10)                  ;   {poll}
   0.48%      0x00007fc5946699a3:   cmp    0x5c(%rsp),%r9d
              0x00007fc5946699a8:   jl     0x00007fc594669610           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
              0x00007fc5946699ae:   mov    0x78(%rsp),%r11d
              0x00007fc5946699b3:   mov    0x18(%r12,%r11,8),%r10d
              0x00007fc5946699b8:   nopl   0x0(%rax,%rax,1)
              0x00007fc5946699c0:   cmp    0x60(%rsp),%r10d
              0x00007fc5946699c5:   je     0x00007fc5946695a5           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                        ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
              0x00007fc5946699cb:   mov    $0x40,%esi
              0x00007fc5946699d0:   data16 xchg %ax,%ax
....................................................................................................
  12.79%  <total for region 3>

....[Hottest Regions]...............................................................................
  42.22%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 822 
  24.48%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 804 
  12.79%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 822 
   8.30%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 817 
   3.17%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 822 
   2.49%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 801 
   2.06%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 817 
   1.92%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 817 
   0.79%              kernel  [unknown] 
   0.09%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::occupied 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.04%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   1.32%  <...other 351 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  58.18%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 822 
  24.48%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 2, compile id 804 
  12.28%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 817 
   2.49%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 801 
   1.94%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::occupied 
   0.04%                      <unknown> 
   0.03%           libjvm.so  ElfSymbolTable::lookup 
   0.02%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 873 
   0.02%  libpthread-2.31.so  pthread_cond_timedwait@@GLIBC_2.3.2 
   0.02%           libjvm.so  G1ConcurrentRefine::RemSetSamplingClosure::do_heap_region 
   0.02%        libc-2.31.so  _IO_fwrite 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.01%         c2, level 4  java.util.HashMap::resize, version 3, compile id 843 
   0.01%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.01%           libjvm.so  G1MergeHeapRootsTask::G1MergeCardSetClosure::do_heap_region 
   0.01%           libjvm.so  G1Allocator::unsafe_max_tlab_alloc 
   0.01%           libjvm.so  SharedRuntime::on_slowpath_allocation_exit 
   0.01%              [vdso]  __vdso_clock_gettime 
   0.01%           libjvm.so  G1CardTable::is_in_young 
   0.33%  <...other 116 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  97.51%         c2, level 4
   1.94%              kernel
   0.33%           libjvm.so
   0.09%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.04%                    
   0.02%         interpreter
   0.02%          ld-2.31.so
   0.01%              [vdso]
   0.00%      hsdis-amd64.so
   0.00%    perf-1954318.map
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
# Benchmark: com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.years_with_the_most_publications

# Run progress: 92.86% complete, ETA 00:01:53
# Fork: 1 of 1
# Preparing profilers: LinuxPerfAsmProfiler 
# Profilers consume stdout and stderr from target VM, use -v EXTRA to copy to console
# Warmup Iteration   1: 10.731 ms/op
# Warmup Iteration   2: 9.094 ms/op
# Warmup Iteration   3: 8.934 ms/op
# Warmup Iteration   4: 8.869 ms/op
# Warmup Iteration   5: 8.893 ms/op
Iteration   1: 8.938 ms/op
Iteration   2: 8.948 ms/op
Iteration   3: 8.862 ms/op
Iteration   4: 8.902 ms/op
Iteration   5: 8.883 ms/op
# Processing profiler results: LinuxPerfAsmProfiler 


Result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.years_with_the_most_publications":
  8.906 ±(99.9%) 0.140 ms/op [Average]
  (min, avg, max) = (8.862, 8.906, 8.948), stdev = 0.036
  CI (99.9%): [8.767, 9.046] (assumes normal distribution)

Secondary result "com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatisticsBenchmark.years_with_the_most_publications:asm":
PrintAssembly processed: 199730 total address lines.
Perf output processed (skipped 57.963 seconds):
 Column 1: cycles (51240 events)

Hottest code regions (>10.00% "cycles" events):
 Event counts are percents of total event count.

....[Hottest Region 1]..............................................................................
c2, level 4, java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 836 

                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@41 (line 1702)
                 0x00007ff8c4678d67:   test   %ecx,%ecx
                 0x00007ff8c4678d69:   je     0x00007ff8c4678ebc           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@49 (line 1703)
                 0x00007ff8c4678d6f:   mov    0xc(%r12,%rcx,8),%ebx        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@58 (line 1703)
                 0x00007ff8c4678d74:   mov    %ebx,0x10(%rsi)              ;*putfield fence {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@60 (line 1703)
                 0x00007ff8c4678d77:   jmp    0x00007ff8c4678d09
                 0x00007ff8c4678d79:   nopl   0x0(%rax)
   0.87%      ↗  0x00007ff8c4678d80:   xor    %edi,%edi
              │  0x00007ff8c4678d82:   mov    %r10d,%eax                   ;*aload {reexecute=0 rethrow=0 return_oop=0}
              │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
   0.01%     ↗│  0x00007ff8c4678d85:   test   %rdi,%rdi
          ╭  ││  0x00007ff8c4678d88:   je     0x00007ff8c4678e51           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@124 (line 1712)
   0.32%  │  ││  0x00007ff8c4678d8e:   mov    0x10(%rdi),%r10d             ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
  30.80%  │  ││  0x00007ff8c4678d92:   data16 nopw 0x0(%rax,%rax,1)
          │  ││  0x00007ff8c4678d9c:   data16 data16 xchg %ax,%ax
          │  ││  0x00007ff8c4678da0:   cmp    $0x358d50,%r11d              ;   {metadata(&apos;java/util/stream/ReduceOps$3ReducingSink&apos;)}
          │  ││  0x00007ff8c4678da7:   jne    0x00007ff8c4678ef4
          │  ││  0x00007ff8c4678dad:   mov    %r13,0x38(%rsp)
   0.46%  │  ││  0x00007ff8c4678db2:   mov    %rsi,0x30(%rsp)
   0.01%  │  ││  0x00007ff8c4678db7:   mov    %rdi,0x28(%rsp)
          │  ││  0x00007ff8c4678dbc:   mov    %eax,0x20(%rsp)
   0.00%  │  ││  0x00007ff8c4678dc0:   mov    %r8d,0x1c(%rsp)
   0.39%  │  ││  0x00007ff8c4678dc5:   mov    %edx,0x18(%rsp)
   0.01%  │  ││  0x00007ff8c4678dc9:   mov    %ebx,0x14(%rsp)
   0.00%  │  ││  0x00007ff8c4678dcd:   mov    %ecx,0x10(%rsp)
   0.00%  │  ││  0x00007ff8c4678dd1:   mov    %r14d,0xc(%rsp)
   0.42%  │  ││  0x00007ff8c4678dd6:   mov    %r11d,0x8(%rsp)
   0.01%  │  ││  0x00007ff8c4678ddb:   mov    %r9,%rbp
          │  ││  0x00007ff8c4678dde:   mov    %r9,(%rsp)                   ;*synchronization entry
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@-1 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%  │  ││  0x00007ff8c4678de2:   mov    0xc(%rbp),%r9d
   0.39%  │  ││  0x00007ff8c4678de6:   mov    0x14(%rbp),%r11d
   0.00%  │  ││  0x00007ff8c4678dea:   mov    %r9,%rdx
          │  ││  0x00007ff8c4678ded:   shl    $0x3,%rdx                    ;*getfield state {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@5 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
          │  ││  0x00007ff8c4678df1:   mov    %r11,%rsi
   0.40%  │  ││  0x00007ff8c4678df4:   shl    $0x3,%rsi                    ;*getfield val$accumulator {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@1 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
   0.01%  │  ││  0x00007ff8c4678df8:   mov    %r10,%rcx
          │  ││  0x00007ff8c4678dfb:   shl    $0x3,%rcx                    ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@142 (line 1715)
   0.00%  │  ││  0x00007ff8c4678dff:   xchg   %ax,%ax
   0.46%  │  ││  0x00007ff8c4678e01:   movabs $0xffffffffffffffff,%rax
   0.01%  │  ││  0x00007ff8c4678e0b:   call   0x00007ff8c40c4680           ; ImmutableOopMap {rbp=Oop [0]=Oop [12]=NarrowOop [16]=NarrowOop [40]=Oop [48]=Oop [56]=Oop }
          │  ││                                                            ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
          │  ││                                                            ;   {virtual_call}
   0.41%  │  ││  0x00007ff8c4678e10:   nopl   0x300(%rax,%rax,1)           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.stream.ReduceOps$3ReducingSink::accept@9 (line 169)
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@145 (line 1715)
          │  ││                                                            ;   {other}
   0.13%  │  ││  0x00007ff8c4678e18:   mov    0x28(%rsp),%r10
   2.04%  │  ││  0x00007ff8c4678e1d:   mov    0x18(%r10),%ebp              ;*getfield next {reexecute=0 rethrow=0 return_oop=0}
          │  ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@152 (line 1716)
   1.28%  │  ││  0x00007ff8c4678e21:   mov    0x20(%rsp),%r10d
   0.07%  │  ││  0x00007ff8c4678e26:   mov    (%rsp),%r9
   0.01%  │  ││  0x00007ff8c4678e2a:   mov    0x8(%rsp),%r11d
   0.04%  │  ││  0x00007ff8c4678e2f:   mov    0xc(%rsp),%r14d
   0.27%  │  ││  0x00007ff8c4678e34:   mov    0x10(%rsp),%ecx
   0.10%  │  ││  0x00007ff8c4678e38:   mov    0x14(%rsp),%ebx
   0.00%  │  ││  0x00007ff8c4678e3c:   mov    0x18(%rsp),%edx
   0.06%  │  ││  0x00007ff8c4678e40:   mov    0x1c(%rsp),%r8d
   0.28%  │  ││  0x00007ff8c4678e45:   mov    0x30(%rsp),%rsi
   0.13%  │  ││  0x00007ff8c4678e4a:   mov    0x38(%rsp),%r13
   0.00%  │╭ ││  0x00007ff8c4678e4f:   jmp    0x00007ff8c4678e6a
   1.12%  ↘│ ││  0x00007ff8c4678e51:   mov    %eax,%r10d
   0.01%   │ ││  0x00007ff8c4678e54:   inc    %r10d                        ;*iinc {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@130 (line 1713)
   0.05%   │ ││  0x00007ff8c4678e57:   cmp    %r8d,%eax
           │ ││  0x00007ff8c4678e5a:   nopw   0x0(%rax,%rax,1)
   1.03%   │ ││  0x00007ff8c4678e60:   jae    0x00007ff8c4678ec5
           │ ││  0x00007ff8c4678e66:   mov    0x10(%rsi,%rax,4),%ebp       ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
           │ ││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.27%   ↘ ││  0x00007ff8c4678e6a:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r9=Oop rcx=NarrowOop rsi=Oop rbp=NarrowOop r13=Oop r14=NarrowOop }
             ││                                                            ;*ifnonnull {reexecute=1 rethrow=0 return_oop=0}
             ││                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   0.28%     ││  0x00007ff8c4678e71:   test   %eax,(%rdi)                  ;   {poll}
   2.20%     ││  0x00007ff8c4678e73:   test   %ebp,%ebp
            ╭││  0x00007ff8c4678e75:   je     0x00007ff8c4678e85           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@159 (line 1718)
   1.35%    │││  0x00007ff8c4678e77:   lea    (%r12,%rbp,8),%rdi           ;*aload {reexecute=0 rethrow=0 return_oop=0}
            │││                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@157 (line 1718)
   1.86%    │││  0x00007ff8c4678e7b:   mov    %r10d,%eax
            │││  0x00007ff8c4678e7e:   xchg   %ax,%ax
   0.14%    │╰│  0x00007ff8c4678e80:   jmp    0x00007ff8c4678d85           ;*putfield current {reexecute=0 rethrow=0 return_oop=0}
            │ │                                                            ; - java.util.HashMap$KeySpliterator::forEachRemaining@119 (line 1710)
   0.46%    ↘ │  0x00007ff8c4678e85:   mov    0x458(%r15),%rdi             ; ImmutableOopMap {r9=Oop rcx=NarrowOop rsi=Oop r13=Oop r14=NarrowOop }
              │                                                            ;*if_icmplt {reexecute=1 rethrow=0 return_oop=0}
              │                                                            ; - (reexecute) java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
   0.72%      │  0x00007ff8c4678e8c:   test   %eax,(%rdi)                  ;   {poll}
   0.65%      │  0x00007ff8c4678e8e:   cmp    %ebx,%r10d
              ╰  0x00007ff8c4678e91:   jl     0x00007ff8c4678d80           ;*if_icmplt {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@164 (line 1718)
                 0x00007ff8c4678e97:   mov    0x18(%r12,%r14,8),%r8d
                 0x00007ff8c4678e9c:   nopl   0x0(%rax)
                 0x00007ff8c4678ea0:   cmp    %edx,%r8d
                 0x00007ff8c4678ea3:   je     0x00007ff8c4678d4c           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                           ; - java.util.HashMap$KeySpliterator::forEachRemaining@122 (line 1712)
                 0x00007ff8c4678ea9:   mov    $0x40,%esi
                 0x00007ff8c4678eae:   nop
                 0x00007ff8c4678eaf:   call   0x00007ff8c40c9f00           ; ImmutableOopMap {}
....................................................................................................
  49.50%  <total for region 1>

....[Hottest Region 2]..............................................................................
c2, level 4, java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 803 

           [Constant Pool (empty)]
           --------------------------------------------------------------------------------
           [Verified Entry Point]
             # {method} {0x00007ff84b0dffd8} &apos;lambda$groupingBy$53&apos; &apos;(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V&apos; in &apos;java/util/stream/Collectors&apos;
             # parm0:    rsi:rsi   = &apos;java/util/function/Function&apos;
             # parm1:    rdx:rdx   = &apos;java/util/function/Supplier&apos;
             # parm2:    rcx:rcx   = &apos;java/util/function/BiConsumer&apos;
             # parm3:    r8:r8     = &apos;java/util/Map&apos;
             # parm4:    r9:r9     = &apos;java/lang/Object&apos;
             #           [sp+0x50]  (sp of caller)
   0.00%     0x00007ff8c466bb80:   mov    %eax,-0x14000(%rsp)
   0.41%     0x00007ff8c466bb87:   push   %rbp
             0x00007ff8c466bb88:   sub    $0x40,%rsp
   0.40%     0x00007ff8c466bb8c:   cmpl   $0x0,0x20(%r15)
   0.00%     0x00007ff8c466bb94:   jne    0x00007ff8c466c68b           ;*synchronization entry
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@-1 (line 1105)
             0x00007ff8c466bb9a:   mov    %rsi,%rbx
   0.00%     0x00007ff8c466bb9d:   mov    %r8,0x10(%rsp)
   0.43%     0x00007ff8c466bba2:   mov    %rcx,0x8(%rsp)
   0.00%     0x00007ff8c466bba7:   mov    %rdx,(%rsp)
             0x00007ff8c466bbab:   mov    %r9,0x20(%rsp)
   0.01%     0x00007ff8c466bbb0:   mov    0x8(%rsi),%r11d              ; implicit exception: dispatches to 0x00007ff8c466c564
   0.42%     0x00007ff8c466bbb4:   nopl   0x0(%rax,%rax,1)
             0x00007ff8c466bbbc:   data16 data16 xchg %ax,%ax
             0x00007ff8c466bbc0:   cmp    $0x102b0f8,%r11d             ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007ff84c02b0f8&apos;)}
          ╭  0x00007ff8c466bbc7:   jne    0x00007ff8c466bd31
          │  0x00007ff8c466bbcd:   mov    0x8(%r9),%r11d               ; implicit exception: dispatches to 0x00007ff8c466c5b0
  12.41%  │  0x00007ff8c466bbd1:   cmp    $0x102aad8,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/model/Publication&apos;)}
          │  0x00007ff8c466bbd8:   jne    0x00007ff8c466c520
   0.11%  │  0x00007ff8c466bbde:   mov    %r9,%r10                     ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@1
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │  0x00007ff8c466bbe1:   mov    0xc(%r10),%r10d              ;*getfield year {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.model.Publication::getYear@1 (line 43)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@4
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.32%  │  0x00007ff8c466bbe5:   mov    %r10d,0x28(%rsp)
   0.54%  │  0x00007ff8c466bbea:   cmp    $0xffffff80,%r10d
          │  0x00007ff8c466bbee:   jl     0x00007ff8c466c290
   0.02%  │  0x00007ff8c466bbf4:   cmp    $0x7f,%r10d                  ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │  0x00007ff8c466bbf8:   jle    0x00007ff8c466c034
   0.01%  │  0x00007ff8c466bbfe:   mov    0x1b8(%r15),%rbp
   0.00%  │  0x00007ff8c466bc05:   mov    %rbp,%r10
   0.40%  │  0x00007ff8c466bc08:   add    $0x10,%r10
   0.02%  │  0x00007ff8c466bc0c:   cmp    0x1c8(%r15),%r10
          │  0x00007ff8c466bc13:   jae    0x00007ff8c466c08c           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::grow@56 (line 239)
          │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │                                                            ; - java.util.ArrayList::add@7 (line 483)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff84c060a30::accept@8
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.01%  │  0x00007ff8c466bc19:   mov    %r10,0x1b8(%r15)
   0.00%  │  0x00007ff8c466bc20:   prefetchw 0xc0(%r10)
   0.44%  │  0x00007ff8c466bc28:   movq   $0x1,0x0(%rbp)
   0.01%  │  0x00007ff8c466bc30:   movl   $0x25c88,0x8(%rbp)           ;*new {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::valueOf@23 (line 1070)
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata(&apos;java/lang/Integer&apos;)}
   0.00%  │  0x00007ff8c466bc37:   mov    0x28(%rsp),%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.01%  │  0x00007ff8c466bc3c:   mov    %r11d,0xc(%rbp)
   0.43%  │  0x00007ff8c466bc40:   mov    0x1b8(%r15),%rcx
   0.02%  │  0x00007ff8c466bc47:   mov    %rcx,%r10
   0.00%  │  0x00007ff8c466bc4a:   add    $0x10,%r10
   0.00%  │  0x00007ff8c466bc4e:   cmp    0x1c8(%r15),%r10
          │  0x00007ff8c466bc55:   jae    0x00007ff8c466c06d           ;*putfield elementData {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.ArrayList::grow@56 (line 239)
          │                                                            ; - java.util.ArrayList::grow@7 (line 244)
          │                                                            ; - java.util.ArrayList::add@7 (line 483)
          │                                                            ; - java.util.ArrayList::add@20 (line 496)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff84c060a30::accept@8
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.46%  │  0x00007ff8c466bc5b:   mov    %r10,0x1b8(%r15)
   0.01%  │  0x00007ff8c466bc62:   prefetchw 0xc0(%r10)
   0.04%  │  0x00007ff8c466bc6a:   movq   $0x1,(%rcx)
   0.01%  │  0x00007ff8c466bc71:   movl   $0x1035398,0x8(%rcx)         ;*invokevirtual allocateInstance {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.invoke.DirectMethodHandle::allocateInstance@12 (line 501)
          │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@1
          │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
          │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff84c035398&apos;)}
   0.37%  │  0x00007ff8c466bc78:   mov    (%rsp),%r10
   0.03%  │  0x00007ff8c466bc7c:   mov    %r10,%r11
   0.01%  │  0x00007ff8c466bc7f:   shr    $0x3,%r11                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │  0x00007ff8c466bc83:   mov    %r11d,0xc(%rcx)              ;*synchronization entry
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff84c035398::&lt;init&gt;@-1
          │                                                            ; - java.lang.invoke.DirectMethodHandle$Holder::newInvokeSpecial@16
          │                                                            ; - java.lang.invoke.Invokers$Holder::linkToTargetMethod@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@20 (line 1106)
   0.37%  │  0x00007ff8c466bc87:   mov    0x10(%rsp),%r10
   0.03%  │  0x00007ff8c466bc8c:   mov    0x8(%r10),%r11d              ; implicit exception: dispatches to 0x00007ff8c466c57c
   0.01%  │  0x00007ff8c466bc90:   cmp    $0x8d850,%r11d               ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata(&apos;java/util/HashMap&apos;)}
          │  0x00007ff8c466bc97:   jne    0x00007ff8c466c233
   0.01%  │  0x00007ff8c466bc9d:   mov    %r10,%rsi                    ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
   0.44%  │  0x00007ff8c466bca0:   mov    %rbp,%rdx
   0.03%  │  0x00007ff8c466bca3:   call   0x00007ff8c40c4380           ; ImmutableOopMap {[8]=Oop [32]=Oop }
          │                                                            ;*invokeinterface computeIfAbsent {reexecute=0 rethrow=0 return_oop=1}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@25 (line 1106)
          │                                                            ;   {optimized virtual_call}
   0.01%  │  0x00007ff8c466bca8:   nopl   0x398(%rax,%rax,1)           ;   {other}
   0.32%  │  0x00007ff8c466bcb0:   mov    0x8(%rsp),%r10
   0.12%  │  0x00007ff8c466bcb5:   mov    0x8(%r10),%r11d              ; implicit exception: dispatches to 0x00007ff8c466c594
   0.04%  │  0x00007ff8c466bcb9:   nopl   0x0(%rax)
   0.24%  │  0x00007ff8c466bcc0:   cmp    $0x1034420,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff84c034420&apos;)}
          │  0x00007ff8c466bcc7:   jne    0x00007ff8c466bd91           ;*invokeinterface accept {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.02%  │  0x00007ff8c466bccd:   mov    0xc(%r10),%r11d              ;*getfield arg$1 {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff84c034420::accept@1
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.11%  │  0x00007ff8c466bcd1:   mov    0x8(%rax),%r10d              ; implicit exception: dispatches to 0x00007ff8c466c5d0
   0.00%  │  0x00007ff8c466bcd5:   data16 data16 nopw 0x0(%rax,%rax,1)
   0.26%  │  0x00007ff8c466bce0:   cmp    $0x2a80,%r10d                ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
          │                                                            ;   {metadata({type array long})}
          │  0x00007ff8c466bce7:   jne    0x00007ff8c466c544           ;*checkcast {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff84c034420::accept@5
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.02%  │  0x00007ff8c466bced:   mov    0xc(%rax),%r10d
   0.12%  │  0x00007ff8c466bcf1:   test   %r10d,%r10d
          │  0x00007ff8c466bcf4:   jbe    0x00007ff8c466c254
   0.00%  │  0x00007ff8c466bcfa:   nopw   0x0(%rax,%rax,1)
   0.24%  │  0x00007ff8c466bd00:   mov    0x8(%r12,%r11,8),%r10d       ; implicit exception: dispatches to 0x00007ff8c466c5ec
          │                                                            ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.27%  │  0x00007ff8c466bd05:   mov    0x10(%rax),%rbp              ;*laload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$summingLong$23@3 (line 662)
          │                                                            ; - java.util.stream.Collectors$$Lambda/0x00007ff84c034420::accept@9
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@37 (line 1107)
   0.09%  │  0x00007ff8c466bd09:   cmp    $0x1033ff0,%r10d             ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff84c033ff0&apos;)}
          │  0x00007ff8c466bd10:   jne    0x00007ff8c466c274
   0.16%  │  0x00007ff8c466bd16:   add    $0x1,%rbp                    ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.18%  │  0x00007ff8c466bd1a:   mov    %rbp,0x10(%rax)              ;*invokeinterface apply {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
   0.00%  │  0x00007ff8c466bd1e:   add    $0x40,%rsp
   0.16%  │  0x00007ff8c466bd22:   pop    %rbp
   0.18%  │  0x00007ff8c466bd23:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007ff8c466bd2a:   ja     0x00007ff8c466c675
   0.14%  │  0x00007ff8c466bd30:   ret    
          ↘  0x00007ff8c466bd31:   cmp    $0x102b530,%r11d             ;*invokestatic valueOf {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - com.ionutbalosin.jvm.performance.benchmarks.miscellaneous.publicationstatistics.PublicationStatistics$$Lambda/0x00007ff84c02b0f8::apply@7
                                                                       ; - java.util.stream.Collectors::lambda$groupingBy$53@3 (line 1105)
                                                                       ;   {metadata(&apos;com/ionutbalosin/jvm/performance/benchmarks/miscellaneous/publicationstatistics/PublicationStatistics$$Lambda+0x00007ff84c02b530&apos;)}
             0x00007ff8c466bd38:   jne    0x00007ff8c466c3ac
             0x00007ff8c466bd3e:   xchg   %ax,%ax
             0x00007ff8c466bd40:   mov    0x8(%r9),%r10d               ; implicit exception: dispatches to 0x00007ff8c466c604
             0x00007ff8c466bd44:   movabs $0x7ff84b011340,%rax         ;   {metadata(&apos;java/util/Map$Entry&apos;)}
             0x00007ff8c466bd4e:   movabs $0x7ff84b000000,%rsi
             0x00007ff8c466bd58:   add    %r10,%rsi
....................................................................................................
  20.91%  <total for region 2>

....[Hottest Region 3]..............................................................................
c2, level 4, java.util.HashMap::computeIfAbsent, version 4, compile id 828 

             0x00007ff8c467543d:   data16 xchg %ax,%ax
             0x00007ff8c4675440:   cmp    $0x1,%r11
             0x00007ff8c4675444:   jne    0x00007ff8c4675774
             0x00007ff8c467544a:   shr    $0x8,%r10
             0x00007ff8c467544e:   mov    %r10d,%eax
             0x00007ff8c4675451:   and    $0x7fffffff,%eax
             0x00007ff8c4675456:   test   %eax,%eax
             0x00007ff8c4675458:   je     0x00007ff8c4675774           ;*invokevirtual hashCode {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@9 (line 338)
                                                                       ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.21%     0x00007ff8c467545e:   mov    (%rsp),%rbx
   0.02%     0x00007ff8c4675462:   mov    0x14(%rbx),%r11d
   0.77%     0x00007ff8c4675466:   mov    0x1c(%rbx),%r10d
   0.00%     0x00007ff8c467546a:   mov    %eax,%ecx
   0.20%     0x00007ff8c467546c:   shr    $0x10,%ecx
   0.01%     0x00007ff8c467546f:   xor    %eax,%ecx                    ;*ixor {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::hash@18 (line 338)
                                                                       ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.21%     0x00007ff8c4675471:   cmp    %r10d,%r11d
             0x00007ff8c4675474:   jg     0x00007ff8c46757b7           ;*if_icmpgt {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@34 (line 1204)
   0.01%     0x00007ff8c467547a:   mov    0x24(%rbx),%r10d             ;*getfield table {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@38 (line 1204)
   0.35%     0x00007ff8c467547e:   xchg   %ax,%ax
   0.01%     0x00007ff8c4675480:   test   %r10d,%r10d
             0x00007ff8c4675483:   je     0x00007ff8c46757b7           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@44 (line 1204)
   0.19%     0x00007ff8c4675489:   mov    0xc(%r12,%r10,8),%r9d        ;*arraylength {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@49 (line 1204)
   0.88%     0x00007ff8c467548e:   test   %r9d,%r9d
             0x00007ff8c4675491:   jbe    0x00007ff8c4675968           ;*ifne {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@53 (line 1204)
   0.43%     0x00007ff8c4675497:   lea    (%r12,%r10,8),%r13           ;*aload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@66 (line 1207)
   0.01%     0x00007ff8c467549b:   mov    %r9d,%r10d
   0.00%     0x00007ff8c467549e:   dec    %r10d
             0x00007ff8c46754a1:   and    %ecx,%r10d                   ;*iand {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@73 (line 1207)
   0.37%     0x00007ff8c46754a4:   test   %r9d,%r9d
             0x00007ff8c46754a7:   jle    0x00007ff8c46758d8
   0.01%     0x00007ff8c46754ad:   lea    0x10(%r13,%r10,4),%rdi       ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   0.68%     0x00007ff8c46754b2:   mov    0x8(%rbx),%r8d               ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
             0x00007ff8c46754b6:   mov    %r8d,0x24(%rsp)
   0.13%     0x00007ff8c46754bb:   mov    (%rdi),%r9d                  ;*aaload {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
   1.30%     0x00007ff8c46754be:   xchg   %ax,%ax
   0.01%     0x00007ff8c46754c0:   test   %r9d,%r9d
          ╭  0x00007ff8c46754c3:   je     0x00007ff8c4675584           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@81 (line 1207)
   0.23%  │  0x00007ff8c46754c9:   mov    0x8(%r12,%r9,8),%esi
   1.68%  │  0x00007ff8c46754ce:   cmp    $0x1acba8,%esi               ;   {metadata(&apos;java/util/HashMap$TreeNode&apos;)}
          │  0x00007ff8c46754d4:   je     0x00007ff8c46758a5
   0.30%  │  0x00007ff8c46754da:   lea    (%r12,%r9,8),%rax            ;*aaload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@77 (line 1207)
          │  0x00007ff8c46754de:   mov    %rax,%r11
          │  0x00007ff8c46754e1:   xor    %r8d,%r8d                    ;*aload {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@114 (line 1213)
   0.13%  │  0x00007ff8c46754e4:   mov    0xc(%r11),%esi
   0.40%  │  0x00007ff8c46754e8:   cmp    %ecx,%esi
          │  0x00007ff8c46754ea:   jne    0x00007ff8c46756dd           ;*if_icmpne {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@120 (line 1213)
   0.09%  │  0x00007ff8c46754f0:   mov    0x10(%r11),%edi              ;*getfield key {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@125 (line 1213)
   0.03%  │  0x00007ff8c46754f4:   mov    %rdi,%rsi
   0.13%  │  0x00007ff8c46754f7:   shl    $0x3,%rsi
   0.23%  │  0x00007ff8c46754fb:   nopl   0x0(%rax,%rax,1)
   0.08%  │  0x00007ff8c4675500:   cmp    %r14,%rsi
          │  0x00007ff8c4675503:   je     0x00007ff8c4675990           ;*if_acmpeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@132 (line 1213)
   0.01%  │  0x00007ff8c4675509:   cmp    $0x25c88,%edx                ;   {metadata(&apos;java/lang/Integer&apos;)}
          │  0x00007ff8c467550f:   jne    0x00007ff8c46756ff
   0.12%  │  0x00007ff8c4675515:   mov    %r14,%rdx                    ;*invokevirtual equals {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.38%  │  0x00007ff8c4675518:   nopl   0x0(%rax,%rax,1)
   0.08%  │  0x00007ff8c4675520:   mov    0x8(%r12,%rdi,8),%esi        ; implicit exception: dispatches to 0x00007ff8c4675bac
   0.91%  │  0x00007ff8c4675525:   cmp    $0x25c88,%esi                ;   {metadata(&apos;java/lang/Integer&apos;)}
          │  0x00007ff8c467552b:   jne    0x00007ff8c4675b6c           ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::equals@1 (line 1224)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.40%  │  0x00007ff8c4675531:   mov    0xc(%rdx),%eax               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::equals@8 (line 1225)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.01%  │  0x00007ff8c4675534:   shl    $0x3,%rdi                    ;*instanceof {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::equals@1 (line 1224)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.00%  │  0x00007ff8c4675538:   mov    0xc(%rdi),%ebp               ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.lang.Integer::intValue@1 (line 1143)
          │                                                            ; - java.lang.Integer::equals@15 (line 1225)
          │                                                            ; - java.util.HashMap::computeIfAbsent@142 (line 1214)
   0.34%  │  0x00007ff8c467553b:   cmp    %ebp,%eax
   0.40%  │  0x00007ff8c467553d:   data16 xchg %ax,%ax
   0.00%  │  0x00007ff8c4675540:   jne    0x00007ff8c4675924           ;*ifeq {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@145 (line 1214)
   0.27%  │  0x00007ff8c4675546:   mov    0x14(%r11),%ebp              ;*getfield value {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@176 (line 1222)
          │  0x00007ff8c467554a:   test   %ebp,%ebp
          │  0x00007ff8c467554c:   je     0x00007ff8c46759d4           ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@182 (line 1222)
   0.11%  │  0x00007ff8c4675552:   mov    0x24(%rsp),%r10d
   0.01%  │  0x00007ff8c4675557:   nopw   0x0(%rax,%rax,1)
   0.33%  │  0x00007ff8c4675560:   cmp    $0x8d850,%r10d               ;   {metadata(&apos;java/util/HashMap&apos;)}
          │  0x00007ff8c4675567:   jne    0x00007ff8c4675908           ;*invokevirtual afterNodeAccess {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::computeIfAbsent@188 (line 1223)
   0.00%  │  0x00007ff8c467556d:   lea    (%r12,%rbp,8),%rax           ;*ifnonnull {reexecute=0 rethrow=0 return_oop=0}
          │                                                            ; - java.util.HashMap::hash@1 (line 338)
          │                                                            ; - java.util.HashMap::computeIfAbsent@13 (line 1199)
   0.10%  │  0x00007ff8c4675571:   add    $0x60,%rsp
   0.01%  │  0x00007ff8c4675575:   pop    %rbp
   0.24%  │  0x00007ff8c4675576:   cmp    0x450(%r15),%rsp             ;   {poll_return}
          │  0x00007ff8c467557d:   ja     0x00007ff8c4675c94
   0.08%  │  0x00007ff8c4675583:   ret    
   0.00%  ↘  0x00007ff8c4675584:   xor    %r8d,%r8d
             0x00007ff8c4675587:   xor    %r11d,%r11d                  ;*ifnull {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@171 (line 1222)
             0x00007ff8c467558a:   mov    0x18(%rbx),%r9d              ;*getfield modCount {reexecute=0 rethrow=0 return_oop=0}
                                                                       ; - java.util.HashMap::computeIfAbsent@195 (line 1227)
   0.00%     0x00007ff8c467558e:   cmp    $0x1035398,%ebp              ;   {metadata(&apos;java/util/stream/Collectors$$Lambda+0x00007ff84c035398&apos;)}
             0x00007ff8c4675594:   jne    0x00007ff8c4675a14
             0x00007ff8c467559a:   mov    %r9d,0x4(%rsp)
             0x00007ff8c467559f:   mov    %r11,0x40(%rsp)
             0x00007ff8c46755a4:   mov    %r8d,0x18(%rsp)
             0x00007ff8c46755a9:   mov    %rdi,0x10(%rsp)
             0x00007ff8c46755ae:   mov    %r10d,0x20(%rsp)
             0x00007ff8c46755b3:   mov    %r13,0x8(%rsp)
             0x00007ff8c46755b8:   mov    %ecx,(%rsp)
             0x00007ff8c46755bb:   mov    %rbx,%rbp
....................................................................................................
  12.91%  <total for region 3>

....[Hottest Regions]...............................................................................
  49.50%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 836 
  20.91%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 803 
  12.91%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 828 
   4.69%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff84c034ce0::accept, version 2, compile id 829 
   2.91%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 828 
   2.81%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 786 
   1.71%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 828 
   0.97%              kernel  [unknown] 
   0.86%                      <unknown> 
   0.14%              kernel  [unknown] 
   0.12%              kernel  [unknown] 
   0.08%              kernel  [unknown] 
   0.05%           libjvm.so  G1CardSet::occupied 
   0.05%              kernel  [unknown] 
   0.05%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   0.03%              kernel  [unknown] 
   2.11%  <...other 580 warm regions...>
....................................................................................................
 100.00%  <totals>

....[Hottest Methods (after inlining)]..............................................................
  49.50%         c2, level 4  java.util.HashMap$KeySpliterator::forEachRemaining, version 4, compile id 836 
  20.92%         c2, level 4  java.util.stream.Collectors::lambda$groupingBy$53, version 3, compile id 803 
  17.56%         c2, level 4  java.util.HashMap::computeIfAbsent, version 4, compile id 828 
   4.69%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff84c034ce0::accept, version 2, compile id 829 
   2.81%         c2, level 4  java.lang.Integer::hashCode, version 2, compile id 786 
   2.53%              kernel  [unknown] 
   0.95%                      <unknown> 
   0.06%         c2, level 4  java.util.HashMap$EntrySpliterator::forEachRemaining, version 3, compile id 904 
   0.05%           libjvm.so  G1CardSet::occupied 
   0.04%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::forEachRemaining, version 2, compile id 895 
   0.03%         c2, level 4  java.util.stream.AbstractPipeline::evaluate, version 3, compile id 815 
   0.03%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff84c035c90::accept, version 2, compile id 891 
   0.02%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff84c060a30::accept, version 2, compile id 900 
   0.02%              [vdso]  __vdso_clock_gettime 
   0.02%         c2, level 4  java.util.stream.Collectors$$Lambda.0x00007ff84c035158::apply, version 2, compile id 997 
   0.02%         c2, level 4  java.util.ArrayList$ArrayListSpliterator::estimateSize, version 2, compile id 892 
   0.02%        libc-2.31.so  clock_gettime@GLIBC_2.2.5 
   0.02%         c2, level 4  java.util.stream.Sink$ChainedReference::begin, version 3, compile id 972 
   0.02%         c2, level 4  java.lang.Long::hashCode, version 2, compile id 874 
   0.02%          ld-2.31.so  __tls_get_addr 
   0.67%  <...other 205 warm methods...>
....................................................................................................
 100.00%  <totals>

....[Distribution by Source]........................................................................
  95.84%         c2, level 4
   2.53%              kernel
   0.95%                    
   0.47%           libjvm.so
   0.09%        libc-2.31.so
   0.04%  libpthread-2.31.so
   0.02%              [vdso]
   0.02%          ld-2.31.so
   0.02%         interpreter
   0.01%    perf-1954383.map
   0.01%         c1, level 1
   0.00%      hsdis-amd64.so
   0.00%          libjava.so
....................................................................................................
 100.00%  <totals>



# Run complete. Total time: 00:26:25

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

Benchmark                                                                       Mode  Cnt     Score     Error  Units
PublicationStatisticsBenchmark.author_with_the_most_publications                avgt    5    57.909 ±  18.396  ms/op
PublicationStatisticsBenchmark.author_with_the_most_publications:asm            avgt            NaN              ---
PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations         avgt    5    72.673 ±   1.177  ms/op
PublicationStatisticsBenchmark.authors_with_no_duplicate_collaborations:asm     avgt            NaN              ---
PublicationStatisticsBenchmark.first_publication_year                           avgt    5     5.502 ±   0.132  ms/op
PublicationStatisticsBenchmark.first_publication_year:asm                       avgt            NaN              ---
PublicationStatisticsBenchmark.last_publication_year                            avgt    5     5.859 ±   0.125  ms/op
PublicationStatisticsBenchmark.last_publication_year:asm                        avgt            NaN              ---
PublicationStatisticsBenchmark.most_prolific_pair_of_authors                    avgt    5  5493.316 ± 726.195  ms/op
PublicationStatisticsBenchmark.most_prolific_pair_of_authors:asm                avgt            NaN              ---
PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year           avgt    5   998.901 ±   4.879  ms/op
PublicationStatisticsBenchmark.most_prolific_pair_of_authors_per_year:asm       avgt            NaN              ---
PublicationStatisticsBenchmark.number_of_publications_per_author                avgt    5    47.810 ±   2.489  ms/op
PublicationStatisticsBenchmark.number_of_publications_per_author:asm            avgt            NaN              ---
PublicationStatisticsBenchmark.number_of_publications_per_year                  avgt    5     7.425 ±   0.220  ms/op
PublicationStatisticsBenchmark.number_of_publications_per_year:asm              avgt            NaN              ---
PublicationStatisticsBenchmark.publication_with_the_most_authors                avgt    5    12.100 ±   0.337  ms/op
PublicationStatisticsBenchmark.publication_with_the_most_authors:asm            avgt            NaN              ---
PublicationStatisticsBenchmark.publications_per_author                          avgt    5   121.706 ±   2.259  ms/op
PublicationStatisticsBenchmark.publications_per_author:asm                      avgt            NaN              ---
PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year      avgt    5     9.823 ±   0.228  ms/op
PublicationStatisticsBenchmark.publications_with_the_most_authors_per_year:asm  avgt            NaN              ---
PublicationStatisticsBenchmark.publications_years_statistics                    avgt    5     6.720 ±   0.274  ms/op
PublicationStatisticsBenchmark.publications_years_statistics:asm                avgt            NaN              ---
PublicationStatisticsBenchmark.year_with_the_most_publications                  avgt    5     7.592 ±   0.141  ms/op
PublicationStatisticsBenchmark.year_with_the_most_publications:asm              avgt            NaN              ---
PublicationStatisticsBenchmark.years_with_the_most_publications                 avgt    5     8.906 ±   0.140  ms/op
PublicationStatisticsBenchmark.years_with_the_most_publications:asm             avgt            NaN              ---
